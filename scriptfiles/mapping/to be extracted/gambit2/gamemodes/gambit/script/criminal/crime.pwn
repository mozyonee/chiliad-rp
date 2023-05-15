#include <YSI\y_hooks>

hook OnGameModeInit() {
	mysql_tquery( mysql, "SELECT * FROM `gb_crime` ORDER BY `crID`", "loadCrime", "" );
	return true;
}

hook OnPlayerConnect( playerid ) {
	setData( playerid, "Crime:ID", -1 );
	return true;
}

CMD:tp_bar( playerid, params[] ) {
	SetPlayerPos( playerid, 566.0916, 79.8144, 1133.9813 );
	return true;
}

function loadCrime() {
	new rows, fields;
    cache_get_data( rows, fields);
    if( rows ) {
		for( new cr; cr < rows; cr++ ) {
			if( !CrimeInfo[ cr ][ crID ] ) {
				CrimeInfo[ cr ][ crID ] = cache_get_field_content_int( cr, "crID", mysql );
				CrimeInfo[ cr ][ crType ] = cache_get_field_content_int( cr, "crType", mysql );
				CrimeInfo[ cr ][ crInt ] = cache_get_field_content_int( cr, "crInt", mysql );
				cache_get_field_content( cr, "crName", CrimeInfo[ cr ][ crName ], mysql, 128 );
				cache_get_field_content( cr, "crEnter", gb_string, mysql, 128 ), sscanf( gb_string, "p<,>a<f>[4]", CrimeInfo[ cr ][crPos] );
				cache_get_field_content( cr, "crSettings", gb_string, mysql, 32 ), sscanf( gb_string, "p<,>a<i>[10]", CrimeInfo[ cr ][crSettings] );
				if( CrimeInfo[ cr ][crPos][0] != 0.0 ) {
					CrimeInfo[ cr ][crPickup] = CreateDynamicPickup( 19132, 23, 
						CrimeInfo[ cr ][crPos][0], CrimeInfo[ cr ][crPos][1], CrimeInfo[ cr ][crPos][2] );
					CrimeInfo[ cr ][crText] = CreateDynamic3DTextLabel( "ALT", C_BLUE, 
						CrimeInfo[ cr ][crPos][0], CrimeInfo[ cr ][crPos][1], CrimeInfo[ cr ][crPos][2], 5.0, INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1, -1 );
				}
				
				format( query, sizeof query, "SELECT * FROM `gb_crime_rank` WHERE `raCrime` = '%d' ORDER BY `raRank`", CrimeInfo[ cr ][crID] );
				mysql_tquery( mysql, query, "loadCrimeRank", "d", cr );
				
				format( query, sizeof query, "SELECT * FROM `gb_crime_veh` WHERE `vCrime` = '%d'", CrimeInfo[ cr ][crID] );
				mysql_tquery( mysql, query, "loadCrimeVeh", "d", cr );
			}
		}
	}
	printf("[SYSTEM] Криминальные структуры загруженны - [%d]", rows );
	return true;
}

function loadCrimeRank( crime ) {
	new rows, fields;
    cache_get_data( rows, fields);
    if( rows ) {
		for( new cr; cr < rows; cr++ ) {
			if( !CrimeRank[crime][cr][raID] ) {
				CrimeRank[crime][cr][raID] = cache_get_field_content_int( cr, "raID", mysql );
				CrimeRank[crime][cr][raCrime] = cache_get_field_content_int( cr, "raCrime", mysql );
				CrimeRank[crime][cr][raRank] = cache_get_field_content_int( cr, "raRank", mysql );
				cache_get_field_content( cr, "raName", CrimeRank[crime][ cr ][ raName ], mysql, 64 );
				cache_get_field_content( cr, "raSettings", gb_string, mysql, 64 ), sscanf( gb_string, "p<,>a<i>[20]", CrimeRank[crime][ cr ][ raSettings ] );
			}
		}	
	}
	//printf("Ранги криминальных структур загруженны - [%d]", rows );
	return true;
}


CMD:mpanel( playerid, params[] ) {
	if( !Player[playerid][uCrimeL] ) return SendMes( playerid, -1, ""gbError"Данная команда доступна только лидеру!" );
	setData( playerid, "Crime:ID", getCrimeID( Player[playerid][uCrimeL] ) );
	showCrimeMenu( playerid, 1 );
	return true;
}

stock showCrimeMenu( playerid, type ) {
	clear_massive();
	new list, id = getData( playerid, "Crime:ID" );
	switch( type ) {
		case 1: {// mpanel
			format( vb_string, sizeof vb_string, 
				"1. Информация\
				\n2. Информаторы\
				\n3. Управление рангами\
				\n4. Управление участниками\
				\n5. Управление транспортом" );
			format( gb_string, sizeof gb_string, "[%s] %s", crime_type[ CrimeInfo[id][crType] ], CrimeInfo[id][crName] );
			showPlayerDialog( playerid, d_crime, DIALOG_STYLE_LIST, gb_string, vb_string, "Выбор", "Закрыть" );
		}
		case 2: {
			for( new rank; rank < MAX_RANK; rank++ ) {
				if( CrimeRank[id][rank][raCrime] ) {
					format( vb_string, sizeof vb_string, "%s%d. %s\n", vb_string, CrimeRank[id][rank][raRank], CrimeRank[id][rank][raName] );
					list_rank[playerid][list] = rank;
					list++;
				}
			}
			setData( playerid, "Crime:RankList", list );
			strcat( vb_string, "Добавить ранг" );
			showPlayerDialog( playerid, d_crime + 2, DIALOG_STYLE_LIST, "Управление рангами", vb_string, "Выбрать", "Назад" );
		}
		case 3: {
			format( vb_string, sizeof vb_string, "1. Список всех участников\n2. Управление участником" );
			showPlayerDialog( playerid, d_crime + 6, DIALOG_STYLE_LIST, "Управление участниками", vb_string, "Выбор", "Назад" );
		}
		case 4: { 
			format( vb_string, sizeof vb_string, "1. Зареспавнить весь имеющийся транспорт\
				\n2. Список транспорта" );
			showPlayerDialog( playerid, d_crime + 8, DIALOG_STYLE_LIST, "Управление транспортом", vb_string, "Выбор", "Назад" );	
		}
	}
	return true;
}

function getCM( playerid, id ) {
	new rows, q; cache_get_data( rows, q );
	//setData( playerid, "Crime:Members", rows );
	format( vb_string, sizeof vb_string, 
		"\
		{ffffff}Тип криминальной структуры: %s\n\
		{ffffff}Название: %s\n\
		{ffffff}Кол-во участников: %d", 
		crime_type[ CrimeInfo[id][crType] ], 
		CrimeInfo[id][crName],
		rows );
	format( gb_string, sizeof gb_string, "%s", CrimeInfo[id][crName] );
	showPlayerDialog( playerid, d_crime + 1, DIALOG_STYLE_MSGBOX, gb_string, vb_string, "Назад", "" );
	return true;
}

function insertRank( playerid, i, id ) {
	CrimeRank[id][i][raID] = cache_insert_id();
	CrimeRank[id][i][raCrime] = CrimeInfo[id][crID];
	SendMes( playerid, -1, ""gbInfo"Вы успешно добавили %d ранг", CrimeRank[id][i][raRank] );
	showCrimeMenu( playerid, 2 );
	return true;
}

function crimeMemberList( playerid, id ) {
	clear_massive();
	new rows, f, name[32], rank, rname[64]; 
	cache_get_data( rows, f );
	format( vb_string, sizeof vb_string, "{ffffff}Участники криминальной организации %s\n\n", CrimeInfo[id][crName] );
	if( rows ) {
		for( new i; i < rows; i++ ) {
			cache_get_field_content( i, "uName", name, mysql, 32 );
			rank = cache_get_field_content_int( i, "uCrimeRank", mysql );
			if( rank ) format( rname, sizeof rname, "%s", CrimeRank[id][ rank - 1 ][raName] );
			else format( rname, sizeof rname, "не установлен" );
			
			format( gb_string, sizeof gb_string, "\n%d. %s [ %s ]", i + 1, name, rank == 0 ? ("Ранг не установлен"):(rname) );
			strcat( vb_string, gb_string );
		}
		showPlayerDialog( playerid, d_crime + 1, DIALOG_STYLE_MSGBOX, "Список участников", vb_string, "Закрыть", "" );
	}
	return true;
}

function selectCrimeMember( playerid, id ) {
	clear_massive();
	new rows, f, uid; 
	cache_get_data( rows, f );
	if( rows ) {
		uid = cache_get_field_content_int( 0, "uID", mysql ), setData( playerid, "Crime:uID", uid );
		cache_get_field_content( 0, "uName", gb_string, mysql, 32 ), setDataText( playerid, "Crime:uName", gb_string );
		cache_get_field_content( 0, "uCrimeSet", gb_string, mysql, 64 ), setDataText( playerid, "Crime:uCrimeSet", gb_string );
		
		return showMemberInfo( playerid );
	}
	SendMes( playerid, -1, ""gbError"Данный игрок не найден, или он не состоит в вашей организации!" );
	showPlayerDialog( playerid, d_crime + 7, DIALOG_STYLE_INPUT, "Управление участником | Укажите ник участника", "{ffffff}Введите в окошко ник участника которым вы хотите управлять", "Ввод", "Назад" );
	return true;
}

new crime_settings[MAX_PLAYERS][10];

#define CRIME_INVITE  		0
#define CRIME_UNINVITE 		1
#define CRIME_CHANGERANK	2
#define CRIME_USECAR		3

stock showMemberInfo( playerid ) {
	new name[32], uCrimeSettings[64];
	getDataText( playerid, "Crime:uName", name, 32 );
	getDataText( playerid, "Crime:uCrimeSet", uCrimeSettings, 64 );
	sscanf( uCrimeSettings, "p<,>a<d>[10]", crime_settings[playerid] );
	format( gb_string, sizeof gb_string, "Управление участником %s", name );
	format( vb_string, sizeof vb_string, 
		"1. Сменить ранг\
		\n2. Выгнать из организации\
		\n3. Возможность принимать в орг. 	| %s\
		\n4. Возможность выгонять из орг. 	| %s\
		\n5. Возможность изменять ранги   	| %s\
		\n6. Возможность управлять тс		| %s",
		crime_settings[playerid][CRIME_INVITE] == 0 ? ("Нет"):("Да"),
		crime_settings[playerid][CRIME_UNINVITE] == 0 ? ("Нет"):("Да"),
		crime_settings[playerid][CRIME_CHANGERANK] == 0 ? ("Нет"):("Да"),
		crime_settings[playerid][CRIME_USECAR] == 0 ? ("Нет"):("Да")
	);	
		
	showPlayerDialog( playerid, d_crime + 10, DIALOG_STYLE_LIST, gb_string, vb_string, "Выбор", "Выйти" ); 
	return true;
}

stock showRankSettings( playerid ) {
	new id = getData( playerid, "Crime:ID" ), rank = getData( playerid, "Crime:RankListID" );
	format( gb_string, sizeof gb_string, "Управление рангом %s [%d]", CrimeRank[id][rank][raName], rank );
	format( vb_string, sizeof vb_string, 
		"1. Возможность принимать в организацию 	| %s\
		\n2. Возможность выгонять из организации  	| %s\
		\n3. Возможность изменять ранги		| %s\
		\n4. Возможность использовать тс		| %s",
		CrimeRank[id][rank][raSettings][CRIME_INVITE] ? ("Да"):("Нет"),
		CrimeRank[id][rank][raSettings][CRIME_UNINVITE] ? ("Да"):("Нет"),
		CrimeRank[id][rank][raSettings][CRIME_CHANGERANK] ? ("Да"):("Нет") ,
		CrimeRank[id][rank][raSettings][CRIME_USECAR] ? ("Да"):("Нет"));
	showPlayerDialog( playerid, d_crime + 13, DIALOG_STYLE_LIST, gb_string, vb_string, "Выбор", "Назад" );	
	return true;
}
		
hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	new id = getData( playerid, "Crime:ID" );
	switch( dialogid ) {
		case d_crime - 1: {
			if(!response) {
				delData( playerid, "Crime:Invite" );
				SendMes( playerid, -1, ""gbInfo"Вы отказались вступать в организацию!" );
				return true;
			}
			new crime = getData( playerid, "Crime:Invite" );
			delData( playerid, "Crime:Invite" );
			
			userUpdate( playerid, "uCrimeM", crime );
			userUpdate( playerid, "uCrimeRank", 1 );
			
			Player[playerid][uCrimeM] = crime, Player[playerid][uCrimeRank] = 1;
			
			format( gb_string,sizeof gb_string,"[R] %s вступает в организацию.", Player[playerid][uName]);
			foreach(new i : Player) {
				if( Player[i][uCrimeM] == crime ) SendClientMessage(i, -1, gb_string);
			}
		}
		case d_crime: { // mpanel
			if(!response) return true;
			switch( listitem ) {
				case 0: {// Информация о организации
					format( query, sizeof query, "SELECT * FROM `gb_users` WHERE `uCrimeM` = '%d'", CrimeInfo[id][crID] ); 
					mysql_tquery( mysql, query, "getCM", "dd", playerid, id ); 
					
				}
				case 1: {
					SendMes( playerid, -1, ""gbError"Извините данная функция не работает." ), 
					showCrimeMenu( playerid, 1 );
				}
				case 2: {// Ранги
					showCrimeMenu( playerid, 2 );
				}
				case 3: {// Управление участниками
					showCrimeMenu( playerid, 3 );
				}
				case 4: {// Управление транспортом
					showCrimeMenu( playerid, 4 );
				}
			}
		}
		case d_crime + 1: showCrimeMenu( playerid, 1 );// Кнопка в главное меню
		case d_crime + 2: {
			if( !response ) return showCrimeMenu( playerid, 1 ); 
			new rank = list_rank[playerid][listitem];
			setData( playerid, "Crime:RankListID", rank );
			if( listitem == getData( playerid, "Crime:RankList" ) ) {
				format( gb_string, sizeof gb_string, "Вы собираетесь добавить %d ранг для вашей криминальной структуры\
					\nУкажите название ранга в окошке", getData( playerid, "Crime:RankList" ) + 1 );
				showPlayerDialog( playerid, d_crime + 3, DIALOG_STYLE_INPUT, "Добавление ранга", gb_string, "Ввод", "Назад" );
				return true;
			}
			format( gb_string, sizeof gb_string, "[%d] %s", CrimeRank[id][rank][raRank], CrimeRank[id][rank][raName] );
			format( vb_string, sizeof vb_string, "1. Изменить название\n2. Изменить параметры\n3. Удалить ранг" );
			showPlayerDialog( playerid, d_crime + 4, DIALOG_STYLE_LIST, gb_string, vb_string, "Выбор", "Назад" );
		}
		case d_crime + 3: {
			if( !response ) return showCrimeMenu( playerid, 2 ); 
			if( !strlen( inputtext ) ) {
				format( gb_string, sizeof gb_string, "Вы собираетесь добавить %d ранг для вашей криминальной структуры\
					\nУкажите название ранга в окошке", getData( playerid, "Crime:RankList" ) + 1 );
				return showPlayerDialog( playerid, d_crime + 3, DIALOG_STYLE_INPUT, "Добавление ранга", gb_string, "Ввод", "Назад" );
			}
			for( new i; i < MAX_RANK; i++ ) {
				if( !CrimeRank[id][i][raID] ) {
					format( CrimeRank[id][i][raName], 64, "%s", inputtext );
					CrimeRank[id][i][raRank] = getData( playerid, "Crime:RankList" ) + 1;
					format( query, sizeof query, "INSERT INTO `gb_crime_rank` ( `raName`, `raRank`, `raCrime` ) VALUES ( '%s', '%d', '%d' )",
						CrimeRank[id][i][raName], CrimeRank[id][i][raRank], CrimeInfo[id][crID] );
					mysql_tquery( mysql, query, "insertRank", "ddd", playerid, i, id );	
					break;
				}
			}	
		}
		case d_crime + 4: {
			if( !response ) return showCrimeMenu( playerid, 2 );
			new rank = getData( playerid, "Crime:RankListID" );
			switch( listitem ) {
				case 0: {
					format( gb_string, sizeof gb_string, "[%d] %s | Изменить название", CrimeRank[id][rank][raRank], CrimeRank[id][rank][raName] );
					format( vb_string, sizeof vb_string, "{ffffff}Укажите новое название для %d ранга", CrimeRank[id][rank][raRank] );
					showPlayerDialog( playerid, d_crime + 5, DIALOG_STYLE_INPUT, gb_string, vb_string, "Ввод", "Назад" );
				}
				case 1: showRankSettings( playerid );
				case 2: {
					if( rank == getData( playerid, "Crime:RankList" ) - 1 ) {
						SendMes( playerid, -1, ""gbError"Вы успешно удалили %d ранг", CrimeRank[id][rank][raRank] );
						format( query, sizeof query, "DELETE FROM `gb_crime_rank` WHERE `raID` = '%d'", 
							CrimeRank[id][rank][raID] );
						mysql_query( mysql, query );
						CrimeRank[id][rank][raID] = 0, CrimeRank[id][rank][raCrime] = 0,
						CrimeRank[id][rank][raRank] = 0;
						showCrimeMenu( playerid, 2 );
						return true;
					}
					SendMes( playerid, -1, ""gbError"Вы можете удалить только последний ранг вашей организации!" );
					format( gb_string, sizeof gb_string, "[%d] %s", CrimeRank[id][rank][raRank], CrimeRank[id][rank][raName] );
					format( vb_string, sizeof vb_string, "1. Изменить название\n2. Изменить параметры\n3. Удалить ранг" );
					showPlayerDialog( playerid, d_crime + 4, DIALOG_STYLE_LIST, gb_string, vb_string, "Выбор", "Назад" );
				}
			}
		}
		
		case d_crime + 5: {
			if( !response ) return showCrimeMenu( playerid, 2 );
			new rank = getData( playerid, "Crime:RankListID" );
			if( !strlen( inputtext ) ) {
				format( gb_string, sizeof gb_string, "[%d] %s | Изменить название", CrimeRank[id][rank][raRank], CrimeRank[id][rank][raName] );
				format( vb_string, sizeof vb_string, "{ffffff}Укажите новое название для %d ранга", CrimeRank[id][rank][raRank] );
				showPlayerDialog( playerid, d_crime + 5, DIALOG_STYLE_INPUT, gb_string, vb_string, "Ввод", "Назад" );
				return true;
			}
			format( CrimeRank[id][rank][raName], 64, "%s", inputtext );
			SendMes( playerid, -1, ""gbInfo"Вы успешно сменили название %d ранга на %s", CrimeRank[id][rank][raRank], CrimeRank[id][rank][raName] );
			format( query, sizeof query, "UPDATE `gb_crime_rank` SET `raName` = '%s' WHERE `raID` = '%d'",
				CrimeRank[id][rank][raName], CrimeRank[id][rank][raID] );
			mysql_query( mysql, query );	
			showCrimeMenu( playerid, 2 );	
		}
		
		case d_crime + 6: {
			if( !response) return showCrimeMenu( playerid, 1 );
			switch( listitem ) {
				case 0: {
					format( query, sizeof query, "SELECT * FROM `gb_users` WHERE `uCrimeM` = '%d'", CrimeInfo[id][crID] );
					mysql_tquery( mysql, query, "crimeMemberList", "dd", playerid, id );
				}
				case 1: {
					//SendMes( playerid, -1, ""gbError"Извините данная функция не работает." ), 
					//showCrimeMenu( playerid, 3 );
					showPlayerDialog( playerid, d_crime + 7, DIALOG_STYLE_INPUT, "Управление участником | Укажите ник участника", "{ffffff}Введите в окошко ник участника которым вы хотите управлять", "Ввод", "Назад" );
				}
			}
		}
		case d_crime + 7: {
			if( !response) return showCrimeMenu( playerid, 3 );
			if( !strlen( inputtext ) ) return showPlayerDialog( playerid, d_crime + 7, DIALOG_STYLE_INPUT, "Управление участником | Укажите ник участника", "{ffffff}Введите в окошко ник участника которым вы хотите управлять", "Ввод", "Назад" );
			
			format( query, sizeof query, "SELECT * FROM `gb_users` WHERE `uName` = '%s' AND `uCrimeM` = '%d'",
				inputtext, CrimeInfo[id][crID] );
			mysql_tquery( mysql, query, "selectCrimeMember", "dd", playerid, id );	
		}
		
		case d_crime + 8: { 
			if( !response) return showCrimeMenu( playerid, 1 );
			switch( listitem ) {
				//case 0: SendMes( playerid, -1, ""gbInfo"Извините данная функция не работает." );
				case 0: {
					for( new v; v < MAX_CRIME_CAR; v++ ) {
						if( CrimeCar[id][v][cr_vCrime] == CrimeInfo[id][crID] ) {
							if( !IsVehicleOccupied( CrimeCar[id][v][cr_vCar] ) ) {
								setVehiclePos( CrimeCar[id][v][cr_vCar], 
									CrimeCar[id][v][cr_vPos][0], CrimeCar[id][v][cr_vPos][1], CrimeCar[id][v][cr_vPos][2] ), 
								SetVehicleZAngle( CrimeCar[id][v][cr_vCar], CrimeCar[id][v][cr_vPos][3] );
							}
						}
					}
					SendMes( playerid, -1, ""gbInfo"Весь транспорт организации был зареспавнен!" );
				}
				case 1: {
					format( vb_string, sizeof vb_string, "{ffffff}\tСписок транспорта в вашей организации\n\n" );
					for( new v; v < MAX_CRIME_CAR; v++ ) {
						if( CrimeCar[id][v][cr_vCrime] == CrimeInfo[id][crID] ) {
							format( vb_string, sizeof vb_string, "%s%s \t\t[{%06x}*{ffffff}][{%06x}*{ffffff}]\n",  
								vb_string, CarNames[ CrimeCar[id][v][cr_vModel] - 400 ],
								VehicleColoursTableRGBA[ CrimeCar[id][v][cr_vColor][0] ] >>> 8,
								VehicleColoursTableRGBA[ CrimeCar[id][v][cr_vColor][1] ] >>> 8 );
						}
					}
					showPlayerDialog( playerid, d_crime + 9, DIALOG_STYLE_MSGBOX, "Список транспорта", vb_string, "Закрыть", "" );
				}
			}
		}
		case d_crime + 9: showCrimeMenu( playerid, 4 );
		
		case d_crime + 10: {
			if( !response ) {
				delData( playerid, "Crime:uID" ), delData( playerid, "Crime:uCrimeSet" ),
				delData( playerid, "Crime:uName" );
				return showCrimeMenu( playerid, 3 );
			}	
			switch( listitem ) {
				case 0: {
					showPlayerDialog( playerid, d_crime + 12, DIALOG_STYLE_INPUT, "Изменение ранга", 
						"{ffffff}Укажите новый ранг игрока в окошко", "Ввод", "Закрыть" );
				}
				case 1: {
					if( getData( playerid, "Crime:uID" ) == Player[playerid][uID] ) {
						SendMes( playerid, -1, ""gbError"Вы не можете выгнать себя!" );
						return showMemberInfo( playerid );
					}	
					getDataText( playerid, "Crime:uName", query, 32 );
					format( gb_string, sizeof gb_string, "{ffffff}Вы действительно хотите выгнать игрока %s из своей организации?",
						query );
					showPlayerDialog( playerid, d_crime + 11, DIALOG_STYLE_MSGBOX, "Выгнать игрока", gb_string, "Выгнать", "Назад" );
				}
				default: {
					if( crime_settings[playerid][listitem - 2] ) crime_settings[playerid][listitem - 2] = 0;
					else crime_settings[playerid][listitem - 2] = 1;
					for( new i; i < 10; i++ ) {
						format( gb_string, sizeof gb_string, "%s%d,", gb_string, crime_settings[playerid][i] );
					}	
					setDataText( playerid, "Crime:uCrimeSet", gb_string );
					updateUserCrimeSet( playerid, getData( playerid, "Crime:uID" ), gb_string );
					showMemberInfo( playerid );
				}
			}
		}
		case d_crime + 11: {
			if( !response ) return showMemberInfo( playerid );
			new cid = getData( playerid, "Crime:uID" );
			format( query, sizeof query, "UPDATE `gb_users` SET `uCrimeM` = '0', `uCrimeL` = '0' WHERE `uID` = '%d'",
				cid );
			mysql_query( mysql, query );
			foreach( new i:Player) { 
				if( Player[i][uID] == cid ) {
					Player[i][uCrimeM] = 0, Player[i][uCrimeL] = 0;
					SendMes( i, -1, ""gbInfo"Лидер организации вышвырнул вас из криминальной организации!" );
					break;
				}
			}
			SendMes( playerid, -1, ""gbAccess"Вы успешно выгнали игрока из своей организации!" );
			delData( playerid, "Crime:uID" ), delData( playerid, "Crime:uCrimeSet" ),
			delData( playerid, "Crime:uName" );
			showCrimeMenu( playerid, 3 );
		}
		case d_crime + 12: {
			if( !response ) return showMemberInfo( playerid );
			if( sscanf( inputtext, "d", inputtext[0] ) ) return showPlayerDialog( playerid, d_crime + 12, DIALOG_STYLE_INPUT, "Изменение ранга", 
																	"{ffffff}Укажите новый ранг игрока в окошко", "Ввод", "Закрыть" );
			if( inputtext[0] < 1 || inputtext[0] > 20 ) {
				SendMes( playerid, -1, ""gbError"Неверный аргумент!" );
				return showPlayerDialog( playerid, d_crime + 12, DIALOG_STYLE_INPUT, "Изменение ранга", "{ffffff}Укажите новый ранг игрока в окошко", "Ввод", "Закрыть" );
			}
			new cid = getData( playerid, "Crime:uID" );
			getDataText( playerid, "Crime:uName", gb_string, 32 );
			format( query, sizeof query, "UPDATE `gb_users` SET `uCrimeRank` = '%d' WHERE `uID` = '%d'", 
				inputtext[0], cid );
			mysql_query( mysql, query );
			
			foreach( new i:Player) {
				if( Player[i][uID] == cid ) {
					Player[i][uCrimeRank] = inputtext[0];
					userUpdate( i, "uCrimeRank", inputtext[0] );
					SendMes( i, -1, ""gbInfo"%s изменил вам ранг на %s", 	
						Player[ playerid ][uName], 
						CrimeRank[ getCrimeID( Player[playerid][uCrimeM] ) ][ inputtext[0] - 1 ][raName] );
					break;
				}
			}
			SendMes( playerid, -1, ""gbInfo"Вы изменили игроку %s ранг на %s", 
				gb_string, CrimeRank[ getCrimeID( Player[playerid][uCrimeM] ) ][ inputtext[0] - 1 ][raName] );
			showMemberInfo( playerid );
		}
		case d_crime + 13: {
			new rank = getData( playerid, "Crime:RankListID" );
			if( !response ) {
				format( gb_string, sizeof gb_string, "[%d] %s", CrimeRank[id][rank][raRank], CrimeRank[id][rank][raName] );
				format( vb_string, sizeof vb_string, "1. Изменить название\n2. Изменить параметры\n3. Удалить ранг" );
				showPlayerDialog( playerid, d_crime + 4, DIALOG_STYLE_LIST, gb_string, vb_string, "Выбор", "Назад" );
				return true;
			}
			if( CrimeRank[id][rank][raSettings][listitem] ) CrimeRank[id][rank][raSettings][listitem] = 0;
			else CrimeRank[id][rank][raSettings][listitem] = 1;
			
			for( new i; i < 10; i++ ) format( gb_string, sizeof gb_string, "%s%d,", gb_string, CrimeRank[id][rank][raSettings][i] );
			format( query, sizeof query, "UPDATE `gb_crime_rank` SET `raSettings` = '%s' WHERE `raID` = '%d'",
				gb_string, CrimeRank[id][rank][raID] );
			mysql_query( mysql, query );	
			showRankSettings( playerid );
		}
	}
	return true;
}

stock updateUserCrimeSet( playerid, id, values[] ) {
	format( query, sizeof query, "UPDATE `gb_users` SET `uCrimeSet` = '%s' WHERE `uID` = '%d'",
		values, id );
	mysql_query( mysql, query );
	foreach(new i:Player) {
		if( Player[i][uID] == id ) {
			for( new c; c < 10; c++ ) Player[i][uCrimeSet][c] = crime_settings[playerid][c];
			SendMes( i, -1, ""gbInfo"Лидер организации изменил ваши полномочия!" );
			break;
		}
	}
	return true;
}

stock getRankSettings( playerid, settings ) {
	new crime_id = getCrimeID( Player[playerid][uCrimeM] );
	if( crime_id != 1 && settings < 10 ) {
		return CrimeRank[crime_id][ Player[playerid][uCrimeRank] - 1 ][raSettings][settings];
	}
	return 0;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	switch( newkeys ) {
		case KEY_WALK: {
			for( new cr; cr < sizeof CrimeInfo; cr++ ) {
				if( CrimeInfo[cr][crID] ) {
					if( IsPlayerInRangeOfPoint( playerid, 1.5, CrimeInfo[cr][crPos][0], 
						CrimeInfo[cr][crPos][1], CrimeInfo[cr][crPos][2] ) ) {
						new id = CrimeInfo[cr][crInt];
						setPlayerPos( playerid, crime_int[id][ciPos][0], crime_int[id][ciPos][1], crime_int[id][ciPos][2] );
						SetPlayerFacingAngle( playerid, crime_int[id][ciPos][3] );
						SetPlayerInterior( playerid, crime_int[id][ciInt] );
						SetPlayerVirtualWorld( playerid, CrimeInfo[cr][crID] );
						setHouseWeather( playerid );
						break;
					}
				}
			}
			for( new id; id < sizeof crime_int; id++ ) {
				if( IsPlayerInRangeOfPoint( playerid, 1.5, crime_int[id][ciPos][0], crime_int[id][ciPos][1], crime_int[id][ciPos][2] ) ) {
					if( GetPlayerVirtualWorld( playerid ) ) {
						new crime_id = GetPlayerVirtualWorld( playerid );
						for( new cr; cr < sizeof CrimeInfo; cr++ ) {
							if( CrimeInfo[cr][crID] == crime_id ) {
								setPlayerPos( playerid, CrimeInfo[cr][crPos][0], 
									CrimeInfo[cr][crPos][1], CrimeInfo[cr][crPos][2] );
								SetPlayerFacingAngle( playerid, CrimeInfo[cr][crPos][3] );	
								SetPlayerVirtualWorld( playerid, 0 );
								SetPlayerInterior( playerid, 0 );
								delData( playerid, "User:inInt" ), updateWeather( playerid );
								break;
							}
						}
					}
				}
			}
		}
	}
	return true;
}