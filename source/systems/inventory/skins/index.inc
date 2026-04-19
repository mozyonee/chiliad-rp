#if defined CHILIAD_INVENTORY_SKINS
	#endinput
#endif
#define CHILIAD_INVENTORY_SKINS

static E_ITEM:InventorySkins_SkinToItem(skinid);
static InventorySkins_ItemToSkin(E_ITEM:itemid);

bool:InventorySkins_IsItem(E_ITEM:itemid)
{
	new skinid = InventorySkins_ItemToSkin(itemid);
	return itemid >= SKIN && Character_IsValidSkin(skinid);
}

InventorySkins_GetName(E_ITEM:itemid, name[], size = sizeof name)
{
	format(name, size, "Skin #%d", InventorySkins_ItemToSkin(itemid));
	return 1;
}

bool:InventorySkins_Use(playerid, E_ITEM:itemid, amount)
{
	#pragma unused amount

	new skinid = InventorySkins_ItemToSkin(itemid);

	if (!Character_IsValidSkin(skinid))
	{
		SendError(playerid, "Invalid skin item.");
		return false;
	}

	if (Character_GetSkin(playerid) == skinid)
	{
		Character_SetSkin(playerid, Character_GetNakedSkin(playerid));
		return true;
	}

	Character_SetSkin(playerid, skinid);
	return true;
}

InventorySkins_EnsureCurrent(playerid)
{
	new skinid = Character_GetSkin(playerid);

	if (Character_IsNakedSkin(skinid))
	{
		return 1;
	}

	new E_ITEM:itemid = InventorySkins_SkinToItem(skinid);

	if (!Inventory_Has(playerid, itemid, 1))
	{
		Inventory_Add(playerid, itemid, 1);
	}

	return 1;
}

InventorySkins_Throw(playerid, E_ITEM:itemid, amount)
{
	#pragma unused amount

	new skinid = InventorySkins_ItemToSkin(itemid);

	if (Character_GetSkin(playerid) == skinid)
	{
		Character_SetSkin(playerid, Character_GetNakedSkin(playerid));
	}

	return 1;
}

static E_ITEM:InventorySkins_SkinToItem(skinid)
{
	return E_ITEM:(_:SKIN + skinid);
}

static InventorySkins_ItemToSkin(E_ITEM:itemid)
{
	return (_:itemid - _:SKIN);
}
