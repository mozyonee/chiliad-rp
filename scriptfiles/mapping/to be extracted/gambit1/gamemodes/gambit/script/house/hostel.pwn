#include "YSI\y_hooks"

	
new const 
	Float:hostels_position[][8] = 
	{
		{ 2728.3931, -508.7557, 2883.0859, 2734.5850, -496.4645, 2883.0859, 3.0 },
		{ 2518.5835, -535.9597, 3883.0859, 2530.5564, -541.7751, 3883.0859, 6.0 }
	};	
		
CMD:addhostel( playerid, params[] ) 
{
	if( Player[playerid][uAdmin] < 7 ) return SendMes( playerid, -1, ""gbError"У вас нет доступа к данной команде!" );
	if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, -1, ""gbInfo"Введите: /hostels [ тип падика 1 - большой | 2 - маленький ]" );
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
			mysql_tquery( mysql, query );
			SendMes( playerid, -1, ""gbInfo"Вы успешно установили положение камеры подъезду %d", Hostels[i][kID] );
			break;
		}
	}	
	return true;
}

CMD:enterhostel( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 7 ) return SendMes( playerid, -1, ""gbError"У вас нет доступа к данной команде!" );
	if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, -1, ""gbInfo"Введите: /enterhostel [ид]" );
	for( new i; i < sizeof Hostels; i++ ) 
	{
		if( Hostels[i][kID] == params[0] )
		{
			new Float:pos[3];
			GetPlayerPos( playerid, pos[0], pos[1], pos[2] ); 
			for( new p; p < 3; p++ ) Hostels[i][kEnterPos_Two][p] = pos[p];
			format( query, sizeof query, "UPDATE `gb_hostel` SET \
				`kEnterPosX_Two` = '%f', `kEnterPosY_Two` = '%f', `kEnterPosZ_Two` = '%f' \
				WHERE `kID` = '%d'", 
				Hostels[i][kEnterPos_Two][0], Hostels[i][kEnterPos_Two][1], Hostels[i][kEnterPos_Two][2],
				Hostels[i][kID] );
			mysql_tquery( mysql, query, "", "" );
			CreateDynamicPickup(19132,23,Hostels[i][kEnterPos_Two][0], Hostels[i][kEnterPos_Two][1], Hostels[i][kEnterPos_Two][2], -1);
			SendMes( playerid, -1, ""gbInfo"Вы успешно установили второй вход подъезду %d", Hostels[i][kID] );
			break;
		}
	}	
	return true;
}

CMD:desc( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 7 ) )
		return SendMes( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "d", params[0], params[1] ) ) 
		return SendMes( playerid, -1, ""gbError"Введите: /desc [ ID ]" );
		
	for( new i; i < sizeof Hostels; i++ ) 
	{
		if( Hostels[i][kID] == params[0] )
		{
			format( query, sizeof query, "SELECT `kDescription` FROM `gb_hostel` WHERE `kID` = %d", 
				Hostels[i][kID] 
			);
			mysql_tquery( mysql, query, "OnShowHostelDescription", "d", playerid );
			SendMes( playerid, -1, ""gbInfo"Вы успешно добавили комментарий %d", Hostels[i][kID] );
			break;
		}
	}	
	
	return 1;
}

function OnShowHostelDescription( playerid )
{
	if( !cache_get_row_count() )
		return 1;
		
	gb_string[0] = 0;
	cache_get_field_content( 0, "kDescription", gb_string );
	
	SendMes( playerid, -1, ""gbInfo"Комментарий: "cBLUE"%s", gb_string );
	
	return 1;
}

CMD:hosteldesc( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 7 ) )
		return SendMes( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "ds[128]", params[0], params[1] ) ) 
		return SendMes( playerid, -1, ""gbError"Введите: /hosteldesc [ ID ] [ Описание ]" );
		
	for( new i; i < sizeof Hostels; i++ ) 
	{
		if( Hostels[i][kID] == params[0] )
		{
			format( query, sizeof query, "UPDATE `gb_hostel` SET `kDescription` = '%s' WHERE `kID` = %d", 
				params[1],
				Hostels[i][kID] 
			);
			mysql_tquery( mysql, query, "", "" );
			SendMes( playerid, -1, ""gbInfo"Вы успешно добавили комментарий %d", Hostels[i][kID] );
			break;
		}
	}	
	
	return 1;
}

function insertHostels( playerid, i ) {
	Hostels[i][kID] = cache_insert_id();
	Hostels[i][kVirtWorld] = Hostels[i][kID];
	format( query, sizeof query, "UPDATE `gb_hostel` SET `kVirtualWorld` = '%d' WHERE `kID` = '%d'",
		Hostels[i][kVirtWorld], Hostels[i][kID] );
	mysql_query( mysql, query );
	SendMes( playerid, -1, ""gbInfo"Вы успешно создали подъезд! ID подъезда "cBLUE"%d", Hostels[i][kID] );
	SendMes( playerid, -1, ""gbInfo"Установить второй вход - "cBLUE"/enterhostel"cWHITE"." );  
	SendMes( playerid, -1, ""gbInfo"Установить положение камеры - "cBLUE"/camerahostel"cWHITE"." ); 
	SendMes( playerid, -1, ""gbInfo"Добавить комментарий - "cBLUE"/hosteldesc"cWHITE"." );	
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
						spawnFreezeTime( playerid );
						break;
					}
					else if(IsPlayerInRangeOfPoint(playerid,1.0,Hostels[i][kEnterPos_Two][0],Hostels[i][kEnterPos_Two][1],Hostels[i][kEnterPos_Two][2])) {
						setPlayerPos(playerid,Hostels[i][kExitPos_Two][0],Hostels[i][kExitPos_Two][1],Hostels[i][kExitPos_Two][2]);
						SetPlayerInterior(playerid,Hostels[i][kInt]);
						SetPlayerVirtualWorld(playerid,Hostels[i][kVirtWorld]);
						setHouseWeather( playerid );
						spawnFreezeTime( playerid );
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

function loadHostels() {
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
				
				
			format:gb_string( "[ Вход #%d ]\n\n"cBLUE"ALT",
				Hostels[j][kID]
			);
			
			CreateDynamic3DTextLabel(gb_string,0xFFFFFFFF,Hostels[j][kEnterPos][0], Hostels[j][kEnterPos][1], Hostels[j][kEnterPos][2],5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,-1);
			CreateDynamic3DTextLabel(gb_string,0xFFFFFFFF,Hostels[j][kEnterPos_Two][0], Hostels[j][kEnterPos_Two][1], Hostels[j][kEnterPos_Two][2],5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,-1);
			
			format:gb_string( "[ Выход #%d ]\n\n"cBLUE"ALT",
				Hostels[j][kID]
			);
			
			CreateDynamic3DTextLabel(gb_string,0xFFFFFFFF,Hostels[j][kExitPos][0], Hostels[j][kExitPos][1], Hostels[j][kExitPos][2],5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,-1, Hostels[j][kVirtWorld]);
			CreateDynamic3DTextLabel(gb_string,0xFFFFFFFF,Hostels[j][kExitPos_Two][0], Hostels[j][kExitPos_Two][1], Hostels[j][kExitPos_Two][2],5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,-1, Hostels[j][kVirtWorld]);
            CreateDynamicPickup(19132,23,Hostels[j][kEnterPos][0], Hostels[j][kEnterPos][1], Hostels[j][kEnterPos][2], -1);
            CreateDynamicPickup(19132,23,Hostels[j][kEnterPos_Two][0], Hostels[j][kEnterPos_Two][1], Hostels[j][kEnterPos_Two][2], -1);
                
		    CreateDynamicPickup(19132,23,Hostels[j][kExitPos][0], Hostels[j][kExitPos][1], Hostels[j][kExitPos][2], Hostels[j][kVirtWorld]);
		    CreateDynamicPickup(19132,23,Hostels[j][kExitPos_Two][0], Hostels[j][kExitPos_Two][1], Hostels[j][kExitPos_Two][2], Hostels[j][kVirtWorld]);   
		}
	}
	printf( "[SYSTEM] Квартиры загружены - [%d]", rows );
	return true;
}
