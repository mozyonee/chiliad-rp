#if defined CHILIAD_ACCOUNTS_HOOKS
	#endinput
#endif
#define CHILIAD_ACCOUNTS_HOOKS

Account_OnPlayerConnect(playerid)
{
	Account_Start(playerid);
	return 1;
}

Account_OnPlayerDisconnect(playerid, reason)
{
	#pragma unused reason

	Account_Reset(playerid);
	return 1;
}

Account_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[])
{
	#pragma unused listitem

	switch (dialogid)
	{
		case DIALOG_ACCOUNT_LOGIN:
			return Account_HandleLoginDialog(playerid, response, inputtext);

		case DIALOG_ACCOUNT_REGISTER:
			return Account_HandleRegisterDialog(playerid, response, inputtext);
	}

	return 1;
}
