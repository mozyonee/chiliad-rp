#include "YSI\y_hooks"

	
new Float:hostels_position[][8] = {
	{ 2728.38, -508.715, 883.086, 2734.51, -496.468, 883.086, 3.0 },
	{ 2518.58, -535.958, 883.086, 2530.58, -541.76, 883.086, 6.0 }
};	
	
CMD:addhostel( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 7 ) return SendMes( playerid, -1, ""gbError"У вас нет доступа к данной команде!" );
	if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, -1, ""gbInfo"Введите: /hostels [тип падика]" );
	if( GetPlayerInterior( playerid ) > 0 || GetPlayerVirtualWorld( playerid ) > 0 ) return SendMes( playerid, -1, ""gbError"Вы должны находиться на улице!" );
	if( params[0] < 1 && params[0] > 2 ) return SendMes( playerid, -1, ""gbError"Вы указали недопустимое значение" );
	for( new i; i < sizeof Hostels; i++ ) {
		if( !Hostels[i][kID] ) {
			new Float:pos[3];
			GetPlayerPos( playerid, pos[0], pos[1], pos[2] ); 
			for( new p; p < 3; p++ ) {
				Hostels[i][kEnterPos][p] = pos[p],
				Hostels[i][kExitPos][p] = hostels_position[ params[0] - 1 ][p],
				Hostels[i][kInt] = floatround( hostels_position[ params[0] - 1 ][6] ),
				Hostels[i][kExitPos_Two][p] = hostels_position[ params[0] - 1 ][p + 3];
			}
			format( query, sizeof query, "INSERT INTO `gb_hostel` ( \
				`kEnterPosX`, `kEnterPosY`, `kEnterPosZ`,\
				`kExitPosX`, `kExitPosY`, `kExitPosZ`,\
				`kExitPosX_Two`, `kExitPosY_Two`, `kExitPosZ_Two`, \
				`kInt` ) \
				VALUES ( '%f', '%f', '%f', '%f', '%f', '%f', '%f', '%f', '%f', '%d' )",
				Hostels[i][kEnterPos][0], Hostels[i][kEnterPos][1], Hostels[i][kEnterPos][2], 
				Hostels[i][kExitPos][0], Hostels[i][kExitPos][1], Hostels[i][kExitPos][2], 
				Hostels[i][kExitPos_Two][0], Hostels[i][kExitPos_Two][1], Hostels[i][kExitPos_Two][2],
				Hostels[i][kInt] );
			mysql_tquery( mysql, query, "insertHostels", "dd", playerid, i ); 	
			break;
		}
	}
	return true;
}

CMD:camerahostel( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 7 ) return SendMes( playerid, -1, ""gbError"У вас нет доступа к данной команде!" );
	if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, -1, ""gbInfo"Введите: /camerahostel [ид]" );
	for( new i; i < sizeof Hostels; i++ ) {
		if( Hostels[i][kID] == params[0] ) {
			new Float:pos[3];
			GetPlayerPos( playerid, pos[0], pos[1], pos[2] ); 
			for( new p; p < 3; p++ ) Hostels[i][kCamPos][p] = pos[p];
			format( query, sizeof query, "UPDATE `gb_hostel` SET \
				`kCamPosX` = '%f', `kCamPosY` = '%f', `kCamPosZ` = '%f' \
				WHERE `kID` = '%d'", 
				Hostels[i][kCamPos][0], Hostels[i][kCamPos][1], Hostels[i][kCamPos][2],
				Hostels[i][kID] );
			mysql_query( mysql, query );
			SendMes( playerid, -1, ""gbInfo"Вы успешно установили положение камеры подъезду %d", Hostels[i][kID] );
			break;
		}
	}	
	return true;
}

CMD:enterhostel( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 7 ) return SendMes( playerid, -1, ""gbError"У вас нет доступа к данной команде!" );
	if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, -1, ""gbInfo"Введите: /enterhostel [ид]" );
	for( new i; i < sizeof Hostels; i++ ) {
		if( Hostels[i][kID] == params[0] ) {
			new Float:pos[3];
			GetPlayerPos( playerid, pos[0], pos[1], pos[2] ); 
			for( new p; p < 3; p++ ) Hostels[i][kEnterPos_Two][p] = pos[p];
			format( query, sizeof query, "UPDATE `gb_hostel` SET \
				`kEnterPosX_Two` = '%f', `kEnterPosY_Two` = '%f', `kEnterPosZ_Two` = '%f' \
				WHERE `kID` = '%d'", 
				Hostels[i][kEnterPos_Two][0], Hostels[i][kEnterPos_Two][1], Hostels[i][kEnterPos_Two][2],
				Hostels[i][kID] );
			mysql_query( mysql, query );
			CreateDynamicPickup(19132,23,Hostels[i][kEnterPos_Two][0], Hostels[i][kEnterPos_Two][1], Hostels[i][kEnterPos_Two][2], -1);
			SendMes( playerid, -1, ""gbInfo"Вы успешно установили второй вход подъезду %d", Hostels[i][kID] );
			break;
		}
	}	
	return true;
}

publics: insertHostels( playerid, i ) {
	Hostels[i][kID] = cache_insert_id();
	Hostels[i][kVirtWorld] = Hostels[i][kID];
	format( query, sizeof query, "UPDATE `gb_hostel` SET `kVirtualWorld` = '%d' WHERE `kID` = '%d'",
		Hostels[i][kVirtWorld], Hostels[i][kID] );
	mysql_query( mysql, query );
	SendMes( playerid, -1, ""gbInfo"Вы успешно создали подъезд! ID подъезда %d", Hostels[i][kID] );
	SendMes( playerid, -1, ""gbInfo"Не забудьте установить второй вход с помощью команды /enterhostel!" );  
	SendMes( playerid, -1, ""gbInfo"И установите положение камеры с помощью команды /camerahostel" );           
	CreateDynamicPickup(19132,23,Hostels[i][kEnterPos][0], Hostels[i][kEnterPos][1], Hostels[i][kEnterPos][2], -1);
    //          
	CreateDynamicPickup(19132,23,Hostels[i][kExitPos][0], Hostels[i][kExitPos][1], Hostels[i][kExitPos][2], Hostels[i][kVirtWorld]);
	CreateDynamicPickup(19132,23,Hostels[i][kExitPos_Two][0], Hostels[i][kExitPos_Two][1], Hostels[i][kExitPos_Two][2], Hostels[i][kVirtWorld]);  
	return true;
}

hook OnGameModeInit() {
	mysql_tquery( mysql, "SELECT * FROM `gb_hostel` ORDER BY `kID`", "loadHostels", "" );
	return true;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	switch( newkeys ) {
		case KEY_WALK: {
			for(new i; i < sizeof( Hostels ); i ++) {
				if( IsPlayerInRangeOfPoint( playerid,1.0, Hostels[i][kEnterPos][0], Hostels[i][kEnterPos][1], Hostels[i][kEnterPos][2]) 
					|| IsPlayerInRangeOfPoint(playerid,1.0,Hostels[i][kEnterPos_Two][0],Hostels[i][kEnterPos_Two][1],Hostels[i][kEnterPos_Two][2])) {
					if(IsPlayerInRangeOfPoint(playerid,1.0,Hostels[i][kEnterPos][0],Hostels[i][kEnterPos][1],Hostels[i][kEnterPos][2])) {
						setPlayerPos(playerid,Hostels[i][kExitPos][0],Hostels[i][kExitPos][1],Hostels[i][kExitPos][2]);
						SetPlayerInterior(playerid,Hostels[i][kInt]);
						SetPlayerVirtualWorld(playerid,Hostels[i][kVirtWorld]);
						setHouseWeather( playerid );
						break;
					}
					else if(IsPlayerInRangeOfPoint(playerid,1.0,Hostels[i][kEnterPos_Two][0],Hostels[i][kEnterPos_Two][1],Hostels[i][kEnterPos_Two][2])) {
						setPlayerPos(playerid,Hostels[i][kExitPos_Two][0],Hostels[i][kExitPos_Two][1],Hostels[i][kExitPos_Two][2]);
						SetPlayerInterior(playerid,Hostels[i][kInt]);
						SetPlayerVirtualWorld(playerid,Hostels[i][kVirtWorld]);
						setHouseWeather( playerid );
						break;
					}
				}
				else if( GetPlayerVirtualWorld( playerid ) == Hostels[i][kVirtWorld] && ( IsPlayerInRangeOfPoint(playerid,1.0,Hostels[i][kExitPos][0],Hostels[i][kExitPos][1],Hostels[i][kExitPos][2]) || IsPlayerInRangeOfPoint(playerid,1.0,Hostels[i][kExitPos_Two][0],Hostels[i][kExitPos_Two][1],Hostels[i][kExitPos_Two][2] ) ) )
				{
					if(IsPlayerInRangeOfPoint(playerid,1.0,Hostels[i][kExitPos][0],Hostels[i][kExitPos][1],Hostels[i][kExitPos][2]))
					{
						setPlayerPos(playerid,Hostels[i][kEnterPos][0],Hostels[i][kEnterPos][1],Hostels[i][kEnterPos][2]);
						SetPlayerInterior(playerid, 0);
						SetPlayerVirtualWorld(playerid, 0);
						delData( playerid, "User:inInt" ), updateWeather( playerid );
						
					}
					else if(IsPlayerInRangeOfPoint(playerid,1.0,Hostels[i][kExitPos_Two][0],Hostels[i][kExitPos_Two][1],Hostels[i][kExitPos_Two][2])) {
						setPlayerPos(playerid,Hostels[i][kEnterPos_Two][0],Hostels[i][kEnterPos_Two][1],Hostels[i][kEnterPos_Two][2]);
						SetPlayerInterior(playerid, 0);
						SetPlayerVirtualWorld(playerid, 0);
						delData( playerid, "User:inInt" ), updateWeather( playerid );
					}
				}
			}	
		}
	}	
	return true;
}

publics: loadHostels() {
	clear_massive();
	new rows, fields;
    cache_get_data( rows, fields );
	if( rows ) {
		for(new j; j < rows; j++) {
	        Hostels[j][kID] = cache_get_field_content_int(j, "kID");
		    Hostels[j][kEnterPos][0] = cache_get_field_content_float(j, "kEnterPosX");
			Hostels[j][kEnterPos][1] = cache_get_field_content_float(j, "kEnterPosY");
			Hostels[j][kEnterPos][2] = cache_get_field_content_float(j, "kEnterPosZ");
				//
			Hostels[j][kEnterPos_Two][0] = cache_get_field_content_float(j, "kEnterPosX_Two");
			Hostels[j][kEnterPos_Two][1] = cache_get_field_content_float(j, "kEnterPosY_Two");
			Hostels[j][kEnterPos_Two][2] = cache_get_field_content_float(j, "kEnterPosZ_Two");
				//
				
			Hostels[j][kExitPos][0] = cache_get_field_content_float(j, "kExitPosX");
		    Hostels[j][kExitPos][1] = cache_get_field_content_float(j, "kExitPosY");
			Hostels[j][kExitPos][2] = cache_get_field_content_float(j, "kExitPosZ");
				//
			Hostels[j][kExitPos_Two][0] = cache_get_field_content_float(j, "kExitPosX_Two");
		    Hostels[j][kExitPos_Two][1] = cache_get_field_content_float(j, "kExitPosY_Two");
			Hostels[j][kExitPos_Two][2] = cache_get_field_content_float(j, "kExitPosZ_Two");
				//
			Hostels[j][kInt] = cache_get_field_content_int(j, "kInt");
			Hostels[j][kCity] = cache_get_field_content_int(j, "kCity");
			Hostels[j][kVirtWorld] = cache_get_field_content_int(j, "kVirtualWorld");
				//
			Hostels[j][kCamPos][0] = cache_get_field_content_float(j, "kCamPosX");
			Hostels[j][kCamPos][1] = cache_get_field_content_float(j, "kCamPosY");
			Hostels[j][kCamPos][2] = cache_get_field_content_float(j, "kCamPosZ");
				//
				
				
			CreateDynamic3DTextLabel("[ Вход ]\n\n"cBLUE"ALT",0xFFFFFFFF,Hostels[j][kEnterPos][0], Hostels[j][kEnterPos][1], Hostels[j][kEnterPos][2],5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,-1);
			CreateDynamic3DTextLabel("[ Вход ]\n\n"cBLUE"ALT",0xFFFFFFFF,Hostels[j][kEnterPos_Two][0], Hostels[j][kEnterPos_Two][1], Hostels[j][kEnterPos_Two][2],5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,-1);
			CreateDynamic3DTextLabel("[ Выход ]\n\n"cBLUE"ALT",0xFFFFFFFF,Hostels[j][kExitPos][0], Hostels[j][kExitPos][1], Hostels[j][kExitPos][2],5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,-1);
			CreateDynamic3DTextLabel("[ Выход ]\n\n"cBLUE"ALT",0xFFFFFFFF,Hostels[j][kExitPos_Two][0], Hostels[j][kExitPos_Two][1], Hostels[j][kExitPos_Two][2],5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,-1);
            CreateDynamicPickup(19132,23,Hostels[j][kEnterPos][0], Hostels[j][kEnterPos][1], Hostels[j][kEnterPos][2], -1);
            CreateDynamicPickup(19132,23,Hostels[j][kEnterPos_Two][0], Hostels[j][kEnterPos_Two][1], Hostels[j][kEnterPos_Two][2], -1);
                
		    CreateDynamicPickup(19132,23,Hostels[j][kExitPos][0], Hostels[j][kExitPos][1], Hostels[j][kExitPos][2], Hostels[j][kVirtWorld]);
		    CreateDynamicPickup(19132,23,Hostels[j][kExitPos_Two][0], Hostels[j][kExitPos_Two][1], Hostels[j][kExitPos_Two][2], Hostels[j][kVirtWorld]);   
		}
	}
	printf( "[SYSTEM] Квартиры загружены - [%d]", rows );
	return true;
}
