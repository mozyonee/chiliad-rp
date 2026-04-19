#if defined CHILIAD_VEHICLES_DATABASE
	#endinput
#endif
#define CHILIAD_VEHICLES_DATABASE

VehicleDB_EnsureTables()
{
	mysql_query(Database_GetHandle(),
		"CREATE TABLE IF NOT EXISTS `vehicles` (\
			`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,\
			`owner_type` TINYINT UNSIGNED NOT NULL,\
			`owner_id` INT UNSIGNED NOT NULL,\
			`model` SMALLINT UNSIGNED NOT NULL,\
			`color_one` SMALLINT NOT NULL DEFAULT 1,\
			`color_two` SMALLINT NOT NULL DEFAULT 1,\
			`plate` VARCHAR(16) NOT NULL DEFAULT '',\
			`last_x` FLOAT NOT NULL DEFAULT 1958.3783,\
			`last_y` FLOAT NOT NULL DEFAULT 1343.1572,\
			`last_z` FLOAT NOT NULL DEFAULT 15.3746,\
			`last_angle` FLOAT NOT NULL DEFAULT 269.1425,\
			`last_interior` INT NOT NULL DEFAULT 0,\
			`last_world` INT NOT NULL DEFAULT 0,\
			`park_x` FLOAT NOT NULL DEFAULT 1958.3783,\
			`park_y` FLOAT NOT NULL DEFAULT 1343.1572,\
			`park_z` FLOAT NOT NULL DEFAULT 15.3746,\
			`park_angle` FLOAT NOT NULL DEFAULT 269.1425,\
			`park_interior` INT NOT NULL DEFAULT 0,\
			`park_world` INT NOT NULL DEFAULT 0,\
			`locked` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,\
			`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,\
			`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,\
			PRIMARY KEY (`id`),\
			KEY `idx_vehicles_owner` (`owner_type`, `owner_id`)\
		) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;",
		false
	);
	Database_EnsureColumn("vehicles", "last_x", "FLOAT NOT NULL DEFAULT 1958.3783");
	Database_EnsureColumn("vehicles", "last_y", "FLOAT NOT NULL DEFAULT 1343.1572");
	Database_EnsureColumn("vehicles", "last_z", "FLOAT NOT NULL DEFAULT 15.3746");
	Database_EnsureColumn("vehicles", "last_angle", "FLOAT NOT NULL DEFAULT 269.1425");
	Database_EnsureColumn("vehicles", "last_interior", "INT NOT NULL DEFAULT 0");
	Database_EnsureColumn("vehicles", "last_world", "INT NOT NULL DEFAULT 0");
	Database_EnsureColumn("vehicles", "park_x", "FLOAT NOT NULL DEFAULT 1958.3783");
	Database_EnsureColumn("vehicles", "park_y", "FLOAT NOT NULL DEFAULT 1343.1572");
	Database_EnsureColumn("vehicles", "park_z", "FLOAT NOT NULL DEFAULT 15.3746");
	Database_EnsureColumn("vehicles", "park_angle", "FLOAT NOT NULL DEFAULT 269.1425");
	Database_EnsureColumn("vehicles", "park_interior", "INT NOT NULL DEFAULT 0");
	Database_EnsureColumn("vehicles", "park_world", "INT NOT NULL DEFAULT 0");
	return 1;
}

VehicleDB_LoadCharacterVehicles(playerid)
{
	new query[384];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"SELECT `id`, `owner_type`, `owner_id`, `model`, `color_one`, `color_two`, `plate`, \
		`last_x`, `last_y`, `last_z`, `last_angle`, `last_interior`, `last_world`, \
		`park_x`, `park_y`, `park_z`, `park_angle`, `park_interior`, `park_world`, `locked` FROM `vehicles` \
		WHERE `owner_type` = %d AND `owner_id` = %d ORDER BY `id` ASC LIMIT %d",
		VEHICLE_OWNER_CHARACTER,
		CharacterData[playerid][ID],
		VEHICLE_MAX_PLAYER_VEHICLES
	);

	mysql_tquery(Database_GetHandle(), query, "Vehicle_OnCharacterVehiclesLoaded", "i", playerid);
	return 1;
}

VehicleDB_CreateForCharacter(adminid, targetid, model, color_one, color_two, Float:x, Float:y, Float:z, Float:angle, interior, world)
{
	new query[512];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"INSERT INTO `vehicles` (`owner_type`, `owner_id`, `model`, `color_one`, `color_two`, \
		`last_x`, `last_y`, `last_z`, `last_angle`, `last_interior`, `last_world`, \
		`park_x`, `park_y`, `park_z`, `park_angle`, `park_interior`, `park_world`) \
		VALUES (%d, %d, %d, %d, %d, %f, %f, %f, %f, %d, %d, %f, %f, %f, %f, %d, %d)",
		VEHICLE_OWNER_CHARACTER,
		CharacterData[targetid][ID],
		model,
		color_one,
		color_two,
		x,
		y,
		z,
		angle,
		interior,
		world,
		x,
		y,
		z,
		angle,
		interior,
		world
	);

	mysql_tquery(Database_GetHandle(), query, "Vehicle_OnCreated", "iiii", adminid, targetid, model, color_one);
	return 1;
}

VehicleDB_UpdatePlate(vehicle_id, const plate[])
{
	new query[128];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"UPDATE `vehicles` SET `plate` = '%e' WHERE `id` = %d LIMIT 1",
		plate,
		vehicle_id
	);

	mysql_tquery(Database_GetHandle(), query);
	return 1;
}

VehicleDB_UpdatePark(playerid, index)
{
	new query[384];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"UPDATE `vehicles` SET `park_x` = %f, `park_y` = %f, `park_z` = %f, `park_angle` = %f, `park_interior` = %d, `park_world` = %d WHERE `id` = %d LIMIT 1",
		VehicleData[playerid][index][VehicleParkX],
		VehicleData[playerid][index][VehicleParkY],
		VehicleData[playerid][index][VehicleParkZ],
		VehicleData[playerid][index][VehicleParkAngle],
		VehicleData[playerid][index][VehicleParkInterior],
		VehicleData[playerid][index][VehicleParkWorld],
		VehicleData[playerid][index][VehicleID]
	);

	mysql_tquery(Database_GetHandle(), query);
	return 1;
}

VehicleDB_UpdateLastPosition(playerid, index)
{
	new query[384];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"UPDATE `vehicles` SET `last_x` = %f, `last_y` = %f, `last_z` = %f, `last_angle` = %f, `last_interior` = %d, `last_world` = %d WHERE `id` = %d LIMIT 1",
		VehicleData[playerid][index][VehicleLastX],
		VehicleData[playerid][index][VehicleLastY],
		VehicleData[playerid][index][VehicleLastZ],
		VehicleData[playerid][index][VehicleLastAngle],
		VehicleData[playerid][index][VehicleLastInterior],
		VehicleData[playerid][index][VehicleLastWorld],
		VehicleData[playerid][index][VehicleID]
	);

	mysql_tquery(Database_GetHandle(), query);
	return 1;
}

VehicleDB_UpdateLock(playerid, index)
{
	new query[128];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"UPDATE `vehicles` SET `locked` = %d WHERE `id` = %d LIMIT 1",
		VehicleData[playerid][index][VehicleLocked],
		VehicleData[playerid][index][VehicleID]
	);

	mysql_tquery(Database_GetHandle(), query);
	return 1;
}
