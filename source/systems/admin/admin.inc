#if defined CHILIAD_ADMIN
	#endinput
#endif
#define CHILIAD_ADMIN

#include "source/systems/admin/admin_data.inc"
#include "source/systems/admin/admin_db.inc"

forward Admin_GetLevel(playerid);
forward bool:Admin_IsDuty(playerid);
forward bool:Admin_Require(playerid, level, bool:duty = true);
forward Admin_SetLevel(playerid, level);
forward Admin_SetDuty(playerid, bool:enabled);
forward Admin_SendMessage(const text[]);

#include "source/systems/admin/admin_callbacks.inc"
#include "source/systems/admin/admin_dialogs.inc"
#include "source/systems/admin/admin_cmds.inc"
#include "source/systems/admin/admin_hooks.inc"

Admin_Init()
{
	AdminDB_EnsureTables();
	return 1;
}

Admin_Reset(playerid)
{
	AdminData[playerid][Level] = 0;
	AdminData[playerid][Duty] = false;
	AdminLoaded[playerid] = false;
	return 1;
}

Admin_Load(playerid)
{
	Admin_Reset(playerid);

	if (!Account_IsLoggedIn(playerid))
	{
		return 1;
	}

	AdminDB_Load(playerid);
	return 1;
}

stock Admin_GetLevel(playerid)
{
	return AdminData[playerid][Level];
}

stock bool:Admin_IsDuty(playerid)
{
	return AdminData[playerid][Duty];
}

bool:Admin_Require(playerid, level, bool:duty = true)
{
	if (IsPlayerAdmin(playerid))
	{
		return true;
	}

	if (AdminData[playerid][Level] < level)
	{
		SendError(playerid, "You do not have access to this command.");
		return false;
	}

	if (duty && !AdminData[playerid][Duty])
	{
		SendError(playerid, "Use /aduty first.");
		return false;
	}

	return true;
}

Admin_SetLevel(playerid, level)
{
	AdminData[playerid][Level] = level;

	if (level <= 0)
	{
		AdminData[playerid][Duty] = false;
	}

	AdminDB_SetLevel(playerid, level);
	return 1;
}

Admin_SetDuty(playerid, bool:enabled)
{
	AdminData[playerid][Duty] = enabled;

	if (enabled)
	{
		SetPlayerName(playerid, AccountData[playerid][Name]);
	}
	else if (Character_IsLoaded(playerid))
	{
		SetPlayerName(playerid, CharacterData[playerid][Name]);
	}

	return 1;
}

Admin_SendMessage(const text[])
{
	for (new i = 0; i < MAX_PLAYERS; i++)
	{
		if (IsPlayerConnected(i) && AdminData[i][Level] > 0 && AdminData[i][Duty])
		{
			new message[144];
			format(message, sizeof(message), "[A] %s", text);
			SCM(i, COLOR_SUCCESS, message);
		}
	}

	return 1;
}
