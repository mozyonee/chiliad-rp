#if defined CHILIAD_BANKING_DIALOGS
	#endinput
#endif
#define CHILIAD_BANKING_DIALOGS

Banking_ShowCardsDialog(playerid)
{
	new content[1024], row[64];
	content[0] = EOS;

	for (new i = 0; i < BankingCardCount[playerid]; i++)
	{
		format(row, sizeof(row), P"%d."W" Bank Card #%06d\n", i + 1, BankingCards[playerid][i][BankCardID]);
		strcat(content, row, sizeof(content));
	}

	strcat(content, P"+"W" Create new card\n", sizeof(content));

	SPD(playerid, DIALOG_BANKING_CARDS, DSL,
		DIALOG_TITLE("Bank"),
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_CANCEL
	);
	return 1;
}

Banking_ShowCreatePinDialog(playerid)
{
	SPD(playerid, DIALOG_BANKING_CREATE_PIN, DSI,
		DIALOG_TITLE("New Card"),
		W"Create a 4-digit PIN for your new bank card.",
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_BACK
	);
	return 1;
}

Banking_ShowPinDialog(playerid)
{
	new content[96];
	format(content, sizeof(content), W"Card: "P"#%06d\n\n"W"Enter card PIN.", BankingSelectedCardID[playerid]);

	SPD(playerid, DIALOG_BANKING_ENTER_PIN, DSP,
		DIALOG_TITLE("Bank Card"),
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_BACK
	);
	return 1;
}

Banking_ShowAccountDialog(playerid)
{
	new title[64];
	format(title, sizeof(title), DIALOG_TITLE("Card #%06d"), BankingSelectedCardID[playerid]);

	SPD(playerid, DIALOG_BANKING_ACCOUNT, DSL,
		title,
		P"1."W" View balance\n"P"2."W" Withdraw\n"P"3."W" Top up\n"P"4."W" Transfer\n"P"5."W" Deposit",
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_BACK
	);
	return 1;
}

Banking_ShowBalanceDialog(playerid)
{
	new title[64], content[64];
	format(title, sizeof(title), DIALOG_TITLE("Card #%06d"), BankingSelectedCardID[playerid]);
	format(content, sizeof(content), W"Balance: "GREEN"$%d", BankingSelectedCardBalance[playerid]);

	SPD(playerid, DIALOG_BANKING_BALANCE, DSM,
		title,
		content,
		DIALOG_BUTTON_BACK,
		""
	);
	return 1;
}

Banking_ShowWithdrawDialog(playerid)
{
	new content[128];
	format(content, sizeof(content), W"Balance: "GREEN"$%d\n\n"W"Enter amount to withdraw.", BankingSelectedCardBalance[playerid]);

	SPD(playerid, DIALOG_BANKING_WITHDRAW, DSI,
		DIALOG_TITLE("Withdraw"),
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_BACK
	);
	return 1;
}

Banking_ShowTopUpDialog(playerid)
{
	new content[128];
	format(content, sizeof(content), W"Cash: "GREEN"$%d\n\n"W"Enter amount to add to this card.", Money_Get(playerid));

	SPD(playerid, DIALOG_BANKING_TOP_UP, DSI,
		DIALOG_TITLE("Top Up"),
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_BACK
	);
	return 1;
}

Banking_ShowTransferDialog(playerid)
{
	SPD(playerid, DIALOG_BANKING_TRANSFER, DSI,
		DIALOG_TITLE("Transfer"),
		W"Enter target card and amount.\n\nExample: 100001 500",
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_BACK
	);
	return 1;
}

Banking_HandleCardsDialog(playerid, response, listitem)
{
	if (!response)
	{
		return 1;
	}

	if (listitem == BankingCardCount[playerid])
	{
		return Banking_ShowCreatePinDialog(playerid);
	}

	if (listitem < 0 || listitem >= BankingCardCount[playerid])
	{
		return 1;
	}

	return Banking_SelectCard(playerid, BankingCards[playerid][listitem][BankCardID], 0);
}

Banking_HandleCreatePinDialog(playerid, response, const inputtext[])
{
	if (!response)
	{
		return Banking_ShowCardsDialog(playerid);
	}

	if (!Banking_IsValidPin(inputtext))
	{
		SendError(playerid, "PIN must contain exactly 4 digits.");
		return Banking_ShowCreatePinDialog(playerid);
	}

	BankingDB_CreateCard(playerid, inputtext);
	return 1;
}

Banking_HandlePinDialog(playerid, response, const inputtext[])
{
	if (!response)
	{
		return Banking_ShowCardsDialog(playerid);
	}

	if (!Banking_IsValidPin(inputtext))
	{
		SendError(playerid, "PIN must contain exactly 4 digits.");
		return Banking_ShowPinDialog(playerid);
	}

	BankingDB_VerifyPin(playerid, inputtext);
	return 1;
}

Banking_HandleAccountDialog(playerid, response, listitem)
{
	if (!response)
	{
		return Banking_ShowCardsDialog(playerid);
	}

	switch (listitem)
	{
		case 0: return Banking_ShowBalanceDialog(playerid);
		case 1: return Banking_ShowWithdrawDialog(playerid);
		case 2: return Banking_ShowTopUpDialog(playerid);
		case 3: return Banking_ShowTransferDialog(playerid);
		case 4: return Banking_ShowTopUpDialog(playerid);
	}

	return 1;
}

Banking_HandleBalanceDialog(playerid, response)
{
	#pragma unused response

	return Banking_ShowAccountDialog(playerid);
}

Banking_HandleWithdrawDialog(playerid, response, const inputtext[])
{
	if (!response)
	{
		return Banking_ShowAccountDialog(playerid);
	}

	new amount = strval(inputtext);
	if (amount <= 0)
	{
		SendError(playerid, "Invalid amount.");
		return Banking_ShowWithdrawDialog(playerid);
	}

	BankingDB_Withdraw(playerid, amount);
	return 1;
}

Banking_HandleTopUpDialog(playerid, response, const inputtext[])
{
	if (!response)
	{
		return Banking_ShowAccountDialog(playerid);
	}

	new amount = strval(inputtext);
	if (amount <= 0)
	{
		SendError(playerid, "Invalid amount.");
		return Banking_ShowTopUpDialog(playerid);
	}

	if (!Money_Has(playerid, amount))
	{
		SendError(playerid, "You do not have enough cash.");
		return Banking_ShowTopUpDialog(playerid);
	}

	Money_Take(playerid, amount);
	BankingDB_Deposit(playerid, amount);
	return 1;
}

Banking_HandleTransferDialog(playerid, response, const inputtext[])
{
	if (!response)
	{
		return Banking_ShowAccountDialog(playerid);
	}

	new target_card_id, amount;
	if (sscanf(inputtext, "ii", target_card_id, amount))
	{
		SendError(playerid, "Use: [card] [amount]");
		return Banking_ShowTransferDialog(playerid);
	}

	if (target_card_id <= 0 || amount <= 0)
	{
		SendError(playerid, "Invalid card or amount.");
		return Banking_ShowTransferDialog(playerid);
	}

	if (target_card_id == BankingSelectedCardID[playerid])
	{
		SendError(playerid, "You cannot transfer to the same card.");
		return Banking_ShowTransferDialog(playerid);
	}

	BankingDB_Transfer(playerid, target_card_id, amount);
	return 1;
}
