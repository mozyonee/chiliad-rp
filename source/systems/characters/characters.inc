#if defined CHILIAD_CHARACTERS
	#endinput
#endif
#define CHILIAD_CHARACTERS

forward bool:Character_CanResumeSession(playerid);
forward bool:Character_IsLoaded(playerid);
forward bool:Character_IsValidSkin(skinid);
forward bool:Character_IsNakedSkin(skinid);
forward Inventory_Load(playerid);
forward Inventory_Reset(playerid);
forward InventorySkins_EnsureCurrent(playerid);
forward General_ResetPlayer(playerid);
forward General_RefreshPameLabel(playerid);

#include "source/systems/characters/characters_data.inc"
#include "source/systems/characters/characters_db.inc"
#include "source/systems/characters/characters_dialogs.inc"
#include "source/systems/characters/characters_callbacks.inc"
#include "source/systems/characters/characters_hooks.inc"

Character_Init()
{
	CharacterDB_EnsureTables();
	return 1;
}

Character_Reset(playerid)
{
	Inventory_Reset(playerid);

	CharacterData[playerid][ID] = 0;
	CharacterData[playerid][AccountID] = 0;
	CharacterData[playerid][Name][0] = EOS;
	CharacterData[playerid][Skin] = CHARACTER_DEFAULT_SKIN;
	CharacterData[playerid][Age] = 18;
	CharacterData[playerid][Sex] = 0;
	CharacterData[playerid][Ethnos] = 0;
	CharacterData[playerid][Pame][0] = EOS;
	CharacterData[playerid][LastX] = CHARACTER_DEFAULT_X;
	CharacterData[playerid][LastY] = CHARACTER_DEFAULT_Y;
	CharacterData[playerid][LastZ] = CHARACTER_DEFAULT_Z;
	CharacterData[playerid][LastAngle] = CHARACTER_DEFAULT_ANGLE;
	CharacterData[playerid][LastInterior] = 0;
	CharacterData[playerid][LastWorld] = 0;
	CharacterData[playerid][LastUnloadedAt] = 0;
	CharacterData[playerid][Loaded] = false;

	CharacterListCount[playerid] = 0;
	General_ResetPlayer(playerid);
	return 1;
}

Character_Start(playerid)
{
	Character_Reset(playerid);
	CharacterDB_LoadAccountCharacters(playerid);
	return 1;
}

Character_Change(playerid)
{
	if (!Account_IsLoggedIn(playerid))
	{
		SendError(playerid, "You must be logged in to change character.");
		return 1;
	}

	CharacterDB_LoadAccountCharacters(playerid);
	return 1;
}

Character_Load(playerid, character_id)
{
	if (CharacterData[playerid][Loaded])
	{
		Character_SaveUnloadPosition(playerid);
		Inventory_Reset(playerid);
		Character_Reset(playerid);
	}

	CharacterDB_Load(playerid, character_id);
	return 1;
}

stock bool:Character_IsLoaded(playerid)
{
	return CharacterData[playerid][Loaded];
}

stock Character_GetName(playerid, name[], size = sizeof name)
{
	format(name, size, "%s", CharacterData[playerid][Name]);
	return 1;
}

static bool:Character_IsValidName(const name[])
{
	new length = strlen(name);

	if (length < CHARACTER_MIN_NAME_LENGTH || length > MAX_PLAYER_NAME)
	{
		return false;
	}

	new underscore = -1;

	for (new i = 0; i < length; i++)
	{
		if (name[i] == '_')
		{
			if (underscore != -1)
			{
				return false;
			}

			underscore = i;
			continue;
		}

		if (!((name[i] >= 'A' && name[i] <= 'Z') || (name[i] >= 'a' && name[i] <= 'z')))
		{
			return false;
		}
	}

	return underscore > 0 && underscore < length - 1;
}

Character_Create(playerid, const name[])
{
	if (!Character_IsValidName(name))
	{
		SendError(playerid, "Use Forename_Surname format, for example John_Smith.");
		Character_ShowCreateNameDialog(playerid);
		return 1;
	}

	CharacterDB_FindByName(playerid, name);
	return 1;
}

Character_SaveUnloadPosition(playerid)
{
	if (!CharacterData[playerid][Loaded])
	{
		return 1;
	}

	new Float:x, Float:y, Float:z, Float:angle;

	GetPlayerPos(playerid, x, y, z);
	GetPlayerFacingAngle(playerid, angle);

	CharacterDB_UpdateUnloadPosition(
		playerid,
		x,
		y,
		z,
		angle,
		GetPlayerInterior(playerid),
		GetPlayerVirtualWorld(playerid)
	);
	return 1;
}

Character_Spawn(playerid, bool:resume_session)
{
	new Float:x = CHARACTER_DEFAULT_X;
	new Float:y = CHARACTER_DEFAULT_Y;
	new Float:z = CHARACTER_DEFAULT_Z;
	new Float:angle = CHARACTER_DEFAULT_ANGLE;
	new interior = 0;
	new world = 0;

	if (resume_session)
	{
		x = CharacterData[playerid][LastX];
		y = CharacterData[playerid][LastY];
		z = CharacterData[playerid][LastZ];
		angle = CharacterData[playerid][LastAngle];
		interior = CharacterData[playerid][LastInterior];
		world = CharacterData[playerid][LastWorld];
	}

	SetPlayerName(playerid, CharacterData[playerid][Name]);
	SetPlayerScore(playerid, CharacterData[playerid][Age]);
	SetPlayerVirtualWorld(playerid, world);
	SetPlayerInterior(playerid, interior);
	SetSpawnInfo(playerid, NO_TEAM, CharacterData[playerid][Skin], x, y, z, angle);
	TogglePlayerSpectating(playerid, false);
	SpawnPlayer(playerid);
	General_RefreshPameLabel(playerid);
	return 1;
}

Character_SetSkin(playerid, skinid)
{
	if (!Character_IsValidSkin(skinid))
	{
		return 0;
	}

	CharacterData[playerid][Skin] = skinid;
	SetPlayerSkin(playerid, skinid);
	CharacterDB_UpdateSkin(playerid);
	return 1;
}

Character_GetSkin(playerid)
{
	return CharacterData[playerid][Skin];
}

Character_SetPame(playerid, const text[])
{
	format(CharacterData[playerid][Pame], CHARACTER_MAX_PAME_LENGTH, "%s", text);
	CharacterDB_UpdatePame(playerid);
	return 1;
}

Character_GetPame(playerid, text[], size = sizeof text)
{
	format(text, size, "%s", CharacterData[playerid][Pame]);
	return 1;
}

bool:Character_IsValidSkin(skinid)
{
	return 0 <= skinid <= 311;
}

Character_GetNakedSkin(playerid)
{
	return CharacterData[playerid][Sex] ? CHARACTER_NAKED_FEMALE_SKIN : CHARACTER_NAKED_MALE_SKIN;
}

bool:Character_IsNakedSkin(skinid)
{
	return skinid == CHARACTER_NAKED_MALE_SKIN || skinid == CHARACTER_NAKED_FEMALE_SKIN;
}

bool:Character_CanResumeSession(playerid)
{
	if (!CharacterData[playerid][LastUnloadedAt])
	{
		return false;
	}

	return gettime() - CharacterData[playerid][LastUnloadedAt] <= CHARACTER_RESUME_WINDOW_SECONDS;
}
