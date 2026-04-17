#if defined CHILIAD_CHARACTERS_HOOKS
	#endinput
#endif
#define CHILIAD_CHARACTERS_HOOKS

Character_OnPlayerDisconnect(playerid, reason)
{
	#pragma unused reason

	Character_SaveUnloadPosition(playerid);
	Character_Reset(playerid);
	return 1;
}

Character_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[])
{
	switch (dialogid)
	{
		case DIALOG_CHARACTER_SELECT:
			return Character_HandleSelectDialog(playerid, response, listitem);

		case DIALOG_CHARACTER_CREATE_NAME:
			return Character_HandleCreateNameDialog(playerid, response, inputtext);

		case DIALOG_CHARACTER_RESUME_SESSION:
			return Character_HandleResumeSessionDialog(playerid, response);
	}

	return 1;
}
