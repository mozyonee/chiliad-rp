#if defined CHILIAD_CHARACTERS_DIALOGS
	#endinput
#endif
#define CHILIAD_CHARACTERS_DIALOGS

Character_ShowSelectDialog(playerid)
{
	new body[512], line[64];

	body[0] = EOS;

	for (new i = 0; i < CharacterListCount[playerid]; i++)
	{
		format(line, sizeof(line), P"%d."W" %s\n", i + 1, CharacterList[playerid][i][ListName]);
		strcat(body, line, sizeof(body));
	}

	if (CharacterListCount[playerid] < CHARACTER_MAX_PER_ACCOUNT)
	{
		strcat(body, P"+"W" Create new character\n", sizeof(body));
	}

	SPD(playerid, DIALOG_CHARACTER_SELECT, DSL,
		DIALOG_TITLE("Characters"),
		body,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_CANCEL
	);
	return 1;
}

Character_ShowCreateNameDialog(playerid)
{
	SPD(playerid, DIALOG_CHARACTER_CREATE_NAME, DSI,
		DIALOG_TITLE("Create Character"),
		W"Enter your character name in "P"Forename_Surname"W" format.",
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_BACK
	);
	return 1;
}

Character_ShowResumeSessionDialog(playerid)
{
	SPD(playerid, DIALOG_CHARACTER_RESUME_SESSION, DSM,
		DIALOG_TITLE("Resume Session"),
		W"This character disconnected less than "P"15 minutes"W" ago.\n\nDo you want to resume from the last position?",
		DIALOG_BUTTON_YES,
		DIALOG_BUTTON_NO
	);
	return 1;
}

Character_HandleSelectDialog(playerid, response, listitem)
{
	if (!response)
	{
		if (CharacterData[playerid][Loaded])
		{
			return 1;
		}

		Kick(playerid);
		return 1;
	}

	if (listitem < CharacterListCount[playerid])
	{
		Character_Load(playerid, CharacterList[playerid][listitem][ListID]);
		return 1;
	}

	Character_ShowCreateNameDialog(playerid);
	return 1;
}

Character_HandleCreateNameDialog(playerid, response, const inputtext[])
{
	if (!response)
	{
		Character_ShowSelectDialog(playerid);
		return 1;
	}

	Character_Create(playerid, inputtext);
	return 1;
}

Character_HandleResumeSessionDialog(playerid, response)
{
	Character_Spawn(playerid, bool:response);
	CharacterDB_UpdateLogin(playerid);

	new name[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, name, sizeof(name));
	format(message, sizeof message, "Welcome back to Chiliad, %s!", name);
	SendSuccess(playerid, message);
	
	return 1;
}
