#if defined CHILIAD_MENUS_DIALOGS
	#endinput
#endif
#define CHILIAD_MENUS_DIALOGS

#define DIALOG_MENU_MAIN (DIALOG_MENU_BASE + 1)

Menu_ShowMain(playerid)
{
	SPD(playerid, DIALOG_MENU_MAIN, DSL,
		DIALOG_TITLE("Menu"),
		P"1."W" Change character",
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_CANCEL
	);
	return 1;
}

Menu_HandleMainDialog(playerid, response, listitem)
{
	if (!response)
	{
		return 1;
	}

	switch (listitem)
	{
		case 0:
		{
			Character_Change(playerid);
		}
	}

	return 1;
}
