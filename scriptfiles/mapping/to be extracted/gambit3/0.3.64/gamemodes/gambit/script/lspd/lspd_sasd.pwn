#include <YSI\y_hooks>
#define d_sasd_duty		3996

new sasd_skin_male[] = { 282, 283, 288, 284, 302, 310, 311, 287 },
	sasd_skin_female[] = { 309 };
	
hook OnGameModeInit() {
	CreateDynamicPickup( 1275, 23, 627.4626,-584.4551,1994.0859, -1 );
	CreateDynamic3DTextLabel( "[ Одежда ]\n\n"cBLUE"ALT", 0xFFFFFFFF, 627.4626,-584.4551,1994.0859, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1 );

	CreateDynamicPickup( 19132, 23, 609.1158,-559.8854,16.6512 );
	CreateDynamic3DTextLabel( ""cBLUE"ALT", 0xFFFFFFFF, 609.1158,-559.8854,16.6512, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1 );

	
	sasd_car[0] = CreateVehicle(497,614.3974,-574.5658,26.3460,358.2330,86,1,99999);
	CreateVehicle(523,614.9570,-592.0612,16.7971,309.4044,86,1,99999);
	CreateVehicle(523,612.5946,-591.7029,16.7994,322.5735,86,1,99999);
	CreateVehicle(523,610.1219,-591.4504,16.7969,328.4194,86,1,99999);
	//-------------------------------------------------------------------
	new myobject, vehicleidd;
	vehicleidd = CreateVehicle(402,613.9736,-601.7395,17.0612,271.6757,86,1,99999, 1); // ??? ????
	myobject = CreateObject(19620,0,0,-1000,0,0,0,100);
	AttachObjectToVehicle(myobject, vehicleidd, 0.000000,-0.599999,0.824999,0.000000,0.000000,0.000000);
	myobject = CreateObject(19797,0,0,-1000,0,0,0,100);
	AttachObjectToVehicle(myobject, vehicleidd, 0.000000,-1.725000,0.375000,0.000000,0.000000,0.000000);
	//-------------------------------------------------------------------
	vehicleidd = CreateVehicle(402,613.7560,-597.4457,17.0694,271.5537,86,1,99999, 1); // ??? ????
	myobject = CreateObject(19620,0,0,-1000,0,0,0,100);
	AttachObjectToVehicle(myobject, vehicleidd, 0.000000,-0.599999,0.824999,0.000000,0.000000,0.000000);
	myobject = CreateObject(19797,0,0,-1000,0,0,0,100);
	AttachObjectToVehicle(myobject, vehicleidd, 0.000000,-1.725000,0.375000,0.000000,0.000000,0.000000);
	//-------------------------------------------------------------------
	CreateVehicle(598,635.9960,-565.0934,16.0063,180.7553,86,1,99999); //
	CreateVehicle(598,636.1108,-577.4443,16.0233,180.0025,86,1,99999); //
	CreateVehicle(598,622.9318,-587.0872,16.8538,208.9236,86,1,99999); //
	CreateVehicle(598,627.5093,-587.1942,16.3503,208.6650,86,1,99999); //
	CreateVehicle(599,634.5569,-609.6485,16.5236,0.2086,86,1,99999); //
	CreateVehicle(599,638.7259,-609.5340,16.5323,0.1205,86,1,99999); //
	CreateVehicle(599,621.9440,-610.4084,17.3383,271.1600,86,1,99999); //
	CreateVehicle(598,636.1927,-584.1266,16.0044,179.5536,86,1,99999); // шерифы
	CreateVehicle(598,636.2430,-557.0451,16.0049,178.5687,86,1,99999); // шерифы
	CreateVehicle(599,636.4796,-548.2513,16.4435,181.0210,86,1,99999); // шерифы
    sasd_car[1] = CreateVehicle(599,621.7634,-605.7232,17.3526,272.8535,86,1,99999); //
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