#include <YSI\y_hooks>

CMD:crimecar( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 4 ) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if( sscanf( params, "iiii", params[0], params[1], params[2], params[3] ) ) return SendMes( playerid, C_GRAY,""gbInfo"Введите: /crimecar [модель][цвет][цвет 2][ид кр.орг]");
	if( params[0] < 400 && params[0] > 611 ) return SendMes( playerid, C_GRAY, ""gbError"Неверный ид модели!" );
	if( params[1] < 0 && params[1] > 126 || params[2] < 0 && params[2] > 126 ) return SendMes( playerid, C_GRAY, ""gbError"Неверный ид цвета!" );
	new id = -1, car, Float: x, Float: y, Float: z, Float: rz;
	for( new i; i < sizeof CrimeInfo; i++ ) {
		if( CrimeInfo[i][crID] == params[3] ) id = i;
	}
	if( id == -1 ) return SendMes( playerid, C_GRAY, ""gbError"Криминальная организация с таким ID не найдена" );
	for( new v; v < MAX_CRIME_CAR; v++ ) {
		if( CrimeCar[id][v][cr_vCrime] == CrimeInfo[id][crID] ) car++;
	}
	if( car >= MAX_CRIME_CAR ) return SendMes( playerid, C_GRAY, ""gbError"Лимит авто у криминальной организации превышен!" );
	GetPlayerPos( playerid, x, y, z ), GetPlayerFacingAngle( playerid, rz );
	for( new v; v < MAX_CRIME_CAR; v++ ) {
		if( !CrimeCar[id][v][cr_vID] ) {
			CrimeCar[id][v][cr_vModel] = params[0],
			CrimeCar[id][v][cr_vColor][0] = params[1], CrimeCar[id][v][cr_vColor][1] = params[2], 
			CrimeCar[id][v][cr_vCrime] = params[3];
			CrimeCar[id][v][cr_vPos][0] = x, CrimeCar[id][v][cr_vPos][1] = y, 
			CrimeCar[id][v][cr_vPos][2] = z, CrimeCar[id][v][cr_vPos][3] = rz;
			format( query, sizeof query, "INSERT INTO `gb_crime_veh` \
			( `vCrime`, `vModel`, `vColor_1`, `vColor_2`, `vPosX`, `vPosY`, `vPosZ`, `vPosRZ` ) \
			VALUES ( '%d', '%d', '%d', '%d', '%f', '%f', '%f', '%f' )",
			params[3], params[0], params[1], params[2], x, y, z, rz );
			mysql_tquery( mysql, query, "crimeVehInsert", "dddffff", playerid, id, v, x, y, z, rz );
			break;
		}
	}
	return true;
}

CMD:crimedelcar( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 4 ) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if( !IsPlayerInAnyVehicle( playerid ) ) return SendMes( playerid, C_GRAY, ""gbError"Вы должны находиться в машине!" );
	new veh = GetPlayerVehicleID( playerid );
	for( new id; id < MAX_CRIMINAL; id++ ) {
		for( new v; v < MAX_CRIME_CAR; v++ ) {
			if( CrimeCar[id][v][cr_vID] ) {
				if( CrimeCar[id][v][cr_vCar] == veh ) {
					format( query, sizeof query, "DELETE FROM `gb_crime_veh` WHERE `vID` = '%d'", CrimeCar[id][v][cr_vID] );
					mysql_query( mysql, query );
					V::[ CrimeCar[id][v][cr_vCar] ][vCrime] = 0;
					DestroyVehicle( CrimeCar[id][v][cr_vCar] );
					CrimeCar[id][v][cr_vID] = 0, CrimeCar[id][v][cr_vModel] = 0, CrimeCar[id][v][cr_vCrime] = 0;
					return true;
				}
			}
		}
	}
	SendMes( playerid, -1, ""gbError"Вы не можете удалить эту машину!" );
	return true;
}

CMD:crimepark( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 4 ) return SendMes( playerid, -1, ""gbError"У вас недостаточно прав для данной команды!" );
	if( GetPlayerState( playerid ) == PLAYER_STATE_DRIVER ) {
		new veh = GetPlayerVehicleID( playerid );
		for( new id; id < MAX_CRIMINAL; id++ ) {
			if( !CrimeInfo[id][crID] ) continue;
			for( new v; v < MAX_CRIME_CAR; v++ ) {
				if( CrimeCar[id][v][cr_vCar] == veh ) {
					new Float: x, Float: y, Float: z, Float: rz;
					GetVehiclePos( veh, x, y, z ), GetVehicleZAngle( veh, rz );
					format( query, sizeof query, "UPDATE `gb_crime_veh` SET `vPosX` = '%f', `vPosY` = '%f', `vPosZ` = '%f', \
						`vPosRZ` = '%f' WHERE `vID` = '%d'",
						x, y, z, rz, CrimeCar[id][v][cr_vID] );
					mysql_tquery( mysql, query );
					CrimeCar[id][v][cr_vPos][0] = x, CrimeCar[id][v][cr_vPos][1] = y, 
					CrimeCar[id][v][cr_vPos][2] = z, CrimeCar[id][v][cr_vPos][3] = rz;
         	    	setVehiclePos( veh, x, y, z ), SetVehicleZAngle( veh, rz );
					SendMes( playerid, -1, ""gbInfo"Вы успешно припарковали транспорт!" );
					return true;
				}
			}
		}
		
	}
	else SendMes( playerid, -1, ""gbError"Вы должны находиться за рулём авто!" );
	return true;
}

function loadCrimeVeh( id ) { 
	new rows, fields;
    cache_get_data( rows, fields);
    if( rows ) {
		for( new v; v < rows; v++ ) {
			if( !CrimeCar[id][v][cr_vID] ) { 
				CrimeCar[id][v][cr_vID] = cache_get_field_content_int( v, "vID", mysql );
				CrimeCar[id][v][cr_vModel] = cache_get_field_content_int( v, "vModel", mysql );
				CrimeCar[id][v][cr_vCrime] = cache_get_field_content_int( v, "vCrime", mysql );
				CrimeCar[id][v][cr_vColor][0] = cache_get_field_content_int( v, "vColor_1", mysql );
				CrimeCar[id][v][cr_vColor][1] = cache_get_field_content_int( v, "vColor_2", mysql );
				
				CrimeCar[id][v][cr_vPos][0] = cache_get_field_content_float( v, "vPosX", mysql );
				CrimeCar[id][v][cr_vPos][1] = cache_get_field_content_float( v, "vPosY", mysql );
				CrimeCar[id][v][cr_vPos][2] = cache_get_field_content_float( v, "vPosZ", mysql );
				CrimeCar[id][v][cr_vPos][3] = cache_get_field_content_float( v, "vPosRZ", mysql );
				
				
				CrimeCar[id][v][cr_vCar] = CreateVehicle( 
					CrimeCar[id][v][cr_vModel], CrimeCar[id][v][cr_vPos][0], CrimeCar[id][v][cr_vPos][1],
					CrimeCar[id][v][cr_vPos][2], CrimeCar[id][v][cr_vPos][3], 
					CrimeCar[id][v][cr_vColor][0], CrimeCar[id][v][cr_vColor][1], 999999 );
				if( CrimeCar[id][v][cr_vCar] ) {
					V::[ CrimeCar[id][v][cr_vCar] ][vHealth] = 1000.0;
					V::[ CrimeCar[id][v][cr_vCar] ][vFuel] = MaxVehicleFuel[ CrimeCar[id][v][cr_vModel] - 400 ];	
					V::[ CrimeCar[id][v][cr_vCar] ][vCrime] = CrimeCar[id][v][cr_vCrime];
					V::[ CrimeCar[id][v][cr_vCar] ][vBuyingCar] = -1;
					//printf( "%d | %d | %d", id, v, CrimeCar[id][v][cr_vCar] );
				}
			}
		}
	}
	return true;
}

function crimeVehInsert( playerid, id, v, Float:x, Float:y, Float:z, Float:rz ) { 
	CrimeCar[id][v][cr_vID] = cache_insert_id();
	CrimeCar[id][v][cr_vCar] = CreateVehicle( CrimeCar[id][v][cr_vModel], x, y, z, rz, 
		CrimeCar[id][v][cr_vColor][0], CrimeCar[id][v][cr_vColor][1], 999999 );
		
	V::[ CrimeCar[id][v][cr_vCar] ][vHealth] = 1000.0;
	V::[ CrimeCar[id][v][cr_vCar] ][vFuel] = MaxVehicleFuel[ CrimeCar[id][v][cr_vModel] - 400 ];	
	V::[ CrimeCar[id][v][cr_vCar] ][vCrime] = CrimeCar[id][v][cr_vCrime];
	V::[ CrimeCar[id][v][cr_vCar] ][vBuyingCar] = -1;
	
	SendMes( playerid, -1, ""gbInfo"Вы успешно добавили транспорт для кр.орг %s", CrimeInfo[id][crName] );
	SendMes( playerid, -1, ""gbInfo"Не забудьте припарковать машину на месте спавна комадой /crimepark" );
	return true;
}