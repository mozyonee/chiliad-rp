#if defined CHILIAD_INVENTORY
	#endinput
#endif
#define CHILIAD_INVENTORY

#include "source/systems/inventory/inventory_data.inc"
#include "source/systems/inventory/inventory_db.inc"

forward bool:Inventory_IsLoaded(playerid);
forward Inventory_GetItemName(itemid, name[], size = sizeof name);
forward Inventory_GetAmount(playerid, itemid);
forward bool:Inventory_Has(playerid, itemid, amount);
forward bool:Inventory_Set(playerid, itemid, amount);
forward bool:Inventory_Add(playerid, itemid, amount);
forward bool:Inventory_Remove(playerid, itemid, amount);
forward bool:Inventory_Transfer(from_playerid, to_playerid, itemid, amount);
forward bool:Inventory_Use(playerid, itemid, amount = 1);
forward bool:Inventory_Throw(playerid, itemid, amount);
forward InventoryCash_SyncDisplay(playerid);
forward bool:InventorySkins_IsItem(itemid);
forward InventorySkins_GetName(itemid, name[], size = sizeof name);
forward bool:InventorySkins_Use(playerid, itemid, amount);
forward InventorySkins_Throw(playerid, itemid, amount);
forward Banking_OpenCardFromItem(playerid, itemid);
forward Inventory_FindCacheIndex(playerid, itemid);
forward Inventory_FindFreeCacheIndex(playerid);

Inventory_Init()
{
	InventoryDB_EnsureTables();
	return 1;
}

Inventory_Reset(playerid)
{
	InventoryLoaded[playerid] = false;
	InventorySelectedItem[playerid] = ITEM_INVALID;
	InventoryDialogItemCount[playerid] = 0;

	for (new i = 0; i < INVENTORY_MAX_CACHE_ITEMS; i++)
	{
		InventoryData[playerid][i][InventoryItemID] = ITEM_INVALID;
		InventoryData[playerid][i][InventoryAmount] = 0;
	}

	return 1;
}

Inventory_Load(playerid)
{
	Inventory_Reset(playerid);
	InventoryDB_Load(playerid);
	return 1;
}

stock bool:Inventory_IsLoaded(playerid)
{
	return InventoryLoaded[playerid];
}

stock Inventory_GetItemName(itemid, name[], size = sizeof name)
{
	switch (itemid)
	{
		case ITEM_CASH:
		{
			format(name, size, "Cash");
			return 1;
		}
		case ITEM_BANK_CARD:
		{
			format(name, size, "Bank Card");
			return 1;
		}
	}

	if (InventorySkins_IsItem(itemid))
	{
		return InventorySkins_GetName(itemid, name, size);
	}

	format(name, size, "Item #%d", itemid);
	return 1;
}

stock Inventory_GetAmount(playerid, itemid)
{
	new index = Inventory_FindCacheIndex(playerid, itemid);

	if (index == -1)
	{
		return 0;
	}

	return InventoryData[playerid][index][InventoryAmount];
}

stock bool:Inventory_Has(playerid, itemid, amount)
{
	return amount > 0 && Inventory_GetAmount(playerid, itemid) >= amount;
}

stock bool:Inventory_Set(playerid, itemid, amount)
{
	if (!Inventory_IsLoaded(playerid) || itemid <= ITEM_INVALID || amount < 0)
	{
		return false;
	}

	new index = Inventory_FindCacheIndex(playerid, itemid);

	if (amount == 0)
	{
		if (index != -1)
		{
			InventoryData[playerid][index][InventoryItemID] = ITEM_INVALID;
			InventoryData[playerid][index][InventoryAmount] = 0;
		}

		InventoryDB_DeleteItem(playerid, itemid);
		if (itemid == ITEM_CASH)
		{
			InventoryCash_SyncDisplay(playerid);
		}
		return true;
	}

	if (index == -1)
	{
		index = Inventory_FindFreeCacheIndex(playerid);

		if (index == -1)
		{
			SendError(playerid, "Your inventory has too many different item types loaded.");
			return false;
		}
	}

	InventoryData[playerid][index][InventoryItemID] = itemid;
	InventoryData[playerid][index][InventoryAmount] = amount;
	InventoryDB_SetItem(playerid, itemid, amount);
	if (itemid == ITEM_CASH)
	{
		InventoryCash_SyncDisplay(playerid);
	}
	return true;
}

stock bool:Inventory_Add(playerid, itemid, amount)
{
	if (amount <= 0)
	{
		return false;
	}

	return Inventory_Set(playerid, itemid, Inventory_GetAmount(playerid, itemid) + amount);
}

stock bool:Inventory_Remove(playerid, itemid, amount)
{
	if (!Inventory_Has(playerid, itemid, amount))
	{
		return false;
	}

	return Inventory_Set(playerid, itemid, Inventory_GetAmount(playerid, itemid) - amount);
}

stock bool:Inventory_Transfer(from_playerid, to_playerid, itemid, amount)
{
	if (!Inventory_Has(from_playerid, itemid, amount))
	{
		return false;
	}

	if (!Inventory_IsLoaded(to_playerid))
	{
		return false;
	}

	if (!Inventory_Add(to_playerid, itemid, amount))
	{
		return false;
	}

	Inventory_Remove(from_playerid, itemid, amount);
	return true;
}

stock bool:Inventory_Use(playerid, itemid, amount = 1)
{
	if (!Inventory_Has(playerid, itemid, amount))
	{
		return false;
	}

	switch (itemid)
	{
		case ITEM_BANK_CARD:
		{
			return bool:Banking_OpenCardFromItem(playerid, itemid);
		}
	}

	if (InventorySkins_IsItem(itemid))
	{
		return InventorySkins_Use(playerid, itemid, amount);
	}

	SendError(playerid, "This item cannot be used.");
	return false;
}

stock bool:Inventory_Throw(playerid, itemid, amount)
{
	if (!Inventory_Remove(playerid, itemid, amount))
	{
		return false;
	}

	if (InventorySkins_IsItem(itemid))
	{
		InventorySkins_Throw(playerid, itemid, amount);
	}

	return true;
}

static Inventory_FindCacheIndex(playerid, itemid)
{
	for (new i = 0; i < INVENTORY_MAX_CACHE_ITEMS; i++)
	{
		if (InventoryData[playerid][i][InventoryItemID] == itemid)
		{
			return i;
		}
	}

	return -1;
}

static Inventory_FindFreeCacheIndex(playerid)
{
	for (new i = 0; i < INVENTORY_MAX_CACHE_ITEMS; i++)
	{
		if (InventoryData[playerid][i][InventoryItemID] == ITEM_INVALID)
		{
			return i;
		}
	}

	return -1;
}

#include "source/systems/inventory/inventory_dialogs.inc"
#include "source/systems/inventory/inventory_callbacks.inc"
#include "source/systems/inventory/inventory_cmds.inc"
#include "source/systems/inventory/cash/cash.inc"
#include "source/systems/inventory/skins/skins.inc"
#include "source/systems/inventory/inventory_hooks.inc"
