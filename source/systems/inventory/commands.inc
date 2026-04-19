#if defined CHILIAD_INVENTORY_COMMANDS
	#endinput
#endif
#define CHILIAD_INVENTORY_COMMANDS

alias:inventory("inv")
CMD:inventory(playerid)
{
	if (!Inventory_RequireLoaded(playerid))
	{
		return 1;
	}

	Inventory_ShowList(playerid);
	return 1;
}
