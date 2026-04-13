#if defined CHILIAD_RUNTIME_PLAYER_HOOKS
	#endinput
#endif
#define CHILIAD_RUNTIME_PLAYER_HOOKS

hook OnPlayerConnect(playerid)
{
	Account_OnPlayerConnect(playerid);
	return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
	Account_OnPlayerDisconnect(playerid, reason);
	Character_OnPlayerDisconnect(playerid, reason);
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	Account_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Character_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Menu_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	return 1;
}

hook OnPlayerCommandText(playerid, cmdtext[])
{
	if (Menu_OnPlayerCommandText(playerid, cmdtext))
	{
		return 1;
	}

	return 0;
}
