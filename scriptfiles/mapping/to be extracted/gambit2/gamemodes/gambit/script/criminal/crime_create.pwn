#include <YSI\y_hooks>

CMD:createcrime( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 4 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	showPlayerDialog( playerid, d_crime_cr, DIALOG_STYLE_INPUT, "Создание криминальной структуры",
		"{ffffff}Вы хотите создать криминальную структуру на сервере, укажите её название", "Ввод", "Выход" );
	return true;
}

CMD:crimeedit( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 4 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите /crimeedit [ID]" );
	new cr_id = getCrimeID( params[0] ); 
	if( cr_id == -1 ) return SendMes( playerid, C_GRAY, ""gbError"Криминальная организация с таким ID не найдена!" );
	setData( playerid, "Create:ID", cr_id );
	showCrimeEdit( playerid, cr_id );
	return true;
}

stock showCrimeEdit( playerid, cr_id ) {
	format( gb_string, sizeof gb_string, "Изменение крим. орг. %s", CrimeInfo[cr_id][crName] );
	showPlayerDialog( playerid, d_crime_cr + 4, DIALOG_STYLE_LIST, gb_string,
		"1. Изменить название\n2. Изменить тип\n3. Изменить интерьер\n4. Удалить организацию", 
		"Ввод", "Выход" );
	return true;	
}

CMD:crimeenter( playerid, params[] ) {
	if( !GetAccessAdmin( playerid, 4 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, C_GRAY,""gbInfo"Введите: /crimeenter [ID]");
	new Float:pos[4], id = -1;
	GetPlayerPos( playerid, pos[0], pos[1], pos[2] ), GetPlayerFacingAngle( playerid, pos[3] );
	for( new i; i < sizeof( CrimeInfo ); i++ ) {
		if( CrimeInfo[i][crID] == params[0] ) {
			id = i; 
			break;
		}	
	}
	if( id == -1 ) return SendMes( playerid, -1, ""gbError"Такая криминальная структура не найдена" );
	if( CrimeInfo[ id ][crPickup] ) DestroyDynamicPickup( CrimeInfo[ id ][crPickup] );
	if( CrimeInfo[ id ][crText] ) DestroyDynamic3DTextLabel( CrimeInfo[ id ][crText] );
	
	CrimeInfo[ id ][crPickup] = CreateDynamicPickup( 19132, 23, pos[0], pos[1], pos[2] );
	CrimeInfo[ id ][crText] = CreateDynamic3DTextLabel( "ALT", C_BLUE, pos[0], pos[1], pos[2], 5.0, INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 1, -1, -1);
	for( new p; p < 4; p++ ) CrimeInfo[ id ][crPos][p] = pos[p];
	
	format( query, sizeof query, "UPDATE `gb_crime` SET `crEnter` = '%f,%f,%f,%f' WHERE `crID` = '%d'",
		pos[0], pos[1], pos[2], pos[3], CrimeInfo[ id ][crID] );
	mysql_tquery( mysql, query );	
	SendMes( playerid, -1, ""gbInfo"Вы успешно установили вход в интерьер для %s", CrimeInfo[ id ][crName] );
	return true;
}

CMD:crimeleader( playerid, params[] ) {
	if( !GetAccessAdmin( playerid, 4 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	if( sscanf( params, "ui", params[0], params[1] ) ) return SendMes( playerid, C_GRAY,""gbInfo"Введите: /crimeleader [id игрока][ID крайма]");
	if( !getData( params[0], "uLogin" ) ) return SendMes( playerid, C_GRAY, ""gbError"Игрок оффлайн!" );
	if( params[1] > MAX_CRIMINAL || params[1] < 0 ) return SendMes( playerid, C_GRAY, ""gbError"Недопустимое значение!");
	
	if( params[1] == 0 ) {
		SendMes( playerid, -1, ""gbInfo"Вы сняли лидерку криминальной структуры у %s", Player[ params[0] ][uName] );
		SendMes( params[0], -1, ""gbInfo"Администратор %s, снял у вас лидерку криминальной структуры", Player[ playerid ][uName] );
		Player[ params[0] ][ uCrimeL ] = 0, Player[ params[0] ][ uCrimeM ] = 0;
		userUpdate( params[0], "uCrimeL", Player[ params[0] ][uCrimeL] );
		userUpdate( params[0], "uCrimeM", Player[ params[0] ][uCrimeM] );
		return true;
	}
	Player[ params[0] ][ uCrimeL ] = params[1], Player[ params[0] ][ uCrimeM ] = params[1];
	SendMes( params[0], -1, ""gbInfo"Администратор %s, выдал вам лидерку %s", Player[ playerid ][uName], getCrimeName( params[1] ) );
	SendMes( playerid, -1, ""gbInfo"Вы установили игроку %s, лидерку %s", Player[ params[0] ][uName], getCrimeName( params[1] ) );
	userUpdate( params[0], "uCrimeL", Player[ params[0] ][uCrimeL] );
	userUpdate( params[0], "uCrimeM", Player[ params[0] ][uCrimeM] );
	
	return true;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	new list, cr_id = getData( playerid, "Create:ID" );
	switch( dialogid ) {
		// Создание
		case d_crime_cr: {
			if( !response ) return true;
			if( !strlen( inputtext ) ) return showPlayerDialog( playerid, d_crime_cr, DIALOG_STYLE_INPUT, "Создание криминальной структуры",
												"{ffffff}Вы хотите создать криминальную структуру на сервере, укажите её название", "Ввод", "Выход" );
			//if( MAX_CRIMINAL ) return SendMes( playerid, -1, ""gbError"Лимит криминальных структур на сервере превышен!" ); 
			setDataText( playerid, "Create:Name", inputtext );
			for( new i; i < sizeof crime_type; i++ ) {
				format( vb_string, sizeof vb_string, "%s%d. %s\n", vb_string, list + 1, crime_type[i] );
				list++;
			}
			showPlayerDialog( playerid, d_crime_cr + 1, DIALOG_STYLE_LIST, "Создание криминальной структуры | Выбор типа", vb_string, "Выбор", "" );
		}
		case d_crime_cr + 1: {
			if( !response ) return delData( playerid, "Create:Name" );
			setData( playerid, "Create:Type", listitem );
			showCreateCrime( playerid, 1 );
		}
		case d_crime_cr + 2: {
			if(!response) return showCreateCrime( playerid, 1 );
			if( listitem == sizeof crime_access ) {
				showCreateCrime( playerid, 2 );
				return true;
			}
			if( getData( playerid, crime_access[listitem][caData] ) ) setData( playerid, crime_access[listitem][caData], 0 ); 
			else setData( playerid, crime_access[listitem][caData], 1 );
			showCreateCrime( playerid, 1 );
		}
		case d_crime_cr + 3: {
			if(!response) return showCreateCrime( playerid, 2 );
			setData( playerid, "Create:Interior", listitem );
			createServerCrime( playerid );
		}
		
		case d_crime_cr + 4: {

			if( !response ) return true;
			
			switch( listitem ) {
				case 0: {//
					format( gb_string, sizeof gb_string, "Изменение названия организации [%s]", CrimeInfo[cr_id][crName] );
					showPlayerDialog( playerid, d_crime_cr + 5, DIALOG_STYLE_INPUT, gb_string, "{ffffff}Введите новое название для криминальной организации в окошко:", "Ввод", "Назад" );
				}
				case 1: {
					for( new i; i < sizeof crime_type; i++ ) {
						format( vb_string, sizeof vb_string, "%s%d. %s\n", vb_string, i + 1, crime_type[i] );
					}
					format( gb_string, sizeof gb_string, "Изменение типа организации [%s]", CrimeInfo[cr_id][crName] );
					showPlayerDialog( playerid, d_crime_cr + 6, DIALOG_STYLE_LIST, gb_string, vb_string, "Выбор", "Назад" );
				}
				case 2: {
					for( new i; i < sizeof crime_int; i++ ) {
						format( vb_string, sizeof vb_string, "%s%d %s\n", vb_string, i + 1, crime_int[i][ciName] );
					}
					format( gb_string, sizeof gb_string, "Изменение интерьера организации [%s]", CrimeInfo[cr_id][crName] );
					showPlayerDialog( playerid, d_crime_cr + 7, DIALOG_STYLE_LIST, gb_string, vb_string, "Выбор", "Назад" );
				}
				case 3: {
					format( gb_string, sizeof gb_string, "Удаление организации [%s]", CrimeInfo[cr_id][crName] );
					showPlayerDialog( playerid, d_crime_cr + 8, DIALOG_STYLE_MSGBOX, gb_string, 
						"{ffffff}Вы действительно хотите удалить данную криминальную организацию?\
						\nПри удалении организацию будет невозможно восстановить\
						\nВсе игроки будут выкинуты из организации, а ранги и настройки сброшены!",
						"Удалить", "Назад" );
				}
			}
		}
		case d_crime_cr + 5: {
			if( !response ) return showCrimeEdit( playerid, cr_id );
			if( !strlen( inputtext ) ) {
				format( gb_string, sizeof gb_string, "Изменение названия организации [%s]", CrimeInfo[cr_id][crName] );
				return showPlayerDialog( playerid, d_crime_cr + 5, DIALOG_STYLE_INPUT, gb_string, "Введите новое название в окошко:", "Ввод", "Назад" );
			}
			SendMes( playerid, -1, ""gbAccess"Вы успешно сменили название организации с %s на %s",
				CrimeInfo[cr_id][crName], inputtext );
			format( CrimeInfo[cr_id][crName], 64, "%s", inputtext );
			format( query, sizeof query, "UPDATE `gb_crime` SET `crName` = '%s' WHERE `crID` = '%d'",
				CrimeInfo[cr_id][crName], CrimeInfo[cr_id][crID] );
			mysql_query( mysql, query );	
			showCrimeEdit( playerid, cr_id );
		}
		case d_crime_cr + 6: {
			if( !response ) return showCrimeEdit( playerid, cr_id );
			SendMes( playerid, -1, ""gbAccess", Вы успешно сменили тип организации с %s на %s",
				crime_type[ CrimeInfo[cr_id][crType] ], crime_type[ listitem ] );
			CrimeInfo[cr_id][crType] = listitem;
			format( query, sizeof query, "UPDATE `gb_crime` SET `crType` = '%d' WHERE `crID` = '%d'",
				CrimeInfo[cr_id][crType], CrimeInfo[cr_id][crID] );
			mysql_query( mysql, query );	
			showCrimeEdit( playerid, cr_id );
		}
		case d_crime_cr + 7: {
			if( !response ) return showCrimeEdit( playerid, cr_id );
			SendMes( playerid, -1, ""gbAccess", Вы успешно сменили интерьер организации с %s на %s",
				crime_int[ CrimeInfo[cr_id][crInt] ][ciName], crime_int[ listitem ][ciName] );
			CrimeInfo[cr_id][crInt] = listitem;
			format( query, sizeof query, "UPDATE `gb_crime` SET `crInt` = '%d' WHERE `crID` = '%d'",
				CrimeInfo[cr_id][crInt], CrimeInfo[cr_id][crID] );
			mysql_query( mysql, query );	
			showCrimeEdit( playerid, cr_id );
		}
		case d_crime_cr + 8: {
			if( !response ) return showCrimeEdit( playerid, cr_id );
			if( deleteServerCrime( cr_id ) )
			{
				SendMes( playerid, C_WHITE, ""gbAccess"Вы успешно удалили криминальную организацию: "cBLUE"%s[%d]"cWHITE".", CrimeInfo[cr_id][crName], CrimeInfo[cr_id][crID] );
			}
		}
	}
	return 1;
}

deleteServerCrime( cr_id )
{
	mysql_format:query( "DELETE FROM `gb_crime` WHERE `crID` = '%d'", CrimeInfo[cr_id][crID] );
	mysql_tquery( mysql, query, "", "" );
	
	mysql_format:query( "DELETE FROM `gb_crime_rank` WHERE `raCrime` = '%d'", CrimeInfo[cr_id][crID] );
	mysql_tquery( mysql, query, "", "" );
	
	mysql_format:query( "UPDATE `gb_users` SET `uCrimeM` = '0', `uCrimeL` = '0', \
		`uCrimeSet` = '0,0,0,0,0,0,0,0,0,0' WHERE `uCrimeM` = '%d' OR `uCrimeL` = '%d'",
		CrimeInfo[cr_id][crID], CrimeInfo[cr_id][crID] );
	mysql_tquery( mysql, query, "", "" );
	
	foreach( new i: Player) 
	{
		if( !IsPlayerLogged( i ) )
			continue;
			
		if( Player[i][uCrimeM] == CrimeInfo[cr_id][crID] || Player[i][uCrimeL] == CrimeInfo[cr_id][crID] ) 
		{
			Player[i][uCrimeM] = 0;
			Player[i][uCrimeL] = 0;
			
			for( new s; s < 10; s++ ) 
			{
				Player[i][uCrimeSet][s] = 0;
			}
		}
	}		

	/*for( new c; c < MAX_VEHICLES; c++ ) 
	{
		if( V::[c][vCrime] == CrimeInfo[cr_id][crID] ) 
		{
			DestroyVehicle( c );
			V::[c][vCrime] = 0;
			
			for( new i; i < 10; i++ ) 
			{
				CrimeCar[c][i][cr_vID] = 0;
			}
		}
	}*/
	
	for( new i; i < 20; i++ ) 
	{
		CrimeRank[cr_id][i][raID] = 0;
	}
	
	CrimeInfo[cr_id][crID] = 0;
	
	return 1;
}

stock createServerCrime( playerid ) {
	for( new cr; cr < MAX_CRIMINAL; cr++ ) {
		if( !CrimeInfo[cr][crID] ) {
			getDataText( playerid, "Create:Name", CrimeInfo[cr][crName], 128 );
			CrimeInfo[cr][crType] = getData( playerid, "Create:Type" );
			CrimeInfo[cr][crInt] = getData( playerid, "Create:Interior" );
			for( new i; i < sizeof crime_access; i++ ) {
				CrimeInfo[cr][crSettings][i] = getData( playerid, crime_access[i][caData] );
				delData( playerid, crime_access[i][caData] );
			}
			format( query, sizeof query, "INSERT INTO `gb_crime` ( `crName`, `crType`, `crInt`, `crSettings` ) VALUES \
			( '%s', '%d', '%d', '%d,%d,%d,%d,%d,%d,%d,%d' )",
				CrimeInfo[cr][crName], CrimeInfo[cr][crType], CrimeInfo[cr][crInt],
				CrimeInfo[cr][crSettings][0], CrimeInfo[cr][crSettings][1], CrimeInfo[cr][crSettings][2],
				CrimeInfo[cr][crSettings][3], CrimeInfo[cr][crSettings][4], CrimeInfo[cr][crSettings][5],
				CrimeInfo[cr][crSettings][6], CrimeInfo[cr][crSettings][7], CrimeInfo[cr][crSettings][8],
				CrimeInfo[cr][crSettings][9] );
			mysql_tquery( mysql, query, "insertServerCrime", "dd", playerid, cr );
			
			delData( playerid, "Create:Type" ), delData( playerid, "Create:Interior" ),
			delData( playerid, "Create:Name" );
			break;
		}
	}
	
	return true;
}

function insertServerCrime( playerid, cr ) {
	CrimeInfo[cr][crID] = cache_insert_id();
	SendMes( playerid, -1, ""gbInfo"Вы успешно добавили на сервер криминальную структуру %s [ID:%d]", CrimeInfo[cr][crName], CrimeInfo[cr][crID] );
	SendMes( playerid, -1, ""gbInfo"Для добавления входа в интерьер банды, подойдите к нужному месту" );
	SendMes( playerid, -1, ""gbInfo"И введите команду /crimeenter [ ид банды ]" );
	return true;
}

stock showCreateCrime( playerid, type ) {
	switch( type ) {
		case 1: {
			for( new i; i < sizeof crime_access; i++ ) {
				format( vb_string, sizeof vb_string, "%s%s %s\n", vb_string, crime_access[i][caText], 
					getData( playerid, crime_access[i][caData] ) == 1 ? ("Да"):("Нет") );
			}
			format( vb_string, sizeof vb_string, "%sПродолжить", vb_string );
			showPlayerDialog( playerid, d_crime_cr + 2, DIALOG_STYLE_LIST, 
						"Создание криминальной структуры | Выбор опций", vb_string, "Выбор", "" );	
		}
		case 2: {
			for( new i; i < sizeof crime_int; i++ ) {
				format( vb_string, sizeof vb_string, "%s%s\n", vb_string, crime_int[i][ciName] );
			}
			showPlayerDialog( playerid, d_crime_cr + 3, DIALOG_STYLE_LIST, "Создание криминальной структуры | Выбор интерьера",
				vb_string, "Выбор", "" );
		}
	}	
	return true;
}