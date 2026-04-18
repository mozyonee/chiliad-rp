#if defined CHILIAD_GENERAL_HOOKS
	#endinput
#endif
#define CHILIAD_GENERAL_HOOKS

General_OnPlayerDisconnect(playerid, reason)
{
	#pragma unused reason

	General_ResetPlayer(playerid);
	return 1;
}
