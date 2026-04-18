#if defined CHILIAD_ADMIN_DATA
	#endinput
#endif
#define CHILIAD_ADMIN_DATA

#define ADMIN_MAX_LEVEL (7)

enum E_ADMIN_DATA
{
	Level,
	bool:Duty
}

new AdminData[MAX_PLAYERS][E_ADMIN_DATA];
new bool:AdminLoaded[MAX_PLAYERS];
