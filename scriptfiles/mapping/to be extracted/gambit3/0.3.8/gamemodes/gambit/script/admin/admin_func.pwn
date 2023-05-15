#include <YSI\y_hooks>

hook OnGameModeInit( )
{
	mysql_tquery( mysql, "UPDATE `gb_admins` SET `OnDuty` = 0", "" );
	return 1;
}

hook OnPlayerClickMap( playerid, Float: fX, Float: fY, Float: fZ )
{
	if( GetAccessAdmin( playerid, 1 ) )
	{
		SetPlayerInterior( playerid, 0 );
		SetPlayerVirtualWorld( playerid, 0 );
		SetPlayerPos( playerid, fX, fY, fZ );
			
		SendMes( playerid, C_WHITE, ""gbAccess"Вы успешно телепортировались по выбранным координатам." );
    }
	
	return 1;
}

hook OnPlayerConnect( playerid )
{	
	SetPVarInt( playerid, "Admin:ShowVehicleMessage", 0xFFFF );
	
	SetPVarInt( playerid, "Admin:Recon", 0 );
	SetPVarInt( playerid, "Spectate", 0 );
	
	admin_spectate_timer[ playerid ] = -1;
	return 1;
}

hook OnPlayerDisconnect( playerid, reason )
{
	if( !GetPVarInt( playerid,"uLogin" ) ) 
		return 1;
		
	if( GetAccessAdmin( playerid, 1 ) )
	{
		AdminUpdate( playerid, "OnDuty", 0 );
	}
	
	if( GetPVarInt( playerid, "Admin:Recon") )
	{
		ShowAdminSpectatePanel( playerid, false );
		
		Admin_TextDrawsHide( playerid );
	}
	
	AddDisconnectLog( playerid, reason );
	
	return 1;
}

AddDisconnectLog( playerid, reason )
{
	if( count_disconnect >= MAX_DISCONNECTS - 1 )
		count_disconnect = 0;
		
	new 
		id = count_disconnect,
		hour, 
		minute, 
		second;
		
	gettime( hour, minute, second );
	
	Disconnect[id][dis_name][0] = EOS;
	strcat( Disconnect[id][dis_name], Player[playerid][uName], MAX_PLAYER_NAME );
	
	format( Disconnect[id][dis_time], 16, "%02d:%02d:%02d",
		hour,
		minute,
		second 
	);
	
	Disconnect[id][dis_reason][0] = EOS;
	
	switch( reason )
	{
		case 0 :
		{
			strcat( Disconnect[id][dis_reason], "вылетел", 32 );
		}
		
		case 1 :
		{
			strcat( Disconnect[id][dis_reason], "вышел", 32 );
		}
		
		case 2 :
		{
			strcat( Disconnect[id][dis_reason], "отсоединён", 32 );
		}
	}
	
	count_disconnect++;
	
	return 1;
}


ShowDisconnectLog( playerid )
{
	vb_string[0] = EOS;
	strcat( vb_string, ""cGRAY"Имя\t"cGRAY"Время\t"cGRAY"Причина\n" );
	for( new i; i < count_disconnect; i++ )
	{
		format:gb_string( ""cGRAY"%s"cWHITE"\t%s\t%s",
			Disconnect[i][dis_name],
			Disconnect[i][dis_time],
			Disconnect[i][dis_reason]
		);
		
		strcat( vb_string, gb_string );
		
		if( count_disconnect != i )
		{
			strcat( vb_string, "\n" );
		}
	}
	
	return ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_TABLIST_HEADERS, " ", vb_string, "Закрыть", "" );
}

stock showAdminCommand( playerid ) 
{
	if( !Player[playerid][uAdmin] ) 
		return 1;  
	
	vb_string[0] = EOS;
	
	strcat( vb_string, ""cWHITE"1."cGRAY" Первый уровень.\n" );
	if( Player[playerid][uAdmin] >= 2 ) strcat( vb_string, ""cWHITE"2."cGRAY" Второй уровень.\n" );
	if( Player[playerid][uAdmin] >= 3 ) strcat( vb_string, ""cWHITE"3."cGRAY" Третий уровень.\n" );
	if( Player[playerid][uAdmin] >= 4 ) strcat( vb_string, ""cWHITE"4."cGRAY" Четвертый уровень.\n" );
	if( Player[playerid][uAdmin] >= 5 ) strcat( vb_string, ""cWHITE"5."cGRAY" Пятый уровень.\n" );
	if( Player[playerid][uAdmin] >= 6 ) strcat( vb_string, ""cWHITE"6."cGRAY" Шестой уровень.\n" );
	if( Player[playerid][uAdmin] >= 7 ) strcat( vb_string, ""cWHITE"7."cGRAY" Седьмой уровень." );
	ShowPlayerDialog( playerid, d_admins + 2, DIALOG_STYLE_LIST, " ", vb_string, "Выбрать", "Закрыть" );
	return 1;
}

function OnAdminLogin( playerid, password[] ) 
{
	clear_massive();
   
	if( !cache_get_row_count() )
	{
		return SendMes( playerid, C_WHITE, ""gbError"Вы не являетесь администратором." );
	}
    
	vb_string[0] = EOS;
	
    cache_get_field_content( 0, "Password", vb_string );
	Player[playerid][uAdmin] = cache_get_field_content_int( 0, "Level", mysql );
    SetPVarInt( playerid,"playerAdmin", 1 );
	
	
    if( !strcmp( vb_string, "qwerty", true ) ) 
	{
        SendClientMessage(playerid, C_WHITE, ""gbAccess"Вы успешно зарегистрировались как администратор.");
		
		gb_string[0] = EOS;
		
		format:gb_string( ""gbInfo"Ваш пароль администрирования: "cBLUE"%s"cWHITE".", password );
		
		format:gb_string( "[A] %s[%d] зарегистрировался как администратор %d уровня.",
			Player[playerid][uName],
			playerid,
			Player[playerid][uAdmin]
		);
		
		SendAdminMessage( C_GREEN, gb_string );
		
        mysql_format:query( "UPDATE `gb_admins` SET `Password`= '%s' WHERE BINARY `Name` = '%s'", password, Player[playerid][uName]);
    	mysql_query( mysql, query );
    }
	
    else if( strcmp( password, vb_string, true ) )  
	{
		gb_string[0] = EOS;
		
		format:gb_string( "[A] %s[%d] ввёл неверный пароль администрирования. [IP: %s]",
			Player[playerid][uName],
			playerid,
			Player[playerid][uIP]
		);
		
		SendAdminMessage( C_LIGHTRED, gb_string );
		
        SendMes( playerid, C_LIGHTRED, "Вы были отсоединены от сервера за неправильный пароль администрирования.");
        return KickEx( playerid );
    }
	
    if( Player[playerid][uAdmin] < 6 ) 
	{
        format:gb_string( "[A] %s[%d] авторизовался как администратор %d уровня. [IP: %s]", 
			Player[playerid][uName], 
			playerid, 
			Player[playerid][uAdmin],
			Player[playerid][uIP]
		);
		
    	SendAdminMessage( C_GREEN, gb_string );
    }
	else if( Player[playerid][uAdmin] < 7 )
	{
		SendMes( playerid, -1, ""gbInfo"Вы успешно авторизовались как разработчик." );
	}
	else 
	{
		SendMes( playerid, -1, ""gbInfo"Вы успешно авторизовались как ведущий администратор." );
	}
	
	
	AdminUpdate( playerid, "OnDuty", 1 );
	return 1;
}

function UnRetestPlayer(playerid, Name[]) {
	clear_massive();
    new Rows, Fields;
    cache_get_data( Rows, Fields );
    if(!Rows) return SendMes( playerid, C_WHITE, ""gbError"Данный аккаунт не находится в данный момент на ретесте.");
    mysql_format( mysql, query, sizeof query, "UPDATE `gb_users` SET `uRetest` = '0' WHERE `uName` = '%s'", Name);
	mysql_tquery( mysql, query );
	
	format:gb_string( "[A] %s[%d] снял ретест: %s",
		Player[playerid][uName],
		playerid,
		Name
	);
	
	SendAdminMessage( C_GRAY, gb_string );
	
	format:gb_string( "%s снял ретест с %s",
		Player[playerid][uName],
		Name
	);
	
	logs( ALOG, gb_string, Player[playerid][uID] );
	
	return true;
}

function UnCkPlayer( playerid, name[] )
{
	new 
		rows = cache_get_row_count();
		
	if( !rows )
		return SendMes( playerid, C_WHITE, ""gbError"Данному аккаунту не установлен Character Kill." );
	
	mysql_format( mysql, query, sizeof query, "UPDATE `gb_users` SET `uActive` = 1 WHERE `uName` = '%s' LIMIT 1", name );
	mysql_tquery( mysql, query );
	
	format:gb_string( "[A] %s[%d] снял Character Kill с аккаунта: %s",
		Player[playerid][uName],
		playerid,
		name
	);
	
	SendAdminMessage( C_GRAY, gb_string );
	
	format:gb_string( "%s снял <CK> %s",
		Player[playerid][uName],
		name
	);
	
	logs( ALOG + 18, gb_string, Player[playerid][uID] );
	
	return 1;
}

function UnBanPlayer( playerid, name[] )
{
	new 
		rows = cache_get_row_count();
		
	if( !rows )
		return SendMes( playerid, C_WHITE, ""gbError"Данный аккаунт не заблокирован." );
	
	mysql_format( mysql, query, sizeof query, "UPDATE `gb_users` SET `uBanPlayer` = '0' WHERE `uName` = '%s'", name );
	mysql_tquery( mysql, query );
	
	format:gb_string( "[A] %s[%d] разблокировал аккаунт: %s.",
		Player[playerid][uName],
		playerid,
		name
	);
	
	SendAdminMessage( C_GRAY, gb_string );
	
	format:gb_string( "%s разбанил %s",
		Player[playerid][uName],
		name
	);
	
	logs( ALOG + 1, gb_string, Player[playerid][uID] );
	
	return 1;
}

stock StartRecon( playerid, specid ) 
{
	if( !GetPVarInt( playerid, "Spectate" ) )
	{
		new 
			Float: x,
			Float: y, 
			Float: z,
			Float: angle;
			
		GetPlayerPos( playerid, x, y, z );
		GetPlayerFacingAngle( playerid, angle );
		
		SetPVarFloat( playerid, "PosSpecX", x );
		SetPVarFloat( playerid, "PosSpecY", y );
		SetPVarFloat( playerid, "PosSpecZ", z );
		SetPVarInt( playerid, "SpecInt", GetPlayerInterior( playerid ) );
		SetPVarInt( playerid, "SpecVT", GetPlayerVirtualWorld( playerid ) );
		SetPVarFloat( playerid, "SpecAngle", angle );
	}
	
	ShowMenuForPlayer( Admin, playerid );
	
	setData( playerid, "SpecID", specid );
	setData( playerid, "Spectate", 1 );
	
	TogglePlayerSpectating( playerid, 1 );
	
	SetPlayerInterior(playerid, GetPlayerInterior(specid));
	SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(specid));
	
	if( !IsPlayerInAnyVehicle( specid ) ) 
	{
		PlayerSpectatePlayer( playerid, specid );
	}
	else 
	{
		PlayerSpectateVehicle( playerid, GetPlayerVehicleID( specid ) );
		SetPVarInt( playerid, "Admin:ShowVehicleMessage", GetPlayerVehicleID( specid ) );
	}
	
	ShowAdminSpectatePanel( playerid, true, specid );
	
	return 1;
}

stock StopRecon( playerid, reason[] ) 
{	
	ShowAdminSpectatePanel( playerid, false );
	
	new 
		Float: x,
		Float: y,
		Float: z,
		Float: angle;
		
	GetSpawnInfo( playerid, x, y, z, angle );
	SetSpawnInfo( playerid, 264, GetInventorySkinId( playerid ), x, y, z, angle, 0, 0, 0, 0, 0, 0 );
	
	SetPVarInt( playerid, "Admin:ShowVehicleMessage", 0xFFFF );
	
	setData( playerid, "SpecID", -1 );
	
	GameTextForPlayer( playerid, reason, 1500, 4 );
	
	setData( playerid, "Spectate", 0 );
	
	HideMenuForPlayer( Admin, playerid );
	
	TogglePlayerSpectating( playerid, 0 );
		
	return 1;
}


GetAccessDeveloper( playerid, developerid )
{
	if( Player[playerid][uAdmin] < 7 && Player[developerid][uAdmin] >= 7 )
		return 0;
		
	return 1;
}

GetAccessAdmin( playerid, level )
{
	if( Player[playerid][uAdmin] < level || !GetPVarInt( playerid,"playerAdmin" ) ) 
		return 0;
		
	return 1;
}

function OnShowSessions( playerid, specid )
{
	clear_massive();
	
	new 
		rows = cache_get_row_count();
		
	if( !rows )
		return SendMes( playerid, -1, ""gbError"Сессии у данного игрока отсутствуют." );
		
	new 
		ip[ 17 ];
	
	vb_string[0] = EOS;
	
	format:gb_string( ""gbInfo"Сессии игрока "cBLUE"%s"cWHITE":\n\n - IP:\n", Player[specid][uName] );
	strcat( vb_string, gb_string );
	for( new i; i < rows; i++ )
	{
		cache_get_field_content( i, "pIP", ip, mysql );
		format:gb_string( "%s\n", ip );
		strcat( vb_string, gb_string );
	}
	
	ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", vb_string, "Закрыть", "" );
	return 1;
}

stock showStats( playerid, giveplayerid ) 
{
	clear_massive();
	
	new 
		bool: idx;
	
	format:gb_string( ""gbInfo"Информация о игроке "cBLUE"%s[%d]"cWHITE".\n\n",
		Player[giveplayerid][uName],
		giveplayerid
	);
	
	strcat( vb_string, gb_string );
	
	strcat( vb_string, ""cBLUE" - Персонаж:"cWHITE"\n");
	format:gb_string( "Деньги: "cGREEN"$%d"cWHITE"\n", Player[giveplayerid][uMoney]);
	strcat( vb_string,gb_string );
	format:gb_string( "Банк: "cGREEN"$%d"cWHITE"\n", Player[giveplayerid][uBank]);
	strcat( vb_string, gb_string );
	format:gb_string( "Пол: "cGRAY"%s"cWHITE"\n", users_sex[ Player[giveplayerid][uSex] ] );
	strcat( vb_string, gb_string );
	format:gb_string( "Национальность: "cGRAY"%s"cWHITE"\n", users_nation[ Player[giveplayerid][uNation] ] );
	strcat( vb_string, gb_string );
	format:gb_string( "Цвет кожи: "cGRAY"%s"cWHITE"\n", users_color[ Player[giveplayerid][uColor] ] );
	strcat( vb_string, gb_string );
	format:gb_string( "Роль персонажа: "cGRAY"%s"cWHITE"\n", users_roles[ Player[giveplayerid][uRole] ] );
	strcat( vb_string, gb_string );
	format:gb_string( "Телефон: "cGRAY"%d"cWHITE"\n", Player[giveplayerid][uNumber]);
	strcat( vb_string, gb_string );
	format:gb_string( "Розыск: "cGRAY"%d"cWHITE"\n", Player[giveplayerid][uSuspect]);
	strcat( vb_string, gb_string );
	format:gb_string( "Фракция: "cGRAY"%d"cWHITE"\n", Player[giveplayerid][uMember]);
	strcat( vb_string, gb_string);
	format:gb_string( "Ранг: "cGRAY"%d"cWHITE"\n", Player[giveplayerid][uRank]);
	strcat( vb_string, gb_string );
	format:gb_string( "Лидер: "cGRAY"%d"cWHITE"\n", Player[giveplayerid][uLeader]);
	strcat( vb_string, gb_string );
	
	for( new i; i != MAX_BUSINESS; i++ ) {
		if( !strcmp( Bizz::[i][bOwner], Player[giveplayerid][uName], true ) && Bizz::[i][bID] != 0) {
		    if( idx == false ) format( query, sizeof query, "%d", Bizz::[i][bID] );
			else format( query, sizeof query, "%s,%d", query, Bizz::[i][bID] );
		    idx = true;
		}
	}
	format:gb_string( "Бизнес: "cGRAY"%s"cWHITE"\n", idx ? (query):("Нет") );
	strcat( vb_string, gb_string ); idx = false;
	
	for( new i; i != MAX_CARS_BUY; i++ ) {
		if( Car::[i][cID] == 0 || Car::[i][cModel] == 0 ) continue;
		if( !strcmp( Car::[i][cOwner], Player[giveplayerid][uName], true ) && Car::[i][cID] != 0) {
			if( idx == false ) format( query, sizeof query, "%d", Car::[i][cID] );
			else format( query, sizeof query, "%s,%d", query, Car::[i][cID] );
		    idx = true;
		}
	}
	format:gb_string( "Транспорт: "cGRAY"%s"cWHITE"\n", idx ? (query):("Нет") );
	strcat( vb_string, gb_string ); idx = false;
	format:gb_string( "Группировка: "cGRAY"%d | %d"cWHITE"\n", Player[giveplayerid][uCrimeM], Player[giveplayerid][uCrimeRank] );
	strcat( vb_string, gb_string);
	if( Player[giveplayerid][uHouse] ) 
	{
		format( query, sizeof query, "%d | $%d", 
			Player[giveplayerid][uHouse], 
			HouseInfo[ getPlayerHouseID( giveplayerid ) ][hMoney] 
		);
	}
	format:gb_string( "Дом: "cGRAY"%s"cWHITE"\n", Player[giveplayerid][uHouse] ? (query):("нет") );
	strcat( vb_string, gb_string );
	
	strcat( vb_string, "\n"cBLUE" - Аккаунт:"cWHITE"\n");
	format:gb_string( "ID Аккаунта: "cGRAY"%d"cWHITE"\n", Player[giveplayerid][uID] );
	strcat( vb_string, gb_string );
	format:gb_string( "Премиум аккаунт: "cGRAY"%s"cWHITE"\n", user_premium[ Player[giveplayerid][uPremium] ] );
	strcat( vb_string, gb_string );
	format:gb_string( "Регистрационный IP: "cGRAY"%s"cWHITE"\n", Player[giveplayerid][uRegIP] );
	strcat( vb_string, gb_string );
	format:gb_string( "Текущий IP: "cGRAY"%s"cWHITE"\n", Player[giveplayerid][uIP]);
	strcat( vb_string, gb_string );
	format:gb_string( "GMoney: "cGRAY"%d"cWHITE"\n", Player[giveplayerid][uGMoney]);
	strcat( vb_string, gb_string );
	format:gb_string( "Дата регистрации: "cGRAY"%s"cWHITE"\n", date("%dd.%mm.%yyyy", Player[giveplayerid][uRegDate]) );
	strcat( vb_string, gb_string );
	
	if( Player[ giveplayerid ][ uDMJail ] != 0 )
	{
		format:gb_string( "В Де Моргане осталось: "cRED"%d"cWHITE" минут\n", Player[ giveplayerid ][ uDMJail ] );
		strcat( vb_string, gb_string );
	}
	
	else if( Player[ giveplayerid ][ uMute ] != 0 )
	{
		format:gb_string( "Блокировка IC чата: "cRED"%d"cWHITE" минут\n", Player[ giveplayerid ][ uMute ] );
		strcat( vb_string, gb_string );
	}
	
	else if( Player[ giveplayerid ][ uBMute ] != 0 )
	{
		format:gb_string( "Блокировка OOC чата: "cRED"%d"cWHITE" минут\n", Player[ giveplayerid ][ uBMute ] );
		strcat( vb_string, gb_string );
	}
	
	else if( Player[ giveplayerid ][ uWarn ] != 0 )
	{
		format:gb_string( "Предупреждения: "cRED"%d"cWHITE"\n", Player[ giveplayerid ][ uWarn ] );
		strcat( vb_string, gb_string );
	}
	
	showPlayerDialog( playerid, 9999, 0, " ", vb_string, "Закрыть", "" );
	
	return 1;
}

stock adminFrisk( playerid, friskid ) {
	
	if( !IsPlayerConnected( friskid ) || !getData( friskid, "uLogin" ) ) 
		return 1;
		
	vb_string[0] = EOS;
	
	for( new i; i != MAX_SLOTS; i++ ) 
	{
		if( !Inv[friskid][invSlot][i] ) 
			continue;
	
		format:gb_string( ""gbInfo"%s\t%d{ffffff}\n", 
			_itemsInfo[ Inv[friskid][invSlot][i] ][invName], Inv[ friskid ][invSlotKol][i]);
		strcat( vb_string, gb_string );
	}
	
	showPlayerDialog( playerid, 9999, 0, ""gbAccess"При обыске найдено:", vb_string, "Закрыть", "" );
	
	return 1;
}