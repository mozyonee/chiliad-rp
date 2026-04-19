#if defined CHILIAD_GENERAL_DIALOGS
	#endinput
#endif
#define CHILIAD_GENERAL_DIALOGS

General_ShowHelp(playerid)
{
	new content[512];
	strcat(content, P"1."W" General commands\n"P"2."W" Vehicle commands\n"P"3."W" Business commands");

	if (Admin_Require(playerid, 1))
	{
		strcat(content, "\n"P"4."W" Admin commands");
	}

	SPD(playerid, DIALOG_HELP_MAIN, DSL,
		DIALOG_TITLE("Help Sections"),
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_CLOSE
	);
	return 1;
}

General_ShowCommandsHelp(playerid)
{
	SPD(playerid, DIALOG_HELP_GENERAL, DSM,
		DIALOG_TITLE("General Help"),
		P"/menu"W" - Open the main menu.\n\
		"P"/inventory"W" - Open your inventory.\n\
		"P"/settings"W" - Change character settings.\n\
		"P"/bank"W" - Manage bank cards and money.\n\
		"P"/admins"W" - View online administrators.\n\
		"P"/pay"W" - Give cash to another player.\n\
		"P"/stats"W" - View basic character stats.\n\
		"P"/pm"W" - Send a private message.\n\
		"P"/id"W" - Find a player's server ID.\n\
		"P"/time"W" - View server time.\n\n\
		"P"/n"W" - Send an OOC message.\n\
		"P"/an"W" - Send an administrator OOC message.\n\
		"P"/s"W" - Shout nearby.\n\
		"P"/w"W" - Whisper nearby.\n\
		"P"/me"W" - Describe a character action.\n\
		"P"/ame"W" - Show a short action above you.\n\
		"P"/do"W" - Describe a scene or detail.\n\
		"P"/ado"W" - Show a scene detail above you.\n\
		"P"/todo"W" - Speak with an attached action.\n\
		"P"/try"W" - Attempt an action with random success.\n\
		"P"/coin"W" - Flip a coin.\n\n\
		"P"/action"W" - Set or clear your action label.\n\
		"P"/delaction"W" - Clear another player's action label.\n\
		"P"/pame"W" - Set or clear your character description.",
		DIALOG_BUTTON_BACK,
		""
	);
	return 1;
}

General_ShowVehiclesHelp(playerid)
{
	SPD(playerid, DIALOG_HELP_VEHICLES, DSM,
		DIALOG_TITLE("Vehicle Help"),
		P"/vehicles"W" - View your owned vehicles.\n\
		"P"KEY_ACTION"W" - Toggle engine.\n\
		"P"KEY_FIRE"W" - Toggle lights.\n\
		"P"KEY_YES"W" - Lock/Unlock vehicle.",
		DIALOG_BUTTON_BACK,
		""
	);
	return 1;
}

General_ShowBusinessesHelp(playerid)
{
	SPD(playerid, DIALOG_HELP_BUSINESSES, DSM,
		DIALOG_TITLE("Business Help"),
		P"/buybusiness"W" - Purchase the nearest unowned business (or press "P"N"W").\n\
		"P"/business"W" - Manage your owned business.\n\
		"P"/exitbusiness"W" - Exit a business (or press "P"ALT"W").\n\
		"P"KEY_WALK (ALT)"W" - Enter a business.\n\
		"P"KEY_YES (Y)"W" - Open shop menu while inside.",
		DIALOG_BUTTON_BACK,
		""
	);
	return 1;
}

General_HandleHelpMain(playerid, response, listitem)
{
	if (!response) return 1;

	switch (listitem)
	{
		case 0: General_ShowCommandsHelp(playerid);
		case 1: General_ShowVehiclesHelp(playerid);
		case 2: General_ShowBusinessesHelp(playerid);
		case 3:
		{
			if (Admin_Require(playerid, 1))
			{
				Admin_ShowHelp(playerid);
			}
			else
			{
				General_ShowHelp(playerid);
			}
		}
	}
	return 1;
}
