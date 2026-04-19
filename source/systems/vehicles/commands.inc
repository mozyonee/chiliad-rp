#if defined CHILIAD_VEHICLES_COMMANDS
	#endinput
#endif
#define CHILIAD_VEHICLES_COMMANDS

alias:vehicles("vehs", "cars")
CMD:vehicles(playerid)
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	return Vehicle_ShowList(playerid);
}

alias:engine("en")
CMD:engine(playerid)
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	return Vehicle_ToggleEngine(playerid);
}

alias:lights("li")
CMD:lights(playerid)
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	return Vehicle_ToggleLights(playerid);
}

CMD:lock(playerid)
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	return Vehicle_ToggleCurrentLock(playerid);
}

CMD:park(playerid)
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	new index;
	if (!Vehicle_FindCurrentOrNearest(playerid, index) || GetPlayerVehicleID(playerid) != VehicleData[playerid][index][VehicleWorldID])
	{
		SendError(playerid, "You must be driving one of your vehicles.");
		return 1;
	}

	return Vehicle_Park(playerid, index);
}

CMD:fix(playerid, params[])
{
	if (!Admin_Require(playerid, 1))
	{
		return 1;
	}

	new vehicleid;
	if (!strlen(params) && IsPlayerInAnyVehicle(playerid))
	{
		vehicleid = GetPlayerVehicleID(playerid);
	}
	else
	{
		if (sscanf(params, "i", vehicleid))
		{
			SendError(playerid, "Usage: /fix [vehicleid]");
			return 1;
		}
	}

	if (!Vehicle_IsValidModel(GetVehicleModel(vehicleid)))
	{
		SendError(playerid, "Vehicle not found.");
		return 1;
	}

	SetVehicleHealth(vehicleid, 1000.0);
	RepairVehicle(vehicleid);
	SendSuccess(playerid, "Vehicle repaired.");
	return 1;
}

CMD:makevehicle(playerid, params[])
{
	if (!Admin_Require(playerid, 6))
	{
		return 1;
	}

	new targetid, model, color_one, color_two;
	if (sscanf(params, "uiii", targetid, model, color_one, color_two))
	{
		SendError(playerid, "Usage: /makevehicle [player] [model] [color1] [color2]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid) || !Character_IsLoaded(targetid))
	{
		SendError(playerid, "Player not found or has no loaded character.");
		return 1;
	}

	if (!Vehicle_IsValidModel(model))
	{
		SendError(playerid, "Vehicle model must be between 400 and 611.");
		return 1;
	}

	new Float:x, Float:y, Float:z, Float:angle;
	GetPlayerPos(playerid, x, y, z);
	GetPlayerFacingAngle(playerid, angle);

	VehicleDB_CreateForCharacter(
		playerid,
		targetid,
		model,
		color_one,
		color_two,
		x + 2.0,
		y,
		z,
		angle,
		GetPlayerInterior(playerid),
		GetPlayerVirtualWorld(playerid)
	);
	return 1;
}
