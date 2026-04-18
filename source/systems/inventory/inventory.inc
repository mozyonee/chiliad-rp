#if defined CHILIAD_INVENTORY
	#endinput
#endif
#define CHILIAD_INVENTORY

#include "source/systems/inventory/inventory_data.inc"
#include "source/systems/inventory/inventory_db.inc"

forward bool:Inventory_IsLoaded(playerid);
forward Inventory_RegisterItem(itemid, const name[], const use_handler[] = "", const throw_handler[] = "");
forward Inventory_GetItemName(itemid, name[], size = sizeof name);
forward Inventory_GetAmount(playerid, itemid);
forward bool:Inventory_Has(playerid, itemid, amount);
forward bool:Inventory_Set(playerid, itemid, amount);
forward bool:Inventory_Add(playerid, itemid, amount);
forward bool:Inventory_Remove(playerid, itemid, amount);
forward bool:Inventory_Transfer(from_playerid, to_playerid, itemid, amount);
forward bool:Inventory_Use(playerid, itemid, amount = 1);
forward bool:Inventory_Throw(playerid, itemid, amount);
forward Money_Get(playerid);
forward bool:Money_Has(playerid, amount);
forward bool:Money_Set(playerid, amount);
forward bool:Money_Give(playerid, amount);
forward bool:Money_Take(playerid, amount);
forward Inventory_FindDefinition(itemid);
forward bool:Inventory_GetHandler(itemid, handler[], size = sizeof handler, bool:throw_handler = false);
forward Inventory_FindCacheIndex(playerid, itemid);
forward Inventory_FindFreeCacheIndex(playerid);

Inventory_Init()
{
	InventoryDB_EnsureTables();
	Inventory_RegisterItem(ITEM_CASH, "Cash");
	return 1;
}

Inventory_Reset(playerid)
{
	InventoryLoaded[playerid] = false;
	InventorySelectedItem[playerid] = INVALID_INVENTORY_ITEM_ID;
	InventoryDialogItemCount[playerid] = 0;

	for (new i = 0; i < INVENTORY_MAX_CACHE_ITEMS; i++)
	{
		InventoryData[playerid][i][InventoryItemID] = INVALID_INVENTORY_ITEM_ID;
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

stock Inventory_RegisterItem(itemid, const name[], const use_handler[] = "", const throw_handler[] = "")
{
	new index = Inventory_FindDefinition(itemid);

	if (index == -1)
	{
		if (InventoryItemCount >= INVENTORY_MAX_REGISTERED_ITEMS)
		{
			printf("[Inventory] Cannot register item %d. Registry is full.", itemid);
			return 0;
		}

		index = InventoryItemCount++;
	}

	InventoryItems[index][ItemDefID] = itemid;
	format(InventoryItems[index][ItemDefName], INVENTORY_ITEM_NAME_LENGTH, "%s", name);
	format(InventoryItems[index][ItemDefUseHandler], INVENTORY_HANDLER_LENGTH, "%s", use_handler);
	format(InventoryItems[index][ItemDefThrowHandler], INVENTORY_HANDLER_LENGTH, "%s", throw_handler);
	return 1;
}

stock bool:Inventory_IsRegisteredItem(itemid)
{
	return Inventory_FindDefinition(itemid) != -1;
}

stock Inventory_GetItemName(itemid, name[], size = sizeof name)
{
	new index = Inventory_FindDefinition(itemid);

	if (index == -1)
	{
		format(name, size, "Item #%d", itemid);
		return 1;
	}

	format(name, size, "%s", InventoryItems[index][ItemDefName]);
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
	if (!Inventory_IsLoaded(playerid) || itemid <= INVALID_INVENTORY_ITEM_ID || amount < 0)
	{
		return false;
	}

	new index = Inventory_FindCacheIndex(playerid, itemid);

	if (amount == 0)
	{
		if (index != -1)
		{
			InventoryData[playerid][index][InventoryItemID] = INVALID_INVENTORY_ITEM_ID;
			InventoryData[playerid][index][InventoryAmount] = 0;
		}

		InventoryDB_DeleteItem(playerid, itemid);
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

	new handler[INVENTORY_HANDLER_LENGTH];
	if (!Inventory_GetHandler(itemid, handler, sizeof(handler)))
	{
		SendError(playerid, "This item cannot be used.");
		return false;
	}

	return bool:CallLocalFunction(handler, "iii", playerid, itemid, amount);
}

stock bool:Inventory_Throw(playerid, itemid, amount)
{
	if (!Inventory_Remove(playerid, itemid, amount))
	{
		return false;
	}

	new handler[INVENTORY_HANDLER_LENGTH];
	if (Inventory_GetHandler(itemid, handler, sizeof(handler), true))
	{
		CallLocalFunction(handler, "iii", playerid, itemid, amount);
	}

	return true;
}

stock Money_Get(playerid)
{
	return Inventory_GetAmount(playerid, ITEM_CASH);
}

stock bool:Money_Has(playerid, amount)
{
	return Inventory_Has(playerid, ITEM_CASH, amount);
}

stock bool:Money_Set(playerid, amount)
{
	return Inventory_Set(playerid, ITEM_CASH, amount);
}

stock bool:Money_Give(playerid, amount)
{
	return Inventory_Add(playerid, ITEM_CASH, amount);
}

stock bool:Money_Take(playerid, amount)
{
	return Inventory_Remove(playerid, ITEM_CASH, amount);
}

static Inventory_FindDefinition(itemid)
{
	for (new i = 0; i < InventoryItemCount; i++)
	{
		if (InventoryItems[i][ItemDefID] == itemid)
		{
			return i;
		}
	}

	return -1;
}

static bool:Inventory_GetHandler(itemid, handler[], size = sizeof handler, bool:throw_handler = false)
{
	new index = Inventory_FindDefinition(itemid);

	if (index == -1)
	{
		return false;
	}

	if (throw_handler)
	{
		if (!InventoryItems[index][ItemDefThrowHandler][0])
		{
			return false;
		}

		format(handler, size, "%s", InventoryItems[index][ItemDefThrowHandler]);
		return true;
	}

	if (!InventoryItems[index][ItemDefUseHandler][0])
	{
		return false;
	}

	format(handler, size, "%s", InventoryItems[index][ItemDefUseHandler]);
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
		if (InventoryData[playerid][i][InventoryItemID] == INVALID_INVENTORY_ITEM_ID)
		{
			return i;
		}
	}

	return -1;
}

#include "source/systems/inventory/inventory_dialogs.inc"
#include "source/systems/inventory/inventory_callbacks.inc"
#include "source/systems/inventory/inventory_cmds.inc"
#include "source/systems/inventory/inventory_hooks.inc"
