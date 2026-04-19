#if defined CHILIAD_BUSINESSES
	#endinput
#endif
#define CHILIAD_BUSINESSES

#include "source/systems/businesses/data.inc"
#include "source/systems/businesses/database.inc"

forward Business_OnAllLoaded();
forward Business_OnCreated();
forward Business_OnDeleted();
forward Business_Delete(id);
forward Business_EjectPlayers(id);
forward Business_DestroyRuntime(id);
forward Business_UnloadAll();
forward Business_GetVirtualWorld(id);
forward Business_GetDefaultInterior(E_BUSINESS_TYPE:type, &Float:x, &Float:y, &Float:z, &interiorid);
forward bool:Business_IsValidIndex(id);
forward Business_FindByID(business_id);
forward Business_FindNearbyExterior(playerid, Float:range = 2.0);
forward Business_FindCurrentInterior(playerid, Float:range = 2.0);
forward bool:Business_IsOwner(playerid, id);
forward Business_GetTypeName(E_BUSINESS_TYPE:type, name[], size = sizeof name);

Business_Init()
{
	BusinessDB_EnsureTables();
	BusinessDB_LoadAll();
	return 1;
}

Business_Enter(playerid, id)
{
	if (!Business_IsValidIndex(id)) return 0;

	if (BusinessData[id][Locked])
	{
		if (!Business_IsOwner(playerid, id) && !Admin_Require(playerid, 1))
		{
			SendError(playerid, "This business is locked.");
			return 1;
		}
	}

	SetPlayerPos(playerid, BusinessData[id][InteriorX], BusinessData[id][InteriorY], BusinessData[id][InteriorZ]);
	SetPlayerInterior(playerid, BusinessData[id][InteriorID]);
	SetPlayerVirtualWorld(playerid, BusinessData[id][VirtualWorld]);
	SetPlayerShopName(playerid, "");
	return 1;
}

Business_Exit(playerid, id)
{
	if (!Business_IsValidIndex(id)) return 0;

	SetPlayerPos(playerid, BusinessData[id][ExteriorX], BusinessData[id][ExteriorY], BusinessData[id][ExteriorZ] + 1.0);
	SetPlayerInterior(playerid, 0);
	SetPlayerVirtualWorld(playerid, 0);
	return 1;
}

Business_Refresh(id)
{
	if (!Business_IsValidIndex(id))
	{
		return 0;
	}

	Business_DestroyRuntime(id);

	new label[128], type_name[32];
	Business_GetTypeName(BusinessData[id][Type], type_name, sizeof(type_name));

	if (BusinessData[id][OwnerID] == 0)
	{
		format(label, sizeof(label), ""P"%s"W"\n"W"Type: "P"%s"W"\n"W"Price: "GREEN"$%d"W"\n"W"Press "P"ALT"W" to buy",
			BusinessData[id][Name],
			type_name,
			BusinessData[id][Price]);
	}
	else
	{
		format(label, sizeof(label), ""P"%s"W"\n"W"Type: "P"%s"W"\n"W"Press "P"ALT"W" to enter",
			BusinessData[id][Name],
			type_name);
	}

	BusinessData[id][PickupID] = CreatePickup(1274, 1, BusinessData[id][ExteriorX], BusinessData[id][ExteriorY], BusinessData[id][ExteriorZ], 0);
	BusinessData[id][LabelID] = Create3DTextLabel(label, -1, BusinessData[id][ExteriorX], BusinessData[id][ExteriorY], BusinessData[id][ExteriorZ] + 0.5, 10.0, 0, false);
	return 1;
}

public Business_OnAllLoaded()
{
	new rows = cache_num_rows();
	Business_UnloadAll();
	BusinessCount = 0;

	for (new i = 0; i < rows && i < MAX_BUSINESSES; i++)
	{
		cache_get_value_name_int(i, "id", BusinessData[i][ID]);
		cache_get_value_name_int(i, "owner_id", BusinessData[i][OwnerID]);
		
		new type;
		cache_get_value_name_int(i, "type", type);
		BusinessData[i][Type] = E_BUSINESS_TYPE:type;

		cache_get_value_name(i, "name", BusinessData[i][Name], 64);
		cache_get_value_name_int(i, "price", BusinessData[i][Price]);
		cache_get_value_name_int(i, "balance", BusinessData[i][Balance]);
		cache_get_value_name_int(i, "stock", BusinessData[i][Stock]);
		cache_get_value_name_int(i, "max_stock", BusinessData[i][MaxStock]);
		
		new locked;
		cache_get_value_name_int(i, "locked", locked);
		BusinessData[i][Locked] = locked;

		cache_get_value_name_float(i, "ext_x", BusinessData[i][ExteriorX]);
		cache_get_value_name_float(i, "ext_y", BusinessData[i][ExteriorY]);
		cache_get_value_name_float(i, "ext_z", BusinessData[i][ExteriorZ]);
		cache_get_value_name_float(i, "int_x", BusinessData[i][InteriorX]);
		cache_get_value_name_float(i, "int_y", BusinessData[i][InteriorY]);
		cache_get_value_name_float(i, "int_z", BusinessData[i][InteriorZ]);
		cache_get_value_name_int(i, "int_id", BusinessData[i][InteriorID]);
		BusinessData[i][VirtualWorld] = Business_GetVirtualWorld(BusinessData[i][ID]);

		BusinessData[i][PickupID] = -1;
		BusinessData[i][LabelID] = Text3D:INVALID_3DTEXT_ID;

		BusinessCount++;
		Business_Refresh(i);
	}
	return 1;
}

public Business_OnCreated()
{
	BusinessDB_LoadAll();
	return 1;
}

public Business_OnDeleted()
{
	BusinessDB_LoadAll();
	return 1;
}

Business_Delete(id)
{
	if (!Business_IsValidIndex(id))
	{
		return 0;
	}

	Business_EjectPlayers(id);
	Business_DestroyRuntime(id);
	BusinessDB_Delete(BusinessData[id][ID]);
	return 1;
}

Business_EjectPlayers(id)
{
	for (new i = 0; i < MAX_PLAYERS; i++)
	{
		if (!IsPlayerConnected(i))
		{
			continue;
		}

		if (GetPlayerVirtualWorld(i) == BusinessData[id][VirtualWorld])
		{
			Business_Exit(i, id);
		}
	}

	return 1;
}

Business_DestroyRuntime(id)
{
	if (BusinessData[id][PickupID] != -1)
	{
		DestroyPickup(BusinessData[id][PickupID]);
		BusinessData[id][PickupID] = -1;
	}

	if (BusinessData[id][LabelID] != Text3D:INVALID_3DTEXT_ID)
	{
		Delete3DTextLabel(BusinessData[id][LabelID]);
		BusinessData[id][LabelID] = Text3D:INVALID_3DTEXT_ID;
	}

	return 1;
}

Business_UnloadAll()
{
	for (new i = 0; i < BusinessCount; i++)
	{
		Business_DestroyRuntime(i);
	}

	return 1;
}

Business_GetVirtualWorld(id)
{
	return BUSINESS_VIRTUAL_WORLD_BASE + id;
}

Business_GetDefaultInterior(E_BUSINESS_TYPE:type, &Float:x, &Float:y, &Float:z, &interiorid)
{
	switch (type)
	{
		case TYPE_GROCERIES: { x = -25.8845; y = -185.1206; z = 1003.5469; interiorid = 17; }
		case TYPE_GAS_STATION: { x = -25.1325; y = -139.0669; z = 1003.5469; interiorid = 16; }
		case TYPE_CLOTHING: { x = 161.4111; y = -93.1022; z = 1001.8047; interiorid = 18; }
		case TYPE_BAR: { x = 501.9809; y = -69.1502; z = 998.7578; interiorid = 11; }
		case TYPE_AMMO: { x = 286.1489; y = -40.6443; z = 1001.5156; interiorid = 1; }
		case TYPE_GYM: { x = 772.1119; y = -3.8986; z = 1000.7288; interiorid = 5; }
		case TYPE_ELECTRONICS: { x = -2240.4229; y = -1711.4213; z = 1014.7607; interiorid = 1; }
		default: { x = 0.0; y = 0.0; z = 0.0; interiorid = 0; }
	}

	return 1;
}

bool:Business_IsValidIndex(id)
{
	return 0 <= id < BusinessCount;
}

Business_FindByID(business_id)
{
	for (new i = 0; i < BusinessCount; i++)
	{
		if (BusinessData[i][ID] == business_id)
		{
			return i;
		}
	}

	return -1;
}

Business_FindNearbyExterior(playerid, Float:range = 2.0)
{
	for (new i = 0; i < BusinessCount; i++)
	{
		if (IsPlayerInRangeOfPoint(playerid, range, BusinessData[i][ExteriorX], BusinessData[i][ExteriorY], BusinessData[i][ExteriorZ]))
		{
			return i;
		}
	}

	return -1;
}

Business_FindCurrentInterior(playerid, Float:range = 2.0)
{
	for (new i = 0; i < BusinessCount; i++)
	{
		if (GetPlayerVirtualWorld(playerid) != BusinessData[i][VirtualWorld] || GetPlayerInterior(playerid) != BusinessData[i][InteriorID])
		{
			continue;
		}

		if (IsPlayerInRangeOfPoint(playerid, range, BusinessData[i][InteriorX], BusinessData[i][InteriorY], BusinessData[i][InteriorZ]))
		{
			return i;
		}
	}

	return -1;
}

bool:Business_IsOwner(playerid, id)
{
	return Business_IsValidIndex(id) && BusinessData[id][OwnerID] == Account_GetID(playerid);
}

Business_GetTypeName(E_BUSINESS_TYPE:type, name[], size = sizeof name)
{
	switch (type)
	{
		case TYPE_GROCERIES: format(name, size, "Groceries Store");
		case TYPE_GAS_STATION: format(name, size, "Gas Station");
		case TYPE_CLOTHING: format(name, size, "Clothing Store");
		case TYPE_BAR: format(name, size, "Bar");
		case TYPE_AMMO: format(name, size, "Ammunition");
		case TYPE_GYM: format(name, size, "Gym");
		case TYPE_ELECTRONICS: format(name, size, "Electronics Store");
		default: format(name, size, "Business");
	}

	return 1;
}

#include "source/systems/businesses/commands.inc"
#include "source/systems/businesses/dialogs.inc"
#include "source/systems/businesses/hooks.inc"
