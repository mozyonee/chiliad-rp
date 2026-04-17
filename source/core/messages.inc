#if defined CHILIAD_MESSAGES
	#endinput
#endif
#define CHILIAD_MESSAGES

stock SendOK(playerid, const text[])
{
	new message[256];
	format(message, sizeof message, GREEN"|"W" %s", text);
	return SCM(playerid, COLOR_WHITE, message);
}

stock SendError(playerid, const text[])
{
	new message[256];
	format(message, sizeof message, RED"|"W" %s", text);
	return SCM(playerid, COLOR_WHITE, message);
}

stock SendInfo(playerid, const text[])
{
	new message[256];
	format(message, sizeof message, P"|"W" %s", text);
	return SCM(playerid, COLOR_WHITE, message);
}

stock SendHint(playerid, const text[])
{
	new message[256];
	format(message, sizeof message, O"|"W" %s", text);
	return SCM(playerid, COLOR_WHITE, message);
}
