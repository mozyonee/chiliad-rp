#if defined CHILIAD_ADMIN_CMDS
	#endinput
#endif
#define CHILIAD_ADMIN_CMDS

CMD:aduty(playerid)
{
	if (!Admin_Require(playerid, 1, false))
	{
		return 1;
	}

	new message[128], name[MAX_PLAYER_NAME + 1];
	new bool:enable_duty = !AdminData[playerid][Duty];

	if (enable_duty)
	{
		Admin_SetDuty(playerid, true);
	}

	General_GetDisplayName(playerid, name, sizeof(name));

	if (enable_duty)
	{
		format(message, sizeof(message), "%s is now on admin duty.", name);
		Admin_SendMessage(message);
	}
	else
	{
		format(message, sizeof(message), "%s is no longer on admin duty.", name);
		Admin_SendMessage(message);
		Admin_SetDuty(playerid, false);
	}

	return 1;
}

alias:amenu("alogin")
CMD:amenu(playerid)
{
	if (!Admin_Require(playerid, 1, false))
	{
		return 1;
	}

	if (!Admin_IsDuty(playerid))
	{
		return pc_cmd_aduty(playerid);
	}

	return Admin_ShowMenu(playerid);
}

CMD:admins(playerid)
{
	if (!Admin_Require(playerid, 1))
	{
		return 1;
	}

	new content[1024], row[96], name[MAX_PLAYER_NAME + 1], count;
	format(content, sizeof(content), "Name\tLevel\tStatus\n");

	for (new i = 0; i < MAX_PLAYERS; i++)
	{
		if (!IsPlayerConnected(i) || AdminData[i][Level] <= 0)
		{
			continue;
		}

		General_GetDisplayName(i, name, sizeof(name));
		format(row, sizeof(row), W"%s\t"P"%d\t%s\n",
			name,
			AdminData[i][Level],
			AdminData[i][Duty] ? (YES"On duty") : (G"Off duty")
		);
		strcat(content, row, sizeof(content));
		count++;
	}

	if (!count)
	{
		strcat(content, G"No admins online.\t-\t-\n", sizeof(content));
	}

	SPD(playerid, DIALOG_ADMIN_LIST, DSTH,
		DIALOG_TITLE("Admins"),
		content,
		DIALOG_BUTTON_CLOSE,
		""
	);
	return 1;
}

CMD:a(playerid, params[])
{
	if (!Admin_Require(playerid, 1))
	{
		return 1;
	}

	if (isnull(params))
	{
		SendError(playerid, "Usage: /a [message]");
		return 1;
	}

	new name[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, name, sizeof(name));
	format(message, sizeof(message), "%s: %s", name, params);
	Admin_SendMessage(message);
	return 1;
}

CMD:kick(playerid, params[])
{
	if (!Admin_Require(playerid, 1))
	{
		return 1;
	}

	new targetid, reason[96];
	if (sscanf(params, "us[96]", targetid, reason))
	{
		SendError(playerid, "Usage: /kick [player] [reason]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid) || targetid == playerid)
	{
		SendError(playerid, "Player not found.");
		return 1;
	}

	new admin[MAX_PLAYER_NAME + 1], target[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, admin, sizeof(admin));
	General_GetDisplayName(targetid, target, sizeof(target));

	format(message, sizeof(message), "%s kicked %s. Reason: %s", admin, target, reason);
	Admin_SendMessage(message);

	format(message, sizeof(message), "You were kicked by %s. Reason: %s", admin, reason);
	SendError(targetid, message);
	Kick(targetid);
	return 1;
}

CMD:goto(playerid, params[])
{
	if (!Admin_Require(playerid, 1))
	{
		return 1;
	}

	new targetid;
	if (sscanf(params, "u", targetid))
	{
		SendError(playerid, "Usage: /goto [player]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid) || targetid == playerid)
	{
		SendError(playerid, "Player not found.");
		return 1;
	}

	new Float:x, Float:y, Float:z, Float:angle;
	GetPlayerPos(targetid, x, y, z);
	GetPlayerFacingAngle(targetid, angle);

	if (IsPlayerInAnyVehicle(playerid))
	{
		new vehicleid = GetPlayerVehicleID(playerid);
		SetVehiclePos(vehicleid, x, y + 2.0, z);
		SetVehicleZAngle(vehicleid, angle);
		LinkVehicleToInterior(vehicleid, GetPlayerInterior(targetid));
		SetVehicleVirtualWorld(vehicleid, GetPlayerVirtualWorld(targetid));
	}
	else
	{
		SetPlayerPos(playerid, x, y + 2.0, z);
		SetPlayerFacingAngle(playerid, angle);
	}

	SetPlayerInterior(playerid, GetPlayerInterior(targetid));
	SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(targetid));
	SendOK(playerid, "Teleported.");
	return 1;
}

CMD:gethere(playerid, params[])
{
	if (!Admin_Require(playerid, 1))
	{
		return 1;
	}

	new targetid;
	if (sscanf(params, "u", targetid))
	{
		SendError(playerid, "Usage: /gethere [player]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid) || targetid == playerid)
	{
		SendError(playerid, "Player not found.");
		return 1;
	}

	new Float:x, Float:y, Float:z, Float:angle;
	GetPlayerPos(playerid, x, y, z);
	GetPlayerFacingAngle(playerid, angle);

	if (IsPlayerInAnyVehicle(targetid))
	{
		new vehicleid = GetPlayerVehicleID(targetid);
		SetVehiclePos(vehicleid, x, y + 2.0, z);
		SetVehicleZAngle(vehicleid, angle);
		LinkVehicleToInterior(vehicleid, GetPlayerInterior(playerid));
		SetVehicleVirtualWorld(vehicleid, GetPlayerVirtualWorld(playerid));
	}
	else
	{
		SetPlayerPos(targetid, x, y + 2.0, z);
		SetPlayerFacingAngle(targetid, angle);
	}

	SetPlayerInterior(targetid, GetPlayerInterior(playerid));
	SetPlayerVirtualWorld(targetid, GetPlayerVirtualWorld(playerid));
	SendOK(playerid, "Player teleported.");
	return 1;
}

CMD:slap(playerid, params[])
{
	if (!Admin_Require(playerid, 2))
	{
		return 1;
	}

	new targetid;
	if (sscanf(params, "u", targetid))
	{
		SendError(playerid, "Usage: /slap [player]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid))
	{
		SendError(playerid, "Player not found.");
		return 1;
	}

	new Float:x, Float:y, Float:z;
	GetPlayerPos(targetid, x, y, z);
	SetPlayerPos(targetid, x, y, z + 2.5);
	PlayerPlaySound(targetid, 1130, x, y, z + 2.5);
	SendOK(playerid, "Player slapped.");
	return 1;
}

CMD:freeze(playerid, params[])
{
	if (!Admin_Require(playerid, 2))
	{
		return 1;
	}

	new targetid;
	if (sscanf(params, "u", targetid))
	{
		SendError(playerid, "Usage: /freeze [player]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid))
	{
		SendError(playerid, "Player not found.");
		return 1;
	}

	TogglePlayerControllable(targetid, false);
	SendOK(playerid, "Player frozen.");
	return 1;
}

CMD:unfreeze(playerid, params[])
{
	if (!Admin_Require(playerid, 2))
	{
		return 1;
	}

	new targetid;
	if (sscanf(params, "u", targetid))
	{
		SendError(playerid, "Usage: /unfreeze [player]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid))
	{
		SendError(playerid, "Player not found.");
		return 1;
	}

	TogglePlayerControllable(targetid, true);
	SendOK(playerid, "Player unfrozen.");
	return 1;
}

alias:jetpack("jet", "jp", "jt")
CMD:jetpack(playerid)
{
	if (!Admin_Require(playerid, 2))
	{
		return 1;
	}

	SetPlayerSpecialAction(playerid, SPECIAL_ACTION_USEJETPACK);
	return 1;
}

CMD:sethp(playerid, params[])
{
	if (!Admin_Require(playerid, 3))
	{
		return 1;
	}

	new targetid, health;
	if (sscanf(params, "ui", targetid, health))
	{
		SendError(playerid, "Usage: /sethp [player] [health]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid) || health < 0 || health > 1000)
	{
		SendError(playerid, "Invalid player or health.");
		return 1;
	}

	SetPlayerHealth(targetid, float(health));
	SendOK(playerid, "Health updated.");
	return 1;
}

CMD:setarm(playerid, params[])
{
	if (!Admin_Require(playerid, 3))
	{
		return 1;
	}

	new targetid, armour;
	if (sscanf(params, "ui", targetid, armour))
	{
		SendError(playerid, "Usage: /setarm [player] [armour]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid) || armour < 0 || armour > 100)
	{
		SendError(playerid, "Invalid player or armour.");
		return 1;
	}

	SetPlayerArmour(targetid, float(armour));
	SendOK(playerid, "Armour updated.");
	return 1;
}

CMD:debug(playerid)
{
	if (!Admin_Require(playerid, 3))
	{
		return 1;
	}

	new Float:x, Float:y, Float:z, Float:angle, content[192];
	GetPlayerPos(playerid, x, y, z);
	GetPlayerFacingAngle(playerid, angle);

	format(content, sizeof(content),
		W"Position: "P"%.4f, %.4f, %.4f\n"W"Angle: "P"%.4f\n"W"Interior: "P"%d\n"W"World: "P"%d",
		x,
		y,
		z,
		angle,
		GetPlayerInterior(playerid),
		GetPlayerVirtualWorld(playerid)
	);

	SPD(playerid, DIALOG_ADMIN_HELP, DSM,
		DIALOG_TITLE("Debug"),
		content,
		DIALOG_BUTTON_CLOSE,
		""
	);
	return 1;
}

CMD:cc(playerid)
{
	if (!Admin_Require(playerid, 5))
	{
		return 1;
	}

	for (new i = 0; i < 64; i++)
	{
		SCMA(COLOR_WHITE, "");
	}

	SCMA(COLOR_WHITE, "Chat was cleared by the administration.");
	return 1;
}

CMD:setskin(playerid, params[])
{
	if (!Admin_Require(playerid, 6))
	{
		return 1;
	}

	new targetid, skinid;
	if (sscanf(params, "ui", targetid, skinid))
	{
		SendError(playerid, "Usage: /setskin [player] [skin]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid) || !Character_IsValidSkin(skinid))
	{
		SendError(playerid, "Invalid player or skin.");
		return 1;
	}

	Character_SetSkin(targetid, skinid);
	SendOK(playerid, "Skin updated.");
	return 1;
}

CMD:makeadmin(playerid, params[])
{
	if (!IsPlayerAdmin(playerid) && !Admin_Require(playerid, 6))
	{
		return 1;
	}

	new targetid, level;
	if (sscanf(params, "ui", targetid, level))
	{
		SendError(playerid, "Usage: /makeadmin [player] [level]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid) || !Account_IsLoggedIn(targetid))
	{
		SendError(playerid, "Player not found or not logged in.");
		return 1;
	}

	if (level < 0 || level > ADMIN_MAX_LEVEL)
	{
		SendError(playerid, "Admin level must be between 0 and 7.");
		return 1;
	}

	new target_name[MAX_PLAYER_NAME + 1], message[128];
	General_GetDisplayName(targetid, target_name, sizeof(target_name));
	Admin_SetLevel(targetid, level);

	format(message, sizeof(message), "You set %s's admin level to %d.", target_name, level);
	SendOK(playerid, message);

	if (level > 0)
	{
		format(message, sizeof(message), "Your admin level was set to %d. Use /aduty to start administrating.", level);
		SendInfo(targetid, message);
	}
	else
	{
		SendInfo(targetid, "Your admin access was removed.");
	}

	return 1;
}
