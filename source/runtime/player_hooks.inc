#if defined CHILIAD_RUNTIME_PLAYER_HOOKS
	#endinput
#endif
#define CHILIAD_RUNTIME_PLAYER_HOOKS

public OnPlayerConnect(playerid)
{
	Dialog_ClearOpen(playerid);
	Account_OnPlayerConnect(playerid);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	Dialog_ClearOpen(playerid);
	Account_OnPlayerDisconnect(playerid, reason);
	Character_OnPlayerDisconnect(playerid, reason);
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	Dialog_ClearOpen(playerid);
	Account_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Character_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Menu_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return General_OnPlayerText(playerid, text);
}
