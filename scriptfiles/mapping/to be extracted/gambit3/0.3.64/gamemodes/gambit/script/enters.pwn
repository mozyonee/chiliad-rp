#include <YSI\y_hooks>

hook OnGameModeInit() {
	mysql_tquery( mysql, "SELECT * FROM `gb_enters`", "loadEnters", "" );
	return true;
}

CMD:addenter( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 7 ) return SendMes( playerid, -1, ""gbError"У вас нет доступа к этой команде" );
	if( sscanf( params, "s[64]", params ) ) return SendMes( playerid, -1, ""gbError"Введите: /addenter [название]" );
	new Float:pos[3];
	GetPlayerPos( playerid, pos[0], pos[1], pos[2] );
	for( new e; e < sizeof EnterInfo; e++ ) {
		if( !EnterInfo[e][eID] ) {
			for( new i; i < 3; i++ ) EnterInfo[e][eP][i] = pos[i];
			EnterInfo[e][exInt][0] = GetPlayerInterior( playerid ),
			EnterInfo[e][exInt][1] = GetPlayerVirtualWorld( playerid );
			CreateDynamicPickup( 19132, 23, EnterInfo[e][eP][0], EnterInfo[e][eP][1], EnterInfo[e][eP][2], EnterInfo[e][exInt][1] );

			format( EnterInfo[e][eName], 64, "%s", params );
			format( gb_string, sizeof gb_string,"{ffffff}[ %s ]\n"cBLUE"ALT", EnterInfo[e][eName]);
			CreateDynamic3DTextLabel( gb_string, C_BLUE, EnterInfo[e][eP][0], EnterInfo[e][eP][1], EnterInfo[e][eP][2], 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1 );
			format( query, sizeof query, "INSERT INTO `gb_enters` \
				( `eP1`, `eP2`, `eP3`, `exInt`, `exWorld`, `eName` ) \
				VALUES ( '%f', '%f', '%f', '%d', '%d', '%s' )",
				EnterInfo[e][eP][0], EnterInfo[e][eP][1], EnterInfo[e][eP][2],
				EnterInfo[e][exInt][0], EnterInfo[e][exInt][1],
				EnterInfo[e][eName] );
			mysql_tquery( mysql, query, "entersInsert", "dd", playerid, e );	
			break;
		}
	}
	return true;
}

CMD:enterexit( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 7 ) return SendMes( playerid, -1, ""gbError"У вас нет доступа к этой команде" );
	if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, -1, ""gbError"Введите: /enterexit [ID]" );
	for( new e; e < sizeof EnterInfo; e++ ) {
		if( EnterInfo[e][eID] == params[0] ) {
			new Float:pos[3];
			GetPlayerPos( playerid, pos[0], pos[1], pos[2] );
			for( new i; i < 3; i++ ) EnterInfo[e][ePe][i] = pos[i];
			EnterInfo[e][eInt][0] = GetPlayerInterior( playerid ),
			EnterInfo[e][eInt][1] = EnterInfo[e][eID];
			CreateDynamicPickup( 19132, 23, EnterInfo[e][ePe][0], EnterInfo[e][ePe][1], EnterInfo[e][ePe][2], EnterInfo[e][eInt][1], EnterInfo[e][eInt][0] );
			CreateDynamic3DTextLabel( "ALT", C_BLUE, EnterInfo[e][ePe][0], EnterInfo[e][ePe][1], EnterInfo[e][ePe][2], 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, EnterInfo[e][eInt][1] );
			
			format( query, sizeof query, "UPDATE `gb_enters` SET `ePe1` = '%f', `ePe2` = '%f', `ePe3` = '%f', \
				`eInt` = '%d', `eWorld` = '%d' WHERE `eID` = '%d'", 
				EnterInfo[e][ePe][0], EnterInfo[e][ePe][1], EnterInfo[e][ePe][2], 
				EnterInfo[e][eInt][0], EnterInfo[e][eInt][1],
				EnterInfo[e][eID] );
			mysql_query( mysql, query );
			SendMes( playerid, -1, ""gbAccess"Вы успешно добавили выход в интерьер [%s] ID:%d",
				EnterInfo[e][eName], EnterInfo[e][eID] );
			return true;
		}
	}
	SendMes( playerid, -1, ""gbError"Вы указали неверный ID входа" );
	return true;
}

publics: entersInsert( playerid, e ) {
	EnterInfo[e][eID] = cache_insert_id();
	SendMes( playerid, -1, ""gbAccess"Вы успешно добавили вход в интерьер [%s], ID: %d", 
		EnterInfo[e][eName], EnterInfo[e][eID] );
	SendMes( playerid, -1, ""gbAccess"Для добавления выхода в интерьер используйте команду /exitenter %d", 	EnterInfo[e][eID] );
	
	return true;
}

publics: loadEnters() {
	clear_massive();
	new rows, fields, time = GetTickCount();
    cache_get_data( rows, fields );
	for( new j; j < rows; j++ ) {
		fields = cache_get_field_count(mysql);
		f_mysql_fetch_row_format( j, query, fields );
		sscanf( query,"e<p<|>iffffffiis[32]ii>", EnterInfo[j] );
		CreateDynamicPickup( 19132, 23, EnterInfo[j][eP][0], EnterInfo[j][eP][1], EnterInfo[j][eP][2], EnterInfo[j][exInt][1] );
		CreateDynamicPickup( 19132,23, EnterInfo[j][ePe][0], EnterInfo[j][ePe][1], EnterInfo[j][ePe][2], EnterInfo[j][eInt][1] );
		format( gb_string, sizeof gb_string,"{ffffff}[ %s ]\n"cBLUE"ALT", EnterInfo[j][eName]);
		CreateDynamic3DTextLabel( gb_string, C_BLUE, EnterInfo[j][eP][0], EnterInfo[j][eP][1], EnterInfo[j][eP][2], 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1 );
		CreateDynamic3DTextLabel( "ALT", C_BLUE, EnterInfo[j][ePe][0], EnterInfo[j][ePe][1], EnterInfo[j][ePe][2], 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, EnterInfo[j][eInt][1] );
		        
	}
	printf("[SYSTEM] ¬ходы в интерьеры загружены [%d][time %d ms]", rows, GetTickCount() - time );
	return true;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	switch( newkeys ) {
		case KEY_WALK: {
			for( new i; i < sizeof EnterInfo; i++ ) {
				if( IsPlayerInRangeOfPoint( playerid, 2.0, EnterInfo[i][eP][0], EnterInfo[i][eP][1], EnterInfo[i][eP][2] ) ) {
					if( EnterInfo[i][eInt][0] ) setHouseWeather( playerid );
					setPlayerPos( playerid, EnterInfo[i][ePe][0], EnterInfo[i][ePe][1], EnterInfo[i][ePe][2] );
					SetPlayerInterior( playerid, EnterInfo[i][eInt][0] );
					SetPlayerVirtualWorld( playerid, EnterInfo[i][eInt][1] );
					Streamer_UpdateEx( playerid, EnterInfo[i][ePe][0], EnterInfo[i][ePe][1], EnterInfo[i][ePe][2], EnterInfo[i][eInt][1], EnterInfo[i][eInt][0] );
					spawnFreezeTime( playerid );
					break;
				}
				else if( IsPlayerInRangeOfPoint( playerid, 2.0, EnterInfo[i][ePe][0], EnterInfo[i][ePe][1], EnterInfo[i][ePe][2] ) && GetPlayerVirtualWorld( playerid ) == EnterInfo[i][eInt][1] ) {
					if( getData( playerid, "HouseFurniture" ) ) return true;
					setPlayerPos( playerid, EnterInfo[i][eP][0], EnterInfo[i][eP][1], EnterInfo[i][eP][2] );
					SetPlayerInterior( playerid, EnterInfo[i][exInt][0] );
					SetPlayerVirtualWorld( playerid, EnterInfo[i][exInt][1] );
					delData( playerid, "User:inInt" ), updateWeather( playerid );
				}
			}
		}
	}
	return true;
}