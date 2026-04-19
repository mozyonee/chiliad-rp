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
		InventoryData[playerid][i][InventoryItemID] = INVALID_ITEM_ID;
		InventoryData[playerid][i][InventoryAmount] = 0;
	}

	new rows = cache_num_rows();
	new E_ITEM:itemid, amount, temp_itemid;

	for (new i = 0; i < rows && i < INVENTORY_MAX_CACHE_ITEMS; i++)
	{
		cache_get_value_name_int(i, "item_id", temp_itemid);
		cache_get_value_name_int(i, "amount", amount);

		itemid = E_ITEM:temp_itemid;

		if (itemid <= INVALID_ITEM_ID || amount <= 0)
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
