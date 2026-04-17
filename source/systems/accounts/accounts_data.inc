#if defined CHILIAD_ACCOUNTS_DATA
	#endinput
#endif
#define CHILIAD_ACCOUNTS_DATA

#define ACCOUNT_MIN_PASSWORD_LENGTH (6)
#define ACCOUNT_MAX_LOGIN_ATTEMPTS (3)
#define ACCOUNT_TRUSTED_LOGIN_SECONDS (3 * 24 * 60 * 60)
#define ACCOUNT_IP_LENGTH (46)

enum E_ACCOUNT_DATA
{
	ID,
	Name[MAX_PLAYER_NAME + 1],
	PasswordHash[BCRYPT_HASH_LENGTH],
	LastIP[ACCOUNT_IP_LENGTH],
	LastLoginAt,
	bool:Registered,
	bool:LoggedIn,
	LoginAttempts
}

new AccountData[MAX_PLAYERS][E_ACCOUNT_DATA];
