#if defined CHILIAD_BANKING_HOOKS
	#endinput
#endif
#define CHILIAD_BANKING_HOOKS

Banking_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[])
{
	switch (dialogid)
	{
		case DIALOG_BANKING_CARDS:
			return Banking_HandleCardsDialog(playerid, response, listitem);

		case DIALOG_BANKING_CREATE_PIN:
			return Banking_HandleCreatePinDialog(playerid, response, inputtext);

		case DIALOG_BANKING_ENTER_PIN:
			return Banking_HandlePinDialog(playerid, response, inputtext);

		case DIALOG_BANKING_ACCOUNT:
			return Banking_HandleAccountDialog(playerid, response, listitem);

		case DIALOG_BANKING_WITHDRAW:
			return Banking_HandleWithdrawDialog(playerid, response, inputtext);

		case DIALOG_BANKING_TOP_UP:
			return Banking_HandleTopUpDialog(playerid, response, inputtext);

		case DIALOG_BANKING_TRANSFER:
			return Banking_HandleTransferDialog(playerid, response, inputtext);

		case DIALOG_BANKING_BALANCE:
			return Banking_HandleBalanceDialog(playerid, response);
	}

	return 1;
}
