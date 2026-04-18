#if defined CHILIAD_GENERAL_CHAT
	#endinput
#endif
#define CHILIAD_GENERAL_CHAT

General_OnPlayerText(playerid, const text[])
{
	if (Admin_IsDuty(playerid))
	{
		new message[144];
		format(message, sizeof(message), "%s", text);
		pc_cmd_n(playerid, message);
		return 0;
	}

	new name[MAX_PLAYER_NAME + 1], message[144];

	General_GetDisplayName(playerid, name, sizeof name);
	General_ReplaceSymbol(name, '_', ' ');

	format(message, sizeof message, "%s: %s", name, text);
	General_SendLocalMessage(playerid, GENERAL_RADIUS_TALK, COLOR_WHITE, message);
	return 0;
}
