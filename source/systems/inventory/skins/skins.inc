#if defined CHILIAD_INVENTORY_SKINS
	#endinput
#endif
#define CHILIAD_INVENTORY_SKINS

bool:InventorySkins_IsItem(itemid)
{
	new skinid = InventorySkins_ItemToSkin(itemid);
	return itemid >= ITEM_SKIN && itemid < ITEM_BANK_CARD && Character_IsValidSkin(skinid);
}

InventorySkins_GetName(itemid, name[], size = sizeof name)
{
	format(name, size, "Skin #%d", InventorySkins_ItemToSkin(itemid));
	return 1;
}

bool:InventorySkins_Use(playerid, itemid, amount)
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

	new itemid = InventorySkins_SkinToItem(skinid);

	if (!Inventory_Has(playerid, itemid, 1))
	{
		Inventory_Add(playerid, itemid, 1);
	}

	return 1;
}

InventorySkins_Throw(playerid, itemid, amount)
{
	#pragma unused amount

	new skinid = InventorySkins_ItemToSkin(itemid);

	if (Character_GetSkin(playerid) == skinid)
	{
		Character_SetSkin(playerid, Character_GetNakedSkin(playerid));
	}

	return 1;
}

static InventorySkins_SkinToItem(skinid)
{
	return ITEM_SKIN + skinid;
}

static InventorySkins_ItemToSkin(itemid)
{
	return itemid - ITEM_SKIN;
}
