#include <YSI\y_hooks>

new Float:prison_eat[][3] = {
	{ 71.5995,-343.3889,2101.0859 },
	{ 71.4354,-340.4517,2101.0859 }
};

hook OnGameModeInit() {
	for( new i; i < sizeof prison_eat; i++ ) {
		CreateDynamicPickup( 1239, 23, prison_eat[i][0], prison_eat[i][1], prison_eat[i][2], -1 );
		CreateDynamic3DTextLabel( "Нажмите "cBLUE"Y\n{ffffff}[ Открыть свой инвентарь ]",
			C_BLUE, prison_eat[i][0], prison_eat[i][1], prison_eat[i][2], 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1 );
	}
	return true;
}

