#if defined CHILIAD_BANKING_COMMANDS
	#endinput
#endif
#define CHILIAD_BANKING_COMMANDS

CMD:bank(playerid)
{
	return Banking_Open(playerid);
}
