#include <YSI\y_hooks>

publics: AdminsLevelUP( playerid, strs[] ) {
    new Rows, Fields;
    cache_get_data( Rows, Fields );
    if( Rows ) {
       	setData( playerid, "playerSelectAdmin", strval( strs ) );
       	showPlayerDialog( playerid, d_admins + 4, 2, " ", 
			"1. "cGRAY"Повысить/Понизить в должности администратора", "Дальше", "Закрыть" );
	}
   	else SendMes( playerid, C_GRAY, ""gbError"Данный ID не был найден в базе данных!" );
	return true;
}

stock showAdminCommand( playerid ) {
	if( !Player[playerid][uAdmin] ) return true;
    new admin_dialog[3596];//примерное число букв)) 
    for( new i; i < Player[playerid][uAdmin]; i++ ) {
		strins( admin_dialog, admin_help[i], strlen( admin_dialog ) );
	}	
    showPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, "Админ команды", admin_dialog, "Закрыть", "" );   
	return true;
}

publics: AdminLoginCallback(playerid, password[]) {
	clear_massive();
    new rows,fields;
    cache_get_data(rows, fields);
    if(!rows) return SendClientMessage(playerid, C_GRAY, "Вы не модератор!");
    new pass[32];
    cache_get_field_content(0, "Password", pass);
    if( !strcmp( pass, "qwerty", true ) ) {
        SendClientMessage(playerid, C_GREEN, "Поздравляем, вы получили доступ модератора!");
        mysql_format( mysql, query, sizeof query,"UPDATE `gb_admins` SET `Password`= '%s' WHERE BINARY `Name` = '%s'", password, Player[playerid][uName]);
    	mysql_query( mysql, query );
    }
    else if(strcmp(password, pass, true)) {
        SendMes( playerid, C_LIGHTRED, "{FF6347}[A] %s некорректный ввод пароля модератора", Player[playerid][uName]);
        SendMes( playerid, 0xFF6347AA, "Вы были кикнуты за неверный пароль администратора!");
        KickEx(playerid);
        return true;
    }
    cache_get_field_content( 0, "Level", gb_string ), Player[playerid][uAdmin] = strval( gb_string );
    SetPVarInt(playerid,"playerAdmin", 1);
    if( Player[playerid][uAdmin] < 6 ) {
        format( gb_string, sizeof gb_string, "{9ACD32}[A] Вошел {ffd800}%s{9ACD32} [%d]", Player[playerid][uName], playerid);
    	SendAdminMessage( C_GREEN, gb_string );
    }
	SendMes( playerid, -1, ""gbInfo"Вы успешно залогинились в админцентре!" );
	return true;
}

publics: UnRetestPlayer(playerid, Name[]) {
	clear_massive();
    new Rows, Fields;
    cache_get_data( Rows, Fields );
    if(!Rows) return SendMes( playerid, C_GRAY, "Данный игрок не был на ретесте!");
    mysql_format( mysql, query, sizeof query, "UPDATE `gb_users` SET `uRetest` = '0' WHERE `uName` = '%s'", Name);
	mysql_query( mysql, query );
	SendMes( playerid, C_GRAY, ""gbAccess"Вы успешно сняли игрока с ретеста!" );
	return true;
}

publics: OnPlayerBan(playername[], day, reason[], playerid) {
	new Rows, Fields;
    cache_get_data( Rows, Fields );
    if(!Rows) SendMes( playerid, C_GRAY, "Данного аккаунта не существует!");
    new adminlvl;
    adminlvl = cache_get_field_content_int(0, "uAdmin", mysql);
    if( adminlvl > 0 ) return SendMes( playerid, C_GRAY, "Нельзя заблокировать администратора!");
    new dates[16], unbandate, year, month, days;
	
	format( vb_string, sizeof vb_string,"Администратор %s забанил оффлайн игрока %s на %d дней. Причина: %s",Player[playerid][uName],playername,day,reason);
	SendAdminMessageToAll( C_LIGHTRED, vb_string, playerid );
	
	cache_get_field_content( 1, "uLastIP", gb_string, mysql);
	unbandate = gettime() + day * 86400;

	getdate(year, month, days);
	format( dates, sizeof dates, "%02d.%02d.%04d", days, month, year );
	
	format( query, sizeof query, "INSERT INTO gb_bans (name, ip, bandate, time, unbandate, reason, adminban) VALUES ('%s', '%s', '%s', %d, %d, '%s', '%s')", playername, gb_string, dates, day, unbandate, reason, Player[playerid][uName]);
	mysql_tquery( mysql, query );
	return true;
}


stock StartSpecPanel(playerid, specid) {
	if( Player[playerid][uAdmin] < 1 || !IsPlayerConnected( specid ) ) return true;
	new Float:Pos[3];
	GetPlayerPos(playerid, Pos[0], Pos[1], Pos[2]);
	if( !getData( playerid, "Spectrate" ) ) {
		SetPVarFloat(playerid, "PosSpecX", Pos[0]);
		SetPVarFloat(playerid, "PosSpecY", Pos[1]);
		SetPVarFloat(playerid, "PosSpecZ", Pos[2]);
		setData(playerid, "SpecInt", GetPlayerInterior(playerid));
		setData(playerid, "SpecVT", GetPlayerVirtualWorld(playerid));
	}
	ShowMenuForPlayer(Admin,playerid);
	
	//SpecPanelOpen(playerid);
	TogglePlayerSpectating(playerid, 1);
	setData( playerid, "SpecID", specid );
	setData( playerid, "Spectrate", 1 );
	SetPlayerInterior(playerid, GetPlayerInterior(specid));
	SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(specid));
	if(!IsPlayerInAnyVehicle(specid)) return PlayerSpectatePlayer(playerid, specid);
	else return PlayerSpectateVehicle(playerid, GetPlayerVehicleID(specid));
}

stock StopRecon( playerid, reason[] ) {
	if( Player[playerid][uAdmin] < 1 || !getData( playerid, "Spectrate" ) ) return true;
	SpawnPlayer(playerid);
	TogglePlayerSpectating(playerid, 0);
	setData(playerid, "SpecID", -1);
	GameTextForPlayer(playerid, reason, 1500, 4);
	setData(playerid, "Spectrate", 0);
	HideMenuForPlayer(Admin,playerid);
	//SetTimerEx( "AdminSpawnSpec", 2500, 0, "d", playerid );
	return true;
}

publics: AdminSpawnSpec( playerid ) return SetPlayerPos( playerid, getDataFloat( playerid, "PosSpecX" ), getDataFloat( playerid, "PosSpecY" ), getDataFloat( playerid, "PosSpecZ" ) );

stock showStats( playerid, giveplayerid ) {
	clear_massive();
	new bool:idx;
	format( gb_string, sizeof gb_string, "{AFAFAF}Имя игрока: %s [%d]\n", Player[giveplayerid][uName], Player[giveplayerid][uID]);
	strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "{AFAFAF}Деньги: %d$\n", Player[giveplayerid][uMoney]);
	strcat( vb_string,gb_string );
	format( gb_string, sizeof gb_string, "{AFAFAF}Банк: %d\n", Player[giveplayerid][uBank]);
	strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "{AFAFAF}Пол: %s\n", Player[giveplayerid][uSex] == 1 ? ("Мужской"):("Женский") );
	strcat( vb_string, gb_string );
	
	switch( Player[giveplayerid][uNation] ) {
			case 1: query = "Американец";
			case 2: query = "Латиноамериканец";
			case 3: query = "Русский";
			case 4: query = "Француз";
			case 5: query = "Итальянец";
			case 6: query = "Испанец";
			case 7: query = "Немец";
			case 8: query = "Португалец";
			case 9: query = "Австралиец";
			case 10: query = "Колумбиец";
			case 11: query = "Мексиканец";
			case 12: query = "Китаец";
			case 13: query = "Японец";
			case 14: query = "Бразилец";
			case 15: query = "Кореец";
			case 16: query = "Въетнамец";
			case 17: query = "Чех";
			case 18: query = "Британец";
			case 19: query = "Голландец";
			case 20: query = "Поляк";
	}
	
	format( gb_string, sizeof gb_string, "{AFAFAF}Национальность:    %s\n", query );
	strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "{AFAFAF}Цвет кожи: %s\n", Player[giveplayerid][uColor] == 1 ? ("Чёрный"):("Белый") );
	strcat( vb_string, gb_string );

	format( gb_string, sizeof gb_string, "{AFAFAF}Роль персонажа: %s\n", users_roles[ Player[giveplayerid][uRole] ] );
	strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "{AFAFAF}Телефон: %d\n", Player[giveplayerid][uNumber]);
	strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "{AFAFAF}Варны: %d\n", Player[giveplayerid][uWarn]);
	strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "{AFAFAF}Розыск: %d\n", Player[giveplayerid][uSuspect]);
	strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "{AFAFAF}Фракция: %d\n", Player[giveplayerid][uMember]);
	strcat( vb_string, gb_string);
	format( gb_string, sizeof gb_string, "{AFAFAF}Ранг: %d\n", Player[giveplayerid][uRank]);
	strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "{AFAFAF}Лидер: %d\n", Player[giveplayerid][uLeader]);
	strcat( vb_string, gb_string );
	
	for( new i; i != MAX_BUSINESS; i++ ) {
		if( !strcmp( Bizz::[i][bOwner], Player[giveplayerid][uName], true ) && Bizz::[i][bID] != 0) {
		    if( idx == false ) format( query, sizeof query, "%d", Bizz::[i][bID] );
			else format( query, sizeof query, "%s,%d", query, Bizz::[i][bID] );
		    idx = true;
		}
	}
	format( gb_string, sizeof gb_string, "{AFAFAF}Бизнес: %s\n", idx ? (query):("Нет") );
	strcat( vb_string, gb_string ); idx = false;
	
	for( new i; i != MAX_CARS_BUY; i++ ) {
		if( Car::[i][cID] == 0 || Car::[i][cModel] == 0 ) continue;
		if( !strcmp( Car::[i][cOwner], Player[giveplayerid][uName], true ) && Car::[i][cID] != 0) {
			if( idx == false ) format( query, sizeof query, "%d", Car::[i][cID] );
			else format( query, sizeof query, "%s,%d", query, Car::[i][cID] );
		    idx = true;
		}
	}
	format( gb_string, sizeof gb_string, "{AFAFAF}Транспорт: %s\n", idx ? (query):("Нет") );
	strcat( vb_string, gb_string ); idx = false;
	
	format( gb_string, sizeof gb_string, "Дата регистрации: %s\n", date("%dd.%mm.%yyyy", Player[giveplayerid][uRegDate]) );
	strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "Группировка: %d | %d\n", Player[giveplayerid][uCrimeM], Player[giveplayerid][uCrimeRank] );
	strcat( vb_string, gb_string);
	format( gb_string, sizeof gb_string, "{AFAFAF}Gmoney: %d\n", Player[giveplayerid][uGMoney]);
	strcat( vb_string, gb_string );
	
	if( Player[giveplayerid][uHouse] ) format( query, sizeof query, "%d | $%d", Player[giveplayerid][uHouse], HouseInfo[ getPlayerHouseID( giveplayerid ) ][hMoney] );
	
	format( gb_string, sizeof gb_string, "{AFAFAF}Дом: %s\n", Player[giveplayerid][uHouse] ? (query):("нет") );
	strcat( vb_string, gb_string );
	switch( Player[giveplayerid][uPremium] ) {
		case 1: format( query, sizeof query, "Light" );
		case 2: format( query, sizeof query, "Medium" );
		case 3: format( query, sizeof query, "Hard" );
	}
	format( gb_string, sizeof gb_string, "{AFAFAF}Премиум аккаунт: %s\n", Player[giveplayerid][uPremium] ? (query):("Нет") );
	strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "{AFAFAF}IP при регистрации: %s\n", Player[giveplayerid][uRegIP] );
	strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "{AFAFAF}IP: %s\n", Player[giveplayerid][uIP]);
	strcat( vb_string, gb_string );
	showPlayerDialog( playerid, 9999, 0, "Статистика", vb_string, "Закрыть", "" );
	return true;
}

stock adminFrisk( playerid, friskid ) {
	if( !IsPlayerConnected( friskid ) || !getData( friskid, "uLogin" ) ) return true;
	for(new i; i != MAX_SLOTS; i++) {
		if( !Inv[friskid][invSlot][i] ) continue;
		format( gb_string, sizeof gb_string, ""gbInfo"%s\t%d{ffffff}\n", 
			_itemsInfo[ Inv[friskid][invSlot][i] ][invName], Inv[ friskid ][invSlotKol][i]);
		strcat( vb_string, gb_string );
	}
	showPlayerDialog( playerid, 9999, 0, ""gbAccess"При обыске найдено:", vb_string, "Закрыть", "" );
	return true;
}