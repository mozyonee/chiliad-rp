#if defined CHILIAD_MENUS_CMDS
	#endinput
#endif
#define CHILIAD_MENUS_CMDS

alias:menu("mn", "mm")
CMD:menu(playerid)
{
	Menu_ShowMain(playerid);
	return 1;
}
