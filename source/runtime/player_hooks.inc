#if defined CHILIAD_RUNTIME_PLAYER_HOOKS
	#endinput
#endif
#define CHILIAD_RUNTIME_PLAYER_HOOKS

public OnPlayerConnect(playerid)
{
	Dialog_ClearOpen(playerid);
	Admin_Reset(playerid);
	Account_OnPlayerConnect(playerid);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	Dialog_ClearOpen(playerid);
	General_OnPlayerDisconnect(playerid, reason);
	Account_OnPlayerDisconnect(playerid, reason);
	Character_OnPlayerDisconnect(playerid, reason);
	Settings_Reset(playerid);
	Admin_Reset(playerid);
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	#pragma unused classid

	TogglePlayerSpectating(playerid, true);
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return Character_IsLoaded(playerid);
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	Dialog_ClearOpen(playerid);
	Account_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Character_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Inventory_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Banking_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Settings_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Admin_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	GeneralMenu_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	return 1;
}

public OnPlayerKeyStateChange(playerid, KEY:newkeys, KEY:oldkeys)
{
	if ((newkeys & KEY_YES) && !(oldkeys & KEY_YES))
	{
		pc_cmd_inventory(playerid);
		return 1;
	}

	return 1;
}

public OnPlayerText(playerid, text[])
{
	return General_OnPlayerText(playerid, text);
}
