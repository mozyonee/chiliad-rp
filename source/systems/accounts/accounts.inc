#if defined CHILIAD_ACCOUNTS
	#endinput
#endif
#define CHILIAD_ACCOUNTS

forward bool:Account_CanSkipPassword(playerid);

#include <samp_bcrypt>
#include "source/systems/accounts/accounts_data.inc"
#include "source/systems/accounts/accounts_db.inc"
#include "source/systems/accounts/accounts_dialogs.inc"
#include "source/systems/accounts/accounts_callbacks.inc"
#include "source/systems/accounts/accounts_hooks.inc"

Account_Init()
{
	bcrypt_set_thread_limit(2);
	AccountDB_EnsureTables();
	return 1;
}

Account_Reset(playerid)
{
	AccountData[playerid][ID] = 0;
	AccountData[playerid][Name][0] = EOS;
	AccountData[playerid][PasswordHash][0] = EOS;
	AccountData[playerid][LastIP][0] = EOS;
	AccountData[playerid][LastLoginAt] = 0;
	AccountData[playerid][Registered] = false;
	AccountData[playerid][LoggedIn] = false;
	AccountData[playerid][LoginAttempts] = 0;
	return 1;
}

Account_Start(playerid)
{
	Account_Reset(playerid);
	GetPlayerName(playerid, AccountData[playerid][Name], MAX_PLAYER_NAME + 1);
	TogglePlayerControllable(playerid, false);
	AccountDB_FindByName(playerid);
	return 1;
}

Account_FinishLogin(playerid)
{
	AccountData[playerid][LoggedIn] = true;
	AccountData[playerid][LoginAttempts] = 0;

	AccountDB_UpdateLogin(playerid);
	TogglePlayerControllable(playerid, true);

	CallLocalFunction("OnAccountLogin", "i", playerid);
	return 1;
}

Account_SetLoginIdentity(playerid, account_id, const account_name[], const password_hash[], const last_ip[], last_login_at)
{
	AccountData[playerid][ID] = account_id;
	format(AccountData[playerid][Name], MAX_PLAYER_NAME + 1, "%s", account_name);
	format(AccountData[playerid][PasswordHash], BCRYPT_HASH_LENGTH, "%s", password_hash);
	format(AccountData[playerid][LastIP], ACCOUNT_IP_LENGTH, "%s", last_ip);
	AccountData[playerid][LastLoginAt] = last_login_at;
	AccountData[playerid][Registered] = true;
	return 1;
}

bool:Account_CanSkipPassword(playerid)
{
	if (!AccountData[playerid][LastLoginAt])
	{
		return false;
	}

	if (gettime() - AccountData[playerid][LastLoginAt] > ACCOUNT_TRUSTED_LOGIN_SECONDS)
	{
		return false;
	}

	new ip[46];
	GetPlayerIp(playerid, ip, sizeof(ip));
	return !strcmp(ip, AccountData[playerid][LastIP], true);
}

stock Account_GetID(playerid)
{
	return AccountData[playerid][ID];
}

stock bool:Account_IsLoggedIn(playerid)
{
	return AccountData[playerid][LoggedIn];
}
