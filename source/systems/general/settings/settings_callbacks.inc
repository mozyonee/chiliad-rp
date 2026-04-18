#if defined CHILIAD_SETTINGS_CALLBACKS
	#endinput
#endif
#define CHILIAD_SETTINGS_CALLBACKS

forward Settings_OnLoaded(playerid);
public Settings_OnLoaded(playerid)
{
	if (!IsPlayerConnected(playerid) || !Character_IsLoaded(playerid))
	{
		return 1;
	}

	if (cache_num_rows())
	{
		new value;

		cache_get_value_name_int(0, "pm_enabled", value);
		SettingsData[playerid][PMEnabled] = bool:value;

		cache_get_value_name_int(0, "ooc_chat_enabled", value);
		SettingsData[playerid][OOCChatEnabled] = bool:value;
	}

	SettingsLoaded[playerid] = true;
	return 1;
}
