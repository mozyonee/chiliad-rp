#if defined CHILIAD_MENUS_HOOKS
	#endinput
#endif
#define CHILIAD_MENUS_HOOKS

Menu_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[])
{
	#pragma unused inputtext

	switch (dialogid)
	{
		case DIALOG_MENU_MAIN:
			return Menu_HandleMainDialog(playerid, response, listitem);
	}

	return 1;
}
