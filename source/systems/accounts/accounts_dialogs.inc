#if defined CHILIAD_ACCOUNTS_DIALOGS
	#endinput
#endif
#define CHILIAD_ACCOUNTS_DIALOGS

#define DIALOG_ACCOUNT_LOGIN (DIALOG_ACCOUNT_BASE + 1)
#define DIALOG_ACCOUNT_REGISTER (DIALOG_ACCOUNT_BASE + 2)

Account_ShowLoginDialog(playerid)
{
	new body[160];
	format(body, sizeof(body),
		"Welcome back, %s.\n\nEnter your account password to continue.",
		AccountData[playerid][Name]
	);

	ShowPlayerDialog(playerid, DIALOG_ACCOUNT_LOGIN, DIALOG_STYLE_PASSWORD,
		"Account Login",
		body,
		"Login",
		"Quit"
	);
	return 1;
}

Account_ShowRegisterDialog(playerid)
{
	new body[192];
	format(body, sizeof(body),
		"Welcome, %s.\n\nThis account name is not registered.\nEnter a password with at least %d characters.",
		AccountData[playerid][Name],
		ACCOUNT_MIN_PASSWORD_LENGTH
	);

	ShowPlayerDialog(playerid, DIALOG_ACCOUNT_REGISTER, DIALOG_STYLE_PASSWORD,
		"Account Registration",
		body,
		"Register",
		"Quit"
	);
	return 1;
}

Account_HandleLoginDialog(playerid, response, const inputtext[])
{
	if (!response)
	{
		Kick(playerid);
		return 1;
	}

	if (strlen(inputtext) < ACCOUNT_MIN_PASSWORD_LENGTH)
	{
		SendClientMessage(playerid, 0xE74C3CFF, "Password is too short.");
		Account_ShowLoginDialog(playerid);
		return 1;
	}

	bcrypt_verify(playerid, "Account_OnPasswordVerified", inputtext, AccountData[playerid][PasswordHash]);
	return 1;
}

Account_HandleRegisterDialog(playerid, response, const inputtext[])
{
	if (!response)
	{
		Kick(playerid);
		return 1;
	}

	if (strlen(inputtext) < ACCOUNT_MIN_PASSWORD_LENGTH)
	{
		SendClientMessage(playerid, 0xE74C3CFF, "Password is too short.");
		Account_ShowRegisterDialog(playerid);
		return 1;
	}

	bcrypt_hash(playerid, "Account_OnPasswordHashed", inputtext, BCRYPT_COST);
	return 1;
}
