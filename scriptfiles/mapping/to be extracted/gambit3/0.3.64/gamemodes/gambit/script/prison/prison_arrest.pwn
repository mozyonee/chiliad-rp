#include <YSI\y_hooks>

#define d_arrest		4000


CMD:transfer( playerid, params[] ) {
	if( Player[playerid][uMember] != 1 ) return SendMes( playerid, -1, ""gbError"Данная команда вам не доступна!" );
	if( sscanf( params, "dd", params[0], params[1] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /transfer [ id игрока ][ id камеры ]");
	if( !getData( playerid, "uLogin" ) ) return SendMes( playerid, C_GRAY, ""gbError"Неверный ID" );
	if( !Player[ params[0] ][uArrest] ) return SendMes( playerid, C_GRAY, ""gbError"Данный игрок не заключённый!" );
	if( params[1] < 1 || params[1] > 27 ) return SendMes( playerid, C_GRAY, ""gbError"Неверный параметр!" );
	Player[ params[0] ][uArrestCamera] = params[1] - 1;
	userUpdate( playerid, "uArrestCamera", params[1] - 1 );
	SendMes( playerid, C_GRAY, ""gbInfo"Вы успешно перевели игрока %s в камеру %d", Player[ params[0] ][uName], params[1] );
	return true;
}

CMD:cooler( playerid, params[] ) {
	if( Player[playerid][uMember] != 1 ) return SendMes( playerid, -1, ""gbError"Данная команда вам не доступна!" );
	if( sscanf( params, "dd", params[0], params[1] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /cooler [ id игрока ][ id карцера ]");
	if( !getData( playerid, "uLogin" ) ) return SendMes( playerid, C_GRAY, ""gbError"Неверный ID" );
	if( !Player[ params[0] ][uArrest] ) return SendMes( playerid, C_GRAY, ""gbError"Данный игрок не заключённый!" );
	if( params[1] < 0 || params[1] > 4 ) return SendMes( playerid, C_GRAY, ""gbError"Неверный параметр!" );
	
	if( params[1] == 0 ) {
		Player[ params[0] ][uArrestCooler] = 0;
		userUpdate( playerid, "uArrestCooler", 0 );
		SendMes( playerid, C_GRAY, ""gbInfo"Вы успешно выпустили игрока %s из карцера", Player[ params[0] ][uName] );
	}
	else {
		Player[ params[0] ][uArrestCooler] = params[1] - 1;
		userUpdate( playerid, "uArrestCooler", params[1] - 1 );
		SendMes( playerid, C_GRAY, ""gbInfo"Вы успешно перевели игрока %s в карцер %d", Player[ params[0] ][uName], params[1] );
	}
	return true;
}	

CMD:pinfo( playerid, params[] ) {
	if( Player[playerid][uMember] != 1 ) return true;
	new giveplayerid, day, month, year, i;
	if( sscanf( params, "d", giveplayerid ) ) return SendMes( playerid, C_GRAY, ""gbError"Введите: /pinfo [ id ]" );
	if( !getData( giveplayerid, "uLogin" ) )  return SendMes( playerid, C_GRAY, ""gbError"Данный игрок не в игре!" );
	if( !Player[ giveplayerid ][uArrest] ) return SendMes( playerid, C_GRAY, ""gbError"Данный игрок не находится под стражей!" );
	if( GetDistanceBetweenPlayers( playerid, giveplayerid ) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld( params[0] ) ) 
	TimestampToDate( Player[giveplayerid][uArrestTime], day, month, year, i, i, i, 3 );
	if( Player[giveplayerid][uArrestCamera] < 14 ) format( query, sizeof query, "D" );
	else format( query, sizeof query, "E" );
	format( gb_string, sizeof gb_string, "%s%d", query, Player[giveplayerid][uID] );
	format( vb_string, sizeof vb_string, 
		"{ffffff}\tИнформация о заключённом:\n\n\
		Имя Фамилия: %s\n\
		Срок судимости до: %s\n\
		Причина судимости: %s\n\
		Камера: %d\n\
		Номер заключённого: %s",
		Player[giveplayerid][uName],
		date( "%dd.%mm.%yy", Player[giveplayerid][uArrestTime] ),
		Player[giveplayerid][uArrestReason], 
		Player[giveplayerid][uArrestCamera], gb_string );
	showPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, "Информация о заключённом", vb_string, "Закрыть", "" );
	return true;
}

CMD:prison( playerid, params[] ) {
	if( Player[playerid][uMember] != 1 ) return true;
	if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbError"Введите: /prison [ id ]" );
	if( !getData( params[0], "uLogin" ) )  return SendMes( playerid, C_GRAY, ""gbError"Данный игрок не в игре!" );
	if( Player[ params[0] ][uArrest] ) return SendMes( playerid, C_GRAY, ""gbError"Данный игрок уже находится под стражей!" );
	//if( playerid == params[0] ) return SendMes( playerid, C_GRAY, ""gbError"Вы не можете посадить себя!" );
	if( GetDistanceBetweenPlayers( playerid, params[0] ) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld( params[0] ) ) 
		return SendMes( playerid, C_GRAY, ""gbError"Данного игрока нет рядом с вами!" );
	setData( playerid, "Arrest:ID", params[0] );
	showArrestMenu( playerid );
	return true;
}

CMD:udo( playerid, params[] ) {
	if( Player[playerid][uMember] != 1 ) return true;
	if( Player[playerid][uRank] < 10 ) return SendMes( playerid, C_GRAY, ""gbError"У вас слишком низкий ранг!" );
	if( sscanf( params, "ds[64]", params[0], gb_string ) ) return SendMes( playerid, C_GRAY, ""gbError"Введите: /udo [ id ][ причина ]" );
	if( !getData( params[0], "uLogin" ) )  return SendMes( playerid, C_GRAY, ""gbError"Данный игрок не в игре!" );
	if( !Player[ params[0] ][uArrest] ) return SendMes( playerid, C_GRAY, ""gbError"Данный игрок не находится под стражей!" );
	if( GetDistanceBetweenPlayers( playerid, params[0] ) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld( params[0] ) ) 
		return SendMes( playerid, C_GRAY, ""gbError"Данного игрока нет рядом с вами!" );
	Player[ params[0] ][uArrestStat]++;
	Player[ params[0] ][uArrestStatDate] = gettime();
	Player[ params[0] ][uArrest] = 0, Player[ params[0] ][uArrestCamera] = 0, Player[ params[0] ][uArrestTime] = 0;
	userUpdate( params[0], "uArrest", 0 ), userUpdate( params[0], "uArrest", 0 ), userUpdate( params[0], "uArrest", 0 );
	userUpdate( params[0], "uArrestStat", Player[ params[0] ][uArrestStat] );
	userUpdate( params[0], "uArrestStatDate", gettime() );
	SendMes( playerid, C_GRAY, ""gbAccess"Вы выпустили игрока %s по УДО", Player[ params[0] ][uName] );
	SendMes( params[0], C_GRAY, ""gbAccess"Вы были выпущенны по УДО, офицером %s", Player[playerid][uName] );
	
	format( query, sizeof query, "SELECT * FROM `gb_prison` WHERE `pName` = '%s' AND `pArrest` = '1'", Player[ params[0] ][uName] );
	mysql_tquery( mysql, query, "givePrisonInv", "ds", params[0], gb_string );
	
	
	
	if( Player[ params[0] ][uRole] == 6 ) Player[ params[0] ][uRole] = 1, userUpdate( params[0], "uRole", 1 );
	return true;
}

publics: givePrisonInv( playerid, string ) {
	clear_massive();
	new rows, fields;
    cache_get_data( rows, fields );
    if( rows ) {
		cache_get_field_content( 0, "pInv", gb_string, mysql ), sscanf( gb_string,"p<|>a<d>[56]", Inv[playerid][invSlot]);
		cache_get_field_content( 0, "pInvSlot", gb_string, mysql ), sscanf( gb_string,"p<|>a<d>[56]",Inv[playerid][invSlotKol]);	
		printf( "Выдало зэку" );
 	}
	format( query, sizeof query, "UPDATE `gb_prison` SET `pInv` = '', `pInvSlot` = '', \
		`pArrest` = '0', `pUDODate` = '%d', `pUDOReason` = '%s' WHERE `pName` = '%s'",
		gettime(), string, Player[playerid][uName] );
	mysql_query( mysql, query );
	return true;
}

stock showArrestMenu( playerid ) {
	clear_massive();
	new giveplayerid = getData( playerid, "Arrest:ID" ),
		camera[4], dates[12], info[64];
	getDataText( playerid, "Arrest:ar_info_text", info, sizeof info );
	format( gb_string, sizeof gb_string, "Арест игрока | %s", Player[ giveplayerid ][uName] );
	format( query, sizeof query, "1. Причина судимости: %s\n", getData( playerid, "Arrest:ar_info" ) ? ( info ):("не указана") );
	strcat( vb_string, query );
	format( dates, sizeof dates, "%d", getData( playerid, "Arrest:ar_date" ) );
	format( query, sizeof query, "2. Срок заключения: %s\n", getData( playerid, "Arrest:ar_date" ) ? ( dates ):("не указан") );
	strcat( vb_string, query );
	format( camera, sizeof camera, "%d", getData( playerid, "Arrest:ar_cam" ) );
	format( query, sizeof query, "3. Номер камеры: %s\n", getData( playerid, "Arrest:ar_cam" ) ? ( camera ):("не указан" ) );
	strcat( vb_string, query );
	strcat( vb_string, "Посадить заключённого" );
	showPlayerDialog( playerid, d_arrest, DIALOG_STYLE_LIST, gb_string, vb_string, "Выбор", "Закрыть" );
	return true;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	switch( dialogid ) {
		case d_arrest: {
			if( !response ) {
				delData( playerid, "Arrest:ID" ), delData( playerid, "Arrest:ar_info" ),
				delData( playerid, "Arrest:ar_date" ), delData( playerid, "Arrest:ar_cam" );
				return true;
			}
			switch( listitem ) {
				case 0: {
					showPlayerDialog( playerid, d_arrest + 1, DIALOG_STYLE_INPUT, 
						"Арест игрока | Причина судимости", 
						"Укажите причину судимости игрока", "Ввод", "Назад" );	
				}
				case 1: {
					showPlayerDialog( playerid, d_arrest + 2, DIALOG_STYLE_INPUT, 
						"Арест игрока | Срок заключения", 
						"Укажите срок заключения игрока в днях", "Ввод", "Назад" );	
				}
				case 2: {
					showPlayerDialog( playerid, d_arrest + 3, DIALOG_STYLE_INPUT, 
						"Арест игрока | Укажите камеру", 
						"Укажите номер камеры для игрока\nВсего камер: 27", "Ввод", "Назад" );	
				}
				case 3: {
					if( !getData( playerid, "Arrest:ar_info" ) ||
						!getData( playerid, "Arrest:ar_date" ) || 
						!getData( playerid, "Arrest:ar_cam" ) ) {
						SendMes( playerid, -1, ""gbError"Не все поля заполнены!" );
						showArrestMenu( playerid );
						return true;
					}	
					new giveplayerid = getData( playerid, "Arrest:ID" );
					Player[ giveplayerid ][uArrest] = 1;
					Player[ giveplayerid ][uArrestTime] = gettime() + ( getData( playerid, "Arrest:ar_date" ) * 86400 );
					Player[ giveplayerid ][uArrestCamera] = getData( playerid, "Arrest:ar_cam" );
					getDataText( playerid, "Arrest:ar_info_text", Player[ giveplayerid ][uArrestReason], 64 );
					userUpdate( giveplayerid, "uArrest", 1 ),
					userUpdate( giveplayerid, "uArrestTime", Player[ giveplayerid ][uArrestTime] ),
					userUpdate( giveplayerid, "uArrestCamera", Player[ giveplayerid ][uArrestCamera] );
					userUpdateStr( giveplayerid, "uArrestReason", Player[ giveplayerid ][uArrestReason] );
					
					SetPlayerPos( giveplayerid, 
						pr_camera[ Player[ giveplayerid ][uArrestCamera] - 1 ][0],
						pr_camera[ Player[ giveplayerid ][uArrestCamera] - 1 ][1],
						pr_camera[ Player[ giveplayerid ][uArrestCamera] - 1 ][2] );
					setPrisonWeather( playerid );
					
					SendMes( giveplayerid, C_GRAY, ""gbAccess"Вам был назначен статус заключённого" );
					SendMes( playerid, C_GRAY, ""gbAccess"Вы установили игроку %s статус заключённого", Player[ giveplayerid ][uName] );
					
					new string[1060];
					format( string, sizeof string,"%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d",
						Inv[giveplayerid][invSlot][0],Inv[giveplayerid][invSlot][1],Inv[giveplayerid][invSlot][2],Inv[giveplayerid][invSlot][3],Inv[giveplayerid][invSlot][4],Inv[giveplayerid][invSlot][5],Inv[giveplayerid][invSlot][6],Inv[giveplayerid][invSlot][7],
						Inv[giveplayerid][invSlot][8],Inv[giveplayerid][invSlot][9],Inv[giveplayerid][invSlot][10],Inv[giveplayerid][invSlot][11],Inv[giveplayerid][invSlot][12],Inv[giveplayerid][invSlot][13],Inv[giveplayerid][invSlot][14],Inv[giveplayerid][invSlot][15],
						Inv[giveplayerid][invSlot][16],Inv[giveplayerid][invSlot][17],Inv[giveplayerid][invSlot][18],Inv[giveplayerid][invSlot][19],Inv[giveplayerid][invSlot][20],Inv[giveplayerid][invSlot][21],Inv[giveplayerid][invSlot][22],Inv[giveplayerid][invSlot][23],
						Inv[giveplayerid][invSlot][24],Inv[giveplayerid][invSlot][25],Inv[giveplayerid][invSlot][26],Inv[giveplayerid][invSlot][27],Inv[giveplayerid][invSlot][28],Inv[giveplayerid][invSlot][29],Inv[giveplayerid][invSlot][30],Inv[giveplayerid][invSlot][31],
						Inv[giveplayerid][invSlot][32],Inv[giveplayerid][invSlot][33],Inv[giveplayerid][invSlot][34],Inv[giveplayerid][invSlot][35],Inv[giveplayerid][invSlot][36],Inv[giveplayerid][invSlot][37],Inv[giveplayerid][invSlot][38],Inv[giveplayerid][invSlot][39],
						Inv[giveplayerid][invSlot][40],Inv[giveplayerid][invSlot][41],Inv[giveplayerid][invSlot][42],Inv[giveplayerid][invSlot][43],Inv[giveplayerid][invSlot][44],Inv[giveplayerid][invSlot][45],Inv[giveplayerid][invSlot][46],Inv[giveplayerid][invSlot][47],
						Inv[giveplayerid][invSlot][48],Inv[giveplayerid][invSlot][49],Inv[giveplayerid][invSlot][50],Inv[giveplayerid][invSlot][51],Inv[giveplayerid][invSlot][52],Inv[giveplayerid][invSlot][53],Inv[giveplayerid][invSlot][54],Inv[giveplayerid][invSlot][55] );
					format( query, sizeof query,"%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d",
						Inv[giveplayerid][invSlotKol][0],Inv[giveplayerid][invSlotKol][1],Inv[giveplayerid][invSlotKol][2],Inv[giveplayerid][invSlotKol][3],Inv[giveplayerid][invSlotKol][4],Inv[giveplayerid][invSlotKol][5],Inv[giveplayerid][invSlotKol][6],Inv[giveplayerid][invSlotKol][7],
						Inv[giveplayerid][invSlotKol][8],Inv[giveplayerid][invSlotKol][9],Inv[giveplayerid][invSlotKol][10],Inv[giveplayerid][invSlotKol][11],Inv[giveplayerid][invSlotKol][12],Inv[giveplayerid][invSlotKol][13],Inv[giveplayerid][invSlotKol][14],Inv[giveplayerid][invSlotKol][15],
						Inv[giveplayerid][invSlotKol][16],Inv[giveplayerid][invSlotKol][17],Inv[giveplayerid][invSlotKol][18],Inv[giveplayerid][invSlotKol][19],Inv[giveplayerid][invSlotKol][20],Inv[giveplayerid][invSlotKol][21],Inv[giveplayerid][invSlotKol][22],Inv[giveplayerid][invSlotKol][23],
						Inv[giveplayerid][invSlotKol][24],Inv[giveplayerid][invSlotKol][25],Inv[giveplayerid][invSlotKol][26],Inv[giveplayerid][invSlotKol][27],Inv[giveplayerid][invSlotKol][28],Inv[giveplayerid][invSlotKol][29],Inv[giveplayerid][invSlotKol][30],Inv[giveplayerid][invSlotKol][31],
						Inv[giveplayerid][invSlotKol][32],Inv[giveplayerid][invSlotKol][33],Inv[giveplayerid][invSlotKol][34],Inv[giveplayerid][invSlotKol][35],Inv[giveplayerid][invSlotKol][36],Inv[giveplayerid][invSlotKol][37],Inv[giveplayerid][invSlotKol][38],Inv[giveplayerid][invSlotKol][39],
						Inv[giveplayerid][invSlotKol][40],Inv[giveplayerid][invSlotKol][41],Inv[giveplayerid][invSlotKol][42],Inv[giveplayerid][invSlotKol][43],Inv[giveplayerid][invSlotKol][44],Inv[giveplayerid][invSlotKol][45],Inv[giveplayerid][invSlotKol][46],Inv[giveplayerid][invSlotKol][47],
						Inv[giveplayerid][invSlotKol][48],Inv[giveplayerid][invSlotKol][49],Inv[giveplayerid][invSlotKol][50],Inv[giveplayerid][invSlotKol][51],Inv[giveplayerid][invSlotKol][52],Inv[giveplayerid][invSlotKol][53],Inv[giveplayerid][invSlotKol][54],Inv[giveplayerid][invSlotKol][55] );
				
					format( vb_string, sizeof vb_string, "INSERT INTO `gb_prison` ( `pName`, `pReason`, `pDate`, `pExitDate`,\
						`pInv`, `pInvSlot`, `pArrest` ) VALUES \
						( '%s', '%s', '%d', '%d', '%s', '%s', '1' )", 
						Player[ giveplayerid ][uName], Player[ giveplayerid ][uArrestReason], gettime(), 
						Player[ giveplayerid ][uArrestTime], string, query );
					mysql_query( mysql, vb_string );	
					
					for( new i; i < 55; i++ ) {
						if( i == 52 ) continue;
						Inv[ giveplayerid ][invSlotKol][i] = 0,
						Inv[ giveplayerid ][invSlot][i] = 0;
					}
					SaveInventory( giveplayerid );
					
					delData( playerid, "Arrest:ID" ), delData( playerid, "Arrest:ar_info_text" ),
					delData( playerid, "Arrest:ar_info" ), delData( playerid, "Arrest:ar_date" ), 
					delData( playerid, "Arrest:ar_cam" );
				}
			}
		}
		case d_arrest + 1: {
			if( !response ) {
				showArrestMenu( playerid );
				return true;
			}
			if( !strlen( inputtext ) ) {
				showPlayerDialog( playerid, d_arrest + 1, DIALOG_STYLE_INPUT, 
					"Арест игрока | Причина судимости", 
					"Укажите причину судимости игрока", "Ввод", "Назад" );
				return true;
			}
			setData( playerid, "Arrest:ar_info", 1 );
			setDataText( playerid, "Arrest:ar_info_text", inputtext );
			showArrestMenu( playerid );
		}
		case d_arrest + 2: {
			if( !response ) {
				showArrestMenu( playerid );
				return true;
			}
			if( !strval( inputtext ) || strval( inputtext ) > 2000 ) {
				showPlayerDialog( playerid, d_arrest + 2, DIALOG_STYLE_INPUT, 
					"Арест игрока | Срок заключения", 
					"Укажите срок заключения игрока в днях", "Ввод", "Назад" );	
				return true;
			}
			setData( playerid, "Arrest:ar_date", strval( inputtext ) );
			showArrestMenu( playerid );
		}
		case d_arrest + 3: {
			if( !response ) {
				showArrestMenu( playerid );
				return true;
			}
			if( strval( inputtext ) < 1 || strval( inputtext ) > 27 ) {
				showPlayerDialog( playerid, d_arrest + 3, DIALOG_STYLE_INPUT, 
					"Арест игрока | Укажите камеру", 
					"Укажите номер камеры для игрока\nВсего камер: 27", "Ввод", "Назад" );	
				return true;
			}
			setData( playerid, "Arrest:ar_cam", strval( inputtext ) );
			showArrestMenu( playerid );
		}
	}
	return true;
}

stock setPrisonSpawnLogin( playerid, &Float:x, &Float:y, &Float:z ) {
	new rand = random( 10 );

	Player[playerid][uArrestCamera] = 27 - rand;
	
	x = pr_camera[ Player[ playerid ][uArrestCamera] - 1 ][0],
	y = pr_camera[ Player[ playerid ][uArrestCamera] - 1 ][1],
	z = pr_camera[ Player[ playerid ][uArrestCamera] - 1 ][2];
	
	Player[playerid][uArrest] = 1;
	Player[playerid][uArrestTime] = gettime() + ( 2000 * 86400 );
					
	format( Player[playerid][uArrestReason], 64, "Пожизненно заключённый" );
	
	userUpdate( playerid, "uArrest", 1 ),
	userUpdate( playerid, "uArrestTime", Player[ playerid ][uArrestTime] ),
	userUpdate( playerid, "uArrestCamera", Player[ playerid ][uArrestCamera] );
	userUpdateStr( playerid, "uArrestReason", Player[ playerid ][uArrestReason] );
	
	new string[1060];
	format( string, sizeof string,"%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d",
		Inv[playerid][invSlot][0],Inv[playerid][invSlot][1],Inv[playerid][invSlot][2],Inv[playerid][invSlot][3],Inv[playerid][invSlot][4],Inv[playerid][invSlot][5],Inv[playerid][invSlot][6],Inv[playerid][invSlot][7],
		Inv[playerid][invSlot][8],Inv[playerid][invSlot][9],Inv[playerid][invSlot][10],Inv[playerid][invSlot][11],Inv[playerid][invSlot][12],Inv[playerid][invSlot][13],Inv[playerid][invSlot][14],Inv[playerid][invSlot][15],
		Inv[playerid][invSlot][16],Inv[playerid][invSlot][17],Inv[playerid][invSlot][18],Inv[playerid][invSlot][19],Inv[playerid][invSlot][20],Inv[playerid][invSlot][21],Inv[playerid][invSlot][22],Inv[playerid][invSlot][23],
		Inv[playerid][invSlot][24],Inv[playerid][invSlot][25],Inv[playerid][invSlot][26],Inv[playerid][invSlot][27],Inv[playerid][invSlot][28],Inv[playerid][invSlot][29],Inv[playerid][invSlot][30],Inv[playerid][invSlot][31],
		Inv[playerid][invSlot][32],Inv[playerid][invSlot][33],Inv[playerid][invSlot][34],Inv[playerid][invSlot][35],Inv[playerid][invSlot][36],Inv[playerid][invSlot][37],Inv[playerid][invSlot][38],Inv[playerid][invSlot][39],
		Inv[playerid][invSlot][40],Inv[playerid][invSlot][41],Inv[playerid][invSlot][42],Inv[playerid][invSlot][43],Inv[playerid][invSlot][44],Inv[playerid][invSlot][45],Inv[playerid][invSlot][46],Inv[playerid][invSlot][47],
		Inv[playerid][invSlot][48],Inv[playerid][invSlot][49],Inv[playerid][invSlot][50],Inv[playerid][invSlot][51],Inv[playerid][invSlot][52],Inv[playerid][invSlot][53],Inv[playerid][invSlot][54],Inv[playerid][invSlot][55] );
	format( query, sizeof query,"%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d",
		Inv[playerid][invSlotKol][0],Inv[playerid][invSlotKol][1],Inv[playerid][invSlotKol][2],Inv[playerid][invSlotKol][3],Inv[playerid][invSlotKol][4],Inv[playerid][invSlotKol][5],Inv[playerid][invSlotKol][6],Inv[playerid][invSlotKol][7],
		Inv[playerid][invSlotKol][8],Inv[playerid][invSlotKol][9],Inv[playerid][invSlotKol][10],Inv[playerid][invSlotKol][11],Inv[playerid][invSlotKol][12],Inv[playerid][invSlotKol][13],Inv[playerid][invSlotKol][14],Inv[playerid][invSlotKol][15],
		Inv[playerid][invSlotKol][16],Inv[playerid][invSlotKol][17],Inv[playerid][invSlotKol][18],Inv[playerid][invSlotKol][19],Inv[playerid][invSlotKol][20],Inv[playerid][invSlotKol][21],Inv[playerid][invSlotKol][22],Inv[playerid][invSlotKol][23],
		Inv[playerid][invSlotKol][24],Inv[playerid][invSlotKol][25],Inv[playerid][invSlotKol][26],Inv[playerid][invSlotKol][27],Inv[playerid][invSlotKol][28],Inv[playerid][invSlotKol][29],Inv[playerid][invSlotKol][30],Inv[playerid][invSlotKol][31],
		Inv[playerid][invSlotKol][32],Inv[playerid][invSlotKol][33],Inv[playerid][invSlotKol][34],Inv[playerid][invSlotKol][35],Inv[playerid][invSlotKol][36],Inv[playerid][invSlotKol][37],Inv[playerid][invSlotKol][38],Inv[playerid][invSlotKol][39],
		Inv[playerid][invSlotKol][40],Inv[playerid][invSlotKol][41],Inv[playerid][invSlotKol][42],Inv[playerid][invSlotKol][43],Inv[playerid][invSlotKol][44],Inv[playerid][invSlotKol][45],Inv[playerid][invSlotKol][46],Inv[playerid][invSlotKol][47],
		Inv[playerid][invSlotKol][48],Inv[playerid][invSlotKol][49],Inv[playerid][invSlotKol][50],Inv[playerid][invSlotKol][51],Inv[playerid][invSlotKol][52],Inv[playerid][invSlotKol][53],Inv[playerid][invSlotKol][54],Inv[playerid][invSlotKol][55] );
				
	format( vb_string, sizeof vb_string, "INSERT INTO `gb_prison` ( `pName`, `pReason`, `pDate`, `pExitDate`,\
		`pInv`, `pInvSlot`, `pArrest` ) VALUES \
		( '%s', '%s', '%d', '%d', '%s', '%s', '1' )", 
		Player[ playerid ][uName], Player[ playerid ][uArrestReason], gettime(), 
		Player[ playerid ][uArrestTime], string, query );
	mysql_query( mysql, vb_string );	
					
	for( new i; i < 55; i++ ) {
		if( i == 52 ) continue;
		Inv[playerid][invSlotKol][i] = 0,
		Inv[playerid][invSlot][i] = 0;
	}
	SaveInventory( playerid );
	return true;
}