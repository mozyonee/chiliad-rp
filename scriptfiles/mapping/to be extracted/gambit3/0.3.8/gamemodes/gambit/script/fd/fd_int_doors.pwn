#include <YSI\y_hooks>

// 5 координат 6 - тип для текстуры 7 - открывается на кнопку или нет
new const 
	Float: fd_int_doors[][8] = 
	{
		// Стандартные двери
		{ 1309.968,-885.093,3000.069,0.000,0.000,-180.000, 1.0, 0.0 },
		{ 1309.965,-894.897,3000.069,0.000,0.000,-180.000, 1.0, 0.0 },
		{ 1308.362,-906.292,3000.069,0.000,0.000,-180.000, 1.0, 0.0 },
		{ 1313.900,-911.114,4000.068,0.000,0.000,-90.000, 1.0, 0.0 },
		{ 1313.900,-925.848,4000.068,0.000,0.000,90.000, 1.0, 0.0 },
		{ 1315.753,-928.306,5000.067,0.000,0.000,180.000, 1.0, 0.0 },
		{ 1299.849,-930.576,5000.067,0.000,0.000,90.000, 1.0, 0.0 },
		{ 1291.000,-930.554,5000.067,0.000,0.000,90.000, 1.0, 0.0 },
		
		// По нажатию на клавиши
		{ 1295.449,-881.710,3000.068,0.000,0.000,0.000, 1.0, 1.0 },
		{ 1310.265,-921.534,5000.067,0.000,0.000,90.000, 1.0, 1.0 },
		{ 1310.265,-930.568,5000.067,0.000,0.000,90.000, 1.0, 1.0 },
		
		{ -931.339,-538.421,2500.078,0.000,0.000,-90.000, 2.0, 1.0 },
		{ -921.887,-538.421,2500.078,0.000,0.000,-90.000, 2.0, 1.0 }
		
	};
	
	/*Float: fd_int_attach[][7] = 
	{
		// Стандартные двери
		{ 1308.733,-885.052,3001.265,0.000,0.000,-90.000, 1.0 },
		{ 1308.736,-894.857,3001.265,0.000,0.000,-90.000, 1.0 },
		{ 1307.130,-906.252,3001.265,0.000,0.000,-90.000, 1.0 },
		{ 1313.857,-912.349,4001.276,0.000,0.000,0.000, 1.0 },
		{ 1313.857,-925.560,4001.276,0.000,0.000,0.000, 1.0 },
		{ 1315.473,-928.353,5001.300,0.000,0.000,90.000, 1.0 },
		{ 1299.800,-930.286,5001.300,0.000,0.000,0.000, 1.0 },
		{ 1290.951,-930.268,5001.300,0.000,0.000,0.000, 2.0 },
		
		// По нажатию клавишь
		{ 1295.729,-881.654,3001.265,0.000,0.000,-90.000, 1.0 },
		{ 1310.215,-921.252,5001.300,0.000,0.000,0.000, 1.0 },
		{ 1310.209,-930.291,5001.300,0.000,0.000,0.000, 1.0 },
		
		{ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 99.0 },
		{ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 99.0 }
	};*/
	
enum e_FD_INT_DOOR
{
	fd_int_obj_id,
	fd_int_att_id,
	fd_int_door_type,
	bool: fd_int_door_status,
}

new 
	fd_int_door[ sizeof fd_int_doors ][ e_FD_INT_DOOR ];
	
hook OnGameModeInit()
{
	new 
		fd_model_object = 0;
		
	for( new i; i < sizeof fd_int_doors; i++ )
	{
		fd_int_door[i][fd_int_door_type] = floatround( fd_int_doors[i][7] );
		
		switch( fd_int_door[i][fd_int_door_type] )
		{
			case 0 : fd_model_object = 1494;
			case 1 : fd_model_object = 1495;
		}
		
		fd_int_door[i][fd_int_obj_id] = CreateDynamicObject(
			fd_model_object,
			fd_int_doors[i][0],
			fd_int_doors[i][1],
			fd_int_doors[i][2],
			fd_int_doors[i][3],
			fd_int_doors[i][4],
			fd_int_doors[i][5],
			-1,
			-1,
			-1,
			300.000,
			300.000
		);
		
		switch( floatround( fd_int_doors[i][6] ) )
		{
			case 1 :
			{
				SetDynamicObjectMaterial( fd_int_door[i][fd_int_obj_id], 0, -1, "none", "none", 0xFFFFFFFF );
				SetDynamicObjectMaterial( fd_int_door[i][fd_int_obj_id], 1, 4829, "airport_las", "liftdoorsac256", 0x00000000 );
			}
			
			case 2 :
			{
				SetDynamicObjectMaterial( fd_int_door[i][fd_int_obj_id], 0, 16640, "a51", "ws_stationfloor", 0xFFFFFFFF );
				SetDynamicObjectMaterial( fd_int_door[i][fd_int_obj_id], 1, 17588, "lae2coast_alpha", "plainglass", 0x00000000 );
				SetDynamicObjectMaterial( fd_int_door[i][fd_int_obj_id], 2, 18049, "ammu_twofloor", "gun_ceiling2", 0x00000000 );
			}
		}
		
		/*if( floatround( fd_int_attach[i][6] ) == 99 )
			continue;
			
		fd_int_door[i][fd_int_att_id] = CreateObject(
			3061,
			fd_int_attach[i][0],
			fd_int_attach[i][1],
			fd_int_attach[i][2],
			fd_int_attach[i][3],
			fd_int_attach[i][4],
			fd_int_attach[i][5],
			300.000
		);
		
		switch( floatround( fd_int_attach[i][6] ) )
		{
			case 1 :
			{
				SetObjectMaterial( fd_int_door[i][fd_int_att_id], 0, 16150, "ufo_bar", "des_intufowin", 0xFFFFFFFF );
			}
			
			case 2 :
			{
				SetObjectMaterial( fd_int_door[i][fd_int_att_id], 0, 16150, "ufo_bar", "des_intufowin", 0xFFFFFFFF );
				SetObjectMaterial( fd_int_door[i][fd_int_att_id], 2, 4829, "airport_las", "liftdoorsac256", 0x00000000 );
			}
		}
		
		AttachObjectToObject( 
			fd_int_door[i][fd_int_att_id], 
			fd_int_door[i][fd_int_obj_id], 
			0.0, 
			0.0, 
			0.0, 
			0.0,
			0.0, 
			0.0
		);*/
		
	}
	
	return 1;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) 
{
	if( PRESSED( KEY_SECONDARY_ATTACK) )
	{
		if( Player[playerid][uMember] != 5 ) 
			return 1;
			
		for( new i; i < sizeof fd_int_doors; i++ )
		{
			if( fd_int_door[i][fd_int_door_type] )
			{
				if( IsPlayerInRangeOfPoint( playerid, 2.0, fd_int_doors[i][0], fd_int_doors[i][1], fd_int_doors[i][2] ) )
				{
					if( !fd_int_door[i][fd_int_door_status] )
					{
						MoveFdInteriorDoors( i, true );
						break;
					}
					else 
					{
						MoveFdInteriorDoors( i, false );
						break;
					}
				}
			}
		}
	}
	
	return 1;
}

MoveFdInteriorDoors( i, bool: status )
{
	if( status )
	{
		MoveDynamicObject( 
			fd_int_door[i][fd_int_obj_id], 
			fd_int_doors[i][0],
			fd_int_doors[i][1],
			fd_int_doors[i][2], 
			1.0, 
			fd_int_doors[i][3], 
			fd_int_doors[i][4], 
			fd_int_doors[i][5] + 90 
		);
		
		fd_int_door[i][fd_int_door_status] = true;

	}
	else 
	{
		MoveDynamicObject( 
			fd_int_door[i][fd_int_obj_id], 
			fd_int_doors[i][0],
			fd_int_doors[i][1],
			fd_int_doors[i][2], 
			1.0, 
			fd_int_doors[i][3], 
			fd_int_doors[i][4], 
			fd_int_doors[i][5] 
		);
		
		fd_int_door[i][fd_int_door_status] = false;
	}
}