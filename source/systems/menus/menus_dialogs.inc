#if defined CHILIAD_MENUS_DIALOGS
	#endinput
#endif
#define CHILIAD_MENUS_DIALOGS

#define DIALOG_MENU_MAIN (DIALOG_MENU_BASE + 1)

Menu_ShowMain(playerid)
{
	ShowPlayerDialog(playerid, DIALOG_MENU_MAIN, DIALOG_STYLE_LIST,
		"Menu",
		"Change character",
		"Select",
		"Close"
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
