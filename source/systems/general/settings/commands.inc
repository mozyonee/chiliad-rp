#if defined CHILIAD_SETTINGS_COMMANDS
	#endinput
#endif
#define CHILIAD_SETTINGS_COMMANDS

CMD:settings(playerid)
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	Settings_ShowMain(playerid);
	return 1;
}
