#if defined CHILIAD_GENERAL_UTILS
	#endinput
#endif
#define CHILIAD_GENERAL_UTILS

#define GENERAL_RADIUS_WHISPER (5.0)
#define GENERAL_RADIUS_TALK (20.0)
#define GENERAL_RADIUS_SHOUT (40.0)

bool:General_RequireCharacter(playerid)
{
	if (!Character_IsLoaded(playerid))
	{
		SendError(playerid, "You must load a character first.");
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

General_ReplaceSymbol(text[], symbol, replacement)
{
	for (new i = 0; text[i] != EOS; i++)
	{
		if (text[i] == symbol)
		{
			text[i] = replacement;
		}
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
			SCM(i, color, text);
		}
	}

	return 1;
}
