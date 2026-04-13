#if defined CHILIAD_ACCOUNTS_CALLBACKS
	#endinput
#endif
#define CHILIAD_ACCOUNTS_CALLBACKS

forward Account_OnLookup(playerid);
public Account_OnLookup(playerid)
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	if (cache_num_rows() == 0)
	{
		AccountData[playerid][Registered] = false;
		CallLocalFunction("OnAccountNameNotFound", "i", playerid);
		return 1;
	}

	AccountData[playerid][Registered] = true;
	cache_get_value_name_int(0, "id", AccountData[playerid][ID]);
	cache_get_value_name(0, "password_hash", AccountData[playerid][PasswordHash], BCRYPT_HASH_LENGTH);

	Account_ShowLoginDialog(playerid);
	return 1;
}

forward Account_OnPasswordHashed(playerid);
public Account_OnPasswordHashed(playerid)
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	new hash[BCRYPT_HASH_LENGTH];
	bcrypt_get_hash(hash);

	AccountDB_Insert(playerid, hash);
	return 1;
}

forward Account_OnInserted(playerid);
public Account_OnInserted(playerid)
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	AccountData[playerid][ID] = cache_insert_id();
	AccountData[playerid][Registered] = true;

	SendClientMessage(playerid, 0x2ECC71FF, "Account registered.");
	Account_FinishLogin(playerid);
	return 1;
}

forward Account_OnPasswordVerified(playerid, bool:success);
public Account_OnPasswordVerified(playerid, bool:success)
{
	if (!IsPlayerConnected(playerid))
	{
		return 1;
	}

	if (!success)
	{
		AccountData[playerid][LoginAttempts]++;
		SendClientMessage(playerid, 0xE74C3CFF, "Incorrect password.");

		if (AccountData[playerid][LoginAttempts] >= ACCOUNT_MAX_LOGIN_ATTEMPTS)
		{
			Kick(playerid);
			return 1;
		}

		Account_ShowLoginDialog(playerid);
		return 1;
	}

	Account_FinishLogin(playerid);
	return 1;
}
