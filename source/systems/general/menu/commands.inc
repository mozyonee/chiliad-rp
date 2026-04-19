#if defined CHILIAD_GENERAL_MENU_COMMANDS
	#endinput
#endif
#define CHILIAD_GENERAL_MENU_COMMANDS

alias:menu("mn", "mm")
CMD:menu(playerid)
{
	GeneralMenu_ShowMain(playerid);
	return 1;
}
