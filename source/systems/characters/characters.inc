#if defined CHILIAD_CHARACTERS
	#endinput
#endif
#define CHILIAD_CHARACTERS

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
	CharacterData[playerid][ID] = 0;
	CharacterData[playerid][AccountID] = 0;
	CharacterData[playerid][Name][0] = EOS;
	CharacterData[playerid][Skin] = CHARACTER_DEFAULT_SKIN;
	CharacterData[playerid][Age] = 18;
	CharacterData[playerid][Sex] = 0;
	CharacterData[playerid][Ethnos] = 0;
	CharacterData[playerid][Loaded] = false;

	CharacterListCount[playerid] = 0;
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
		SendClientMessage(playerid, 0xE74C3CFF, "You must be logged in to change character.");
		return 1;
	}

	Character_Reset(playerid);
	CharacterDB_LoadAccountCharacters(playerid);
	return 1;
}

Character_Load(playerid, character_id)
{
	CharacterDB_Load(playerid, character_id);
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
		SendClientMessage(playerid, 0xE74C3CFF, "Use Forename_Surname format, for example John_Smith.");
		Character_ShowCreateNameDialog(playerid);
		return 1;
	}

	CharacterDB_FindByName(playerid, name);
	return 1;
}

stock bool:Character_IsLoaded(playerid)
{
	return CharacterData[playerid][Loaded];
}

stock Character_GetID(playerid)
{
	return CharacterData[playerid][ID];
}
