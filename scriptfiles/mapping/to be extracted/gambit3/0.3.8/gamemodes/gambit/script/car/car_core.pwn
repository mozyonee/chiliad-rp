
/*
	Car System
	- Found
*/


#include <YSI\y_hooks>


#define d_cars                  ( 570 )

hook OnPlayerConnect( playerid )
{
	SetPVarInt( playerid, "Player:InUtil", 0 );
	return 1;
}

hook OnVehicleSpawn( vehicleid )
{
	if( strobelight_timer[ vehicleid ] )
	{
		KillTimer( strobelight_timer[ vehicleid ] );
		strobelight_timer[ vehicleid ] = -1;
	}
	
	if( strobelight_time_out[ vehicleid ] )
	{
		KillTimer( strobelight_time_out[ vehicleid ] );
		strobelight_time_out[ vehicleid ] = -1;
	}
	
	if( V::[ vehicleid ][ vehicle_water ][0] != 0 )
	{
		for( new i; i < 4; i++ )
		{
			if( IsValidObject( V::[ vehicleid ][ vehicle_water ][ i ] ) ) 
			{
				DestroyObject( V::[ vehicleid ][ vehicle_water ][ i ] );
				V::[ vehicleid ][ vehicle_water ][ i ] = 0;
			}
		}
	}
	
	if( !Car::[ vehicleid ][cID] || !Car::[ vehicleid ][cModel] )
		return 1;
		
	setVehicleHealth( 
		vehicleid,
		Car::[ vehicleid ][cFloating][2]
	);
	
    UpdateVehicleDamageStatus(
		vehicleid, 
		Car::[ vehicleid ][cDamage][0], 
		Car::[ vehicleid ][cDamage][1], 
		Car::[ vehicleid ][cDamage][2], 
		Car::[ vehicleid ][cDamage][3]
	);
	
	setVehiclePos( 
		vehicleid, 
		Car::[ vehicleid ][cPos][0],
		Car::[ vehicleid ][cPos][1],
		Car::[ vehicleid ][cPos][2]
	);
	
	LinkVehicleToInterior( 
		vehicleid,
		Car::[ vehicleid ][cSettings][3]
	);
	
	SetVehicleVirtualWorld( 
		vehicleid, 
		Car::[ vehicleid ][cSettings][4] 
	);
	
	V::[ vehicleid ][vFuel] = Car::[ vehicleid ][cFloating][0];
	V::[ vehicleid ][vMile] = Car::[ vehicleid ][cFloating][1];
	V::[ vehicleid ][vCountMile] = ( floatround( V::[ vehicleid ][vMile] / 50.0 ) <= 0 ) ? 1 : floatround( V::[ vehicleid ][vMile] / 50.0 );
	V::[ vehicleid ][vNoBag] = ( Car::[ vehicleid ][cSettings][6] == 1 ) ? true : false;
	
	GetVehicleParamsEx( vehicleid, eng, light, other1, other2, other3, other4, other5 );
	SetVehicleParamsEx( vehicleid, eng, light, other1, other2, false, other4, other5 );
	
	for(new i; i < 18; i++ ) 
	{
		V::[ vehicleid ][vInvSlot][i] = Car::[ vehicleid ][cInvSlot][i];
		V::[ vehicleid ][vInvSlotKol][i] = Car::[ vehicleid ][cInvSlotKol][i];
	}
	
	if( Car::[ vehicleid ][cSettings][5] == 1 ) 
	{
		SetVehicleParamsEx( vehicleid, eng, light, other1, true, other3, other4, other5 );
		V::[ vehicleid ][vLock] = true;
	}
	else 
	{
		SetVehicleParamsEx( vehicleid, eng, light, other1, false, other3, other4, other5 );
		V::[ vehicleid ][vLock] = false;
	}
	
	if( Car::[ vehicleid ][cTunning][15] != 0 ) 
	{
		AddVehicleComponent( vehicleid, Car::[ vehicleid ][cTunning][15]);
	}
	
	ChangeVehicleColor( vehicleid, 
		Car::[ vehicleid ][cSettings][1], 
		Car::[ vehicleid ][cSettings][2]
	);
	
	return 1;
}

hook OnPlayerEnterDynamicArea( playerid, areaid ) 
{
	if( areaid == strZones[11] ) 
	{
		SetPVarInt( playerid, "Player:InUtil", 1 );
		
		if( IsPlayerInAnyVehicle( playerid ) ) 
		{
			new 
				vehicleid = GetPlayerVehicleID( playerid );
			
			if( !IsBuyingCar( vehicleid ) )
				return 1;
				
			if( IsOwnerCar( vehicleid, playerid ) )
			{
				new 
					model = GetVehicleModel( vehicleid ), 
					price;
					
				price = getCarPrice( model );
				
				switch( Player[playerid][uPremium] ) 
				{
					case 1 : price = floatround( price * 0.7 );
					case 2 : price = floatround( price * 0.8 );
					case 3 : price = floatround( price * 0.9 );
					case 4 : price = floatround( price * 0.95 );
					default: price = floatround( price/2 );
				}
				
				setData( playerid, "Player:UtilCarSlot", vehicleid ); 
				setData( playerid, "Player:UtilCarPrice", price );
				
				format:vb_string( "{ffffff}| Информация об автомобиле:"cGRAY"\n\ 
					\nНазвание - %s ($%d)\nСтоимость утилизации - "cGREEN"$%d\n\ 
					\n{ffffff}Вы действительно хотите утилизировать свой транспорт?", 
					CarNames[ model - 400 ], 
					getCarPrice( model ), 
					price 
				);
				showPlayerDialog( playerid, d_cars + 7, 0, " ", vb_string, "Далее", "Отмена" );	
			}

	    }
	}
	
	return 1;
}

hook OnPlayerLeaveDynamicArea( playerid, areaid ) 
{	
	if( areaid == strZones[11] ) 
	{
		SetPVarInt( playerid, "Player:InUtil", 0 );
	}
	
	return 1;
}

hook OnPlayerDisconnect( playerid, reason )
{
	if( !GetPVarInt( playerid, "uLogin" ) )
		return 1;
		
	for( new i; i < MAX_CARS_BUY; i++ )
	{
		if( !Car::[ i ][cID] )
			continue;
			
		if( !strcmp(Car::[ i ][cOwner], Player[playerid][uName], true ) )
		{
			Car::[ i ][c_delete] = true;
			
			GetVehicleDamageStatus( i, 
				Car::[i][cDamage][0], 
				Car::[i][cDamage][1], 
				Car::[i][cDamage][2], 
				Car::[i][cDamage][3]
			);
			
			GetVehicleHealth( i, Car::[i][cFloating][2] );
			
			Car::[ i ][cFloating][0] = V::[ i ][vFuel];
			Car::[ i ][cFloating][1] = V::[ i ][vMile];
			
			format:gb_string( "%f|%f|%f",
				Car::[ i ][cFloating][0],
				Car::[ i ][cFloating][1],
				Car::[ i ][cFloating][2]
			);
			
			SetCarStr( Car::[ i ][cID],"cFloating", gb_string );
			
			format:gb_string( "%d|%d|%d|%d",
				Car::[ i ][cDamage][0],
				Car::[ i ][cDamage][1],
				Car::[ i ][cDamage][2],
				Car::[ i ][cDamage][3]
			);
			
			SetCarStr( Car::[ i ][cID], "cDamage", gb_string );
			
			Car::[ i ][c_delete_timer] = SetTimerEx( "OnPlayerCarDestroy", 60000 * 5, false, "dd", i, playerid );
		}
	}
	
	return 1;
}

function OnPlayerCarDestroy( carid, playerid )
{
	V::[ carid ][vCountMile] = floatround( V::[ carid ][vMile] / 50.0 );
	V::[ carid ][vBuyingCar] = -1;
	
	switch( Car::[ carid ][cModel] )
	{
		case 510, 509, 481: {}
		default:
		{
			if( IsValidDynamic3DTextLabel( Car::[ carid ][cNumberLabel] ) )
			{
				DestroyDynamic3DTextLabel( Car::[ carid ][cNumberLabel] );
				Car::[ carid ][cNumberLabel] = Text3D: INVALID_3DTEXT_ID;
			}
		} 
	}
	
	DestroyVehicle( carid );
	
	ClearCarData( carid );
	
	printf( "[SYSTEM] Car %d has been destroyed. [ By %s ]", carid, Player[playerid][uName] );
	
	return 1;
}

function OnPlayerBuyCar( carid, playerid )
{
	Car::[ carid ][cID] = cache_insert_id();
	GivePlayerItem(playerid, 375, Car::[ carid ][cID] );
	
	
	DeletePVar( playerid,"salonPriceCar" );
	DeletePVar( playerid,"salonModelCar" );
	DeletePVar( playerid,"salonProdCar" );
	DeletePVar( playerid,"BuyCarsZZ" );
	
	SendMes( playerid, -1, ""gbAccess"Поздравляем Вас с успешным приобретением транспорта!" );
	SendMes( playerid, -1, ""gbInfo"Для того, чтобы перекрасить транспорт, необходимо отправиться в "cBLUE"СТО"cWHITE"." );
	return 1;
}

hook OnVehicleRespray( playerid, vehicleid, color1, color2 ) 
{
	if( IsBuyingCar( vehicleid ) ) 
	{
		if( Player[ playerid ][ uMoney ])
    	Car::[ vehicleid ][cSettings][1] = color1;
    	Car::[ vehicleid ][cSettings][2] = color2;
		
    	format:gb_string( "%d|%d|%d|%d|%d|%d|%d",
			Car::[ vehicleid ][cSettings][0],
			Car::[ vehicleid ][cSettings][1],
			Car::[ vehicleid ][cSettings][2],
			Car::[ vehicleid ][cSettings][3],
			Car::[ vehicleid ][cSettings][4],
			Car::[ vehicleid ][cSettings][5],
			Car::[ vehicleid ][cSettings][6]
		);
        
		SetCarStr( Car::[ vehicleid ][cID], "cSettings", gb_string );
	}
	
    return 1;
}

ClearVehicleData( vehicleid )
{
	V::[vehicleid][vBuyingCar] = -1;
    V::[vehicleid][vRentCar][0] = 0;
	V::[vehicleid][vRentCar][1] = 0;
	V::[vehicleid][vLock] = false;
	V::[vehicleid][vLimit] = false;
	V::[vehicleid][vNoBag] = false;
	V::[vehicleid][vFuel] = 0.0;
	
	V::[vehicleid][vTaxiDriver] = -1;
	V::[vehicleid][vTaxiText] = -1;
	V::[vehicleid][vBusDriver] = -1;
	V::[vehicleid][vDalnDriver] = -1;
	
	V::[vehicleid][vWoods] = 0;
	V::[vehicleid][vMebel] = 0;
	V::[vehicleid][vToplivo] = 0;
	V::[vehicleid][vProducts] = 0;
	V::[vehicleid][vProductsID] = 0;
	
	V::[vehicleid][vBusText] = Text3D: INVALID_3DTEXT_ID;
	V::[vehicleid][vTextTrailer] = Text3D: INVALID_3DTEXT_ID;
	V::[vehicleid][vProductsText] = Text3D: INVALID_3DTEXT_ID;
	vehicle3Dtext[vehicleid] = Text3D: INVALID_3DTEXT_ID;	
	
	
	V::[vehicleid][vMile] = 0.0;
	V::[vehicleid][vHealth] = 1000.0;
	V::[vehicleid][vCountMile] = 0;
	
	for( new i; i < 18; i++ )
	{
		V::[vehicleid][vInvSlot][i] = 0;
		V::[vehicleid][vInvSlotKol][i] = 0;
	}
	
	V::[vehicleid][vCrime] = 0;
	
	// Found
	V::[vehicleid][vehicle_boat] = 0;
	V::[vehicleid][vehicle_luke] = 0;
	
	V::[vehicleid][vehicle_luke_text] = Text3D: INVALID_3DTEXT_ID;
	
	V::[vehicleid][vehicle_seat] = 0;
	
	V::[vehicleid][vehicle_state_window][0] = true;
	V::[vehicleid][vehicle_state_window][1] = true;
	V::[vehicleid][vehicle_state_window][2] = true;
	V::[vehicleid][vehicle_state_window][3] = true;
}

ClearCarData( carid )
{
	Car::[carid][cID] = 
	Car::[carid][cModel] = 
	
	Car::[carid][cWanted] =
	
	Car::[carid][cStatus][0] =
	Car::[carid][cStatus][1] =
	
	Car::[carid][cDamage][0] =
	Car::[carid][cDamage][1] =
	Car::[carid][cDamage][2] =
	Car::[carid][cDamage][3] = 0;
	
	Car::[carid][cOwner][0] = EOS;
	
	Car::[carid][cLastTeh][0] =
	Car::[carid][cNumber][0] = EOS;
	
	for( new i; i < 18; i++ )
	{
		if( i < 15 )
		{
			Car::[carid][cTunning][i] = 0;
		}
		
		if( i < 8 )
		{
			Car::[carid][cSettings][i] = 0;
		}
		
		Car::[carid][cInvSlot][i] = 0;
		Car::[carid][cInvSlotKol][i] = 0; 
	}
	
	Car::[carid][cPos][0] = 
	Car::[carid][cPos][1] = 
	Car::[carid][cPos][2] =
	Car::[carid][cPos][3] =
	Car::[carid][cFloating][0] = 
	Car::[carid][cFloating][1] = 
	Car::[carid][cFloating][2] = 0.0;

	Car::[carid][cCar] = 0;
	
	Car::[carid][cNumberLabel] = Text3D: INVALID_3DTEXT_ID;
	
	// Found
	Car::[carid][c_delete] = false;
	Car::[carid][c_delete_timer] = -1;
}

IsBuyingCar( vehicleid )
{
	if( Car::[ vehicleid ][cID] == 0 || Car::[ vehicleid ][cModel] == 0 )
		return 0;
		
	return 1;
}

IsOwnerCar( vehicleid, playerid )
{
	if( !IsBuyingCar( vehicleid ) )
		return 0;
		
	if( !strcmp( Car::[ vehicleid ][cOwner], Player[playerid][uName], true ) )
		return 1;
		
	return 0;
}

IsOwnerCountCars( playerid )
{
	new 
		count = 0;
		
	for( new i; i != MAX_CARS_BUY; i++ ) 
	{
		if( !IsBuyingCar( i ) ) 
			continue;
			
		if( IsOwnerCar( i, playerid ) )
		{
			count++;
		}
	}
	
	return count;
}

CMD:cpanel( playerid ) 
{
	if( !IsPlayerInAnyVehicle( playerid ) ) 
		return 1;
		
	new 
		vehicleid = GetPlayerVehicleID( playerid );
		
	if( !IsBuyingCar( vehicleid ) ) 
		return 1;

	if( !IsOwnerCar( vehicleid, playerid ) )
		return 1;
		
	showPlayerDialog( playerid, d_cars + 1, DIALOG_STYLE_LIST, " ", 
		"1. "cGRAY"Информация об автомобиле{ffffff}\n\ 
		2. "cGRAY"Управление автомобилем{ffffff}\n\ 
		3. "cGRAY"Продать автомобиль человеку", 
		"Далее","Закрыть" 
	);

	return 1;
}

CMD:fixcar( playerid, params[] ) 
{
	if( sscanf( params, "d", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE,""gbInfo"Введите: /fixcar [ номер авто ]" );
		
	for( new i; i != MAX_CARS_BUY; i++ )
	{
		if( !IsBuyingCar( i ) ) 
			continue;
			
		if( Car::[i][cID] == params[0] )
		{
			if( IsOwnerCar( i, playerid ) )
			{
				if( IsPlayerInVehicle( playerid, i ) ) 
					return SendClientMessage(playerid, -1, ""gbError"Нельзя использовать команду, находясь в своем транспорте."); 

				if( IsVehicleOccupied( i ) ) 
					return SendClientMessage(playerid,C_GRAY,""gbError"Нельзя использовать команду, в транспорте кто-то находится."); 

				SetVehicleZAngle( i, Car::[i][cPos][3]); 
				setVehiclePos( i, Car::[i][cPos][0], Car::[i][cPos][1], Car::[i][cPos][2]); 
				SendClientMessage( playerid, C_WHITE,""gbAccess"Вы успешно вернули свой автомобиль, туда где Вы его припарковали." );
				break;
			}
		}
	}
	
	return 1;
}

CMD:park( playerid, params[] ) 
{
	if( !IsPlayerInAnyVehicle( playerid ) )
		return SendMes( playerid, -1, ""gbError"Вы должны находиться в транспорте." );
		
	new 
		vehicleid = GetPlayerVehicleID(playerid);
		
	if( !IsBuyingCar( vehicleid ) )
		return SendMes( playerid, -1, ""gbError"Данный транспорт не является Вашим." );
		
	
	if( IsOwnerCar( vehicleid, playerid ) )  
	{
		GetVehiclePos( vehicleid,
			Car::[ vehicleid ][cPos][0],
			Car::[ vehicleid ][cPos][1],
			Car::[ vehicleid ][cPos][2]
		);
		
		GetVehicleZAngle( vehicleid, Car::[ vehicleid ][cPos][3] );

		mysql_format:query( "UPDATE `gb_cars` SET \
			`cPosition` = '%f|%f|%f|%f', \
			`cFloating` = '%f|%f|%f', \
			`cStatus` = '%d' \
			WHERE `cID` = %d LIMIT 1",
			Car::[ vehicleid ][cPos][0],
			Car::[ vehicleid ][cPos][1],
			Car::[ vehicleid ][cPos][2],
			Car::[ vehicleid ][cPos][3],
			V::[ vehicleid ][vFuel],
			V::[ vehicleid ][vMile],
			V::[ vehicleid ][vHealth],
			Car::[ vehicleid ][cStatus][0],
			Car::[ vehicleid ][cID]
		);
		
		mysql_tquery( mysql, query, "", "" );
		
		SendClientMessage( playerid, C_WHITE, ""gbAccess"Вы успешно припарковали свой транспорт." );
		
		SetVehicleZAngle( vehicleid, Car::[ vehicleid ][cPos][3] );
		setVehiclePos( vehicleid, Car::[ vehicleid ][cPos][0], Car::[ vehicleid ][cPos][1], Car::[ vehicleid ][cPos][2] );
	}

	return 1;
}