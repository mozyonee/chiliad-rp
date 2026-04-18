#if defined CHILIAD_RUNTIME_STARTUP
	#endinput
#endif
#define CHILIAD_RUNTIME_STARTUP

public OnGameModeInit()
{
	SetGameModeText("Chiliad RP");
	AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425);

	if (!Database_Init())
	{
		print("[Runtime] Startup aborted because database initialization failed.");
		return 0;
	}

	Account_Init();
	Admin_Init();
	Character_Init();
	Inventory_Init();
	Banking_Init();
	Settings_Init();

	print("[Runtime] Chiliad RP initialized.");
	return 1;
}
