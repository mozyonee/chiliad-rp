#if defined CHILIAD_ADMIN_DIALOGS
	#endinput
#endif
#define CHILIAD_ADMIN_DIALOGS

Admin_ShowMenu(playerid)
{
	SPD(playerid, DIALOG_ADMIN_MENU, DSL,
		DIALOG_TITLE("Admin Menu"),
		P"1."W" Admins online\n"P"2."W" Admin help\n"P"3."W" Stop duty",
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_CLOSE
	);
	return 1;
}

Admin_ShowHelp(playerid)
{
	SPD(playerid, DIALOG_ADMIN_HELP, DSM,
		DIALOG_TITLE("Admin Help"),
		P"/aduty"W" - Toggle admin duty.\n\
		"P"/amenu"W" - Open the admin menu.\n\
		"P"/admins"W" - View admins online.\n\
		"P"/a"W" - Send an admin chat message.\n\
		"P"/kick"W" - Kick a player.\n\
		"P"/goto"W" - Teleport to a player.\n\
		"P"/gethere"W" - Teleport a player to you.\n\
		"P"/slap"W" - Slap a player upward.\n\
		"P"/freeze"W" - Freeze a player.\n\
		"P"/unfreeze"W" - Unfreeze a player.\n\
		"P"/jetpack"W" - Give yourself a jetpack.\n\
		"P"/sethp"W" - Set player health.\n\
		"P"/setarm"W" - Set player armour.\n\
		"P"/debug"W" - View your position data.\n\
		"P"/cc"W" - Clear chat.\n\
		"P"/setskin"W" - Set a player's skin.\n\
		"P"/makeadmin"W" - Set a player's admin level.",
		DIALOG_BUTTON_BACK,
		""
	);
	return 1;
}

Admin_HandleMenuDialog(playerid, response, listitem)
{
	if (!response)
	{
		return 1;
	}

	switch (listitem)
	{
		case 0:
		{
			pc_cmd_admins(playerid);
		}
		case 1:
		{
			Admin_ShowHelp(playerid);
		}
		case 2:
		{
			pc_cmd_aduty(playerid);
		}
	}

	return 1;
}

Admin_HandleHelpDialog(playerid, response)
{
	#pragma unused response

	return Admin_ShowMenu(playerid);
}
