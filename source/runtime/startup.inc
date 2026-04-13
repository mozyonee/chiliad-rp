#if defined CHILIAD_RUNTIME_STARTUP
	#endinput
#endif
#define CHILIAD_RUNTIME_STARTUP

public OnGameModeInit()
{
	SetGameModeText("Chiliad RP");

	if (!Database_Init())
	{
		print("[Runtime] Startup aborted because database initialization failed.");
		return 0;
	}

	print("[Runtime] Chiliad RP initialized.");
	return 1;
}
