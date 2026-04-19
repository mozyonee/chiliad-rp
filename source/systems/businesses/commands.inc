#if defined CHILIAD_BUSINESSES_COMMANDS
	#endinput
#endif
#define CHILIAD_BUSINESSES_COMMANDS

CMD:createbusiness(playerid, params[])
{
	if (!Admin_Require(playerid, 6))
	{
		return 1;
	}

	new type, price, name[64];
	if (sscanf(params, "iiS(Business)[64]", type, price, name))
	{
		SendError(playerid, "Usage: /createbusiness [type] [price] [name]");
		SendInfo(playerid, "Types: 0: Groceries, 1: Gas, 2: Clothing, 3: Bar, 4: Ammo, 5: Gym, 6: Electronics");
		return 1;
	}

	if (type < _:TYPE_GROCERIES || type > _:TYPE_ELECTRONICS || price <= 0)
	{
		SendError(playerid, "Invalid business type or price.");
		return 1;
	}

	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);

	new Float:ix, Float:iy, Float:iz, iid;
	Business_GetDefaultInterior(E_BUSINESS_TYPE:type, ix, iy, iz, iid);

	BusinessDB_Create(type, price, name, x, y, z, ix, iy, iz, iid);
	SendSuccess(playerid, "Business creation request sent.");
	return 1;
}

CMD:delbusiness(playerid, params[])
{
	if (!Admin_Require(playerid, 6))
	{
		return 1;
	}

	new business_id;
	if (sscanf(params, "i", business_id))
	{
		SendError(playerid, "Usage: /delbusiness [business id]");
		return 1;
	}

	new id = Business_FindByID(business_id);
	if (id == -1)
	{
		SendError(playerid, "Business not found.");
		return 1;
	}

	Business_Delete(id);
	SendSuccess(playerid, "Business deletion request sent.");
	return 1;
}

CMD:gotobusiness(playerid, params[])
{
	if (!Admin_Require(playerid, 1))
	{
		return 1;
	}

	new business_id;
	if (sscanf(params, "i", business_id))
	{
		SendError(playerid, "Usage: /gotobusiness [business id]");
		return 1;
	}

	new id = Business_FindByID(business_id);
	if (id == -1)
	{
		SendError(playerid, "Business not found.");
		return 1;
	}

	SetPlayerPos(playerid, BusinessData[id][ExteriorX], BusinessData[id][ExteriorY], BusinessData[id][ExteriorZ] + 1.0);
	SetPlayerVirtualWorld(playerid, 0);
	SetPlayerInterior(playerid, 0);
	SendSuccess(playerid, "Teleported to business.");
	return 1;
}

CMD:buybusiness(playerid)
{
	if (!Inventory_RequireLoaded(playerid))
	{
		return 1;
	}

	new id = Business_FindNearbyExterior(playerid);
	if (id == -1)
	{
		SendError(playerid, "You are not near any business.");
		return 1;
	}

	if (BusinessData[id][OwnerID] != 0)
	{
		SendError(playerid, "This business is already owned.");
		return 1;
	}

	return Business_ShowBuyDialog(playerid, id);
}

CMD:business(playerid)
{
	if (!Inventory_RequireLoaded(playerid))
	{
		return 1;
	}

	return Business_ShowList(playerid);
}

CMD:exitbusiness(playerid)
{
	new id = Business_FindCurrentInterior(playerid, 10.0);
	if (id == -1)
	{
		SendError(playerid, "You are not inside a business or not near the exit.");
		return 1;
	}

	return Business_Exit(playerid, id);
}
