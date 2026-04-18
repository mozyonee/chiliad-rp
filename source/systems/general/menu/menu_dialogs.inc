#if defined CHILIAD_GENERAL_MENU_DIALOGS
	#endinput
#endif
#define CHILIAD_GENERAL_MENU_DIALOGS

GeneralMenu_ShowMain(playerid)
{
	SPD(playerid, DIALOG_MENU_MAIN, DSL,
		DIALOG_TITLE("Menu"),
		P"1."W" Change character\n"P"2."W" Inventory\n"P"3."W" Settings\n"P"4."W" Help",
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_CANCEL
	);
	return 1;
}

GeneralMenu_HandleMainDialog(playerid, response, listitem)
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
		case 1:
		{
			pc_cmd_inventory(playerid);
		}
		case 2:
		{
			pc_cmd_settings(playerid);
		}
		case 3:
		{
			pc_cmd_help(playerid);
		}
	}

	return 1;
}
