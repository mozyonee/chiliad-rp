#if defined CHILIAD_MENUS_CMDS
	#endinput
#endif
#define CHILIAD_MENUS_CMDS

Menu_OnPlayerCommandText(playerid, const cmdtext[])
{
	if (!strcmp(cmdtext, "/menu", true))
	{
		Menu_ShowMain(playerid);
		return 1;
	}

	return 0;
}
