#if defined CHILIAD_GENERAL_MENU_HOOKS
	#endinput
#endif
#define CHILIAD_GENERAL_MENU_HOOKS

GeneralMenu_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[])
{
	#pragma unused inputtext

	switch (dialogid)
	{
		case DIALOG_MENU_MAIN:
			return GeneralMenu_HandleMainDialog(playerid, response, listitem);
	}

	return 1;
}
