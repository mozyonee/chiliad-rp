#if defined CHILIAD_SETTINGS_CMDS
	#endinput
#endif
#define CHILIAD_SETTINGS_CMDS

CMD:settings(playerid)
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	Settings_ShowMain(playerid);
	return 1;
}
