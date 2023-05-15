#include <YSI\y_hooks>
#define d_prison_duty	3995

hook OnGameModeInit( ) {
	loadPrisonInterior();
	CreateDynamicPickup( 1275, 23, 60.8529, -334.7537, 2601.0859, -1 );
	CreateDynamic3DTextLabel( "[ Одежда ]\n\n"cBLUE"ALT", 0xFFFFFFFF, 60.8529, -334.7537, 2601.0859, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1 );

	for( new p; p < sizeof( prison_pickup ); p++ ) {
		CreateDynamicPickup( 19132, 23, prison_pickup[p][0], prison_pickup[p][1], prison_pickup[p][2], -1 );
		CreateDynamicPickup( 19132, 23, prison_pickup[p][4], prison_pickup[p][5], prison_pickup[p][6], -1 );
	}
	return true;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	switch( newkeys ) {
		case KEY_WALK: {
			if( IsPlayerInRangeOfPoint( playerid, 2.0, 60.8529, -334.7537, 2601.0859 ) ) {
				if( Player[playerid][uMember] != 1 ) return true;
				if( Player[playerid][uIsPlayerJob][0] == 0 ) {
					showPlayerDialog( playerid, d_prison_duty, 0, " ","{ffffff}Вы хотите заступить на дежурство ?","Да","Нет");
				}	
				else {
					showPlayerDialog( playerid, d_prison_duty, 0, " ", "{ffffff}Вы хотите уйти с дежурства ?", "Да", "Нет" );
				}	
				return true;
			}
			for( new p; p < sizeof( prison_pickup ); p++ ) {
				if( IsPlayerInRangeOfPoint( playerid, 1.5, prison_pickup[p][0], prison_pickup[p][1], prison_pickup[p][2] ) 
					&& GetPlayerVirtualWorld( playerid ) == floatround( prison_pickup[p][9] ) ) {
					SetPlayerPos( playerid, prison_pickup[p][4], prison_pickup[p][5], prison_pickup[p][6] );
					SetPlayerFacingAngle( playerid, prison_pickup[p][7] );
					SetPlayerVirtualWorld( playerid, floatround( prison_pickup[p][8] ) );
					SetPlayerInterior( playerid, floatround( prison_pickup[p][10] ) );
					switch( p ) {
						case 0, 1, 2, 3: setPrisonWeather( playerid );
					}
					break;
				}
				else if( IsPlayerInRangeOfPoint( playerid, 1.5, prison_pickup[p][4], prison_pickup[p][5], prison_pickup[p][6] ) 
					&& GetPlayerVirtualWorld( playerid ) == floatround( prison_pickup[p][8] )) {
					SetPlayerPos( playerid, prison_pickup[p][0], prison_pickup[p][1], prison_pickup[p][2] );
					SetPlayerFacingAngle( playerid, prison_pickup[p][3] );
					SetPlayerVirtualWorld( playerid, floatround( prison_pickup[p][9] ) );
					SetPlayerInterior( playerid, floatround( prison_pickup[p][11] ) );
					switch( p ) {
						case 0, 1, 2, 3: delData( playerid, "User:inInt" ), updateWeather( playerid );
					}
					break;
				}				
			}
		}
	}
	return true;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	switch( dialogid ) {
		case d_prison_duty: {
			if(!response) return 1;
			if( Player[playerid][uIsPlayerJob][0] ) {
			    GetBackSkin( playerid );
			    SendClientMessage( playerid,C_GRAY,""gbAccess"Вы закончили своё дежурство!");
			    SetPlayerColor( playerid, FracColor[0] );
			    RemovePlayerAttachedObject( playerid,5 );
			    RemovePlayerAttachedObject( playerid,7  );
			    RemovePlayerAttachedObject( playerid,6 );
			    Player[playerid][uIsPlayerJob][0] = 0;
				format( gb_string, sizeof gb_string, "%s", Player[playerid][uSex] == 1 ? ("переоделся"):("переоделась") );
			    MeAction( playerid, gb_string, 1 );
			    for( new g; g != 56; g++ ) {
					switch( Inv[playerid][invSlot][g] ) {
						case 426 .. 441,451,458,340: {
							switch( Inv[playerid][invSlot][50] ) {
								case 426,429,340: RemovePlayerWeapon( playerid, GetWeaponToObject( _itemsInfo[ Inv[playerid][invSlot][50] ][invObject] ) );
							}
							switch( Inv[playerid][invSlot][51] ) {
								case 458,428,430: RemovePlayerWeapon( playerid, GetWeaponToObject( _itemsInfo[ Inv[playerid][invSlot][51] ][invObject] ) );
							}
							if( Inv[playerid][invSlot][54] == 431 ) setPlayerArmour( playerid, 0 );
							Inv[playerid][invSlot][g] = 0, Inv[playerid][invSlotKol][g] = 0;
						}
					}
				}
			}
			else {
				if( Player[playerid][uSex] == 1 ) {
					for( new i; i < sizeof prison_skin_male; i++ ){
						PlayerTextDrawSetPreviewModel( playerid, NewSkinSelect[i][playerid], 
							prison_skin_male[i] );
						PlayerTextDrawShow( playerid, NewSkinSelect[i][playerid] );
					}
				}
				else {
					for( new i; i < sizeof prison_skin_female; i++ ){
						PlayerTextDrawSetPreviewModel( playerid, NewSkinSelect[i][playerid], 
							prison_skin_female[i] );
						PlayerTextDrawShow( playerid, NewSkinSelect[i][playerid] );
					}
				}
				PlayerTextDrawShow( playerid, NewSkinSelect[12][playerid] );
				SelectTextDraw( playerid, 0xd3d3d3FF );
				setData( playerid, "PlayerMenuShow", 9 );
				setData( playerid, "GuperOnSelect", 1 );
				showPlayerDialog( playerid, 9999, 0, " ", 
					"{ffffff}Нажмите кнопку "cGREEN"ESC {ffffff}чтобы закрыть меню.","Закрыть","");
				GivePlayerItem( playerid, 432, 1 );
			}
		}
	}
	return true;
}

stock callPrisonSkin( playerid, PlayerText:playertextid ) {
	if( Player[playerid][uSex] == 1 ) {
		for( new i; i < sizeof prison_skin_male; i++ ) {
			if( playertextid == NewSkinSelect[i][playerid] ) {
				Player[playerid][uJobSkin] = prison_skin_male[i];
				break;
			}
		}	
	}
	else {
		for( new i; i < sizeof prison_skin_female; i++ ) {
			if( playertextid == NewSkinSelect[i][playerid] ) {
				Player[playerid][uJobSkin] = prison_skin_female[i];
				break;
			}
		}	
	}
	Player[playerid][uIsPlayerJob][0] = 1;
	SetPlayerColor( playerid, FracColor[ Player[playerid][uMember] ] );
	SetPlayerSkin( playerid, Player[playerid][uJobSkin] );
	delData( playerid, "GuperOnSelect" );
	return true;
}

stock setPrisonWeather( playerid ) {
	setData( playerid, "User:inInt", 1 );
	SetPlayerTime( playerid, 11, 0 );
	SetPlayerWeather( playerid, 10 );
	return true;
}

stock prisonTimer( playerid ) {
	if( Player[ playerid ][uArrest] && gettime() >  Player[ playerid ][uArrestTime] ) {
		Player[ playerid ][uArrestStat]++;
		Player[ playerid ][uArrestStatDate] = gettime();
		Player[ playerid ][uArrest] = 0, Player[ playerid ][uArrestCamera] = 0, Player[ playerid ][uArrestTime] = 0;
		userUpdate( playerid, "uArrest", 0 ), userUpdate( playerid, "uArrest", 0 ), userUpdate( playerid, "uArrest", 0 );
		userUpdate( playerid, "uArrestStat", Player[ playerid ][uArrestStat] );
		userUpdate( playerid, "uArrestStatDate", gettime() );
		SendMes( playerid, C_GRAY, ""gbAccess"Ваш срок заключёния закончился! Вы были выпущены на волю!" );
		
		format( query, sizeof query, "SELECT * FROM `gb_prison` WHERE `pName` = '%s' AND `pArrest` = '1'", Player[ playerid ][uName] );
		mysql_tquery( mysql, query, "givePrisonInv", "ds", playerid, "EndTime" );

		SetPlayerPos( playerid, 97.6320,-238.3941,1.5785 );
		SetPlayerVirtualWorld( playerid, 0 );
		SetPlayerInterior( playerid, 0 );
		delData( playerid, "User:inInt" ), updateWeather( playerid );
		if( Player[ playerid ][uRole] == 6 ) Player[ playerid ][uRole] = 1, userUpdate( playerid, "uRole", 1 );
	}
	return true;
}