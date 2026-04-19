#if defined CHILIAD_INVENTORY
	#endinput
#endif
#define CHILIAD_INVENTORY

#include "source/systems/inventory/data.inc"
#include "source/systems/inventory/database.inc"

forward bool:Inventory_IsLoaded(playerid);
forward bool:Inventory_RequireLoaded(playerid);
forward Inventory_GetItemName(E_ITEM:itemid, name[], size = sizeof name);
forward Inventory_GetAmount(playerid, E_ITEM:itemid);
forward bool:Inventory_Has(playerid, E_ITEM:itemid, amount);
forward bool:Inventory_Set(playerid, E_ITEM:itemid, amount);
forward bool:Inventory_Add(playerid, E_ITEM:itemid, amount);
forward bool:Inventory_Remove(playerid, E_ITEM:itemid, amount);
forward bool:Inventory_Transfer(from_playerid, to_playerid, E_ITEM:itemid, amount);
forward bool:Inventory_Use(playerid, E_ITEM:itemid, amount = 1);
forward bool:Inventory_Throw(playerid, E_ITEM:itemid, amount);
forward InventoryCash_SyncDisplay(playerid);
forward bool:InventorySkins_IsItem(E_ITEM:itemid);
forward InventorySkins_GetName(E_ITEM:itemid, name[], size = sizeof name);
forward bool:InventorySkins_Use(playerid, E_ITEM:itemid, amount);
forward InventorySkins_Throw(playerid, E_ITEM:itemid, amount);
forward Banking_OpenCardFromItem(playerid, E_ITEM:itemid);
forward Inventory_FindCacheIndex(playerid, E_ITEM:itemid);
forward Inventory_FindFreeCacheIndex(playerid);

Inventory_Init()
{
	InventoryDB_EnsureTables();
	return 1;
}

Inventory_Reset(playerid)
{
	InventoryLoaded[playerid] = false;
	InventorySelectedItem[playerid] = INVALID_ITEM_ID;
	InventoryDialogItemCount[playerid] = 0;

	for (new i = 0; i < INVENTORY_MAX_CACHE_ITEMS; i++)
	{
		InventoryData[playerid][i][InventoryItemID] = INVALID_ITEM_ID;
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

stock bool:Inventory_RequireLoaded(playerid)
{
	if (!General_RequireCharacter(playerid))
	{
		return false;
	}

	if (!Inventory_IsLoaded(playerid))
	{
		SendError(playerid, "Inventory is not loaded yet.");
		return false;
	}

	return true;
}

stock Inventory_GetItemName(E_ITEM:itemid, name[], size = sizeof name)
{
	switch (itemid)
	{
		case INVALID_ITEM_ID:
		{
			format(name, size, "Invalid Item");
			return 1;
		}
		case CASH:
		{
			format(name, size, "Cash");
			return 1;
		}
		case BANK_CARD:
		{
			format(name, size, "Bank Card");
			return 1;
		}
		case PHONE:
		{
			format(name, size, "Phone");
			return 1;
		}
		case WATCH:
		{
			format(name, size, "Watch");
			return 1;
		}
		case CAMERA:
		{
			format(name, size, "Camera");
			return 1;
		}
		case RADIO:
		{
			format(name, size, "Radio");
			return 1;
		}
		case CROWBAR:
		{
			format(name, size, "Crowbar");
			return 1;
		}
		case GAS_CAN:
		{
			format(name, size, "Gas Can");
			return 1;
		}
		case FISHING_ROD:
		{
			format(name, size, "Fishing Rod");
			return 1;
		}
		case BAIT:
		{
			format(name, size, "Bait");
			return 1;
		}
		case REPAIR_KIT:
		{
			format(name, size, "Repair Kit");
			return 1;
		}
		case LIGHTER:
		{
			format(name, size, "Lighter");
			return 1;
		}
		case WATER:
		{
			format(name, size, "Water");
			return 1;
		}
		case SODA:
		{
			format(name, size, "Soda");
			return 1;
		}
		case BREAD:
		{
			format(name, size, "Bread");
			return 1;
		}
		case SANDWICH:
		{
			format(name, size, "Sandwich");
			return 1;
		}
		case CHIPS:
		{
			format(name, size, "Chips");
			return 1;
		}
		case CIGARETTES:
		{
			format(name, size, "Cigarettes");
			return 1;
		}
		case ARMOUR:
		{
			format(name, size, "Body Armour");
			return 1;
		}
		case SKIN:
		{
			return InventorySkins_GetName(itemid, name, size);
		}
	}

	format(name, size, "Item #%d", _:itemid);
	return 1;
}

stock Inventory_GetAmount(playerid, E_ITEM:itemid)
{
	new index = Inventory_FindCacheIndex(playerid, itemid);

	if (index == -1)
	{
		return 0;
	}

	return InventoryData[playerid][index][InventoryAmount];
}

stock bool:Inventory_Has(playerid, E_ITEM:itemid, amount)
{
	return amount > 0 && Inventory_GetAmount(playerid, itemid) >= amount;
}

stock bool:Inventory_Set(playerid, E_ITEM:itemid, amount)
{
	if (!Inventory_IsLoaded(playerid) || itemid <= INVALID_ITEM_ID || amount < 0)
	{
		return false;
	}

	new index = Inventory_FindCacheIndex(playerid, itemid);

	if (amount == 0)
	{
		if (index != -1)
		{
			InventoryData[playerid][index][InventoryItemID] = INVALID_ITEM_ID;
			InventoryData[playerid][index][InventoryAmount] = 0;
		}

		InventoryDB_DeleteItem(playerid, itemid);
		if (itemid == CASH)
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
	if (itemid == CASH)
	{
		InventoryCash_SyncDisplay(playerid);
	}
	return true;
}

stock bool:Inventory_Add(playerid, E_ITEM:itemid, amount)
{
	if (amount <= 0)
	{
		return false;
	}

	return Inventory_Set(playerid, itemid, Inventory_GetAmount(playerid, itemid) + amount);
}

stock bool:Inventory_Remove(playerid, E_ITEM:itemid, amount)
{
	if (!Inventory_Has(playerid, itemid, amount))
	{
		return false;
	}

	return Inventory_Set(playerid, itemid, Inventory_GetAmount(playerid, itemid) - amount);
}

stock bool:Inventory_Transfer(from_playerid, to_playerid, E_ITEM:itemid, amount)
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

stock bool:Inventory_Use(playerid, E_ITEM:itemid, amount = 1)
{
	if (!Inventory_Has(playerid, itemid, amount))
	{
		return false;
	}

	switch (itemid)
	{
		case BANK_CARD:
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

stock bool:Inventory_Throw(playerid, E_ITEM:itemid, amount)
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

static Inventory_FindCacheIndex(playerid, E_ITEM:itemid)
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
		if (InventoryData[playerid][i][InventoryItemID] == INVALID_ITEM_ID)
		{
			return i;
		}
	}

	return -1;
}

#include "source/systems/inventory/dialogs.inc"
#include "source/systems/inventory/callbacks.inc"
#include "source/systems/inventory/commands.inc"
#include "source/systems/inventory/cash/index.inc"
#include "source/systems/inventory/skins/index.inc"
#include "source/systems/inventory/hooks.inc"
