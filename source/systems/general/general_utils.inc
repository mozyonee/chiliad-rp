#if defined CHILIAD_GENERAL_UTILS
	#endinput
#endif
#define CHILIAD_GENERAL_UTILS

#define GENERAL_COLOR_ERROR (0xE74C3CFF)
#define GENERAL_COLOR_INFO (0x3498DBFF)
#define GENERAL_COLOR_OOC (0xC0C0C0FF)
#define GENERAL_COLOR_RP (0xC2A2DAFF)
#define GENERAL_COLOR_PM (0xF1C40FFF)

#define GENERAL_RADIUS_WHISPER (5.0)
#define GENERAL_RADIUS_TALK (20.0)
#define GENERAL_RADIUS_SHOUT (40.0)

bool:General_RequireCharacter(playerid)
{
	if (!Character_IsLoaded(playerid))
	{
		SendClientMessage(playerid, GENERAL_COLOR_ERROR, "You must load a character first.");
		return false;
	}

	return true;
}

General_GetDisplayName(playerid, name[], size = sizeof name)
{
	if (Character_IsLoaded(playerid))
	{
		Character_GetName(playerid, name, size);
	}
	else
	{
		GetPlayerName(playerid, name, size);
	}

	return 1;
}

General_SendLocalMessage(playerid, Float:radius, color, const text[])
{
	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);

	for (new i = 0; i < MAX_PLAYERS; i++)
	{
		if (!IsPlayerConnected(i))
		{
			continue;
		}

		if (GetPlayerDistanceFromPoint(i, x, y, z) <= radius)
		{
			SendClientMessage(i, color, text);
		}
	}

	return 1;
}
