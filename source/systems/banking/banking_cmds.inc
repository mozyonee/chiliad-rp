#if defined CHILIAD_BANKING_CMDS
	#endinput
#endif
#define CHILIAD_BANKING_CMDS

CMD:bank(playerid)
{
	return Banking_Open(playerid);
}
