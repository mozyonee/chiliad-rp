#if defined CHILIAD_RUNTIME_COMMAND_HOOKS
	#endinput
#endif
#define CHILIAD_RUNTIME_COMMAND_HOOKS

#define COMMAND_ANTIFLOOD_MS (500)
#define COMMAND_MAX_FLOOD_WARNINGS (2)

static CommandLastTick[MAX_PLAYERS];
static CommandFloodCount[MAX_PLAYERS];

forward OnPlayerCommandReceived(playerid, cmd[], params[], flags);
forward OnPlayerCommandPerformed(playerid, cmd[], params[], result, flags);

public OnPlayerCommandReceived(playerid, cmd[], params[], flags)
{
	#pragma unused cmd
	#pragma unused params
	#pragma unused flags

	if (Dialog_IsOpen(playerid))
	{
		SendError(playerid, "You cannot use commands while a dialog is open.");
		return 0;
	}

	if (!Account_IsLoggedIn(playerid))
	{
		SendError(playerid, "You need to log in first.");
		return 0;
	}

	new tick = GetTickCount();
	if (tick - CommandLastTick[playerid] < COMMAND_ANTIFLOOD_MS)
	{
		if (CommandFloodCount[playerid] >= COMMAND_MAX_FLOOD_WARNINGS)
		{
			return 0;
		}

		CommandFloodCount[playerid]++;
		SendError(playerid, "Do not flood commands.");
		return 0;
	}

	CommandLastTick[playerid] = tick;
	CommandFloodCount[playerid] = 0;
	return 1;
}

public OnPlayerCommandPerformed(playerid, cmd[], params[], result, flags)
{
	#pragma unused cmd
	#pragma unused params
	#pragma unused flags

	if (result == -1)
	{
		SendError(playerid, "Unknown command. Use /help for server commands.");
		return 0;
	}

	return 1;
}
