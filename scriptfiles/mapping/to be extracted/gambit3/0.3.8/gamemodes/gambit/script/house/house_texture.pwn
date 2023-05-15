#include <YSI\y_hooks>

new pre_tx_wall[MAX_PLAYERS][6],
	pre_tx_floor[MAX_PLAYERS][2],
	end_tx_object[MAX_PLAYERS],
	pre_tx_roof[MAX_PLAYERS][2],
	pre_tx_door[MAX_PLAYERS];

hook OnPlayerDisconnect( playerid, reason ) {
	if( getData( playerid, "HTx:Use" ) ) {
		SetPlayerPos( playerid, getDataFloat( playerid, "HTx:oldPosX" ), getDataFloat( playerid, "HTx:oldPosY" ),
			getDataFloat( playerid, "HTx:oldPosZ" ) );
		destroyTxObject( playerid );	
	}
	return true;
}	

stock loadPlayerTextureObject( playerid, type ) {
	new world = GetPlayerVirtualWorld( playerid );
	pre_tx_wall[playerid][0] = CreateDynamicObject(19459, 277.00000, 1995.07996, 5009.79980, 0.00000, 0.00000, 0.00000, world );
	pre_tx_wall[playerid][1] = CreateDynamicObject(19459, 272.10001, 1987.23010, 5009.79980,   0.00000, 0.00000, 90.00000, world );
	pre_tx_wall[playerid][2] = CreateDynamicObject(19459, 272.10001, 2003.14954, 5009.79980,   0.00000, 0.00000, 90.00000, world );
	pre_tx_wall[playerid][3] = CreateDynamicObject(19459, 277.00000, 1985.45044, 5009.79980,   0.00000, 0.00000, 0.00000, world );
	pre_tx_wall[playerid][4] = CreateDynamicObject(19395, 277.00000, 2001.50000, 5009.79980,   0.00000, 0.00000, 0.00000, world );
	pre_tx_wall[playerid][5] = CreateDynamicObject(19455, 277.23746, 2000.38647, 5009.79980, 0.00000, 0.00000, 0.00000, world );
	
	pre_tx_floor[playerid][0] = CreateDynamicObject(19378, 272.00000, 1990.00000, 5008.00000,   0.00000, 90.00000, 0.00000, world );
	pre_tx_floor[playerid][1] = CreateDynamicObject(19378, 272.00000, 1999.63000, 5008.00000,   0.00000, 90.00000, 0.00000, world );
	
	pre_tx_roof[playerid][0] = CreateDynamicObject(19377, 272.00000, 1990.00000, 5011.62988,   0.00000, 90.00000, 0.00000, world );
	pre_tx_roof[playerid][1] = CreateDynamicObject(19377, 272.00000, 1999.63000, 5011.62988,   0.00000, 90.00000, 0.00000, world );
	
	pre_tx_door[playerid] = CreateDynamicObject(1502, 277.00000, 2002.28296, 5008.04004,   0.00000, 0.00000, -90.00000, world );
	end_tx_object[playerid] = CreateDynamicObject(1498, 276.97113, 1990.14600, 5008.08691,   0.00000, 0.00000, 90.00000, world );
	
	new Float:pos[3]; GetPlayerPos( playerid, pos[0], pos[1], pos[2] );
	setDataFloat( playerid, "HTx:oldPosX", pos[0] ),
	setDataFloat( playerid, "HTx:oldPosY", pos[1] ),
	setDataFloat( playerid, "HTx:oldPosZ", pos[2] );
	setData( playerid, "HTx:Use", 1 );
	setData( playerid, "HTx:Texture", 0 );
	setData( playerid, "HTx:Type", type );
	
	setPlayerPreTexture( playerid, type );
	TogglePlayerControllable( playerid, false );
	SetPlayerPos( playerid, 273.0543, 1988.8143, 5014.4575 );
	SetPlayerCameraPos( playerid, 263.7939, 1995.2786, 5010.1929 );
	SetPlayerCameraLookAt( playerid, 264.7910, 1995.2816, 5010.0718, 2 );
	
	SendMes( playerid, -1, ""gbInfo"Вы были перемещены в строительный магазин" );
	SendMes( playerid, -1, ""gbInfo"Для выбора используйте кнопки NUM4 и NUM6" );
	SendMes( playerid, -1, ""gbInfo"Для подтверждения выбора нажмите Y" );
	SendMes( playerid, -1, ""gbInfo"Для выхода из магазина, нажмите N" );
	return true;
}

stock setPlayerPreTexture( playerid, type ) {
	new texture = getData( playerid, "HTx:Texture" );
	switch( type ) {
		case 1: {
			for( new i; i < 6; i++ ) {
				SetDynamicObjectMaterial( pre_tx_wall[playerid][i], 0, 
					int_wall_textures[ texture ][iwt_ob], 
					int_wall_textures[ texture ][iwt_texture], 
					int_wall_textures[ texture ][iwt_model], 0 );
			}
			setData( playerid, "HTx:Max", sizeof int_wall_textures );
		}
		case 2: {
			for( new i; i < 2; i++ ) {
				SetDynamicObjectMaterial( pre_tx_floor[playerid][i], 0, 
					int_floor_textures[ texture ][iwt_ob], 
					int_floor_textures[ texture ][iwt_texture], 
					int_floor_textures[ texture ][iwt_model], 0 );
			}
			setData( playerid, "HTx:Max", sizeof int_floor_textures );
		}
		case 3: {
			for( new i; i < 2; i++ ) {
				SetDynamicObjectMaterial( pre_tx_roof[playerid][i], 0, 
					int_roof_textures[ texture ][iwt_ob], 
					int_roof_textures[ texture ][iwt_texture], 
					int_roof_textures[ texture ][iwt_model], 0 );
			}
			setData( playerid, "HTx:Max", sizeof int_roof_textures );
		}
		case 4: {
			new i = pre_tx_door[playerid];
			//SetDynamicObjectMaterial( i, 0, int_door_textures[ texture ][iwt_ob], int_door_textures[ texture ][iwt_texture], 
			//	int_door_textures[ texture ][iwt_model], 0 );
			SetDynamicObjectMaterial( i, 1, int_door_textures[ texture ][iwt_ob], int_door_textures[ texture ][iwt_texture], 
				int_door_textures[ texture ][iwt_model], 0 );	
			setData( playerid, "HTx:Max", sizeof int_door_textures );	
		}
	}
	//Streamer_UpdateEx( playerid, 273.0543, 1988.8143, 5014.4575 );
	return true;
}
//, 
hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	if( !getData( playerid, "HTx:Use" ) ) return true;
	switch( newkeys ) {
		case KEY_ANALOG_RIGHT: {
			if( getData( playerid, "HTx:Texture" ) < getData( playerid, "HTx:Max" ) - 1 ) {
				giveData( playerid, "HTx:Texture", 1 );
				setPlayerPreTexture( playerid, getData( playerid, "HTx:Type" ) );
			}
		}
		case KEY_ANALOG_LEFT: {
			if( getData( playerid, "HTx:Texture" ) == 0 ) return true;
			giveData( playerid, "HTx:Texture", -1 );
			setPlayerPreTexture( playerid, getData( playerid, "HTx:Type" ) );
			
		}
		case KEY_NO: {
			SetPlayerPos( playerid,
				getDataFloat( playerid, "HTx:oldPosX" ),
				getDataFloat( playerid, "HTx:oldPosY" ),
				getDataFloat( playerid, "HTx:oldPosZ" ) );
			delData( playerid, "HTx:Use" );	
			SetCameraBehindPlayer( playerid );
			TogglePlayerControllable( playerid, true );
			destroyTxObject( playerid );
			return true;
		}
		case KEY_YES: {
			SetPlayerPos( playerid,
				getDataFloat( playerid, "HTx:oldPosX" ),
				getDataFloat( playerid, "HTx:oldPosY" ),
				getDataFloat( playerid, "HTx:oldPosZ" ) );
			delData( playerid, "HTx:Use" );	
			SetCameraBehindPlayer( playerid );
			TogglePlayerControllable( playerid, true );
			destroyTxObject( playerid );
			new h = getPlayerHouseID( playerid );
			setHouseTexture( h, getData( playerid, "HTx:Texture" ), getData( playerid, "HTx:Type" ) );
			switch( getData( playerid, "HTx:Type" ) ) {
				case 1: houseUpdate( HouseInfo[h][hID], "hWall", getData( playerid, "HTx:Texture" ) );
				case 2: houseUpdate( HouseInfo[h][hID], "hFloor", getData( playerid, "HTx:Texture" ) );
				case 3: houseUpdate( HouseInfo[h][hID], "hRoof", getData( playerid, "HTx:Texture" ) );
				case 4: houseUpdate( HouseInfo[h][hID], "hDoor", getData( playerid, "HTx:Texture" ) );
			}
			return true;
		}
	}
	return true;
}

stock destroyTxObject( playerid ) {
	for( new i; i < 2; i++ ) DestroyDynamicObject( pre_tx_floor[playerid][i] ), DestroyDynamicObject( pre_tx_roof[playerid][i] );
	for( new i; i < 6; i++ ) DestroyDynamicObject( pre_tx_wall[playerid][i] );
	DestroyDynamicObject( pre_tx_door[playerid] ),
	DestroyDynamicObject( end_tx_object[playerid] );
	return true;
}