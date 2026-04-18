#if defined CHILIAD_SETTINGS
	#endinput
#endif
#define CHILIAD_SETTINGS

#include "source/systems/general/settings/settings_data.inc"
#include "source/systems/general/settings/settings_db.inc"
#include "source/systems/general/settings/settings_dialogs.inc"
#include "source/systems/general/settings/settings_callbacks.inc"
#include "source/systems/general/settings/settings_cmds.inc"
#include "source/systems/general/settings/settings_hooks.inc"

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
