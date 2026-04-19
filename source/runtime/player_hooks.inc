#if defined CHILIAD_RUNTIME_HOOKS
	#endinput
#endif
#define CHILIAD_RUNTIME_HOOKS

#define COMMAND_ANTIFLOOD_MS (500)
#define COMMAND_MAX_FLOOD_WARNINGS (2)

static CommandLastTick[MAX_PLAYERS];
static CommandFloodCount[MAX_PLAYERS];

public OnPlayerConnect(playerid)
{
	Dialog_ClearOpen(playerid);
	SetPlayerShopName(playerid, "");
	Admin_Reset(playerid);
	Vehicle_InitPlayer(playerid);
	Account_OnPlayerConnect(playerid);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	Dialog_ClearOpen(playerid);
	General_OnPlayerDisconnect(playerid, reason);
	Account_OnPlayerDisconnect(playerid, reason);
	Character_OnPlayerDisconnect(playerid, reason);
	Settings_Reset(playerid);
	Admin_Reset(playerid);
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	#pragma unused classid

	TogglePlayerSpectating(playerid, true);
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return Character_IsLoaded(playerid);
}

forward Admin_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[]);
forward Vehicle_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[]);
forward Business_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[]);
forward General_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[]);
forward GeneralMenu_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[]);

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	Dialog_ClearOpen(playerid);
	Account_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Character_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Inventory_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Banking_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Settings_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Admin_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Vehicle_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	Business_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	General_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	GeneralMenu_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
	return 1;
}

public OnPlayerStateChange(playerid, PLAYER_STATE:newstate, PLAYER_STATE:oldstate)
{
	#pragma unused oldstate

	Vehicle_OnPlayerStateChange(playerid, newstate);
	return 1;
}

public OnPlayerKeyStateChange(playerid, KEY:newkeys, KEY:oldkeys)
{
	if (Vehicle_OnPlayerKeyStateChange(playerid, newkeys, oldkeys)) return 1;
	if (Business_OnPlayerKeyStateChange(playerid, newkeys, oldkeys)) return 1;
	if (General_OnPlayerKeyStateChange(playerid, newkeys, oldkeys)) return 1;

	return 1;
}

public OnPlayerText(playerid, text[])
{
	return General_OnPlayerText(playerid, text);
}

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
	return Admin_OnPlayerClickMap(playerid, fX, fY, fZ);
}

public OnPlayerEnterCheckpoint(playerid)
{
	return Vehicle_OnPlayerEnterCheckpoint(playerid);
}

forward OnPlayerCommandReceived(playerid, cmd[], params[], flags);
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

forward OnPlayerCommandPerformed(playerid, cmd[], params[], result, flags);
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
