#if defined CHILIAD_ACCOUNTS_DIALOGS
	#endinput
#endif
#define CHILIAD_ACCOUNTS_DIALOGS

Account_ShowLoginDialog(playerid)
{
	new body[160];
	format(body, sizeof(body),
		W"Welcome back, "P"%s"W".\n\nEnter your account password to continue.",
		AccountData[playerid][Name]
	);

	SPD(playerid, DIALOG_ACCOUNT_LOGIN, DSP,
		DIALOG_TITLE("Account Login"),
		body,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_CANCEL
	);
	return 1;
}

Account_ShowRegisterDialog(playerid)
{
	new body[192];
	format(body, sizeof(body),
		W"Welcome, "P"%s"W".\n\nThis account name is not registered.\nEnter a password with at least "P"%d"W" characters.",
		AccountData[playerid][Name],
		ACCOUNT_MIN_PASSWORD_LENGTH
	);

	SPD(playerid, DIALOG_ACCOUNT_REGISTER, DSP,
		DIALOG_TITLE("Account Registration"),
		body,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_CANCEL
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
		SendError(playerid, "Password is too short.");
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
		SendError(playerid, "Password is too short.");
		Account_ShowRegisterDialog(playerid);
		return 1;
	}

	bcrypt_hash(playerid, "Account_OnPasswordHashed", inputtext, BCRYPT_COST);
	return 1;
}
