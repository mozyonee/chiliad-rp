#if defined CHILIAD_GENERAL_UTILS
	#endinput
#endif
#define CHILIAD_GENERAL_UTILS

#define GENERAL_RADIUS_WHISPER (5.0)
#define GENERAL_RADIUS_TALK (20.0)
#define GENERAL_RADIUS_SHOUT (40.0)
#define GENERAL_CHAT_MIN_BRIGHTNESS (128)
#define GENERAL_CHAT_MAX_BRIGHTNESS (255)

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
	if (Admin_IsDuty(playerid))
	{
		Account_GetName(playerid, name, size);
	}
	else if (Character_IsLoaded(playerid))
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
	#pragma unused color

	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);

	for (new i = 0; i < MAX_PLAYERS; i++)
	{
		if (!IsPlayerConnected(i))
		{
			continue;
		}

		if (GetPlayerVirtualWorld(i) != GetPlayerVirtualWorld(playerid) || GetPlayerInterior(i) != GetPlayerInterior(playerid))
		{
			continue;
		}

		if (GetPlayerDistanceFromPoint(i, x, y, z) <= radius)
		{
			SCM(i, General_GetLocalMessageColor(playerid, i, radius), text);
		}
	}

	return 1;
}

General_GetLocalMessageColor(playerid, targetid, Float:radius)
{
	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);

	new Float:distance = GetPlayerDistanceFromPoint(targetid, x, y, z);
	if (distance > radius)
	{
		distance = radius;
	}

	new brightness = GENERAL_CHAT_MAX_BRIGHTNESS - floatround((distance / radius) * (GENERAL_CHAT_MAX_BRIGHTNESS - GENERAL_CHAT_MIN_BRIGHTNESS));

	if (brightness < GENERAL_CHAT_MIN_BRIGHTNESS)
	{
		brightness = GENERAL_CHAT_MIN_BRIGHTNESS;
	}

	return (brightness << 24) | (brightness << 16) | (brightness << 8) | 0xFF;
}

General_SendLocalOOCMessage(playerid, const text[])
{
	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);

	for (new i = 0; i < MAX_PLAYERS; i++)
	{
		if (!IsPlayerConnected(i) || !Settings_IsOOCChatEnabled(i))
		{
			continue;
		}

		if (GetPlayerVirtualWorld(i) != GetPlayerVirtualWorld(playerid) || GetPlayerInterior(i) != GetPlayerInterior(playerid))
		{
			continue;
		}

		if (GetPlayerDistanceFromPoint(i, x, y, z) <= GENERAL_RADIUS_TALK)
		{
			SCM(i, General_GetLocalMessageColor(playerid, i, GENERAL_RADIUS_TALK), text);
		}
	}

	return 1;
}

General_ResetPlayer(playerid)
{
	General_ClearAction(playerid);
	General_ClearPameLabel(playerid);
	return 1;
}

General_SetAction(playerid, const text[])
{
	General_ClearAction(playerid);

	new label[192], name[MAX_PLAYER_NAME + 1];
	new Float:x, Float:y, Float:z;

	General_GetDisplayName(playerid, name, sizeof(name));
	GetPlayerPos(playerid, x, y, z);
	format(label, sizeof(label), "%s\n\n#%d", text, playerid);

	GeneralActionLabel[playerid] = Create3DTextLabel(
		label,
		COLOR_RP,
		x,
		y,
		z,
		100.0,
		GetPlayerVirtualWorld(playerid),
		true
	);
	return 1;
}

General_ClearAction(playerid)
{
	if (GeneralActionLabel[playerid] != INVALID_3DTEXT_ID)
	{
		Delete3DTextLabel(GeneralActionLabel[playerid]);
		GeneralActionLabel[playerid] = INVALID_3DTEXT_ID;
	}

	return 1;
}

bool:General_HasAction(playerid)
{
	return GeneralActionLabel[playerid] != INVALID_3DTEXT_ID;
}

General_RefreshPameLabel(playerid)
{
	General_ClearPameLabel(playerid);

	new text[CHARACTER_MAX_PAME_LENGTH];
	Character_GetPame(playerid, text, sizeof(text));

	if (strlen(text) <= 1)
	{
		return 1;
	}

	GeneralPameLabel[playerid] = Create3DTextLabel(text, 0xFFFFFFDD, 0.0, 0.0, 12000.0, 3.0, 0, true);
	Attach3DTextLabelToPlayer(GeneralPameLabel[playerid], playerid, 0.0, 0.0, -0.8);
	return 1;
}

General_ClearPame(playerid)
{
	Character_SetPame(playerid, "");
	General_ClearPameLabel(playerid);
	return 1;
}

General_SetPame(playerid, const text[])
{
	Character_SetPame(playerid, text);
	General_RefreshPameLabel(playerid);
	return 1;
}

General_ClearPameLabel(playerid)
{
	if (GeneralPameLabel[playerid] != INVALID_3DTEXT_ID)
	{
		Delete3DTextLabel(GeneralPameLabel[playerid]);
		GeneralPameLabel[playerid] = INVALID_3DTEXT_ID;
	}

	return 1;
}
