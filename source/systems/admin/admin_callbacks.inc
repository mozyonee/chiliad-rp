#if defined CHILIAD_ADMIN_CALLBACKS
	#endinput
#endif
#define CHILIAD_ADMIN_CALLBACKS

forward Admin_OnLoaded(playerid);
public Admin_OnLoaded(playerid)
{
	if (!IsPlayerConnected(playerid) || !Account_IsLoggedIn(playerid))
	{
		return 1;
	}

	if (cache_num_rows())
	{
		cache_get_value_name_int(0, "level", AdminData[playerid][Level]);
	}

	AdminLoaded[playerid] = true;

	if (AdminData[playerid][Level] > 0)
	{
		SendInfo(playerid, "Use /aduty to start administrating.");
	}

	return 1;
}
