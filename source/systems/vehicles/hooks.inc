#if defined CHILIAD_VEHICLES_HOOKS
	#endinput
#endif
#define CHILIAD_VEHICLES_HOOKS

Vehicle_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[])
{
	#pragma unused inputtext

	switch (dialogid)
	{
		case DIALOG_VEHICLE_LIST:
			return Vehicle_HandleListDialog(playerid, response, listitem);

		case DIALOG_VEHICLE_OPTIONS:
			return Vehicle_HandleOptionsDialog(playerid, response, listitem);
	}

	return 1;
}

Vehicle_OnPlayerStateChange(playerid, PLAYER_STATE:newstate)
{
	if (newstate != PLAYER_STATE_DRIVER && newstate != PLAYER_STATE_PASSENGER)
	{
		return 1;
	}

	new ownerid, index;
	if (!Vehicle_FindByWorldID(GetPlayerVehicleID(playerid), ownerid, index))
	{
		return 1;
	}

	if (ownerid != playerid && VehicleData[ownerid][index][VehicleLocked])
	{
		RemovePlayerFromVehicle(playerid);
		SendError(playerid, "This vehicle is locked.");
	}

	return 1;
}

Vehicle_OnPlayerEnterCheckpoint(playerid)
{
	return Vehicle_HandleCheckpoint(playerid);
}

Vehicle_OnPlayerKeyStateChange(playerid, KEY:newkeys, KEY:oldkeys)
{
	if (GetPlayerState(playerid) != PLAYER_STATE_DRIVER)
	{
		return 0;
	}

	if ((newkeys & KEY_FIRE) && !(oldkeys & KEY_FIRE))
	{
		pc_cmd_lights(playerid);
		return 1;
	}

	if ((newkeys & KEY_ACTION) && !(oldkeys & KEY_ACTION))
	{
		pc_cmd_engine(playerid);
		return 1;
	}

	return 0;
}
