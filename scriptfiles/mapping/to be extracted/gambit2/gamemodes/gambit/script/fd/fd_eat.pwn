#include <YSI\y_hooks>

new const
	Float: fd_eat[][3] = 
	{
		{1309.8645,-891.4843,3001.0859},
		{-925.2145,-563.7732,3001.0859}
	};
	
hook OnGameModeInit()
{
	for( new i; i < sizeof fd_eat; i++ ) 
	{
		CreateDynamicPickup( 1239, 23, fd_eat[i][0], fd_eat[i][1], fd_eat[i][2], -1 );
		CreateDynamic3DTextLabel( "Нажмите "cBLUE"Y\n{ffffff}[ Открыть свой инвентарь ]",
			C_BLUE, fd_eat[i][0], fd_eat[i][1], fd_eat[i][2], 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1 );
	}

	return 1;
}