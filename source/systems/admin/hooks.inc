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
			return Admin_HandleHelpDialog(playerid, response);
	}

	return 1;
}
