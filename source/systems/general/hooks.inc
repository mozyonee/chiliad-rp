#if defined CHILIAD_GENERAL_HOOKS
	#endinput
#endif
#define CHILIAD_GENERAL_HOOKS

forward General_OnPlayerKeyStateChange(playerid, KEY:newkeys, KEY:oldkeys);

General_OnPlayerDisconnect(playerid, reason)
{
	#pragma unused reason

	General_ResetPlayer(playerid);
	return 1;
}

public General_OnPlayerKeyStateChange(playerid, KEY:newkeys, KEY:oldkeys)
{
	if ((newkeys & KEY_YES) && !(oldkeys & KEY_YES))
	{
		pc_cmd_inventory(playerid);
		return 1;
	}

	return 0;
}

public General_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[])
{
	#pragma unused inputtext

	if (dialogid == DIALOG_HELP_MAIN)
	{
		return General_HandleHelpMain(playerid, response, listitem);
	}

	if (dialogid == DIALOG_HELP_GENERAL || dialogid == DIALOG_HELP_VEHICLES || dialogid == DIALOG_HELP_BUSINESSES)
	{
		if (!response) return General_ShowHelp(playerid);
	}

	return 1;
}
