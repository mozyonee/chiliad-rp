#if defined CHILIAD_BANKING_CALLBACKS
	#endinput
#endif
#define CHILIAD_BANKING_CALLBACKS

forward Banking_OnCardsLoaded(playerid);
public Banking_OnCardsLoaded(playerid)
{
	if (!IsPlayerConnected(playerid) || !Character_IsLoaded(playerid))
	{
		return 1;
	}

	new rows = cache_num_rows();
	BankingCardCount[playerid] = rows;

	if (BankingCardCount[playerid] > BANKING_MAX_CARDS)
	{
		BankingCardCount[playerid] = BANKING_MAX_CARDS;
	}

	for (new i = 0; i < BankingCardCount[playerid]; i++)
	{
		cache_get_value_name_int(i, "id", BankingCards[playerid][i][BankCardID]);
		cache_get_value_name_int(i, "balance", BankingCards[playerid][i][BankCardBalance]);
	}

	Inventory_Set(playerid, BANK_CARD, BankingCardCount[playerid]);

	if (BankingOpenedFromItem[playerid])
	{
		BankingOpenedFromItem[playerid] = false;

		if (BankingCardCount[playerid] == 1)
		{
			return Banking_SelectCard(playerid, BankingCards[playerid][0][BankCardID], 0);
		}
	}

	Banking_ShowCardsDialog(playerid);
	return 1;
}

forward Banking_OnCardCreated(playerid);
public Banking_OnCardCreated(playerid)
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	BankingDB_LoadCards(playerid);
	return 1;
}

forward Banking_OnPinVerified(playerid);
public Banking_OnPinVerified(playerid)
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	if (!cache_num_rows())
	{
		SendError(playerid, "Invalid PIN.");
		Banking_ShowPinDialog(playerid);
		return 1;
	}

	cache_get_value_name_int(0, "id", BankingSelectedCardID[playerid]);
	cache_get_value_name_int(0, "balance", BankingSelectedCardBalance[playerid]);
	Banking_ShowAccountDialog(playerid);
	return 1;
}

forward Banking_OnSelectedCardLoaded(playerid);
public Banking_OnSelectedCardLoaded(playerid)
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	if (!cache_num_rows())
	{
		SendError(playerid, "Bank card not found.");
		Banking_Open(playerid);
		return 1;
	}

	cache_get_value_name_int(0, "balance", BankingSelectedCardBalance[playerid]);
	Banking_ShowAccountDialog(playerid);
	return 1;
}

forward Banking_OnOperationDone(playerid);
public Banking_OnOperationDone(playerid)
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	SendSuccess(playerid, "Bank operation completed.");
	Banking_RefreshSelectedCard(playerid);
	return 1;
}

forward Banking_OnWithdrawDone(playerid, amount);
public Banking_OnWithdrawDone(playerid, amount)
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	if (!cache_affected_rows())
	{
		SendError(playerid, "Insufficient bank balance.");
		Banking_ShowWithdrawDialog(playerid);
		return 1;
	}

	Money_Give(playerid, amount);
	SendSuccess(playerid, "Bank operation completed.");
	Banking_RefreshSelectedCard(playerid);
	return 1;
}

forward Banking_OnTransferDone(playerid);
public Banking_OnTransferDone(playerid)
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	if (!cache_affected_rows())
	{
		SendError(playerid, "Transfer failed. Check card number and balance.");
		Banking_ShowTransferDialog(playerid);
		return 1;
	}

	SendSuccess(playerid, "Transfer completed.");
	Banking_RefreshSelectedCard(playerid);
	return 1;
}
