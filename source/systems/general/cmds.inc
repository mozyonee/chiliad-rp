#if defined CHILIAD_GENERAL_CMDS
	#endinput
#endif
#define CHILIAD_GENERAL_CMDS

alias:n("b")
CMD:n(playerid, params[])
{
	if (isnull(params))
	{
		SendError(playerid, "Usage: /n [message]");
		return 1;
	}

	new name[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, name, sizeof name);

	if (Admin_IsDuty(playerid))
	{
		format(message, sizeof message, "(( Administrator %s: %s ))", name, params);
	}
	else
	{
		format(message, sizeof message, "(( %s: %s ))", name, params);
	}

	General_SendLocalOOCMessage(playerid, message);
	return 1;
}

alias:an("ab")
CMD:an(playerid, params[])
{
	if (isnull(params))
	{
		SendError(playerid, "Usage: /an [message]");
		return 1;
	}

	new name[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, name, sizeof name);
	format(message, sizeof message, "(( Administrator %s: %s ))", name, params);

	General_SendLocalOOCMessage(playerid, message);
	return 1;
}

alias:shout("s")
CMD:shout(playerid, params[])
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	if (isnull(params))
	{
		SendError(playerid, "Usage: /s [message]");
		return 1;
	}

	new name[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, name, sizeof name);
	format(message, sizeof message, "%s shouts: %s!", name, params);
	General_SendLocalMessage(playerid, GENERAL_RADIUS_SHOUT, COLOR_RP, message);
	return 1;
}

alias:whisper("w")
CMD:whisper(playerid, params[])
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	if (isnull(params))
	{
		SendError(playerid, "Usage: /w [message]");
		return 1;
	}

	new name[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, name, sizeof name);
	format(message, sizeof message, "%s whispers: %s", name, params);
	General_SendLocalMessage(playerid, GENERAL_RADIUS_WHISPER, COLOR_RP, message);
	return 1;
}

CMD:me(playerid, params[])
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	if (isnull(params))
	{
		SendError(playerid, "Usage: /me [action]");
		return 1;
	}

	new name[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, name, sizeof name);
	format(message, sizeof message, "* %s %s", name, params);
	General_SendLocalMessage(playerid, GENERAL_RADIUS_TALK, COLOR_RP, message);
	return 1;
}

CMD:ame(playerid, params[])
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	if (isnull(params))
	{
		SendError(playerid, "Usage: /ame [action]");
		return 1;
	}

	new name[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, name, sizeof name);
	format(message, sizeof message, "* %s %s", name, params);
	SetPlayerChatBubble(playerid, message, COLOR_RP, GENERAL_RADIUS_TALK, 5000);
	SCM(playerid, COLOR_RP, message);
	return 1;
}

CMD:do(playerid, params[])
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	if (isnull(params))
	{
		SendError(playerid, "Usage: /do [description]");
		return 1;
	}

	new name[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, name, sizeof name);
	format(message, sizeof message, "* %s (( %s ))", params, name);
	General_SendLocalMessage(playerid, GENERAL_RADIUS_TALK, COLOR_RP, message);
	return 1;
}

CMD:ado(playerid, params[])
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	if (isnull(params))
	{
		SendError(playerid, "Usage: /ado [description]");
		return 1;
	}

	SetPlayerChatBubble(playerid, params, COLOR_RP, GENERAL_RADIUS_TALK, 5000);
	SCM(playerid, COLOR_RP, params);
	return 1;
}

CMD:todo(playerid, params[])
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	new split = strfind(params, "*");

	if (isnull(params) || split == -1)
	{
		SendError(playerid, "Usage: /todo [words] * [action]");
		return 1;
	}

	new words[96], action[96], name[MAX_PLAYER_NAME + 1], message[144];
	strmid(words, params, 0, split, sizeof words);
	strmid(action, params, split + 1, strlen(params), sizeof action);
	General_GetDisplayName(playerid, name, sizeof name);
	format(message, sizeof message, "%s says: %s * %s", name, words, action);
	General_SendLocalMessage(playerid, GENERAL_RADIUS_TALK, COLOR_RP, message);
	return 1;
}

CMD:try(playerid, params[])
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	if (isnull(params))
	{
		SendError(playerid, "Usage: /try [action]");
		return 1;
	}

	new name[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, name, sizeof name);
	format(message, sizeof message, "* %s tries to %s and %s.", name, params, random(2) ? ("succeeds") : ("fails"));
	General_SendLocalMessage(playerid, GENERAL_RADIUS_TALK, COLOR_RP, message);
	return 1;
}

CMD:action(playerid, params[])
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	if (General_HasAction(playerid))
	{
		General_ClearAction(playerid);
		SendSuccess(playerid, "You deleted your action.");
		return 1;
	}

	if (isnull(params))
	{
		SendError(playerid, "Usage: /action [text]");
		return 1;
	}

	General_SetAction(playerid, params);
	return 1;
}

CMD:delaction(playerid, params[])
{
	new targetid;

	if (sscanf(params, "u", targetid))
	{
		SendError(playerid, "Usage: /delaction [player]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid))
	{
		SendError(playerid, "Player not found.");
		return 1;
	}

	if (!General_HasAction(targetid))
	{
		SendError(playerid, "That player has not created an action.");
		return 1;
	}

	General_ClearAction(targetid);
	SendSuccess(playerid, "You deleted the player's action.");
	return 1;
}

CMD:pame(playerid, params[])
{
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	if (isnull(params))
	{
		General_ClearPame(playerid);
		SendSuccess(playerid, "You deleted your character description.");
		return 1;
	}

	General_SetPame(playerid, params);
	SendSuccess(playerid, "You updated your character description.");
	return 1;
}

alias:coin("flip")
CMD:coin(playerid)
{
	new name[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, name, sizeof name);
	format(message, sizeof message, "* %s flips a coin: %s.", name, random(2) ? ("heads") : ("tails"));
	General_SendLocalMessage(playerid, GENERAL_RADIUS_TALK, COLOR_RP, message);
	return 1;
}

CMD:id(playerid, params[])
{
	new targetid;

	if (sscanf(params, "u", targetid))
	{
		SendError(playerid, "Usage: /id [player id/name]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID)
	{
		SendError(playerid, "Player not found.");
		return 1;
	}

	new name[MAX_PLAYER_NAME + 1], message[96];
	General_GetDisplayName(targetid, name, sizeof name);
	format(message, sizeof message, "%s is player ID %d.", name, targetid);
	SendInfo(playerid, message);
	return 1;
}

CMD:time(playerid)
{
	new hour, minute, second, message[64];
	gettime(hour, minute, second);
	format(message, sizeof message, "Server time: %02d:%02d:%02d", hour, minute, second);
	SendInfo(playerid, message);
	return 1;
}

CMD:help(playerid)
{
	SPD(playerid, DIALOG_GENERAL_HELP, DSM,
		DIALOG_TITLE("Help"),
		P"/menu"W" - Open the main menu.\n\
		"P"/inventory"W" - Open your inventory.\n\
		"P"/settings"W" - Change character settings.\n\
		"P"/bank"W" - Manage bank cards and money.\n\
		"P"/admins"W" - View online administrators.\n\
		"P"/pay"W" - Give cash to another player.\n\
		"P"/stats"W" - View basic character stats.\n\
		"P"/pm"W" - Send a private message.\n\
		"P"/id"W" - Find a player's server ID.\n\
		"P"/time"W" - View server time.\n\n\
		"P"/n"W" - Send an OOC message.\n\
		"P"/an"W" - Send an administrator OOC message.\n\
		"P"/s"W" - Shout nearby.\n\
		"P"/w"W" - Whisper nearby.\n\
		"P"/me"W" - Describe a character action.\n\
		"P"/ame"W" - Show a short action above you.\n\
		"P"/do"W" - Describe a scene or detail.\n\
		"P"/ado"W" - Show a scene detail above you.\n\
		"P"/todo"W" - Speak with an attached action.\n\
		"P"/try"W" - Attempt an action with random success.\n\
		"P"/coin"W" - Flip a coin.\n\n\
		"P"/action"W" - Set or clear your action label.\n\
		"P"/delaction"W" - Clear another player's action label.\n\
		"P"/pame"W" - Set or clear your character description.",
		DIALOG_BUTTON_CLOSE,
		""
	);
	return 1;
}

CMD:pm(playerid, params[])
{
	new targetid, text[112];

	if (sscanf(params, "us[112]", targetid, text))
	{
		SendError(playerid, "Usage: /pm [player id/name] [message]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID)
	{
		SendError(playerid, "Player not found.");
		return 1;
	}

	if (!Settings_IsPMEnabled(playerid))
	{
		SendError(playerid, "Your private messages are disabled.");
		return 1;
	}

	if (!Settings_IsPMEnabled(targetid))
	{
		SendError(playerid, "That player has disabled private messages.");
		return 1;
	}

	new sender[MAX_PLAYER_NAME + 1], receiver[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, sender, sizeof sender);
	General_GetDisplayName(targetid, receiver, sizeof receiver);

	format(message, sizeof message, "PM to %s: %s", receiver, text);
	SCM(playerid, COLOR_PM, message);

	format(message, sizeof message, "PM from %s: %s", sender, text);
	SCM(targetid, COLOR_PM, message);
	return 1;
}
