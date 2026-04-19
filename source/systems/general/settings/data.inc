#if defined CHILIAD_SETTINGS_DATA
	#endinput
#endif
#define CHILIAD_SETTINGS_DATA

enum E_SETTINGS_DATA
{
	bool:PMEnabled,
	bool:OOCChatEnabled
}

new SettingsData[MAX_PLAYERS][E_SETTINGS_DATA];
new bool:SettingsLoaded[MAX_PLAYERS];
