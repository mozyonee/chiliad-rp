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
	format(message, sizeof message, "[Newbie] %s: %s", name, params);
	SCMA(COLOR_INFO, message);
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
	format(message, sizeof message, "[Answer] %s: %s", name, params);
	SCMA(COLOR_INFO, message);
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
	GetPlayerName(targetid, name, sizeof name);
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
	SendInfo(playerid, "Commands: /menu, /inv, /pay, /stats, /n, /an, /s, /w, /me, /ame, /do, /ado, /todo, /try, /coin, /id, /time, /pm");
	SendInfo(playerid, "Aliases: /mn, /mm, /inventory, /b, /ab, /shout, /whisper, /flip");
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

	new sender[MAX_PLAYER_NAME + 1], receiver[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, sender, sizeof sender);
	General_GetDisplayName(targetid, receiver, sizeof receiver);

	format(message, sizeof message, "PM to %s: %s", receiver, text);
	SCM(playerid, COLOR_PM, message);

	format(message, sizeof message, "PM from %s: %s", sender, text);
	SCM(targetid, COLOR_PM, message);
	return 1;
}
