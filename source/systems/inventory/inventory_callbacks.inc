#if defined CHILIAD_INVENTORY_CALLBACKS
	#endinput
#endif
#define CHILIAD_INVENTORY_CALLBACKS

forward Inventory_OnLoaded(playerid);
public Inventory_OnLoaded(playerid)
{
	if (!IsPlayerConnected(playerid) || !Character_IsLoaded(playerid))
	{
		return 1;
	}

	for (new i = 0; i < INVENTORY_MAX_CACHE_ITEMS; i++)
	{
		InventoryData[playerid][i][InventoryItemID] = ITEM_INVALID;
		InventoryData[playerid][i][InventoryAmount] = 0;
	}

	new rows = cache_num_rows();
	new itemid, amount;

	for (new i = 0; i < rows && i < INVENTORY_MAX_CACHE_ITEMS; i++)
	{
		cache_get_value_name_int(i, "item_id", itemid);
		cache_get_value_name_int(i, "amount", amount);

		if (itemid <= ITEM_INVALID || amount <= 0)
		{
			continue;
		}

		InventoryData[playerid][i][InventoryItemID] = itemid;
		InventoryData[playerid][i][InventoryAmount] = amount;
	}

	InventoryLoaded[playerid] = true;
	InventoryCash_SyncDisplay(playerid);
	Character_OnInventoryLoaded(playerid);
	return 1;
}
