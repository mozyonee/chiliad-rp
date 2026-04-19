#if defined CHILIAD_ADMIN_HOOKS
	#endinput
#endif
#define CHILIAD_ADMIN_HOOKS

Admin_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[])
{
	#pragma unused inputtext

	switch (dialogid)
	{
		case DIALOG_ADMIN_MENU:
			return Admin_HandleMenuDialog(playerid, response, listitem);

		case DIALOG_ADMIN_HELP:
			return Admin_HandleHelpDialog(playerid, response, listitem);

		case DIALOG_ADMIN_HELP_L1, DIALOG_ADMIN_HELP_L2, DIALOG_ADMIN_HELP_L3, DIALOG_ADMIN_HELP_L4, DIALOG_ADMIN_HELP_L5, DIALOG_ADMIN_HELP_L6, DIALOG_ADMIN_HELP_L7:
			return Admin_HandleLevelHelpDialog(playerid);

		case DIALOG_ADMIN_INTERIORS:
			return Admin_HandleInteriorDialog(playerid, response, listitem);
	}

	return 1;
}
