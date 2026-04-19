#if defined CHILIAD_VEHICLES_DATA
	#endinput
#endif
#define CHILIAD_VEHICLES_DATA

#define VEHICLE_MAX_PLAYER_VEHICLES (32)
#define VEHICLE_PLATE_LENGTH (16)
#define VEHICLE_INVALID_ID (0)
#define VEHICLE_INVALID_WORLD_ID (INVALID_VEHICLE_ID)
#define VEHICLE_MAX_DIALOG_OPTIONS (8)
#define VEHICLE_LOCK_RANGE (5.0)

enum
{
	VEHICLE_OWNER_INVALID,
	VEHICLE_OWNER_CHARACTER,
	VEHICLE_OWNER_FACTION,
	VEHICLE_OWNER_BUSINESS
}

enum
{
	VEHICLE_OPTION_INVALID = -1,
	VEHICLE_OPTION_RESPAWN,
	VEHICLE_OPTION_PARK,
	VEHICLE_OPTION_LOCK,
	VEHICLE_OPTION_LOCATE,
	VEHICLE_OPTION_GOTO,
	VEHICLE_OPTION_GETHERE
}

enum E_VEHICLE_DATA
{
	VehicleID,
	VehicleOwnerType,
	VehicleOwnerID,
	VehicleModel,
	VehicleColorOne,
	VehicleColorTwo,
	VehiclePlate[VEHICLE_PLATE_LENGTH],
	Float:VehicleLastX,
	Float:VehicleLastY,
	Float:VehicleLastZ,
	Float:VehicleLastAngle,
	VehicleLastInterior,
	VehicleLastWorld,
	Float:VehicleParkX,
	Float:VehicleParkY,
	Float:VehicleParkZ,
	Float:VehicleParkAngle,
	VehicleParkInterior,
	VehicleParkWorld,
	bool:VehicleLocked,
	VehicleWorldID
}

new VehicleData[MAX_PLAYERS][VEHICLE_MAX_PLAYER_VEHICLES][E_VEHICLE_DATA];
new VehicleCount[MAX_PLAYERS];
new VehicleDialogItems[MAX_PLAYERS][VEHICLE_MAX_PLAYER_VEHICLES];
new VehicleDialogOptions[MAX_PLAYERS][VEHICLE_MAX_DIALOG_OPTIONS];
new VehicleSelectedIndex[MAX_PLAYERS];
new bool:VehicleLocateCheckpoint[MAX_PLAYERS];
