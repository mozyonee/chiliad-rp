#if defined CHILIAD_GENERAL_SETTINGS
	#endinput
#endif
#define CHILIAD_GENERAL_SETTINGS

#include "source/systems/general/settings/data.inc"
#include "source/systems/general/settings/database.inc"
#include "source/systems/general/settings/dialogs.inc"
#include "source/systems/general/settings/callbacks.inc"
#include "source/systems/general/settings/commands.inc"
#include "source/systems/general/settings/hooks.inc"

Settings_Init()
{
	SettingsDB_EnsureTables();
	return 1;
}

Settings_Reset(playerid)
{
	SettingsData[playerid][PMEnabled] = true;
	SettingsData[playerid][OOCChatEnabled] = true;
	SettingsLoaded[playerid] = false;
	return 1;
}

Settings_Load(playerid)
{
	Settings_Reset(playerid);
	SettingsDB_Load(playerid);
	return 1;
}

bool:Settings_IsPMEnabled(playerid)
{
	if (!SettingsLoaded[playerid])
	{
		return true;
	}

	return SettingsData[playerid][PMEnabled];
}

bool:Settings_IsOOCChatEnabled(playerid)
{
	if (!SettingsLoaded[playerid])
	{
		return true;
	}

	return SettingsData[playerid][OOCChatEnabled];
}

Settings_SetPMEnabled(playerid, bool:enabled)
{
	SettingsData[playerid][PMEnabled] = enabled;
	SettingsDB_Save(playerid);
	return 1;
}

Settings_SetOOCChatEnabled(playerid, bool:enabled)
{
	SettingsData[playerid][OOCChatEnabled] = enabled;
	SettingsDB_Save(playerid);
	return 1;
}
