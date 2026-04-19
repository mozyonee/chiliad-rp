#if defined CHILIAD_VEHICLES_DIALOGS
	#endinput
#endif
#define CHILIAD_VEHICLES_DIALOGS

Vehicle_ShowList(playerid)
{
	new content[2048], row[128], name[32], plate[VEHICLE_PLATE_LENGTH], status[16], lock_status[16];
	format(content, sizeof(content), "Vehicle\tPlate\tStatus\tLock\n");

	for (new i = 0; i < VehicleCount[playerid]; i++)
	{
		Vehicle_GetModelName(VehicleData[playerid][i][VehicleModel], name, sizeof(name));
		Vehicle_GetPlate(playerid, i, plate, sizeof(plate));
		format(status, sizeof(status), "%s", VehicleData[playerid][i][VehicleWorldID] == VEHICLE_INVALID_WORLD_ID ? ("Despawned") : ("Spawned"));
		format(lock_status, sizeof(lock_status), "%s", VehicleData[playerid][i][VehicleLocked] ? ("Locked") : ("Unlocked"));
		format(row, sizeof(row), W"%s\t"P"%s\t"W"%s\t"W"%s\n", name, plate, status, lock_status);
		strcat(content, row, sizeof(content));
		VehicleDialogItems[playerid][i] = i;
	}

	if (!VehicleCount[playerid])
	{
		strcat(content, G"No vehicles.\n", sizeof(content));
	}

	SPD(playerid, DIALOG_VEHICLE_LIST, DSTH,
		DIALOG_TITLE("Vehicles"),
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_CLOSE
	);
	return 1;
}

Vehicle_ShowOptions(playerid, index)
{
	if (index < 0 || index >= VehicleCount[playerid])
	{
		return Vehicle_ShowList(playerid);
	}

	new title[64], content[192], name[32], row[48], option_count;
	VehicleSelectedIndex[playerid] = index;
	Vehicle_GetModelName(VehicleData[playerid][index][VehicleModel], name, sizeof(name));

	for (new i = 0; i < VEHICLE_MAX_DIALOG_OPTIONS; i++)
	{
		VehicleDialogOptions[playerid][i] = VEHICLE_OPTION_INVALID;
	}

	VehicleDialogOptions[playerid][option_count++] = VEHICLE_OPTION_RESPAWN;
	strcat(content, P"1."W" Respawn\n", sizeof(content));

	new vehicleid = VehicleData[playerid][index][VehicleWorldID];
	if (vehicleid != VEHICLE_INVALID_WORLD_ID && GetPlayerVehicleID(playerid) == vehicleid)
	{
		VehicleDialogOptions[playerid][option_count] = VEHICLE_OPTION_PARK;
		format(row, sizeof(row), P"%d."W" Park\n", option_count + 1);
		strcat(content, row, sizeof(content));
		option_count++;
	}

	VehicleDialogOptions[playerid][option_count] = VEHICLE_OPTION_LOCK;
	format(row, sizeof(row), P"%d."W" %s\n", option_count + 1, VehicleData[playerid][index][VehicleLocked] ? ("Unlock") : ("Lock"));
	strcat(content, row, sizeof(content));
	option_count++;

	VehicleDialogOptions[playerid][option_count] = VEHICLE_OPTION_LOCATE;
	format(row, sizeof(row), P"%d."W" Locate\n", option_count + 1);
	strcat(content, row, sizeof(content));
	option_count++;

	if (Admin_IsDuty(playerid))
	{
		VehicleDialogOptions[playerid][option_count] = VEHICLE_OPTION_GOTO;
		format(row, sizeof(row), P"%d."W" Goto\n", option_count + 1);
		strcat(content, row, sizeof(content));
		option_count++;

		VehicleDialogOptions[playerid][option_count] = VEHICLE_OPTION_GETHERE;
		format(row, sizeof(row), P"%d."W" Get Here\n", option_count + 1);
		strcat(content, row, sizeof(content));
		option_count++;
	}

	format(title, sizeof(title), DIALOG_TITLE("%s"), name);

	SPD(playerid, DIALOG_VEHICLE_OPTIONS, DSL,
		title,
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_BACK
	);
	return 1;
}

Vehicle_HandleListDialog(playerid, response, listitem)
{
	if (!response)
	{
		return 1;
	}

	if (listitem < 0 || listitem >= VehicleCount[playerid])
	{
		return 1;
	}

	return Vehicle_ShowOptions(playerid, VehicleDialogItems[playerid][listitem]);
}

Vehicle_HandleOptionsDialog(playerid, response, listitem)
{
	if (!response)
	{
		return Vehicle_ShowList(playerid);
	}

	new index = VehicleSelectedIndex[playerid];
	if (index < 0 || index >= VehicleCount[playerid])
	{
		return Vehicle_ShowList(playerid);
	}

	if (listitem < 0 || listitem >= VEHICLE_MAX_DIALOG_OPTIONS)
	{
		return Vehicle_ShowOptions(playerid, index);
	}

	switch (VehicleDialogOptions[playerid][listitem])
	{
		case VEHICLE_OPTION_RESPAWN: Vehicle_Respawn(playerid, index);
		case VEHICLE_OPTION_PARK: Vehicle_Park(playerid, index);
		case VEHICLE_OPTION_LOCK: Vehicle_ToggleLock(playerid, index);
		case VEHICLE_OPTION_LOCATE: Vehicle_Locate(playerid, index);
		case VEHICLE_OPTION_GOTO: Vehicle_Goto(playerid, index);
		case VEHICLE_OPTION_GETHERE: Vehicle_Gethere(playerid, index);
	}

	return 1;
}
