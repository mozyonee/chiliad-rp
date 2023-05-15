#include <YSI\y_hooks>

#define FD_DOOR_DEGREES 		-90.0
#define FD_DOOR_X				1317.0900
#define FD_DOOR_Y				-1464.8910

new const 
	Float: fd_doors[][7] = 
	{
		{ 1320.050, -883.919, 41.812, 0.000, 0.000, 90.000, 1.0 }, 
		{ 1320.050, -874.919, 41.812, 0.000, 0.000, 90.000, 1.0 },
		{ 1320.050, -865.919, 41.812, 0.000, 0.000, 90.000, 1.0 },
		{ 1320.050, -856.919, 41.812, 0.000, 0.000, 90.000, 1.0 },
		
		{ 2756.760, -1467.900, 32.674, 0.000, 0.000, 0.000, 2.0 },
		{ 2765.760, -1467.900, 32.674, 0.000, 0.000, 0.000, 2.0 },
		{ 2774.760, -1467.900, 32.674, 0.000, 0.000, 0.000, 2.0 },
		{ 2783.760, -1467.900, 32.674, 0.000, 0.000, 0.000, 2.0 }
	};
	
enum e_FD_DOOR
{
	fd_door_id,
	bool: fd_door_status
}

new 
	fd_door[ sizeof fd_doors ][ e_FD_DOOR ];
	
hook OnGameModeInit()
{
	for( new i; i < sizeof fd_doors; i++ )
	{
		fd_door[i][fd_door_id] = CreateDynamicObject( 
			19906, 
			fd_doors[i][0], 
			fd_doors[i][1], 
			fd_doors[i][2], 
			fd_doors[i][3],
			fd_doors[i][4],
			fd_doors[i][5],
			-1,
			-1,
			-1,
			200.000,
			200.000
		);
	
		fd_door[i][fd_door_status] = false;
		
		switch( i )
		{
			case 0 .. 4 :
			{
				SetDynamicObjectMaterial( fd_door[i][fd_door_id], 0, 10763, "airport1_sfse", "ws_rollerdoor_fire", 0xFFFFFFFF);
			}
			
			case 5 .. 8 :
			{
				SetDynamicObjectMaterial( fd_door[i][fd_door_id], 0, 10763, "airport1_sfse", "ws_rollerdoor_fire", 0xFFFFFFFF );
				SetDynamicObjectMaterial( fd_door[i][fd_door_id], 1, -1, "none", "none", 0xFFFFFFFF );
			}
		}
	}
	
	return 1;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) 
{
	if( PRESSED( KEY_CROUCH ) )
	{
		if( IsPlayerInAnyVehicle( playerid ) ) 
		{
			KeyMoveFdDoor( playerid );
		}
	}
	else if( PRESSED( KEY_CTRL_BACK ) )
	{
		if( !IsPlayerInAnyVehicle( playerid ) ) 
		{
			KeyMoveFdDoor( playerid );
		}
	}
	
	return 1;
}

KeyMoveFdDoor( playerid )
{
	if( Player[playerid][uMember] != 5 ) 
		return 1;
		
	for( new d; d < sizeof fd_doors; d++ )
	{
		if( IsPlayerInRangeOfPoint( playerid, 4.5, fd_doors[d][0], fd_doors[d][1], fd_doors[d][2] ) )
		{
			if( !fd_door[d][fd_door_status] )
			{
				MoveFdDoor( d, true );	
				break;
			}
			else 
			{
				MoveFdDoor( d, false );	
				break;
			}
		}
	}
	
	return 1;
}	

MoveFdDoor( d, bool: status )
{
	if( status )
	{		
		if( floatround( fd_doors[d][6] ) == 1 )
		{
			MoveDynamicObject( 
				fd_door[d][fd_door_id], 
				FD_DOOR_X,
				fd_doors[d][1],
				fd_doors[d][2], 
				0.5, 
				FD_DOOR_DEGREES, 
				fd_doors[d][4], 
				fd_doors[d][5] 
			);	
		}
		else if( floatround( fd_doors[d][6] ) == 2 )
		{
			MoveDynamicObject( 
				fd_door[d][fd_door_id], 
				fd_doors[d][0],
				FD_DOOR_Y,
				fd_doors[d][2], 
				0.5, 
				FD_DOOR_DEGREES, 
				fd_doors[d][4], 
				fd_doors[d][5] 
			);	
		}
		
		fd_door[d][fd_door_status] = true;
	}
	else 
	{
		MoveDynamicObject( 
			fd_door[d][fd_door_id], 
			fd_doors[d][0],
			fd_doors[d][1],
			fd_doors[d][2], 
			0.5, 
			fd_doors[d][3], 
			fd_doors[d][4], 
			fd_doors[d][5] 
		);
			
		fd_door[d][fd_door_status] = false;
	}
}