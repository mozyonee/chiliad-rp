#if defined CHILIAD_SETTINGS_DIALOGS
	#endinput
#endif
#define CHILIAD_SETTINGS_DIALOGS

Settings_ShowMain(playerid)
{
	new content[192];
	format(content, sizeof(content),
		P"1."W" Private messages: %s\n"P"2."W" OOC chat: %s",
		SettingsData[playerid][PMEnabled] ? (YES"enabled") : (NO"disabled"),
		SettingsData[playerid][OOCChatEnabled] ? (YES"enabled") : (NO"disabled")
	);

	SPD(playerid, DIALOG_SETTINGS_MAIN, DSL,
		DIALOG_TITLE("Settings"),
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_CANCEL
	);
	return 1;
}

Settings_HandleMainDialog(playerid, response, listitem)
{
	if (!response)
	{
		return 1;
	}

	switch (listitem)
	{
		case 0:
		{
			Settings_SetPMEnabled(playerid, !SettingsData[playerid][PMEnabled]);
		}
		case 1:
		{
			Settings_SetOOCChatEnabled(playerid, !SettingsData[playerid][OOCChatEnabled]);
		}
	}

	return Settings_ShowMain(playerid);
}
