#if defined CHILIAD_GENERAL_MENU_CMDS
	#endinput
#endif
#define CHILIAD_GENERAL_MENU_CMDS

alias:menu("mn", "mm")
CMD:menu(playerid)
{
	GeneralMenu_ShowMain(playerid);
	return 1;
}
