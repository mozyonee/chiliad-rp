#include <YSI\y_hooks>
#define d_sasd_duty		3996

new sasd_skin_male[] = { 286, 285, 163, 164 },
	sasd_skin_female[] = { 150, 141, 76 };
	
hook OnGameModeInit() {
	CreateDynamicPickup( 1275, 23, 627.4626,-584.4551,1994.0859, -1 );
	CreateDynamic3DTextLabel( "[ Одежда ]\n\n"cBLUE"ALT", 0xFFFFFFFF, 627.4626,-584.4551,1994.0859, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1 );

	CreateDynamicPickup( 19132, 23, 609.1158,-559.8854,16.6512 );
	CreateDynamic3DTextLabel( ""cBLUE"ALT", 0xFFFFFFFF, 609.1158,-559.8854,16.6512, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1 );

	
	sasd_car[0] = CreateVehicle( 497,614.1929,-575.8170,26.3197,3.6805,0,0,86400); // 
	CreateVehicle( 528,612.3418,-608.6000,17.2721,321.4403,0,0,86400); // 
	CreateVehicle( 427,614.2599,-597.2603,17.3648,269.5385,0,0,86400); // 
	CreateVehicle( 482,612.0643,-601.8129,17.3475,270.6319,0,0,86400); // 
	CreateVehicle( 490,638.0175,-609.8099,16.4634,0.7066,0,0,86400); // 
	CreateVehicle( 490,632.1964,-609.5959,16.4654,0.3031,0,0,86400); // 
	CreateVehicle( 490,626.5800,-609.5397,16.8432,0.0897,0,0,86400); // 
	CreateVehicle( 490,622.1162,-609.5178,17.2957,0.7479,0,0,86400); // 
	CreateVehicle( 560,637.3509,-557.1813,15.9647,180.4463,0,0,86400); // 
	CreateVehicle( 560,637.4083,-565.1498,15.9645,179.5759,0,0,86400); // 
	CreateVehicle( 560,637.4039,-579.1873,15.9646,179.4752,0,0,86400); // 
	CreateVehicle( 421,612.0477,-590.9927,17.1138,269.8410,0,0,86400); // 
	CreateVehicle( 421,627.5949,-586.5586,16.4786,228.6304,0,0,86400); // 
    sasd_car[1] = CreateVehicle( 421,623.0338,-586.9855,16.9742,229.5627,0,0,86400); //
	return true;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	switch( newkeys ) {
		case KEY_WALK: {
			if( IsPlayerInRangeOfPoint( playerid, 2.5, 609.1158,-559.8854,16.6512 ) ) {
				SetPlayerPos( playerid, 316.2371,-170.1205,999.5938 );
				SetPlayerVirtualWorld( playerid, 8 ), SetPlayerInterior( playerid, 6 );
			}
			else if( IsPlayerInRangeOfPoint( playerid, 2.5, 316.2371,-170.1205,999.5938 ) && GetPlayerVirtualWorld( playerid ) == 8 ) {
				SetPlayerPos( playerid, 609.1158,-559.8854,16.6512 );
				SetPlayerVirtualWorld( playerid, 0 ), SetPlayerInterior( playerid, 0 );
			}
			if( IsPlayerInRangeOfPoint( playerid, 2.0, 627.4626,-584.4551,1994.0859 ) ) {
				if( Player[playerid][uMember] != 8 ) return true;
				if( Player[playerid][uIsPlayerJob][0] == 0 ) {
					showPlayerDialog( playerid, d_sasd_duty, 0, " ","{ffffff}Вы хотите заступить на дежурство ?","Да","Нет");
				}	
				else {
					showPlayerDialog( playerid, d_sasd_duty, 0, " ", "{ffffff}Вы хотите уйти с дежурства ?", "Да", "Нет" );
				}	
				return true;
			}
		}
	}
	return true;
}	

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	switch( dialogid ) {
		case d_sasd_duty: {
			if( !response ) return true;
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
					for( new i; i < sizeof sasd_skin_male; i++ ){
						PlayerTextDrawSetPreviewModel( playerid, NewSkinSelect[i][playerid], 
							sasd_skin_male[i] );
						PlayerTextDrawShow( playerid, NewSkinSelect[i][playerid] );
					}
				}
				else {
					for( new i; i < sizeof sasd_skin_female; i++ ){
						PlayerTextDrawSetPreviewModel( playerid, NewSkinSelect[i][playerid], 
							sasd_skin_female[i] );
						PlayerTextDrawShow( playerid, NewSkinSelect[i][playerid] );
					}
				}
				PlayerTextDrawShow( playerid, NewSkinSelect[12][playerid] );
				SelectTextDraw( playerid, 0xd3d3d3FF );
				setData( playerid, "PlayerMenuShow", 9 );
				setData( playerid, "GuperOnSelect", 8 );
				showPlayerDialog( playerid, 9999, 0, " ", 
					"{ffffff}Нажмите кнопку "cGREEN"ESC {ffffff}чтобы закрыть меню.","Закрыть","");
				GivePlayerItem( playerid, 432, 1 );
			}
		}
	}
	return true;
}

stock callSasdSkin( playerid, PlayerText:playertextid ) {
	if( Player[playerid][uSex] == 1 ) {
		for( new i; i < sizeof sasd_skin_male; i++ ) {
			if( playertextid == NewSkinSelect[i][playerid] ) {
				Player[playerid][uJobSkin] = sasd_skin_male[i];
				break;
			}
		}	
	}
	else {
		for( new i; i < sizeof sasd_skin_female; i++ ) {
			if( playertextid == NewSkinSelect[i][playerid] ) {
				Player[playerid][uJobSkin] = sasd_skin_female[i];
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