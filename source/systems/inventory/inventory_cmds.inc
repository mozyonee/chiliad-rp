#if defined CHILIAD_INVENTORY_CMDS
	#endinput
#endif
#define CHILIAD_INVENTORY_CMDS

alias:inventory("inv")
CMD:inventory(playerid)
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	Inventory_ShowList(playerid);
	return 1;
}
