#if defined CHILIAD_RUNTIME_SHUTDOWN
	#endinput
#endif
#define CHILIAD_RUNTIME_SHUTDOWN

hook OnGameModeExit()
{
	Database_Shutdown();
	return 1;
}
