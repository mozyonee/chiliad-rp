#if defined CHILIAD_CHARACTERS_CALLBACKS
	#endinput
#endif
#define CHILIAD_CHARACTERS_CALLBACKS

forward OnAccountNameNotFound(playerid);
public OnAccountNameNotFound(playerid)
{
	CharacterDB_FindAccountByCharacterName(playerid, AccountData[playerid][Name]);
	return 1;
}

forward OnAccountLogin(playerid);
public OnAccountLogin(playerid)
{
	if (CharacterLoginData[playerid][HasPendingLoginCharacter])
	{
		CharacterLoginData[playerid][HasPendingLoginCharacter] = false;
		Character_Load(playerid, CharacterLoginData[playerid][LoginCharacterID]);
		return 1;
	}

	Character_Start(playerid);
	return 1;
}

forward Character_OnAccountNameLookup(playerid);
public Character_OnAccountNameLookup(playerid)
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	if (cache_num_rows() == 0)
	{
		Account_ShowRegisterDialog(playerid);
		return 1;
	}

	new account_id, account_name[MAX_PLAYER_NAME + 1], password_hash[BCRYPT_HASH_LENGTH], last_ip[ACCOUNT_IP_LENGTH], last_login_at;

	cache_get_value_name_int(0, "character_id", CharacterLoginData[playerid][LoginCharacterID]);
	cache_get_value_name_int(0, "account_id", account_id);
	cache_get_value_name(0, "username", account_name, sizeof(account_name));
	cache_get_value_name(0, "password_hash", password_hash, sizeof(password_hash));
	cache_get_value_name(0, "last_ip", last_ip, sizeof(last_ip));
	cache_get_value_name_int(0, "last_login_at", last_login_at);

	CharacterLoginData[playerid][HasPendingLoginCharacter] = true;
	Account_SetLoginIdentity(playerid, account_id, account_name, password_hash, last_ip, last_login_at);

	if (Account_CanSkipPassword(playerid))
	{
		SendInfo(playerid, "Logged in automatically from trusted IP.");
		Account_FinishLogin(playerid);
		return 1;
	}

	Account_ShowLoginDialog(playerid);
	return 1;
}

forward Character_OnListLoaded(playerid);
public Character_OnListLoaded(playerid)
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	CharacterListCount[playerid] = cache_num_rows();

	for (new i = 0; i < CharacterListCount[playerid]; i++)
	{
		cache_get_value_name_int(i, "id", CharacterList[playerid][i][ListID]);
		cache_get_value_name(i, "name", CharacterList[playerid][i][ListName], MAX_PLAYER_NAME + 1);
		cache_get_value_name_int(i, "skin", CharacterList[playerid][i][ListSkin]);
	}

	Character_ShowSelectDialog(playerid);
	return 1;
}

forward Character_OnNameLookup(playerid, name[]);
public Character_OnNameLookup(playerid, name[])
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	if (cache_num_rows() != 0)
	{
		SendError(playerid, "That character name is already taken.");
		Character_ShowCreateNameDialog(playerid);
		return 1;
	}

	CharacterDB_Insert(playerid, name);
	return 1;
}

forward Character_OnInserted(playerid);
public Character_OnInserted(playerid)
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	Character_Load(playerid, cache_insert_id());
	return 1;
}

forward Character_OnLoaded(playerid);
public Character_OnLoaded(playerid)
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	if (cache_num_rows() == 0)
	{
		SendError(playerid, "Character could not be loaded.");
		CharacterDB_LoadAccountCharacters(playerid);
		return 1;
	}

	cache_get_value_name_int(0, "id", CharacterData[playerid][ID]);
	cache_get_value_name_int(0, "account_id", CharacterData[playerid][AccountID]);
	cache_get_value_name(0, "name", CharacterData[playerid][Name], MAX_PLAYER_NAME + 1);
	cache_get_value_name_int(0, "skin", CharacterData[playerid][Skin]);
	cache_get_value_name_int(0, "age", CharacterData[playerid][Age]);
	cache_get_value_name_int(0, "sex", CharacterData[playerid][Sex]);
	cache_get_value_name_int(0, "ethnos", CharacterData[playerid][Ethnos]);
	cache_get_value_name_float(0, "last_x", CharacterData[playerid][LastX]);
	cache_get_value_name_float(0, "last_y", CharacterData[playerid][LastY]);
	cache_get_value_name_float(0, "last_z", CharacterData[playerid][LastZ]);
	cache_get_value_name_float(0, "last_angle", CharacterData[playerid][LastAngle]);
	cache_get_value_name_int(0, "last_interior", CharacterData[playerid][LastInterior]);
	cache_get_value_name_int(0, "last_world", CharacterData[playerid][LastWorld]);
	cache_get_value_name_int(0, "last_unloaded_at", CharacterData[playerid][LastUnloadedAt]);
	CharacterData[playerid][Loaded] = true;

	if (Character_CanResumeSession(playerid))
	{
		Character_ShowResumeSessionDialog(playerid);
		return 1;
	}

	Character_Spawn(playerid, false);
	CharacterDB_UpdateLogin(playerid);
	SendOK(playerid, "Character loaded.");
	return 1;
}
