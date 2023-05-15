#include <YSI\y_hooks>

hook OnGameModeInit() {
	// - Магазин мебели
    CreateDynamicPickup( 1239, 23, -487.4362,-262.6086,1095.9097, -1 );
    CreateDynamic3DTextLabel( "[ Покупка мебели ]\n\n"cBLUE"ALT", 0xFFFFFFFF, -487.4362,-262.6086,1095.9097, 5.0, INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1);
	return true;
}

hook OnPlayerClickTextDraw(playerid, Text:clickedid) {
	clear_massive();
	if(clickedid == furnitureBuy[2])
	{
	    new furniture[2];
		if(getData(playerid,"playerCountMebel") != 0) {
		    SetPVarInt(playerid,"playerCountMebel",getData(playerid,"playerCountMebel") - 1);
			furniture[0] = getData(playerid,"playerSelectMebelClass");
	    	furniture[1] = getData(playerid,"playerCountMebel");
	    	SetPlayerCameraPos(playerid, FurnitureShop[furniture[0]][furniture[1]][0], FurnitureShop[furniture[0]][furniture[1]][1], FurnitureShop[furniture[0]][furniture[1]][2]);
	    	SetPlayerCameraLookAt(playerid, FurnitureShop[furniture[0]][furniture[1]][9], FurnitureShop[furniture[0]][furniture[1]][10], FurnitureShop[furniture[0]][furniture[1]][11]);
			format( gb_string, sizeof gb_string,"ЦЕНА: ~g~$%d",FurniturePrice[furniture[0]][furniture[1]] * Bizz::[getData(playerid,"PlayerBizzID")][bSettings][5]);
  		    PlayerTextDrawSetString( playerid, furniturePrice[playerid], gb_string);
		}
	}
	if(clickedid == furnitureBuy[3]) {
	    new furniture[2];
	    if(getData(playerid,"playerCountMebel") >= 0) {
	        if(FurnitureShop[getData(playerid,"playerSelectMebelClass")][getData(playerid,"playerCountMebel") + 1][0] != 0.0) {
	            SetPVarInt(playerid,"playerCountMebel",getData(playerid,"playerCountMebel") + 1);
	            furniture[0] = getData(playerid,"playerSelectMebelClass");
	    		furniture[1] = getData(playerid,"playerCountMebel");
	    		SetPlayerCameraPos(playerid, FurnitureShop[furniture[0]][furniture[1]][0], FurnitureShop[furniture[0]][furniture[1]][1], FurnitureShop[furniture[0]][furniture[1]][2]);
	    		SetPlayerCameraLookAt(playerid, FurnitureShop[furniture[0]][furniture[1]][9], FurnitureShop[furniture[0]][furniture[1]][10], FurnitureShop[furniture[0]][furniture[1]][11]);
                format( gb_string,sizeof gb_string,"ЦЕНА: ~g~$%d",FurniturePrice[furniture[0]][furniture[1]] * Bizz::[getData(playerid,"PlayerBizzID")][bSettings][5]);
    			PlayerTextDrawSetString( playerid, furniturePrice[playerid], gb_string);
			}
	    }
	}
	if(clickedid == furnitureBuy[4]) {
	    new classfurn = getData(playerid,"playerSelectMebelClass");
	    new count = getData(playerid,"playerCountMebel");
	    new bizz = getData(playerid,"PlayerBizzID");
	    new bool:furncount = false;
        if(Bizz::[bizz][bSettings][3] < FurniturePrice[classfurn][count]) return SendMes( playerid, C_GRAY,""gbError"В бизнесе закончились товары!");
	    if(Player[playerid][uMoney] < FurniturePrice[classfurn][count] * Bizz::[bizz][bSettings][5]) return SendMes(playerid,C_GRAY,""gbError"У вас недостаточно средств для покупки этого!");

		new house = getData(playerid,"playerSelectHouseFurnitureBuy");
	    for(new i; i < MAX_HFURN; i++) {//!!11
			if(!Furn::[house][i][furnID]) {
			    Furn::[house][i][furnModel] = FurnitureObject[classfurn][count];
			    Furn::[house][i][furnHType] = 0;
			    Furn::[house][i][furnHID] = HouseInfo[house][hID];
				Furn::[house][i][furnClass] = classfurn;
				Furn::[house][i][furnCount] = count;
				format(query,sizeof(query),"INSERT INTO `gb_furniture` ( `hID`, `fModel`, `hType`, `fClass`, `fCount` ) VALUES ( '%d', '%d', '%d', '%d', '%d' )",
					Furn::[house][i][furnHID], Furn::[house][i][furnModel], Furn::[house][i][furnHType],
					Furn::[house][i][furnClass], Furn::[house][i][furnCount] );
	    		mysql_tquery( mysql, query, "InsertFurniture", "dddd", playerid, house, i, 0 );
	    			
	    		furncount = true;

		        Player[playerid][uMoney] -= FurniturePrice[classfurn][count] * Bizz::[bizz][bSettings][5];
		        format( query, sizeof query,"UPDATE gb_users SET uMoney = '%d' WHERE BINARY uName = '%s'",Player[playerid][uMoney],Player[playerid][uName]);
				mysql_tquery( mysql, query, "", "");
		        if(!strcmp(Bizz::[bizz][bOwner],"None",true)) {}
		        else Bizz::[bizz][bSettings][6] += FurniturePrice[classfurn][count] * Bizz::[bizz][bSettings][5];
				if(Bizz::[bizz][bRating] < 5000) Bizz::[bizz][bRating]++;
		        Bizz::[bizz][bSettings][3] -= FurniturePrice[classfurn][count];
		        format( gb_string,sizeof gb_string,"%d|%d|%d|%d|%d|%d|%d|%d",Bizz::[bizz][bSettings][0],Bizz::[bizz][bSettings][1],Bizz::[bizz][bSettings][2],
				Bizz::[bizz][bSettings][3],Bizz::[bizz][bSettings][4],Bizz::[bizz][bSettings][5],Bizz::[bizz][bSettings][6],Bizz::[bizz][bSettings][7]);
				SetBizzStr(Bizz::[bizz][bID],"bSettings", gb_string);
		        break;
			}
		}
		if(furncount == false) return SendMes(playerid,C_GRAY,""gbError"В вашем доме закончилось место под мебель!");
	}
	if(clickedid == furnitureBuy[5]) {
	    for(new i; i != 6; i ++) TextDrawHideForPlayer(playerid, furnitureBuy[i]);
		PlayerTextDrawHide(playerid, furniturePrice[playerid]);
		SetPVarInt(playerid,"PlayerMenuShow",0);
		SetCameraBehindPlayer(playerid);
		togglePlayerControllable(playerid,true);
		CancelSelectTextDraw(playerid);
	}
	return true;
}

hook OnPlayerEditDynamicObject(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz) {
	clear_massive();
	new id = getData(playerid,"HPanel"), slot = getData( playerid, "f_id" );
	if( objectid >= house_object_interior[0] && objectid <= house_object_interior[1] ||
		objectid >= HouseInfo[id][hHouseWall][0] && objectid <= HouseInfo[id][hHouseWall][1] ||
		objectid >= HouseInfo[id][hHouseFloor][0] && objectid <= HouseInfo[id][hHouseFloor][1] ||
		objectid >= HouseInfo[id][hHouseRoof][0] && objectid <= HouseInfo[id][hHouseRoof][1] ) {
		return true;
	}	
	
	if( response == EDIT_RESPONSE_FINAL || response == EDIT_RESPONSE_CANCEL ) {
	    if( getData( playerid, "f_edit" ) == 1 ) {
			if(!IsValidDynamicObject(objectid)) return SendClientMessage(playerid, C_GRAY, "Ошибка в системе. Обратитесь к администратору! [#F0001]");
			if( objectid == Furn::[id][slot][furnObject] ) {
				MoveDynamicObject(objectid, x, y, z, 10.0, rx, ry, rz);

				Furn::[id][slot][furnX] = x, Furn::[id][slot][furnY] = y, Furn::[id][slot][furnZ] = z,
				Furn::[id][slot][furnRX] = rx, Furn::[id][slot][furnRY] = ry, Furn::[id][slot][furnRZ] = rz;
				
				format( query, sizeof query,"UPDATE `gb_furniture` SET `fX` = %f, `fY` = %f, `fZ` = %f, `frX` = %f, `frY` = %f, `frZ` = %f WHERE `ID` = %d AND `hID` = %d",
					x, y, z, rx, ry, rz, Furn::[id][slot][furnID], HouseInfo[id][hID] );
				mysql_query( mysql, query );
				OpenFurnitureList( playerid, getData( playerid, "f_page" ) );
				GameTextForPlayer( playerid, "Object Saved", 3000, 3 );
				DeletePVar( playerid, "f_edit" );
			}
	    }
	}
	return true;
}	

publics: InsertFurniture( playerid, house, i ) {
	Furn::[house][i][furnID] = cache_insert_id();
	SendClientMessage(playerid,C_GRAY,""gbAccess"Вы приобрели новую мебель в ваш дом!");
	return true;
}

publics: LoadFurniture( house ) {
	new rows, fields;
	cache_get_data(rows, fields, 1);
	if(rows) {
	    for(new idx; idx < rows; idx++) {
	     	Furn::[house][idx][furnID] = cache_get_field_content_int( idx, "ID", 1);
	     	Furn::[house][idx][furnHID] = cache_get_field_content_int( idx, "hID", 1);
	     	Furn::[house][idx][furnHType] = cache_get_field_content_int( idx, "hType", 1);
	     	Furn::[house][idx][furnModel] = cache_get_field_content_int( idx, "fModel", 1);
	     	Furn::[house][idx][furnState] = cache_get_field_content_int( idx, "fState", 1);
			Furn::[house][idx][furnClass] = cache_get_field_content_int( idx, "fClass", 1);
			Furn::[house][idx][furnCount] = cache_get_field_content_int( idx, "fCount", 1);


			Furn::[house][idx][furnX] = cache_get_field_content_float( idx, "fX", 1 );
			Furn::[house][idx][furnY] = cache_get_field_content_float( idx, "fY", 1 );
			Furn::[house][idx][furnZ] = cache_get_field_content_float( idx, "fZ", 1 );
			Furn::[house][idx][furnRX] = cache_get_field_content_float( idx, "frX", 1 );
			Furn::[house][idx][furnRY] = cache_get_field_content_float( idx, "frY", 1 );
			Furn::[house][idx][furnRZ] = cache_get_field_content_float( idx, "frZ", 1 );

			if( Furn::[house][idx][furnState] ) {
		     	Furn::[house][idx][furnObject] = CreateDynamicObject(
					Furn::[house][idx][furnModel],
		     	    Furn::[house][idx][furnX], Furn::[house][idx][furnY], Furn::[house][idx][furnZ],
		     	    Furn::[house][idx][furnRX], Furn::[house][idx][furnRY], Furn::[house][idx][furnRZ],
					HouseInfo[house][hID], -1 );
			}
		}
    }
	return true;
}


stock OpenFurnitureList( playerid, page ) {
	clear_massive();
	setData( playerid, "f_page", page );
	setData( playerid, "f_all", 0 );
	new idx = getData( playerid, "f_page" ) * FURN_PAGE,
		id = getData( playerid, "HPanel" ), slot;
	for( new i = idx; i < MAX_HFURN; i++ ) {
		if( Furn::[id][i][furnID] ) {
			format( gb_string, sizeof gb_string, "{ffffff}%i. "cGRAY"%s \t{ffffff}%s\n",
				idx + ( slot + 1 ), FurnitureName[ Furn::[id][i][furnClass] ][ Furn::[id][i][furnCount] ],
				Furn::[id][i][furnState] == 0 ? (""):("{19b80b}[Установлено]" ) );
			strcat( vb_string, gb_string );
			f_select[ playerid ][slot] = i;
			slot++;
			if( slot == FURN_PAGE ) {
				strcat( vb_string, "Следующая страница >>" );
	   	    	break;
			}
		}
	}
	setData( playerid, "f_all", slot );
	if( page || ( page && slot < FURN_PAGE ) ) strcat( vb_string, "\n<< Предыдущая страница" );
	if( !slot ) {
		if( page != 0 ) return OpenFurnitureList( playerid, page - 1 );
		return SendClientMessage( playerid, C_GRAY, ""gbInfo"В вашем доме нет мебели, вы можете приобрести её в мебельном магазине.");
	}
	showPlayerDialog( playerid, d_house + 13, 2, "Управление мебелью", vb_string, "Дальше", "Закрыть");
	return true;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	clear_massive();
	switch( dialogid ) {
		case d_house + 13: {
			if( !response ) {
				dialog_anticheat[playerid] = dialogid;
				return true;
			}	
			new id = getData( playerid, "HPanel" );
			if( listitem == FURN_PAGE ) {
				return OpenFurnitureList( playerid, getData( playerid, "f_page" ) + 1 );
			}
			else if( listitem == FURN_PAGE + 1 || 
				listitem == getData( playerid, "f_all" ) && getData( playerid, "f_all" ) < FURN_PAGE ) {
				return OpenFurnitureList( playerid, getData( playerid, "f_page" ) - 1 );
			}
			new f_id = f_select[playerid][listitem];
		    setData( playerid, "f_id", f_id );
		    if( !Furn::[id][f_id][furnModel] ) return SendClientMessage( playerid, C_GRAY,""gbError"В данном слоте нет никакой мебели!");
		    format( gb_string, sizeof gb_string, "1. "cGRAY"%s", Furn::[id][f_id][furnState] == 0 ?
					("Поставить мебель\n{ffffff}2. "cGRAY"Уничтожить мебель"):("Передвинуть мебель\n{ffffff}2. "cGRAY"Убрать мебель в инвентарь дома\n{ffffff}3. "cGRAY"Уничтожить мебель"));
		    return showPlayerDialog(playerid, d_house + 14, 2, "Управление мебелью", gb_string, "Дальше", "Закрыть");
		}
		case d_house + 14: {
		    if( !response ) return OpenFurnitureList( playerid, getData( playerid, "f_page" ) );
		    new id = getData(playerid,"HPanel"), slot = getData( playerid, "f_id" );
		    switch(listitem) {
		        case 0: {
		            if(!Furn::[id][slot][furnState]) {
			            SendClientMessage( playerid, C_GRAY, ""gbAccess"Вы установили мебель в своём доме!");
	              		GetPlayerPos( playerid, Furn::[id][slot][furnX], Furn::[id][slot][furnY], Furn::[id][slot][furnZ]);

						new Float:dist = 2.0,Float:angle;
	     				GetPlayerFacingAngle(playerid,angle);

						Furn::[id][slot][furnX] = Furn::[id][slot][furnX] + dist * - floatsin(angle,degrees);
	     				Furn::[id][slot][furnY] = Furn::[id][slot][furnY] + dist * floatcos(angle,degrees);

						new Float: f_X = Furn::[id][slot][furnX], Float: f_Y = Furn::[id][slot][furnY], Float: f_Z = Furn::[id][slot][furnZ];
						new Float: f_rX = Furn::[id][slot][furnRX], Float: f_rY = Furn::[id][slot][furnRY], Float: f_rZ = Furn::[id][slot][furnRZ];

						Furn::[id][slot][furnObject] = CreateDynamicObject(
							Furn::[id][slot][furnModel], f_X, f_Y, f_Z, f_rX, f_rY, f_rZ,
							HouseInfo[id][hID], HouseInfo[id][hExitInt]);

						EditDynamicObject(playerid, Furn::[id][slot][furnObject]);
						Furn::[id][slot][furnState] = 1;

						format( query,sizeof( query ),"UPDATE `gb_furniture` SET `fX` = %f, `fY` = %f, `fZ` = %f, `frX` = %f, `frY` = %f, `frZ` = %f, `fState` = '%d' WHERE `ID` = %d AND `hID` = %d",
							f_X, f_Y, f_Z, f_rX, f_rY, f_rZ, Furn::[id][slot][furnState], Furn::[id][slot][furnID], HouseInfo[id][hID] );
						mysql_tquery( mysql, query, "", "");
						
						setData( playerid, "f_edit", 1 );
						return true;
					}
					new Float:pos[3];
					GetDynamicObjectPos( Furn::[id][slot][furnObject], pos[0], pos[1], pos[2] );
					printf( "%f, %f, %f",  pos[0], pos[1], pos[2] );
					if( IsPlayerInRangeOfPoint( playerid, 10.0, pos[0], pos[1], pos[2] ) ) { 
						EditDynamicObject( playerid, Furn::[id][slot][furnObject] );
						setData( playerid, "f_edit", 1 );
					}
					else {
						SendMes( playerid, -1, ""gbError"Данный предмет слишком далеко от вас!" );
						SendMes( playerid, -1, ""gbError"Если вы не имеете доступа к предмету, уберите его в инвентарь!" );
					}
					return true;
		        }
		        case 1: {
		            if( Furn::[id][slot][furnState] ) {
			            SendClientMessage(playerid,C_GRAY,""gbAccess"Вы убрали эту мебель в инвентарь дома!");

			            DestroyDynamicObject( Furn::[id][slot][furnObject] );
			            Furn::[id][slot][furnX] = 0;
						Furn::[id][slot][furnY] = 0;
						Furn::[id][slot][furnZ] = 0;
						Furn::[id][slot][furnRX] = 0;
						Furn::[id][slot][furnRY] = 0;
						Furn::[id][slot][furnRZ] = 0;
						Furn::[id][slot][furnState] = 0;
 
						format( query, sizeof query, "UPDATE `gb_furniture` SET `fX` = 0, `fY` = 0, `fZ` = 0, `frX` = 0, `frY` = 0, `frZ` = 0, `fState` = '%d' WHERE `ID` = %d AND `hID` = %d",
								Furn::[id][slot][furnState], Furn::[id][slot][furnID], HouseInfo[id][hID] );
						mysql_query( mysql, query );
					    return OpenFurnitureList( playerid, getData( playerid, "f_page" ) );
				    }
		        }
		    }
			SendClientMessage(playerid, C_GRAY, ""gbAccess"Вы уничтожили эту мебель!");
			DestroyDynamicObject( Furn::[id][slot][furnObject] );
			Furn::[id][slot][furnX] = 0;
			Furn::[id][slot][furnY] = 0;
			Furn::[id][slot][furnZ] = 0;
			Furn::[id][slot][furnRX] = 0;
			Furn::[id][slot][furnRY] = 0;
			Furn::[id][slot][furnRZ] = 0;
			Furn::[id][slot][furnState] = 0;
			format( query, sizeof query,"DELETE FROM `gb_furniture` WHERE `ID` = %d AND `hID` = %d",
					Furn::[id][slot][furnID], HouseInfo[id][hID] );
			mysql_query( mysql, query );
			Furn::[id][slot][furnID] = 0;
			OpenFurnitureList( playerid, getData( playerid, "f_page" ) );
		}
		
		// покупка мебели
		case d_mebelbuy: {
			if( !response ) return true;
			setData( playerid, "playerSelectMebelClass", listitem );
		    setData( playerid, "playerCountMebel", 0 );
		    
		    setData( playerid, "playerSelectApartmentHouse", 1 );
		    new furniture[2];
		    furniture[0] = GetPVarInt(playerid,"playerSelectMebelClass");
		    furniture[1] = GetPVarInt(playerid,"playerCountMebel");
		    SetPlayerCameraPos(playerid, FurnitureShop[furniture[0]][furniture[1]][0], FurnitureShop[furniture[0]][furniture[1]][1], FurnitureShop[furniture[0]][furniture[1]][2]);
	    	SetPlayerCameraLookAt(playerid, FurnitureShop[furniture[0]][furniture[1]][9], FurnitureShop[furniture[0]][furniture[1]][10], FurnitureShop[furniture[0]][furniture[1]][11]);
			for(new i; i != 6; i ++) TextDrawShowForPlayer(playerid, furnitureBuy[i]);
			PlayerTextDrawShow(playerid, furniturePrice[playerid]);

			SelectTextDraw( playerid, 0xd3d3d3FF );
			setData( playerid, "PlayerMenuShow", 6 );
			togglePlayerControllable(playerid,false);
			format( gb_string, sizeof gb_string, "ЦЕНА: ~g~$%d",FurniturePrice[furniture[0]][furniture[1]] * Bizz::[GetPVarInt(playerid,"PlayerBizzID")][bSettings][5]);
			PlayerTextDrawSetString( playerid, furniturePrice[playerid], gb_string );
		}
		case d_mebelbuy + 1:
		{
		    if(!response) return 1;
		    
		}
	}
	
	return true;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	switch( newkeys ) {
		case KEY_WALK: {
			if( IsPlayerInRangeOfPoint( playerid, 1.0, -487.4362,-262.6086,1095.9097 ) ) {
				new slot;
				for(new i; i != cBizz; i++) {
					if(IsPlayerInRangeOfPoint(playerid,50.0,Bizz::[i][bEnter][4],Bizz::[i][bEnter][5],Bizz::[i][bEnter][6]) && GetPlayerVirtualWorld(playerid) == Bizz::[i][bID]) {
						setData( playerid, "PlayerBizzID", i );
						break;
					}
				}
				for( new h; h < MAX_HOUSE; h++ ) {
					if( HouseInfo[h][hID] == Player[playerid][uHouse] ) setData( playerid, "playerSelectHouseFurnitureBuy", h ), slot = 1;
				}
				if( !slot ) return SendMes( playerid, C_GRAY, ""gbError"У вас нет дома!" );
				if( Bizz::[ getData( playerid, "PlayerBizzID" ) ][bUpdate][1] == 0) {
					showPlayerDialog( playerid, d_mebelbuy, 2," ",
						"1. "cGRAY"Кровати\n{ffffff}2. "cGRAY"Столы\n{ffffff}3. "cGRAY"Стулья\
						\n{ffffff}4. "cGRAY"Электроника\n{ffffff}5. "cGRAY"Кухня",
						"Дальше", "Закрыть");
				}		
                else {
					showPlayerDialog( playerid, d_mebelbuy, 2," ",
						"1. "cGRAY"Кровати\n{ffffff}2. "cGRAY"Столы\n{ffffff}3. "cGRAY"Стулья\
						\n{ffffff}4. "cGRAY"Электроника\n{ffffff}5. "cGRAY"Кухня\
						\n{ffffff}6. "cGRAY"Шкафы и Комоды\n{ffffff}7. "cGRAY"Санузел\
						\n{ffffff}8. "cGRAY"Диваны и кресла\n{ffffff}9. "cGRAY"Картины\
						\n{ffffff}10. "cGRAY"Растения", 
						"Дальше", "Закрыть" );
				}
			}
		}
	}
	return true;
}