#include <YSI\y_hooks>

function CarLoad( playerid )
{
	new 
		rows = cache_get_row_count(),
		temp[ cInfo ],
		carid,
		load,
		j = 0;
		
	if( !rows )
		return 1;
		
	for( new i; i < rows; i++ )
	{
		load = true;
		temp[ cID ] = cache_get_field_content_int( i, "cID", mysql );
		
		for( new v; v < MAX_VEHICLES; v++ ) 
		{
			if( Car::[ v ][c_delete] ) 
			{
				if( Car::[ v ][ cID ] == temp[ cID ] )
				{
					KillTimer( Car::[ v ][c_delete_timer] );
					Car::[ v ][c_delete] = false;
					
					load = false;
				}
			}
		}
		
		if( !load ) 
			continue;
			
		temp[cModel] = cache_get_field_content_int( i, "cModel" );
		
		gb_string[0] = EOS;
		cache_get_field_content( i, "cPosition", gb_string, mysql );
		sscanf( gb_string, "p<|>a<f>[4]", temp[cPos] );
		
		gb_string[0] = EOS;
		cache_get_field_content( i, "cSettings", gb_string, mysql ); 
		sscanf( gb_string, "p<|>a<d>[7]", temp[cSettings] );
		
		gb_string[0] = EOS;
		cache_get_field_content( i, "cFloating", gb_string, mysql );
		sscanf( gb_string, "p<|>a<f>[3]", temp[cFloating] );
		
		carid = CreateVehicle( 
			temp[cModel], 
			temp[cPos][0],
			temp[cPos][1],
			temp[cPos][2],
			temp[cPos][3], 
			temp[cSettings][1], 
			temp[cSettings][2], 
			-1
		);
		
		V::[ carid ][vFuel] = temp[cFloating][0];
		V::[ carid ][vMile] = temp[cFloating][1];
		V::[ carid ][vCountMile] = ( floatround( V::[ carid ][vMile] / 50.0 ) <= 0 ) ? 1 : floatround( V::[ carid ][vMile] / 50.0 );
		V::[ carid ][vBuyingCar] = carid;
		
		LinkVehicleToInterior( carid, temp[cSettings][3] );
		SetVehicleVirtualWorld( carid, temp[cSettings][4] );
		setVehicleHealth( carid, temp[cFloating][2] );
		
		GetVehicleParamsEx( carid, eng, light, other1, other2, other3, other4, other5 );
	    SetVehicleParamsEx( carid, eng, light, other1, other2, false, other4, other5 );
		
		gb_string[0] = EOS;
		cache_get_field_content( i, "cInvSlots", gb_string, mysql );
		sscanf( gb_string, "p<|>a<d>[18]", Car::[ carid ][cInvSlot]);
		
		gb_string[0] = EOS;
		cache_get_field_content( i, "cInvSlotsKol", gb_string, mysql ); 
		sscanf( gb_string, "p<|>a<d>[18]",Car::[ carid ][cInvSlotKol] );
		
		LoadCarInventory( carid );
		
		if( Car::[ carid ][cSettings][5] ) 
		{
			SetVehicleParamsEx( carid, eng, light, other1, true, other3, other4, other5 );
			V::[ carid ][vLock] = true;
		}
		else 
		{
			SetVehicleParamsEx( carid, eng, light, other1, false, other3, other4, other5 );
			V::[ carid ][vLock] = false;
		}
		
		gb_string[0] = EOS;
		cache_get_field_content( i, "cTunning", gb_string, mysql ); 
		sscanf( gb_string, "p<|>a<d>[18]", Car::[ carid ][cTunning] );
		
		if( Car::[ carid ][cTunning][15] != 0 ) 
		{
			AddVehicleComponent( carid, Car::[ carid ][cTunning][15] );
		}
		
		Car::[carid][cCar] = carid;
		Car::[carid][cID] = temp[cID];
		Car::[carid][cModel] = temp[cModel];
		Car::[carid][cStatus] = cache_get_field_content_int( i, "cStatus" );
		
		for( j = 0; j < 7; j++ )
		{
			if( j < 3 )
			{
				Car::[carid][cPos][j] = temp[cPos][j];
				Car::[carid][cFloating][j] = temp[cFloating][j];
			}
			
			Car::[carid][cSettings][j] = temp[cSettings][j];
		}
		
		cache_get_field_content( i, "cOwner", Car::[carid][cOwner], mysql, 32 );
		cache_get_field_content( i, "cLastTeh", Car::[carid][cLastTeh], mysql, 32 );
		
		V::[ carid ][vNoBag] = ( Car::[ carid ][cSettings][6] == 1 ) ? true : false;
		
		gb_string[0] = EOS;
		cache_get_field_content( i, "cDamage", gb_string, mysql );
		sscanf( gb_string,"p<|>a<d>[4]", Car::[carid][cDamage] );
		
		UpdateVehicleDamageStatus( 
			carid, 
			Car::[carid][cDamage][0], 
			Car::[carid][cDamage][1],
			Car::[carid][cDamage][2], 
			Car::[carid][cDamage][3]
		);
		
		cache_get_field_content( i, "cNumber", Car::[ carid ][cNumber], mysql, 32 );
		
		gb_string[0] = EOS;
		switch( Car::[ carid ][cModel] )
		{
			case 510, 509, 481: {}
			default:
			{
				if( !strcmp( Car::[ carid ][cNumber],"None", true ) )
				{
					strcat( gb_string, "[аег мнлепю]" );
				}
				else 
				{
					strcat( gb_string, Car::[ carid ][cNumber] );
				}
				
				SetVehicleNumberPlate( carid, gb_string );
			}
		}
		
		switch( Car::[ carid ][cModel] )
		{
			case 448: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.0, 0.0, 10.0, INVALID_PLAYER_ID, carid );
			case 461: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.3, 0.4, 10.0, INVALID_PLAYER_ID, carid );
			case 462: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.0, 0.0, 10.0, INVALID_PLAYER_ID, carid );
			case 463: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.1, 0.3, 10.0, INVALID_PLAYER_ID, carid );
			case 468: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.1, 0.3, 10.0, INVALID_PLAYER_ID, carid );
			case 521: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.1, 0.3, 10.0, INVALID_PLAYER_ID, carid );
			case 522: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.1, 0.4, 10.0, INVALID_PLAYER_ID, carid );
			case 581: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.1, 0.3, 10.0, INVALID_PLAYER_ID, carid );
			case 586: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.3, 0.17, 10.0, INVALID_PLAYER_ID, carid );
			case 510, 509, 481 : {}
			default: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -2.8, 0.0, 10.0, INVALID_PLAYER_ID, carid );
		}
		
		Car::[ carid ][cWanted] = cache_get_field_content_int( i, "cWanted" );
		
		Car::[ carid ][c_delete] = false;
		
		printf( "[SYSTEM] Car %d has been loaded for %s.", 
			carid,
			Player[playerid][uName]
		);
	}
	
	return 1;
}


LoadCarInventory( carid )
{
	for(new i; i != 18; i ++)
	{
		V::[ carid ][vInvSlot][i] = Car::[ carid ][cInvSlot][i];
		V::[ carid ][vInvSlotKol][i] = Car::[ carid ][cInvSlotKol][i];
	}
}