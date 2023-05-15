#include <YSI\y_hooks>

enum e_COURT_TELEPORT_INFO
{
	Float: ct_tp_whence[3],
	Float: ct_tp_to[3]
}

new const 
	Float: court_teleports[][ e_COURT_TELEPORT_INFO ] = 
	{
		{ { 795.7440,-723.6184,3716.6660 }, { 817.2711,-723.1241,3116.6660 } },
		{ { 794.6040,-716.6944,3116.6660 }, { 793.7352,-716.6747,4716.6660 } },
		{ { 794.5969,-729.5012,3116.6660 }, { 793.7257,-729.5500,4716.6660 } }
	};

hook OnGameModeInit()
{
	for( new i; i < sizeof court_teleports; i++ )
	{
		CreateDynamicPickup( 
			19132,
			23, 
			court_teleports[i][ct_tp_whence][0], 
			court_teleports[i][ct_tp_whence][1], 
			court_teleports[i][ct_tp_whence][2], 
			-1 
		);
		
		CreateDynamic3DTextLabel( 
			"ALT", 
			C_BLUE, 
			court_teleports[i][ct_tp_whence][0], 
			court_teleports[i][ct_tp_whence][1], 
			court_teleports[i][ct_tp_whence][2], 
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
			court_teleports[i][ct_tp_to][0], 
			court_teleports[i][ct_tp_to][1], 
			court_teleports[i][ct_tp_to][2], 
			-1 
		);
		
		CreateDynamic3DTextLabel( 
			"ALT", 
			C_BLUE, 
			court_teleports[i][ct_tp_to][0], 
			court_teleports[i][ct_tp_to][1], 
			court_teleports[i][ct_tp_to][2], 
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
		for( new i; i < sizeof court_teleports; i++ )
		{
			if( IsPlayerInRangeOfPoint( playerid, 2.0, court_teleports[i][ct_tp_whence][0], court_teleports[i][ct_tp_whence][1], court_teleports[i][ct_tp_whence][2] ) )
			{
				setPlayerPos( playerid, court_teleports[i][ct_tp_to][0], court_teleports[i][ct_tp_to][1], court_teleports[i][ct_tp_to][2] );
				break;
			}
			else if( IsPlayerInRangeOfPoint( playerid, 2.0, court_teleports[i][ct_tp_to][0], court_teleports[i][ct_tp_to][1], court_teleports[i][ct_tp_to][2] ) )
			{
				setPlayerPos( playerid, court_teleports[i][ct_tp_whence][0], court_teleports[i][ct_tp_whence][1], court_teleports[i][ct_tp_whence][2] );
				break;
			}
		}
	}
	
	return 1;
}