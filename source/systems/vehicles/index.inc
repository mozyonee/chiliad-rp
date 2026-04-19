#if defined CHILIAD_VEHICLES
	#endinput
#endif
#define CHILIAD_VEHICLES

#include "source/systems/vehicles/data.inc"
#include "source/systems/vehicles/database.inc"

forward Vehicle_LoadCharacter(playerid);
forward Vehicle_UnloadCharacter(playerid);
forward Vehicle_InitPlayer(playerid);
forward Vehicle_Reset(playerid);
forward Vehicle_Spawn(playerid, index);
forward Vehicle_Park(playerid, index);
forward Vehicle_SaveLastPosition(playerid, index);
forward Vehicle_ToggleLock(playerid, index);
forward Vehicle_ToggleCurrentLock(playerid);
forward Vehicle_ToggleEngine(playerid);
forward Vehicle_ToggleLights(playerid);
forward Vehicle_Locate(playerid, index);
forward Vehicle_Goto(playerid, index);
forward Vehicle_Gethere(playerid, index);
forward Vehicle_Respawn(playerid, index);
forward bool:Vehicle_IsPlayerNear(playerid, index);
forward Vehicle_FindCurrentOrNearest(playerid, &index);
forward Vehicle_EjectOccupants(vehicleid);
forward Vehicle_HandleCheckpoint(playerid);
forward Vehicle_FindByWorldID(vehicleid, &ownerid, &index);
forward bool:Vehicle_IsValidModel(model);
forward Vehicle_GetModelName(model, name[], size = sizeof name);
forward Vehicle_GetPlate(playerid, index, plate[], size = sizeof plate);

#include "source/systems/vehicles/callbacks.inc"
#include "source/systems/vehicles/dialogs.inc"
#include "source/systems/vehicles/commands.inc"
#include "source/systems/vehicles/hooks.inc"

Vehicle_Init()
{
	VehicleDB_EnsureTables();
	return 1;
}

Vehicle_InitPlayer(playerid)
{
	for (new i = 0; i < VEHICLE_MAX_PLAYER_VEHICLES; i++)
	{
		VehicleData[playerid][i][VehicleWorldID] = VEHICLE_INVALID_WORLD_ID;
		VehicleDialogItems[playerid][i] = -1;
	}

	for (new i = 0; i < VEHICLE_MAX_DIALOG_OPTIONS; i++)
	{
		VehicleDialogOptions[playerid][i] = VEHICLE_OPTION_INVALID;
	}

	VehicleCount[playerid] = 0;
	VehicleSelectedIndex[playerid] = -1;
	VehicleLocateCheckpoint[playerid] = false;
	return 1;
}

Vehicle_Reset(playerid)
{
	for (new i = 0; i < VEHICLE_MAX_PLAYER_VEHICLES; i++)
	{
		if (VehicleData[playerid][i][VehicleWorldID] != VEHICLE_INVALID_WORLD_ID)
		{
			DestroyVehicle(VehicleData[playerid][i][VehicleWorldID]);
		}

		VehicleData[playerid][i][VehicleID] = VEHICLE_INVALID_ID;
		VehicleData[playerid][i][VehicleOwnerType] = VEHICLE_OWNER_INVALID;
		VehicleData[playerid][i][VehicleOwnerID] = 0;
		VehicleData[playerid][i][VehicleModel] = 0;
		VehicleData[playerid][i][VehicleColorOne] = 1;
		VehicleData[playerid][i][VehicleColorTwo] = 1;
		VehicleData[playerid][i][VehiclePlate][0] = EOS;
		VehicleData[playerid][i][VehicleLastX] = 0.0;
		VehicleData[playerid][i][VehicleLastY] = 0.0;
		VehicleData[playerid][i][VehicleLastZ] = 0.0;
		VehicleData[playerid][i][VehicleLastAngle] = 0.0;
		VehicleData[playerid][i][VehicleLastInterior] = 0;
		VehicleData[playerid][i][VehicleLastWorld] = 0;
		VehicleData[playerid][i][VehicleParkX] = 0.0;
		VehicleData[playerid][i][VehicleParkY] = 0.0;
		VehicleData[playerid][i][VehicleParkZ] = 0.0;
		VehicleData[playerid][i][VehicleParkAngle] = 0.0;
		VehicleData[playerid][i][VehicleParkInterior] = 0;
		VehicleData[playerid][i][VehicleParkWorld] = 0;
		VehicleData[playerid][i][VehicleLocked] = false;
		VehicleData[playerid][i][VehicleWorldID] = VEHICLE_INVALID_WORLD_ID;
		VehicleDialogItems[playerid][i] = -1;
	}

	for (new i = 0; i < VEHICLE_MAX_DIALOG_OPTIONS; i++)
	{
		VehicleDialogOptions[playerid][i] = VEHICLE_OPTION_INVALID;
	}

	VehicleCount[playerid] = 0;
	VehicleSelectedIndex[playerid] = -1;
	VehicleLocateCheckpoint[playerid] = false;
	return 1;
}

Vehicle_LoadCharacter(playerid)
{
	Vehicle_Reset(playerid);
	VehicleDB_LoadCharacterVehicles(playerid);
	return 1;
}

Vehicle_UnloadCharacter(playerid)
{
	for (new i = 0; i < VehicleCount[playerid]; i++)
	{
		Vehicle_SaveLastPosition(playerid, i);
	}

	Vehicle_Reset(playerid);
	return 1;
}

Vehicle_Spawn(playerid, index)
{
	if (index < 0 || index >= VehicleCount[playerid])
	{
		return 0;
	}

	if (VehicleData[playerid][index][VehicleWorldID] != VEHICLE_INVALID_WORLD_ID)
	{
		return 1;
	}

	new vehicleid = CreateVehicle(
		VehicleData[playerid][index][VehicleModel],
		VehicleData[playerid][index][VehicleLastX],
		VehicleData[playerid][index][VehicleLastY],
		VehicleData[playerid][index][VehicleLastZ],
		VehicleData[playerid][index][VehicleLastAngle],
		VehicleData[playerid][index][VehicleColorOne],
		VehicleData[playerid][index][VehicleColorTwo],
		-1
	);

	if (vehicleid == VEHICLE_INVALID_WORLD_ID)
	{
		return 0;
	}

	VehicleData[playerid][index][VehicleWorldID] = vehicleid;
	SetVehicleVirtualWorld(vehicleid, VehicleData[playerid][index][VehicleLastWorld]);
	LinkVehicleToInterior(vehicleid, VehicleData[playerid][index][VehicleLastInterior]);
	SetVehicleParamsEx(vehicleid, VEHICLE_PARAMS_OFF, VEHICLE_PARAMS_OFF, VEHICLE_PARAMS_OFF, VehicleData[playerid][index][VehicleLocked] ? VEHICLE_PARAMS_ON : VEHICLE_PARAMS_OFF);
	return 1;
}

Vehicle_Park(playerid, index)
{
	if (index < 0 || index >= VehicleCount[playerid])
	{
		return 0;
	}

	new vehicleid = VehicleData[playerid][index][VehicleWorldID];
	if (vehicleid == VEHICLE_INVALID_WORLD_ID || GetPlayerVehicleID(playerid) != vehicleid || GetPlayerState(playerid) != PLAYER_STATE_DRIVER)
	{
		SendError(playerid, "You must be driving this vehicle to park it.");
		return 1;
	}

	GetVehiclePos(vehicleid, VehicleData[playerid][index][VehicleParkX], VehicleData[playerid][index][VehicleParkY], VehicleData[playerid][index][VehicleParkZ]);
	GetVehicleZAngle(vehicleid, VehicleData[playerid][index][VehicleParkAngle]);
	VehicleData[playerid][index][VehicleParkInterior] = GetPlayerInterior(playerid);
	VehicleData[playerid][index][VehicleParkWorld] = GetPlayerVirtualWorld(playerid);
	VehicleDB_UpdatePark(playerid, index);
	SendSuccess(playerid, "Vehicle parked.");
	return 1;
}

Vehicle_SaveLastPosition(playerid, index)
{
	if (index < 0 || index >= VehicleCount[playerid])
	{
		return 0;
	}

	new vehicleid = VehicleData[playerid][index][VehicleWorldID];
	if (vehicleid == VEHICLE_INVALID_WORLD_ID)
	{
		return 1;
	}

	GetVehiclePos(vehicleid, VehicleData[playerid][index][VehicleLastX], VehicleData[playerid][index][VehicleLastY], VehicleData[playerid][index][VehicleLastZ]);
	GetVehicleZAngle(vehicleid, VehicleData[playerid][index][VehicleLastAngle]);
	if (GetPlayerVehicleID(playerid) == vehicleid)
	{
		VehicleData[playerid][index][VehicleLastInterior] = GetPlayerInterior(playerid);
	}
	VehicleData[playerid][index][VehicleLastWorld] = GetVehicleVirtualWorld(vehicleid);
	VehicleDB_UpdateLastPosition(playerid, index);
	return 1;
}

Vehicle_ToggleLock(playerid, index)
{
	if (index < 0 || index >= VehicleCount[playerid])
	{
		return 0;
	}

	if (!Vehicle_IsPlayerNear(playerid, index))
	{
		SendError(playerid, "You must be near or inside this vehicle.");
		return 1;
	}

	VehicleData[playerid][index][VehicleLocked] = !VehicleData[playerid][index][VehicleLocked];
	if (VehicleData[playerid][index][VehicleWorldID] != VEHICLE_INVALID_WORLD_ID)
	{
		new engine, lights, alarm, doors, bonnet, boot, objective;
		GetVehicleParamsEx(VehicleData[playerid][index][VehicleWorldID], engine, lights, alarm, doors, bonnet, boot, objective);
		SetVehicleParamsEx(VehicleData[playerid][index][VehicleWorldID], engine, lights, alarm, VehicleData[playerid][index][VehicleLocked] ? VEHICLE_PARAMS_ON : VEHICLE_PARAMS_OFF, bonnet, boot, objective);
	}

	VehicleDB_UpdateLock(playerid, index);
	SendSuccess(playerid, VehicleData[playerid][index][VehicleLocked] ? ("Vehicle locked.") : ("Vehicle unlocked."));
	return 1;
}

Vehicle_ToggleCurrentLock(playerid)
{
	new index;
	if (!Vehicle_FindCurrentOrNearest(playerid, index))
	{
		SendError(playerid, "You must be near or inside one of your vehicles.");
		return 1;
	}

	return Vehicle_ToggleLock(playerid, index);
}

Vehicle_ToggleEngine(playerid)
{
	if (GetPlayerState(playerid) != PLAYER_STATE_DRIVER)
	{
		SendError(playerid, "You must be driving a vehicle.");
		return 1;
	}

	new vehicleid = GetPlayerVehicleID(playerid);
	new engine, lights, alarm, doors, bonnet, boot, objective;
	GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);

	engine = engine == VEHICLE_PARAMS_ON ? VEHICLE_PARAMS_OFF : VEHICLE_PARAMS_ON;
	if (engine == VEHICLE_PARAMS_OFF)
	{
		lights = VEHICLE_PARAMS_OFF;
	}

	SetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
	return 1;
}

Vehicle_ToggleLights(playerid)
{
	if (GetPlayerState(playerid) != PLAYER_STATE_DRIVER)
	{
		SendError(playerid, "You must be driving a vehicle.");
		return 1;
	}

	new vehicleid = GetPlayerVehicleID(playerid);
	new engine, lights, alarm, doors, bonnet, boot, objective;
	GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);

	if (engine != VEHICLE_PARAMS_ON)
	{
		SendError(playerid, "Start the engine first.");
		return 1;
	}

	lights = lights == VEHICLE_PARAMS_ON ? VEHICLE_PARAMS_OFF : VEHICLE_PARAMS_ON;
	SetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
	return 1;
}

Vehicle_Locate(playerid, index)
{
	if (index < 0 || index >= VehicleCount[playerid])
	{
		return 0;
	}

	new message[128], Float:x, Float:y, Float:z;
	if (VehicleData[playerid][index][VehicleWorldID] == VEHICLE_INVALID_WORLD_ID)
	{
		x = VehicleData[playerid][index][VehicleLastX];
		y = VehicleData[playerid][index][VehicleLastY];
		z = VehicleData[playerid][index][VehicleLastZ];
		SetPlayerCheckpoint(playerid, x, y, z, 4.0);
		VehicleLocateCheckpoint[playerid] = true;
		format(message, sizeof(message), "Vehicle location marked at %.1f, %.1f, %.1f.",
			x,
			y,
			z
		);
		SendInfo(playerid, message);
		return 1;
	}

	GetVehiclePos(VehicleData[playerid][index][VehicleWorldID], x, y, z);
	SetPlayerCheckpoint(playerid, x, y, z, 4.0);
	VehicleLocateCheckpoint[playerid] = true;
	format(message, sizeof(message), "Vehicle location marked %.1fm away.", GetPlayerDistanceFromPoint(playerid, x, y, z));
	SendInfo(playerid, message);
	return 1;
}

Vehicle_Goto(playerid, index)
{
	if (index < 0 || index >= VehicleCount[playerid] || !Admin_Require(playerid, 1))
	{
		return 0;
	}

	new Float:x = VehicleData[playerid][index][VehicleLastX];
	new Float:y = VehicleData[playerid][index][VehicleLastY];
	new Float:z = VehicleData[playerid][index][VehicleLastZ];
	new interior = VehicleData[playerid][index][VehicleLastInterior];
	new world = VehicleData[playerid][index][VehicleLastWorld];

	if (VehicleData[playerid][index][VehicleWorldID] != VEHICLE_INVALID_WORLD_ID)
	{
		GetVehiclePos(VehicleData[playerid][index][VehicleWorldID], x, y, z);
	}

	SetPlayerInterior(playerid, interior);
	SetPlayerVirtualWorld(playerid, world);
	SetPlayerPos(playerid, x + 2.0, y, z);
	return 1;
}

Vehicle_Gethere(playerid, index)
{
	if (index < 0 || index >= VehicleCount[playerid] || !Admin_Require(playerid, 1))
	{
		return 0;
	}

	new Float:x, Float:y, Float:z, Float:a;
	GetPlayerPos(playerid, x, y, z);
	GetPlayerFacingAngle(playerid, a);

	if (VehicleData[playerid][index][VehicleWorldID] == VEHICLE_INVALID_WORLD_ID)
	{
		VehicleData[playerid][index][VehicleLastX] = x;
		VehicleData[playerid][index][VehicleLastY] = y;
		VehicleData[playerid][index][VehicleLastZ] = z;
		VehicleData[playerid][index][VehicleLastAngle] = a;
		VehicleData[playerid][index][VehicleLastInterior] = GetPlayerInterior(playerid);
		VehicleData[playerid][index][VehicleLastWorld] = GetPlayerVirtualWorld(playerid);
		Vehicle_Spawn(playerid, index);
	}
	else
	{
		new vehicleid = VehicleData[playerid][index][VehicleWorldID];
		SetVehiclePos(vehicleid, x, y, z);
		SetVehicleZAngle(vehicleid, a);
		SetVehicleVirtualWorld(vehicleid, GetPlayerVirtualWorld(playerid));
		LinkVehicleToInterior(vehicleid, GetPlayerInterior(playerid));
	}
	return 1;
}

Vehicle_Respawn(playerid, index)
{
	if (index < 0 || index >= VehicleCount[playerid])
	{
		return 0;
	}

	if (VehicleData[playerid][index][VehicleWorldID] == VEHICLE_INVALID_WORLD_ID)
	{
		Vehicle_Spawn(playerid, index);
	}

	if (VehicleData[playerid][index][VehicleWorldID] == VEHICLE_INVALID_WORLD_ID)
	{
		SendError(playerid, "Vehicle could not be spawned.");
		return 1;
	}

	new vehicleid = VehicleData[playerid][index][VehicleWorldID];
	Vehicle_EjectOccupants(vehicleid);

	SetVehiclePos(vehicleid,
		VehicleData[playerid][index][VehicleParkX],
		VehicleData[playerid][index][VehicleParkY],
		VehicleData[playerid][index][VehicleParkZ]
	);
	SetVehicleZAngle(vehicleid, VehicleData[playerid][index][VehicleParkAngle]);
	LinkVehicleToInterior(vehicleid, VehicleData[playerid][index][VehicleParkInterior]);
	SetVehicleVirtualWorld(vehicleid, VehicleData[playerid][index][VehicleParkWorld]);

	VehicleData[playerid][index][VehicleLastX] = VehicleData[playerid][index][VehicleParkX];
	VehicleData[playerid][index][VehicleLastY] = VehicleData[playerid][index][VehicleParkY];
	VehicleData[playerid][index][VehicleLastZ] = VehicleData[playerid][index][VehicleParkZ];
	VehicleData[playerid][index][VehicleLastAngle] = VehicleData[playerid][index][VehicleParkAngle];
	VehicleData[playerid][index][VehicleLastInterior] = VehicleData[playerid][index][VehicleParkInterior];
	VehicleData[playerid][index][VehicleLastWorld] = VehicleData[playerid][index][VehicleParkWorld];
	VehicleDB_UpdateLastPosition(playerid, index);
	SendSuccess(playerid, "Vehicle respawned at parking location.");
	return 1;
}

Vehicle_FindCurrentOrNearest(playerid, &index)
{
	new vehicleid = GetPlayerVehicleID(playerid);
	if (vehicleid != VEHICLE_INVALID_WORLD_ID)
	{
		new ownerid;
		if (Vehicle_FindByWorldID(vehicleid, ownerid, index) && ownerid == playerid)
		{
			return 1;
		}
	}

	new Float:x, Float:y, Float:z, Float:distance, Float:closest = VEHICLE_LOCK_RANGE + 1.0;
	index = -1;

	for (new i = 0; i < VehicleCount[playerid]; i++)
	{
		vehicleid = VehicleData[playerid][i][VehicleWorldID];
		if (vehicleid == VEHICLE_INVALID_WORLD_ID || GetPlayerVirtualWorld(playerid) != GetVehicleVirtualWorld(vehicleid))
		{
			continue;
		}

		GetVehiclePos(vehicleid, x, y, z);
		distance = GetPlayerDistanceFromPoint(playerid, x, y, z);
		if (distance <= VEHICLE_LOCK_RANGE && distance < closest)
		{
			closest = distance;
			index = i;
		}
	}

	return index != -1;
}

Vehicle_EjectOccupants(vehicleid)
{
	for (new i = 0; i < MAX_PLAYERS; i++)
	{
		if (!IsPlayerConnected(i) || GetPlayerVehicleID(i) != vehicleid)
		{
			continue;
		}

		new Float:x, Float:y, Float:z;
		GetPlayerPos(i, x, y, z);
		RemovePlayerFromVehicle(i);
		SetPlayerPos(i, x, y, z);
	}

	return 1;
}

Vehicle_HandleCheckpoint(playerid)
{
	if (!VehicleLocateCheckpoint[playerid])
	{
		return 1;
	}

	DisablePlayerCheckpoint(playerid);
	VehicleLocateCheckpoint[playerid] = false;
	SendInfo(playerid, "Vehicle destination reached.");
	return 1;
}

bool:Vehicle_IsPlayerNear(playerid, index)
{
	if (index < 0 || index >= VehicleCount[playerid])
	{
		return false;
	}

	new vehicleid = VehicleData[playerid][index][VehicleWorldID];
	if (vehicleid == VEHICLE_INVALID_WORLD_ID)
	{
		return false;
	}

	if (GetPlayerVehicleID(playerid) == vehicleid)
	{
		return true;
	}

	if (GetPlayerVirtualWorld(playerid) != GetVehicleVirtualWorld(vehicleid))
	{
		return false;
	}

	new Float:x, Float:y, Float:z;
	GetVehiclePos(vehicleid, x, y, z);
	return GetPlayerDistanceFromPoint(playerid, x, y, z) <= VEHICLE_LOCK_RANGE;
}

Vehicle_FindByWorldID(vehicleid, &ownerid, &index)
{
	for (new playerid = 0; playerid < MAX_PLAYERS; playerid++)
	{
		if (!IsPlayerConnected(playerid))
		{
			continue;
		}

		for (new i = 0; i < VehicleCount[playerid]; i++)
		{
			if (VehicleData[playerid][i][VehicleWorldID] == vehicleid)
			{
				ownerid = playerid;
				index = i;
				return 1;
			}
		}
	}

	ownerid = INVALID_PLAYER_ID;
	index = -1;
	return 0;
}

bool:Vehicle_IsValidModel(model)
{
	return 400 <= model <= 611;
}

Vehicle_GetModelName(model, name[], size = sizeof name)
{
	return VehicleModel_GetName(model, name, size);
}

Vehicle_GetPlate(playerid, index, plate[], size = sizeof plate)
{
	if (VehicleData[playerid][index][VehiclePlate][0])
	{
		format(plate, size, "%s", VehicleData[playerid][index][VehiclePlate]);
		return 1;
	}

	format(plate, size, "CHL-%04d", VehicleData[playerid][index][VehicleID]);
	return 1;
}
