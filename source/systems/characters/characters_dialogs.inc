#if defined CHILIAD_CHARACTERS_DIALOGS
	#endinput
#endif
#define CHILIAD_CHARACTERS_DIALOGS

#define DIALOG_CHARACTER_SELECT (DIALOG_CHARACTER_BASE + 1)
#define DIALOG_CHARACTER_CREATE_NAME (DIALOG_CHARACTER_BASE + 2)

Character_ShowSelectDialog(playerid)
{
	new body[512], line[64];

	body[0] = EOS;

	for (new i = 0; i < CharacterListCount[playerid]; i++)
	{
		format(line, sizeof(line), "%s\n", CharacterList[playerid][i][ListName]);
		strcat(body, line, sizeof(body));
	}

	if (CharacterListCount[playerid] < CHARACTER_MAX_PER_ACCOUNT)
	{
		strcat(body, "Create new character\n", sizeof(body));
	}

	ShowPlayerDialog(playerid, DIALOG_CHARACTER_SELECT, DIALOG_STYLE_LIST,
		"Characters",
		body,
		"Select",
		"Quit"
	);
	return 1;
}

Character_ShowCreateNameDialog(playerid)
{
	ShowPlayerDialog(playerid, DIALOG_CHARACTER_CREATE_NAME, DIALOG_STYLE_INPUT,
		"Create Character",
		"Enter your character name in Forename_Surname format.",
		"Create",
		"Back"
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
