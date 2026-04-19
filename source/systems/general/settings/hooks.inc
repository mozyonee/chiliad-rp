#if defined CHILIAD_SETTINGS_HOOKS
	#endinput
#endif
#define CHILIAD_SETTINGS_HOOKS

Settings_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[])
{
	#pragma unused inputtext

	switch (dialogid)
	{
		case DIALOG_SETTINGS_MAIN:
			return Settings_HandleMainDialog(playerid, response, listitem);
	}

	return 1;
}
