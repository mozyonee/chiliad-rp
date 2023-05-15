#include <YSI\y_hooks>

CMD:setint( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 2 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для данной команды!");
	if( sscanf( params, "dd", params[0], params[1] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /setint [ид игрока][интерьер]" );
	if( !getData( params[0], "uLogin" ) ) return SendMes( playerid, -1, ""gbError"Игрок не в сети!" );
	if( params[1] < 0 ) return SendMes( playerid, -1, "Неверный аргумент!" );
	SetPlayerInterior( params[0], params[1] );
	return true;
}

CMD:setworld( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 2 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для данной команды!");
	if( sscanf( params, "dd", params[0], params[1] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /setworld [ид игрока][вирт.мир]" );
	if( !getData( params[0], "uLogin" ) ) return SendMes( playerid, -1, ""gbError"Игрок не в сети!" );
	if( params[1] < 0 ) return SendMes( playerid, -1, "Неверный аргумент!" );
	SetPlayerVirtualWorld( params[0], params[1] );
	return true;
}

CMD:create( playerid, params[] ) {
	if(Player[playerid][uAdmin] < 7) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для данной команды!");
	showPlayerDialog( playerid, d_create, 2, "Создание", "1. Создать подъезд\n2. Создать дом", "Дальше", "Закрыть" );
	return true;
}

CMD:tp( playerid, params[] ) {
	if(Player[playerid][uAdmin] < 1 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
	showPlayerDialog(playerid, d_teleport, DIALOG_STYLE_LIST, "Телепорт", "1. "cGRAY"Организации{ffffff}\n2. "cGRAY"Работы{ffffff}\n3. "cGRAY"Транспортные узлы{ffffff}\n4. "cGRAY"Округ Рэд{ffffff}\n5. "cGRAY"Разное\n6. "cGRAY"Интерьеры", "Дальше", "Закрыть");
	return true;
}

CMD:adm( playerid, params[] ) {
	if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
	strcat( vb_string, "1. "cGRAY"Администрация в игре\n");
	strcat( vb_string, "{ffffff}2. "cGRAY"Телепортироваться\n");
	strcat( vb_string, "{ffffff}3. "cGRAY"Список всех команд\n");
	strcat( vb_string, "{ffffff}4. "cGRAY"Прослушка\n");
	if(Player[playerid][uAdmin] >= 5) strcat( vb_string, "{ffffff}6. "cGRAY"Управление Support's" );
	showPlayerDialog( playerid, d_admins, 2, " ", vb_string, "Дальше", "Закрыть" );
	return 1;
}

CMD:hp( playerid, params[] ) {
	if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	setPlayerHealth(playerid,255.0);
	return 1;
}

CMD:sethp( playerid, params[] ) {
	if(Player[playerid][uAdmin] < 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if(sscanf(params, "dd", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /sethp [ ID игрока ] [ Здоровье ]");
	setPlayerHealth(params[0],params[1]);
	SendClientMessage(playerid,C_GRAY,"Вы установили здоровье игрока!");
	return 1;
}

CMD:getnpc( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 4 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для использования данной команды" );
	if( sscanf( params, "u", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /getnpc [ ID npc ]" );
	if( !IsPlayerNPC( params[0] ) ) return SendMes( playerid, C_GRAY, ""gbError"Этот игрок не NPC!" );
	new Float:pos[3];
	GetPlayerPos( playerid, pos[0], pos[1], pos[2] );
	SetPlayerPos( params[0], pos[0], pos[1], pos[2] );
	return true;
}

CMD:resethouse( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 3 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для использования данной команды" );
	if( sscanf( params, "u", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /resethouse [ ID npc ]" );
	Player[ params[0] ][uHouse] = 0, userUpdate( params[0], "uHouse", 0 );
	SendMes( playerid, C_GRAY, ""gbAccess"Вы сняли с игрока %s дом", Player[ params[0] ][uName] );
	SendMes( playerid, C_GRAY, ""gbAccess"Администратор %s снял с вас дом", Player[ playerid ][uName] );
	return true;
}

CMD:goto( playerid, params[] ) {
	if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
    if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /goto [ id ]");
    if(!IsPlayerConnected(params[0]) || Player[params[0]][uAdmin] > Player[playerid][uAdmin]) return SendClientMessage(playerid,C_GRAY,"Неверный ID игрока!");
	new Float:p[3];
	GetPlayerPos(params[0],p[0],p[1],p[2]);
	SendClientMessage(playerid,C_GRAY,""gbAccess"Вы телепортировались к игроку!");
	if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER) {
		new Float:vp[3];
		GetVehicleVelocity(GetPlayerVehicleID(playerid),vp[0],vp[1],vp[2]);
		setVehiclePos(GetPlayerVehicleID(playerid),p[0] + 1.0,p[1] + 1.0,p[2] + 1.0);
		SetVehicleVelocity(GetPlayerVehicleID(playerid),vp[0],vp[1],vp[2]);
	}
	else setPlayerPos(playerid,p[0] + 1.0,p[1] + 1.0,p[2]);
	SetPlayerVirtualWorld(playerid,GetPlayerVirtualWorld(params[0]));
  	SetPlayerInterior(playerid,GetPlayerInterior(params[0]));
	return 1;
}

CMD:setweather( playerid, params[] ) { 
	if( Player[playerid][uAdmin] < 2 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для данной команды!");
	if( !getData( playerid, "playerAdmin" ) ) return SendMes( playerid, C_GRAY, ""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
    if( sscanf( params, "u", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /setweather [ id ]");
    if( params[0] > 1 || params[0] > 48 ) return true;
	server_weather = params[0];
	foreach( new i: Player) updateWeather( i );
	return true;
}

CMD:house( playerid, params[] ) { 
	if( Player[playerid][uAdmin] < 2 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для данной команды!");
	if( !getData( playerid, "playerAdmin" ) ) return SendMes( playerid, C_GRAY, ""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
    if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /house [ id ]");
    
	for( new h; h < sizeof HouseInfo; h++ ) {
		if( HouseInfo[h][hID] == params[0] ) {
			SetPlayerPos( playerid, HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2] );
			SetPlayerVirtualWorld( playerid, HouseInfo[h][hEnterWorld] );
			SetPlayerInterior( playerid, HouseInfo[h][hEnterInt] );
			SendMes( playerid, -1, ""gbInfo"Вы успешно телепортировались" );
			break;
		}
	}
	return true;
}

CMD:alogin( playerid, params[] ) {
	showPlayerDialog( playerid, d_admins + 8, DIALOG_STYLE_PASSWORD, "Админцентр", 
		"{B4B5B7}Введите пароль для доступа к админцентру:", "Далее", "Отмена" );
	//if(Player[playerid][uAdmin] != 0 && GetPVarInt(playerid,"playerAdmin") != 1) showPlayerDialog(playerid, d_admins + 8, 1, "Авторизация", "{ffffff}Введите в данное окошко ваш пароль от админки:", "Принять", "Отмена");
	return 1;
}

CMD:alogout( playerid, params[] ) {
	if( !Player[playerid][uAdmin] ) return true;
	Player[playerid][uAdmin] = 0;
    delData( playerid, "playerAdmin" );
	SendMes( playerid, C_GRAY, ""gbInfo"Вы ушли с админ дежурства" );
	return true;
}

CMD:warn( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 2) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для данной команды!");
	if( GetPVarInt( playerid, "playerAdmin" ) == 0 ) return SendMes( playerid, C_GRAY, ""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
	if( sscanf(params, "ds[32]", params[0], params[1] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /warn [ id ] [ reason ]");
	if( !IsPlayerConnected( params[0] ) || IsKicked(params[0]) || params[0] == playerid || Player[playerid][uAdmin] < Player[params[0]][uAdmin] || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
	new unbandate;
	if( Player[ params[0] ][uAdmin] > 0 ) {
		unbandate = gettime() + 10 * 86400;
		SendMes( playerid, C_LIGHTRED, "Вы были кикнуты за блокировку администратора!" );
		return KickEx( playerid );
	}
	Player[ params[0] ][uWarn]++;
	if( Player[ params[0] ][uWarn] == 3 ) {
		format( vb_string, sizeof vb_string, "Администратор %s забанил игрока %s навсегда. ( 3 предупреждения ) Причина: %s", Player[playerid][uName], Player[params[0]][uName], params[1] );
		SendAdminMessageToAll( C_LIGHTRED, vb_string, params[0] );
			
		Player[ params[0] ][uBanPlayer] = unbandate;
		userUpdate( playerid, "uBanPlayer", Player[ params[0] ][uBanPlayer] );

		new ip[32], dates[16], year, month, day;
		unbandate = 2145917100;
		getdate( year, month, day );
		format( dates, 16, "%02d.%02d.%04d", day, month, year );
		GetPlayerIp( params[0], ip, 32 );
		format( query, sizeof query, "INSERT INTO gb_bans (name, ip, bandate, time, unbandate, reason, adminban) VALUES ('%s', '%s', '%s', %d, %d, '%s', '%s')", Player[params[0]][uName], ip, dates, "900", unbandate, params[2], Player[playerid][uName]);
		mysql_tquery( mysql, query );
	}
	else {
		
		userUpdate( params[0], "uWarn", Player[ params[0] ][uWarn] );
		userUpdate( params[0], "uRetest", 1 );
		format( vb_string, sizeof vb_string,"Администратор %s выдал warn игроку %s. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1]);
        SendAdminMessageToAll( C_LIGHTRED, vb_string, params[0] );
		KickEx( params[0] );
	}
	return 1;
}


CMD:giveitem( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 6 || getData(playerid,"playerAdmin") == 0) return true;
	if( sscanf( params, "dd", params[0], params[1] ) ) return SendMes( playerid, C_GRAY,""gbInfo"Введите: /giveitem [ id item ] [ item params ]");
	format( query, sizeof query,"INSERT INTO `gb_itemlog` (AdminName,ItemID,ItemCount) VALUES ('%s','%d', '%d')", Player[playerid][uName], params[0], params[1]);
	mysql_query( mysql, query );
		
	format( gb_string, sizeof gb_string, "[A] Администратор %s выдал себе предмет %d [Count: %d]", Player[playerid][uName], params[0], params[1]);
	SendAdminMessage( C_LIGHTRED, gb_string );
	GivePlayerItem( playerid, params[0], params[1] );
	return true;
}

CMD:unretest( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 5 || getData(playerid,"playerAdmin") == 0 ) return true;
	if( sscanf( params, "s[32]", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /unretest [ name ]" );
	format( vb_string, sizeof vb_string,"SELECT * FROM `gb_users` WHERE BINARY  `uName` = '%s' AND `uRetest` > 0 LIMIT 1", params[0] );
	mysql_tquery( mysql, vb_string, "UnRetestPlayer", "ds", playerid, params[0] );
	return true;
}

CMD:unban( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 5 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для данной команды!");
	if( getData( playerid, "playerAdmin" ) == 0 ) return SendMes( playerid, C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
	if( sscanf( params, "s[32]", params[0])) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /unban [ name ]");
	mysql_format( mysql, query, sizeof query, "UPDATE `gb_users` SET `uBanPlayer` = '0' WHERE `uName` = '%s'", params[0]);
	mysql_tquery( mysql, query, "", "");
	SendMes( playerid, C_GRAY, ""gbAccess"Вы успешно разбанили игрока!");
	return true;
}

CMD:unbanip( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 5 || getData( playerid, "playerAdmin" ) == 0 ) return true;
	if( sscanf( params, "s[32]", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /unbanip [ip adres]");
	format( query, sizeof query,"DELETE FROM gb_ipbans WHERE uIP = '%s'", params[0] );
	mysql_tquery( mysql, query, "", "");
	SendMes( playerid, C_GRAY, ""gbAccess"Вы успешно разбанили IP!" );
	format( gb_string, sizeof gb_string, "[A] Администратор %s разбанил IP: %s", Player[playerid][uName], params[0] );
	SendAdminMessage( C_LIGHTRED, vb_string );
	return true;
}

CMD:unwarn( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 4 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для данной команды!");
	if( getData(playerid,"playerAdmin") == 0 ) return SendMes( playerid, C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
	if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, C_GRAY,""gbInfo"Введите: /unwarn [ id ]");
	if( !IsPlayerConnected( params[0] ) ) return SendMes( playerid,C_GRAY,""gbError"Неверный ID игрока!");
	if( !Player[ params[0] ][uWarn] ) return SendMes( playerid,C_GRAY,""gbError"У данного игрока нет предупреждений!");
	format( vb_string, sizeof vb_string,"Администратор %s снял все предупреждения с %s.", Player[playerid][uName], Player[params[0]][uName] );
	SendAdminMessageToAll( C_LIGHTRED, vb_string, params[0]);
	Player[ params[0] ][uWarn] = 0;
	userUpdate( params[0], "uWarn", 0 );
	return true;
}

CMD:sp( playerid, params[] ) {
	if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /sp [ id ]");
	if(!IsPlayerConnected(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Игрока нет в сети!");
	if(params[0] == playerid) return SendClientMessage(playerid, C_GRAY, ""gbError"Вы не можете наблюдать за собой!");
	StartSpecPanel( playerid, params[0] );
	return true;
}
	
CMD:aafk( playerid, params[] ) {
    if( Player[playerid][uAdmin] < 1 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для данной команды!");
    if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /aafk [ время ]" );
    new count;
    foreach(new i : Player) {
        if( !getData( i, "uLogin" ) || getData( i, "PlayerAFK" ) < params[0] ) continue;
        
		format( vb_string, sizeof vb_string,"%s%d.%s [%d] - %d sec\n", 
			vb_string, count + 1, Player[i][uName], i, getData( i, "PlayerAFK" ) );
		count++;
		if( count > 30 ) break;
	}	
    if( !count ) return SendMes( playerid, C_GRAY, ""gbError"Не найдено игроков в AFK" );
    showPlayerDialog( playerid, 9999, 0, "Игроки в AFK", vb_string, "Закрыть", "" );
	return true;
}

CMD:stats( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 1 ) return SendMes( playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if( !getData( playerid, "playerAdmin" ) ) return SendMes( playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
	if( sscanf( params, "d", params[0] ) ) return SendMes( playerid,C_GRAY,""gbInfo"Введите: /stats [ id ]");
	showStats( playerid, params[0] );
	return true;
}	

CMD:afrisk( playerid, params[] ) {
	if( !Player[playerid][uAdmin] ) return true;
	if( sscanf( params, "u", params[0] )) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /afrisk [ ID игрока ]" );
	adminFrisk( playerid, params[0] );
	return true;
}

CMD:gethere( playerid, params[] ) {
	if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
    if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /gethere [ id ]");
    if(!IsPlayerConnected(params[0]) || Player[params[0]][uAdmin] > Player[playerid][uAdmin]  || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,"Неверный ID игрока!");
	new Float:p[3];
	GetPlayerPos(playerid,p[0],p[1],p[2]);
	SendClientMessage(playerid,C_GRAY,""gbAccess"Вы телепортировали игрока к себе!");
	format(vb_string,sizeof(vb_string),""gbInfo"%s - телепортировал вас к себе!",Player[playerid][uName]);
	SendClientMessage(params[0],C_GRAY,vb_string);
	if(GetPlayerState(params[0]) == PLAYER_STATE_DRIVER) {
		new Float:vp[3];
		GetVehicleVelocity(GetPlayerVehicleID(params[0]),vp[0],vp[1],vp[2]);
		setVehiclePos(GetPlayerVehicleID(params[0]),p[0] + 1.0,p[1] + 1.0,p[2] + 1.0);
		SetVehicleVelocity(GetPlayerVehicleID(params[0]),vp[0],vp[1],vp[2]);
	}
	else { 
		if( getData( params[0], "User:inInt" ) && GetPlayerInterior( playerid ) == 0 ) {
			delData( params[0], "User:inInt" ), updateWeather( params[0] );
		}		
		setPlayerPos(params[0],p[0] + 1.0,p[1] + 1.0,p[2]);
	}	
	SetPlayerVirtualWorld(params[0],GetPlayerVirtualWorld(playerid));
  	SetPlayerInterior(params[0],GetPlayerInterior(playerid));
	return 1;
}

CMD:ahevict( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 3 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для данной команды" );
	if( sscanf( params, "u", params[0] ) ) return SendMes( playerid, -1, ""gbInfo"Введите: /ahevict [ id ]" );
	if( !getData( params[0], "uLogin" ) ) return SendMes( playerid, -1, ""gbError"Данный игрок ещё не вошёл!" );
	SendMes( playerid, C_GRAY, ""gbAccess"Вы успешно выселели %s из дома", Player[ params[0] ][uName] );
	SendMes( params[0], C_GRAY, ""gbAccess"Администратор выселил вас из дома" );
	Player[ params[0] ][uHouse] = 0;
	userUpdate( params[0], "uHouse", 0 );
	return true;
}

CMD:payday( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 7 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для данной команды" );
	payDay( playerid );
	return true;
}

CMD:unprison( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 5 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для данной команды" );
	if( sscanf( params, "u", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /unprison [ id ]" );
	if( !getData( params[0], "uLogin" ) ) return SendMes( playerid, C_GRAY, ""gbError"Игрок ещё не вошёл!" );
	Player[ params[0] ][uArrestStat]++;
	Player[ params[0] ][uArrestStatDate] = gettime();
	Player[ params[0] ][uArrest] = 0, Player[ params[0] ][uArrestCamera] = 0, Player[ params[0] ][uArrestTime] = 0;
	userUpdate( params[0], "uArrest", 0 ), userUpdate( params[0], "uArrest", 0 ), userUpdate( params[0], "uArrest", 0 );
	userUpdate( params[0], "uArrestStat", Player[ params[0] ][uArrestStat] );
	userUpdate( params[0], "uArrestStatDate", gettime() );
	SendMes( playerid, C_GRAY, ""gbAccess"Вы выпустили игрока %s из тюрьмы", Player[ params[0] ][uName] );
	SendMes( params[0], C_GRAY, ""gbAccess"Вы были выпущенны из тюрьмы, администратором %s", Player[playerid][uName] );
	
	format( query, sizeof query, "SELECT * FROM `gb_prison` WHERE `pName` = '%s' AND `pArrest` = '1'", Player[ params[0] ][uName] );
	mysql_tquery( mysql, query, "givePrisonInv", "ds", params[0], "(( Admin ))" );

	
	if( Player[ params[0] ][uRole] == 6 ) Player[ params[0] ][uRole] = 1, userUpdate( params[0], "uRole", 1 );
	return true;
}