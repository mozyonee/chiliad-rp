#include <YSI\y_hooks>


stock lockHouse( playerid ) {
	for( new h; h < sizeof HouseInfo; h++ ) {
		if( ( IsPlayerInRangeOfPoint( playerid, 1.5, HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2] ) && HouseInfo[h][hEnterWorld] == GetPlayerVirtualWorld( playerid ) ) 
			|| ( IsPlayerInRangeOfPoint( playerid, 1.5, HouseInfo[h][hExitPos][0], HouseInfo[h][hExitPos][1], HouseInfo[h][hExitPos][2] ) && HouseInfo[h][hID] == GetPlayerVirtualWorld( playerid ) ) ) {
			if( Player[playerid][uHouse] != HouseInfo[h][hID] ) return SendMes( playerid, -1, ""gbError"У вас нет ключей от этого дома!" );
			if( HouseInfo[h][hLock] ) {
				HouseInfo[h][hLock] = 0;
				format( gb_string, sizeof gb_string, "открыл%s дверь дома", Player[playerid][uSex] == 1 ? (""):("a") );
				GameTextForPlayer( playerid, "~g~UNLOCK", 3000, 3 );
			}
			else {
				HouseInfo[h][hLock] = 1;
				format( gb_string, sizeof gb_string, "закрыл%s дверь дома", Player[playerid][uSex] == 1 ? (""):("a") );
				GameTextForPlayer( playerid, "~r~LOCK", 3000, 3 );
			}
			houseUpdate( HouseInfo[h][hID], "hLock", HouseInfo[h][hLock] );
			MeAction( playerid, gb_string, 1 );
		}	
	}
	return true;
}

CMD:apanel( playerid, params[] ) return CallLocalFunction( "cmd_hpanel", "ds", playerid, params );
CMD:hpanel( playerid, params[] ) {
	if( !Player[playerid][uHouse] ) return SendMes( playerid, C_GRAY, ""gbError"У вас нет дома!" );
	new house;
	for( new h; h < MAX_HOUSE; h++ ) {
		if( HouseInfo[h][hID] == GetPlayerVirtualWorld( playerid ) ) {
			house = h; 
			break;
		}	
	}
	if( Player[playerid][uHouse] == HouseInfo[house][hID] 
		&& Player[playerid][uID] == HouseInfo[house][hOwned] ) {
		if( !HouseInfo[house][hInterior] ) {
			showPlayerDialog( playerid, d_house_panel, DIALOG_STYLE_LIST, "Управление квартирой", 
				"1. "cGRAY"Информация о квартире\
				\n{ffffff}2. "cGRAY"Управление мебелью\
				\n{ffffff}3. "cGRAY"Управление сейфом\
				\n{ffffff}4. "cGRAY"Оплата налогов\
				\n{ffffff}5. "cGRAY"Жильцы в квартире", "Далее", "Закрыть" );
		}
		if( HouseInfo[house][hEnterWorld] ) {
			showPlayerDialog( playerid, d_house_panel, DIALOG_STYLE_LIST, "Управление квартирой", 
				"1. "cGRAY"Информация о квартире\
				\n{ffffff}2. "cGRAY"Управление мебелью\
				\n{ffffff}3. "cGRAY"Управление сейфом\
				\n{ffffff}4. "cGRAY"Оплата налогов\
				\n{ffffff}5. "cGRAY"Жильцы в квартире\
				\n{ffffff}6. "cGRAY"Настройка интерьера [ALPHA TEST]", "Далее", "Закрыть" );
		}
		else if( !HouseInfo[house][hEnterWorld] ){
			showPlayerDialog( playerid, d_house_panel, DIALOG_STYLE_LIST, "Управление домом", 
				"1. "cGRAY"Информация о доме\
				\n{ffffff}2. "cGRAY"Управление мебелью\
				\n{ffffff}3. "cGRAY"Управление сейфом\
				\n{ffffff}4. "cGRAY"Оплата налогов дома\
				\n{ffffff}5. "cGRAY"Жильцы в доме\
				\n{ffffff}6. "cGRAY"Настройка интерьера [ALPHA TEST]", "Далее", "Закрыть" );
		}
		setData( playerid, "HPanel", house );
	}
	return true;
}

hook OnPlayerConnect( playerid ) {
	setData( playerid, "House:Evict", -1 );
	return true;
}

new ev_slot[MAX_PLAYERS][MAX_EVICT];

function checkHouseEvict( playerid, h ) {
	clear_massive();
	new rows, fields, slot;
    cache_get_data( rows, fields );
	if( rows ) {
		
		for( new e; e < rows; e++ ) {
			HEvict[playerid][e][ev_ID] = cache_get_field_content_int( e, "uID", mysql );
			if( HEvict[playerid][e][ev_ID] == Player[playerid][uID] ) continue;
			cache_get_field_content( e, "uName", HEvict[playerid][e][ev_Name], mysql, 32 );
			format( vb_string, sizeof vb_string, "%s%d. %s\n", vb_string, slot + 1, HEvict[playerid][e][ev_Name] );
			ev_slot[playerid][slot] = e;
			slot++;			
		}
		if( !slot ) return SendMes( playerid, C_GRAY, ""gbInfo"В вашем доме нет жильцов!" ), CallLocalFunction( "cmd_hpanel", "d", playerid );
		showPlayerDialog( playerid, d_house_panel + 6, DIALOG_STYLE_LIST, "Жильцы дома", vb_string, "Выбор", "Назад" );
	}
	return true;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	new h = getData( playerid, "HPanel" );
	switch( dialogid ) { 
		case d_house_panel: {
			if( !response ) return true;
			switch( listitem ) {
				case 0: {
					format( gb_string, sizeof gb_string, "{ffffff}| Информация о данном доме:"cGRAY"\n\n\
						Номер дома - %d\n\
						Стоимость дома - "cGREEN"$%d\n\n", HouseInfo[h][hID], HouseInfo[h][hPrice]);
					showPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, "Информация о доме", gb_string, "Закрыть", "" );
				}
				case 1: OpenFurnitureList( playerid, 0 );
				case 2: { 
					showPlayerDialog(playerid, d_house_panel + 1, DIALOG_STYLE_LIST, "Управление сейфом", 
						"1. "cGRAY"Информация о сейфе\
						\n{ffffff}2. "cGRAY"Положить в сейф\
						\n{ffffff}3. "cGRAY"Взять из сейфа", "Далее", "Назад");
				}
				case 3: {
					format( gb_string, sizeof gb_string,"{ffffff}Введите в окно кол-во дней оплаты дома:\n\n\
						Оплаченно до - "cBLUE"%s{ffffff}\n\
						Стоимость "cBLUE"1{ffffff} дня - "cGREEN"$%d\n\n| Деньги при оплате дома снимаются с рук.", 
						date( "%dd.%mm.%yy", HouseInfo[h][hHouseTaxTime] + ( HouseInfo[h][hHouseTax] * 86400 ) ), 
						S::[0][sHouses] );
				    
					showPlayerDialog( playerid, d_house_panel + 5, DIALOG_STYLE_INPUT, "Оплата налогов дома", 
						gb_string, "Оплата", "Назад" );
				}
				case 4: {
					format( query, sizeof query, "SELECT * FROM `gb_users` WHERE `uHouse` = '%d'", Player[playerid][uHouse] );
					mysql_tquery( mysql, query, "checkHouseEvict", "dd", playerid, h );
					
				}
				case 5: {
					showPlayerDialog( playerid, d_house_panel + 10, DIALOG_STYLE_LIST, "Настройка интерьера",
						"1. Настройка стен\n2. Настройка пола\n3. Настройка потолка\n4. Настройка межкомнатных дверей", "Выбор", "Назад" );
				}
			}
		}
		case d_house_panel + 1: {
			if( !response ) return CallLocalFunction( "cmd_hpanel", "d", playerid );
			switch( listitem ) {
				case 0: {
					format( gb_string, sizeof gb_string,"{ffffff}В сейфе вашего дома - "cGRAY"$%d",HouseInfo[h][hMoney]);
			        showPlayerDialog( playerid, d_house_panel + 2, DIALOG_STYLE_MSGBOX, "Информация о сейфе", gb_string, "Назад", "" );
				}
				case 1: {
					showPlayerDialog( playerid, d_house_panel + 3, DIALOG_STYLE_INPUT, 
						"Положить в сейф",
						"{ffffff}Введите кол-во денег которое хотите положить в сейф:", "Далее", "Закрыть" );
				}
				case 2: {
					showPlayerDialog( playerid, d_house_panel + 4, DIALOG_STYLE_INPUT,
						"Достать из сейфа",
						"{ffffff}Введите кол-во денег которое хотите достать из сейфа:",
						"Далее", "Закрыть" );
				}
			}
		}
		case d_house_panel + 2: {
			showPlayerDialog(playerid, d_house_panel + 1, DIALOG_STYLE_LIST, "Управление сейфом", 
				"1. "cGRAY"Информация о сейфе\
				\n{ffffff}2. "cGRAY"Положить в сейф\
				\n{ffffff}3. "cGRAY"Взять из сейфа", "Далее", "Назад");
		}
		case d_house_panel + 3: {
			if( response ) {
				if( strval( inputtext) < 1 || Player[playerid][uMoney] < strval( inputtext ) ) {
					showPlayerDialog( playerid, d_house_panel + 3, DIALOG_STYLE_INPUT, 
						"Положить в сейф",
						"{ffffff}Введите кол-во денег которое хотите положить в сейф:", "Далее", "Закрыть" );
					return true;
				}
				logs( 9, "положил в дом", Player[playerid][uID], HouseInfo[h][hID], strval( inputtext ) );
				HouseInfo[h][hMoney] += strval( inputtext );
				GivePlayerCash( playerid, -strval( inputtext ) );
				houseUpdate( HouseInfo[h][hID], "hMoney", HouseInfo[h][hMoney] );
				SendMes( playerid, C_GRAY, ""gbInfo"Вы положили $%d в сейф дома", strval( inputtext ) );
			}
			showPlayerDialog(playerid, d_house_panel + 1, DIALOG_STYLE_LIST, "Управление сейфом", 
				"1. "cGRAY"Информация о сейфе\
				\n{ffffff}2. "cGRAY"Положить в сейф\
				\n{ffffff}3. "cGRAY"Взять из сейфа", "Далее", "Назад");
		}
		case d_house_panel + 4: {
			if( response ) {
				if( HouseInfo[h][hMoney] < strval( inputtext ) ||
					strval( inputtext) < 1 ) {
					showPlayerDialog(playerid, d_house_panel + 1, DIALOG_STYLE_LIST, "Управление сейфом", 
						"1. "cGRAY"Информация о сейфе\
						\n{ffffff}2. "cGRAY"Положить в сейф\
						\n{ffffff}3. "cGRAY"Взять из сейфа", "Далее", "Назад");
					return SendMes( playerid, C_GRAY, ""gbError"В сейфе нет столько денег!" );
				}
				logs( 10, "взял из дома", Player[playerid][uID], HouseInfo[h][hID], strval( inputtext ) );
				HouseInfo[h][hMoney] -= strval( inputtext );
				GivePlayerCash( playerid, strval( inputtext ) );
				houseUpdate( HouseInfo[h][hID], "hMoney", HouseInfo[h][hMoney] );
				SendMes( playerid, C_GRAY, ""gbInfo"Вы взяли $%d в сейф дома", strval( inputtext ) );
			}
			showPlayerDialog(playerid, d_house_panel + 1, DIALOG_STYLE_LIST, "Управление сейфом", 
				"1. "cGRAY"Информация о сейфе\
				\n{ffffff}2. "cGRAY"Положить в сейф\
				\n{ffffff}3. "cGRAY"Взять из сейфа", "Далее", "Назад");
		}
		case d_house_panel + 5: {
			if( !response ) return CallLocalFunction( "cmd_hpanel", "d", playerid );
			if( strval( inputtext ) * S::[0][sHouses] > GetPlayerMoney( playerid ) ||
				!strval( inputtext ) || strval( inputtext ) < 0 
				|| strval( inputtext) > 120 ) {
				format( gb_string, sizeof gb_string,"{ffffff}Введите в окно кол-во дней оплаты дома:\n\n\
					Оплаченно до - "cBLUE"%s{ffffff}\n\
					Стоимость "cBLUE"1{ffffff} дня - "cGREEN"$%d\n\n| Деньги при оплате дома снимаются с рук.\
					\n"cRED"| Максимальное количество дней на оплату - 120.", 
					date( "%dd.%mm.%yy", HouseInfo[h][hHouseTaxTime] + ( HouseInfo[h][hHouseTax] * 86400 ) ), 
					S::[0][sHouses] );
				    
				showPlayerDialog( playerid, d_house_panel + 5, DIALOG_STYLE_INPUT, "Оплата налогов дома", 
					gb_string, "Оплата", "Назад" );
				return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно денег для оплаты!" );
			}
			
			//HouseInfo[h][hHouseTaxTime] = gettime();
			HouseInfo[h][hHouseTax] += strval( inputtext );
			houseUpdate( HouseInfo[h][hID], "hHouseTaxTime", HouseInfo[h][hHouseTaxTime] );
			houseUpdate( HouseInfo[h][hID], "hHouseTax", HouseInfo[h][hHouseTax] );
			
			GivePlayerCash( playerid, -( strval( inputtext ) * S::[0][sHouses] ) );
			SendMes( playerid, C_GRAY, ""gbInfo"Вы успешно оплатили налоги дома" );
			CallLocalFunction( "cmd_hpanel", "d", playerid );
		}
		case d_house_panel + 6: {
			if( !response ) return CallLocalFunction( "cmd_hpanel", "d", playerid );
			setData( playerid, "HEvict:List", ev_slot[playerid][listitem] );
			format( gb_string, sizeof gb_string, "Управлением жильцом | %s", HEvict[playerid][ ev_slot[playerid][listitem] ][ev_Name] );
			
			showPlayerDialog( playerid, d_house_panel + 7, DIALOG_STYLE_LIST, gb_string, "1. Выселить жильца из дома", "Выбор", "Назад" );
			
			//HEvict[playerid][listitem][ev_ID]
		}
		case d_house_panel + 7: {
			if( !response ) {
				format( query, sizeof query, "SELECT * FROM `gb_users` WHERE `uHouse` = '%d'", Player[playerid][uHouse] );
				return mysql_tquery( mysql, query, "checkHouseEvict", "dd", playerid, h );
			}
			new evict = getData( playerid, "HEvict:List" ),
				ev_name[32];
			format( ev_name, sizeof ev_name, "%s", 	HEvict[playerid][evict][ev_Name] );
			switch( listitem ) {
				case 0: { // Выселить
					format( gb_string, sizeof gb_string, "Вы действительно хотите выселить игрока %s?", ev_name );
					showPlayerDialog( playerid, d_house_panel + 8, DIALOG_STYLE_MSGBOX, "Выселение жильца", gb_string, "Принять", "Отменить" );
				}
			}
		}
		case d_house_panel + 8: {
			if( !response ) {
				new evict = getData( playerid, "HEvict:List" );
				format( gb_string, sizeof gb_string, "Управлением жильцом | %s", HEvict[playerid][evict][ev_Name] );
				showPlayerDialog( playerid, d_house_panel + 7, DIALOG_STYLE_LIST, gb_string, "1. Выселить жильца из дома", "Выбор", "Назад" );
				return SendMes( playerid, C_GRAY, "Вы отказались выселять игрока!" );
			}
			new evict = getData( playerid, "HEvict:List" ),
				ev_id = HEvict[playerid][evict][ev_ID],
				ev_name[32];
			format( ev_name, sizeof ev_name, "%s", 	HEvict[playerid][evict][ev_Name] );
			format( query, sizeof query, "UPDATE `gb_users` SET `uHouse` = '0' WHERE `uID` = '%d'", ev_id );
			mysql_query( mysql, query );
			foreach(new i : Player) {
				if( Player[i][uID] == ev_id ) {
					SendMes( i, C_GRAY, "Хозяин дома %s выслелил вас из своего дома!", Player[playerid][uName] );
					Player[i][uHouse] = 0;
					break;
				}
			}
			SendMes( playerid, C_GRAY, "Вы успешно выселили игрока %s из своего дома!", ev_name );
			CallLocalFunction( "cmd_hpanel", "d", playerid );
		}
		case d_house_panel + 10: {
			if( !response ) return CallLocalFunction( "cmd_hpanel", "d", playerid ); 
			if( listitem == 3 ) {
				switch( HouseInfo[h][hInterior] ) {
					case 1,2,3: {
						CallLocalFunction( "cmd_hpanel", "d", playerid ); 
						return SendMes( playerid, C_GRAY, "В вашем доме нет дверей!" );
					}
				}
			}			
			
			loadPlayerTextureObject( playerid, listitem + 1 );	
		}
	}
	return true;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) { 
	new evict = getData( playerid, "House:Evict" );
	if( PRESSED(KEY_NO) ) {
		if( evict != -1 ) {
			SendMes( playerid, C_GRAY, "Вы отказались подселяется в дом к игроку %s", Player[ evict ][uName] );
			SendMes( evict, C_GRAY, "Игрок %s отказался подселятся к вам в дом!", Player[playerid][uName] );
			setData( playerid, "House:Evict", -1 );
		}		
	}
	else if( PRESSED( KEY_YES ) ) {
		if( evict != -1 ) {
			Player[playerid][uHouse] = Player[evict][uHouse];
			userUpdate( playerid, "uHouse", Player[playerid][uHouse] );
			SendMes( evict, C_GRAY, ""gbInfo"Вы успешно подселили к себе игрока %s", Player[playerid][uName] );
			SendMes( playerid, C_GRAY, ""gbInfo"Вы успешно подселились к игроку %s", Player[evict][uName] );
			setData( playerid, "House:Evict", -1 );
		}
	}
	return true;
}

CMD:evict( playerid, params[] ) {
	if( !Player[playerid][uHouse] ) return SendMes( playerid, C_GRAY, ""gbError"У вас нет дома!" );
	if( sscanf( params, "u", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /evict [ id ]" );
	if( GetDistanceBetweenPlayers( playerid, params[0] ) > 3.0 || GetPlayerVirtualWorld( playerid ) != GetPlayerVirtualWorld( params[0] ) ) return SendMes( playerid, C_GRAY, ""gbError"Данного игрока нет рядом с вами!");
	if( Player[ params[0] ][uHouse] ) return SendMes( playerid, C_GRAY, ""gbError"У игрока уже есть дом в котором он проживает!" );
	if( playerid == params[0] ) return SendMes( playerid, C_GRAY, ""gbError"Вы не можете подселить себя!" );
	for( new h; h < sizeof HouseInfo; h++ ) {
		if( HouseInfo[h][hID] == Player[playerid][uHouse] ) {
			if( HouseInfo[h][hOwned] == Player[playerid][uID] ) {
				setData( params[0], "House:Evict", playerid );
				SendMes( playerid, C_WHITE, ""gbInfo"Вы предложили игроку "cBLUE"%s"cWHITE" поселиться у Вас в доме.", Player[params[0]][uName] );
				SendMes( params[0], C_GRAY, ""gbInfo"Игрок "cBLUE"%s"cWHITE" хочет поселить Вас в его дом.", Player[playerid][uName] );
				SendMes( params[0], C_GRAY, ""gbInfo"Нажмите {33AA33}Y{FAEBD7}, чтобы согласиться или {FF6347}N{FAEBD7}, чтобы отказаться." );
				return true;
			}
		}
	}
	SendMes( playerid, C_GRAY, ""gbError"Вы не владелец дома!" );
	return true;
}

CMD:hevict( playerid, params[] ) {
	if( !Player[playerid][uHouse] ) return SendMes( playerid, C_GRAY, ""gbInfo"У вас нет дома" );
	for( new i; i < sizeof HouseInfo; i++ ) {
		if( HouseInfo[i][hID] == Player[playerid][uHouse] ) {
			if( HouseInfo[i][hOwned] == Player[playerid][uID] ) {
				return SendMes( playerid, -1, ""gbError"Ошибка, вы являетесь владельцем дома и не можете выселиться!" );
			}
			break;
		}
	}
	Player[playerid][uHouse] = 0;
	userUpdate( playerid, "uHouse", 0 );
	SendMes( playerid, C_GRAY, ""gbAccess"Вы успешно выселились из дома!" );
	return true;
}