#include <YSI\y_hooks>

enum e_FD_TELEPORT_INFO
{
	Float: fd_tp_whence[3],
	Float: fd_tp_to[3]
}

new const 
	Float: fd_teleports[][ e_FD_TELEPORT_INFO ] = 
	{
		{ { 2751.8770,-1460.1207,30.4428 }, { 2752.9441,-1460.1014,30.4500 } },
		
		// FD 1 
		{ { 1310.0573,-907.9395,3001.08599 }, { 1311.2635,-907.9659,4001.0840 } },
		{ { 1300.6145,-914.5910,3001.0859 }, { 1301.4840,-914.5567,4001.0840 } },
		{ { 1300.6375,-922.6751,3001.0859 }, { 1301.4937,-922.5656,4001.0840 } },
		{ { 1299.2911,-930.3123,3001.0859 }, { 1299.5906,-931.1615,4001.0840 } },
		{ { 1305.6097,-929.0483,3001.0859 }, { 1307.9696,-929.0216,4001.0840 } },
		{ { 1314.7266,-881.9333,3001.0859 }, { 1305.9640,-909.5428,5001.0840 } },
		
		// FD 2
		{ { -936.0404,-545.4192,2501.0859 }, {-934.6736,-540.9517,3001.0859 } },
		{ {	-935.7366,-562.2169,2501.0859 }, {-928.2950,-555.1677,3001.0859 } },
		{ {-912.4520,-556.4517,3001.0859 }, {-930.1356,-548.3858,3501.0859 } }
	};

hook OnGameModeInit()
{
	for( new i; i < sizeof fd_teleports; i++ )
	{
		CreateDynamicPickup( 
			19132,
			23, 
			fd_teleports[i][fd_tp_whence][0], 
			fd_teleports[i][fd_tp_whence][1], 
			fd_teleports[i][fd_tp_whence][2], 
			-1 
		);
		
		CreateDynamic3DTextLabel( 
			"ALT", 
			C_BLUE, 
			fd_teleports[i][fd_tp_whence][0], 
			fd_teleports[i][fd_tp_whence][1], 
			fd_teleports[i][fd_tp_whence][2], 
			5.0, 
			INVALID_PLAYER_ID, 
			INVALID_VEHICLE_ID,
			1,
			-1,
			-1
		);
		
		CreateDynamicPickup( 
			19132,
			23, 
			fd_teleports[i][fd_tp_to][0], 
			fd_teleports[i][fd_tp_to][1], 
			fd_teleports[i][fd_tp_to][2], 
			-1 
		);
		
		CreateDynamic3DTextLabel( 
			"ALT", 
			C_BLUE, 
			fd_teleports[i][fd_tp_to][0], 
			fd_teleports[i][fd_tp_to][1], 
			fd_teleports[i][fd_tp_to][2], 
			5.0, 
			INVALID_PLAYER_ID, 
			INVALID_VEHICLE_ID,
			1,
			-1,
			-1
		);
		
	}
	
	return 1;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) 
{
	if( PRESSED( KEY_WALK ) )
	{	
		for( new i; i < sizeof fd_teleports; i++ )
		{
			if( i == 0 && Player[playerid][uMember] != 5 )
				continue;
			
			if( IsPlayerInRangeOfPoint( playerid, 2.0, fd_teleports[i][fd_tp_whence][0], fd_teleports[i][fd_tp_whence][1], fd_teleports[i][fd_tp_whence][2] ) )
			{
				setPlayerPos( playerid, fd_teleports[i][fd_tp_to][0], fd_teleports[i][fd_tp_to][1], fd_teleports[i][fd_tp_to][2] );
				break;
			}
			else if( IsPlayerInRangeOfPoint( playerid, 2.0, fd_teleports[i][fd_tp_to][0], fd_teleports[i][fd_tp_to][1], fd_teleports[i][fd_tp_to][2] ) )
			{
				setPlayerPos( playerid, fd_teleports[i][fd_tp_whence][0], fd_teleports[i][fd_tp_whence][1], fd_teleports[i][fd_tp_whence][2] );
				break;
			}
		}
	}
	
	return 1;
}
