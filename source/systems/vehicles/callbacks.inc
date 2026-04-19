#if defined CHILIAD_VEHICLES_CALLBACKS
	#endinput
#endif
#define CHILIAD_VEHICLES_CALLBACKS

forward Vehicle_OnCharacterVehiclesLoaded(playerid);
public Vehicle_OnCharacterVehiclesLoaded(playerid)
{
	if (!IsPlayerConnected(playerid) || !Character_IsLoaded(playerid))
	{
		return 1;
	}

	VehicleCount[playerid] = cache_num_rows();
	if (VehicleCount[playerid] > VEHICLE_MAX_PLAYER_VEHICLES)
	{
		VehicleCount[playerid] = VEHICLE_MAX_PLAYER_VEHICLES;
	}

	for (new i = 0; i < VehicleCount[playerid]; i++)
	{
		cache_get_value_name_int(i, "id", VehicleData[playerid][i][VehicleID]);
		cache_get_value_name_int(i, "owner_type", VehicleData[playerid][i][VehicleOwnerType]);
		cache_get_value_name_int(i, "owner_id", VehicleData[playerid][i][VehicleOwnerID]);
		cache_get_value_name_int(i, "model", VehicleData[playerid][i][VehicleModel]);
		cache_get_value_name_int(i, "color_one", VehicleData[playerid][i][VehicleColorOne]);
		cache_get_value_name_int(i, "color_two", VehicleData[playerid][i][VehicleColorTwo]);
		cache_get_value_name(i, "plate", VehicleData[playerid][i][VehiclePlate], VEHICLE_PLATE_LENGTH);
		cache_get_value_name_float(i, "last_x", VehicleData[playerid][i][VehicleLastX]);
		cache_get_value_name_float(i, "last_y", VehicleData[playerid][i][VehicleLastY]);
		cache_get_value_name_float(i, "last_z", VehicleData[playerid][i][VehicleLastZ]);
		cache_get_value_name_float(i, "last_angle", VehicleData[playerid][i][VehicleLastAngle]);
		cache_get_value_name_int(i, "last_interior", VehicleData[playerid][i][VehicleLastInterior]);
		cache_get_value_name_int(i, "last_world", VehicleData[playerid][i][VehicleLastWorld]);
		cache_get_value_name_float(i, "park_x", VehicleData[playerid][i][VehicleParkX]);
		cache_get_value_name_float(i, "park_y", VehicleData[playerid][i][VehicleParkY]);
		cache_get_value_name_float(i, "park_z", VehicleData[playerid][i][VehicleParkZ]);
		cache_get_value_name_float(i, "park_angle", VehicleData[playerid][i][VehicleParkAngle]);
		cache_get_value_name_int(i, "park_interior", VehicleData[playerid][i][VehicleParkInterior]);
		cache_get_value_name_int(i, "park_world", VehicleData[playerid][i][VehicleParkWorld]);

		new locked;
		cache_get_value_name_int(i, "locked", locked);
		VehicleData[playerid][i][VehicleLocked] = bool:locked;
		VehicleData[playerid][i][VehicleWorldID] = VEHICLE_INVALID_WORLD_ID;
		Vehicle_Spawn(playerid, i);
	}

	return 1;
}

forward Vehicle_OnCreated(adminid, targetid, model, color_one);
public Vehicle_OnCreated(adminid, targetid, model, color_one)
{
	#pragma unused model, color_one

	new vehicle_id = cache_insert_id();
	new plate[VEHICLE_PLATE_LENGTH], message[128];
	format(plate, sizeof(plate), "CHL-%04d", vehicle_id);
	VehicleDB_UpdatePlate(vehicle_id, plate);

	if (IsPlayerConnected(targetid) && Character_IsLoaded(targetid))
	{
		Vehicle_LoadCharacter(targetid);
	}

	if (IsPlayerConnected(adminid))
	{
		format(message, sizeof(message), "Vehicle #%d created.", vehicle_id);
		SendSuccess(adminid, message);
	}

	return 1;
}
