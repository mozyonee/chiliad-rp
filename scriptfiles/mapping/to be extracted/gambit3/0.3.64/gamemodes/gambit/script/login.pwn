
#include <YSI\y_hooks>

#define regtext		"{ffffff}Данный аккаунт не зарегистрирован на проекте {4a86b6}GamBit Role Play{ffffff}.\n Чтобы зарегистрировать аккаунт пройдите на сайт проекта {4a86b6}www.g-rp.su"
#define logtext 	"{ffffff}Добро пожаловать на сервер "cBLUE"GamBit RP{ffffff}\n\nВведите Ваш пароль от аккаунта в окошко:"



hook OnPlayerDisconnect( playerid, reason ) {
	if( getData( playerid, "uLogin" ) ) userUpdate( playerid, "uLastTime", gettime() );
	return true;
}

publics: OnPlayerLogin( playerid ) {
	clear_massive();
	new Rows, Fields;
    cache_get_data(Rows, Fields);
    if(Rows) {
		Player[playerid][uID] = cache_get_field_content_int(0, "uID", mysql);
     	Player[playerid][uSex] = cache_get_field_content_int(0, "uSex", mysql);
	    Player[playerid][uColor] = cache_get_field_content_int(0, "uColor", mysql);
	    Player[playerid][uNation] = cache_get_field_content_int(0, "uNation", mysql);
	    Player[playerid][uCountry] = cache_get_field_content_int(0, "uCountry", mysql);
	    Player[playerid][uRole] = cache_get_field_content_int(0, "uRole", mysql);
	    Player[playerid][uAge] = cache_get_field_content_int(0, "uAge", mysql);
		Player[playerid][uMoney] = cache_get_field_content_int(0, "uMoney", mysql);
		Player[playerid][uJob] = cache_get_field_content_int(0, "uJob", mysql);
		Player[playerid][uP][0] = cache_get_field_content_float(0, "uP1", mysql);
		Player[playerid][uP][1] = cache_get_field_content_float(0, "uP2", mysql);
		Player[playerid][uP][2] = cache_get_field_content_float(0, "uP3", mysql);
		Player[playerid][uLastTime] = cache_get_field_content_int(0, "uLastTime", mysql);
		Player[playerid][uInt][0] = cache_get_field_content_int(0, "uInt", mysql);
		Player[playerid][uInt][1] = cache_get_field_content_int(0, "uWorld", mysql);
		Player[playerid][uSuspect] = cache_get_field_content_int(0, "uSuspect", mysql);
		Player[playerid][uTaxiNoZp] = cache_get_field_content_int(0, "uTaxiNoZp", mysql);
		Player[playerid][uHunger] = cache_get_field_content_int(0, "uHunger", mysql);
		Player[playerid][uFermNoZp] = cache_get_field_content_int(0, "uFermNoZp", mysql);
		Player[playerid][uBusNoZp] = cache_get_field_content_int(0, "uBusNoZp", mysql);
		Player[playerid][uBusSkill] = cache_get_field_content_int(0, "uBusSkill", mysql);
		Player[playerid][uDalnNoZp] = cache_get_field_content_int(0, "uDalnNoZp", mysql);
		Player[playerid][uDalnSkill] = cache_get_field_content_int(0, "uDalnSkill", mysql);
		Player[playerid][uWoodsNoZp] = cache_get_field_content_int(0, "uWoodsNoZp", mysql);
		Player[playerid][uRadioChanel] = cache_get_field_content_int(0, "uRadioChanel", mysql);
		Player[playerid][uRadioSubChanel] = cache_get_field_content_int(0, "uRadioSubChanel", mysql);
        Player[playerid][uJobSkin] = cache_get_field_content_int(0, "uJobSkin", mysql);
        Player[playerid][uRetest] = cache_get_field_content_int(0, "uRetest", mysql);
        Player[playerid][uSupport] = cache_get_field_content_int(0, "uSupport", mysql);
        Player[playerid][uSubFrac] = cache_get_field_content_int(0, "uSubFrac", mysql);
		
		cache_get_field_content(0, "uInvSlots", gb_string, mysql), sscanf(gb_string,"p<|>a<d>[56]",Inv[playerid][invSlot]);
		cache_get_field_content(0, "uInvSlotsKol", gb_string, mysql), sscanf(gb_string,"p<|>a<d>[56]",Inv[playerid][invSlotKol]);
		cache_get_field_content(0, "uSettings", gb_string, mysql), sscanf(gb_string,"p<|>a<d>[9]",Player[playerid][uSettings]);
		cache_get_field_content(0, "uJobDouble", gb_string, mysql), sscanf(gb_string,"p<|>a<d>[7]",Player[playerid][uJobDouble]);
		cache_get_field_content(0, "uContacts", gb_string, mysql), sscanf(gb_string,"p<|>a<d>[10]",Player[playerid][uContacts]);
		cache_get_field_content(0, "uJailSettings", gb_string, mysql), sscanf(gb_string,"p<|>a<d>[5]",Player[playerid][uJailSettings]);
		cache_get_field_content(0, "uLicenses", gb_string, mysql), sscanf(gb_string,"p<|>a<d>[4]",Player[playerid][uLicenses]);
		cache_get_field_content(0, "uRenturn", gb_string, mysql), sscanf(gb_string,"p<|>a<d>[2]",Player[playerid][uRenturn]);
		cache_get_field_content(0, "uRenturn1", gb_string, mysql), sscanf(gb_string,"p<|>a<d>[2]",Player[playerid][uRenturn1]);
        cache_get_field_content(0, "uLicensesTake", gb_string, mysql), sscanf(gb_string,"p<|>a<d>[4]",Player[playerid][uLicensesTake]);
        cache_get_field_content(0, "uIsPlayerJob", gb_string, mysql), sscanf(gb_string,"p<|>a<d>[3]",Player[playerid][uIsPlayerJob]);
		cache_get_field_content(0, "favAnim", gb_string, mysql), sscanf(gb_string,"p<|>a<d>[10]",Player[playerid][uAnimList]);
		cache_get_field_content(0, "favAnimParams", gb_string, mysql), sscanf(gb_string,"p<|>a<d>[10]",Player[playerid][uAnimListParam]);
		cache_get_field_content(0, "uLastIP", Player[playerid][uLastIP], mysql );
		Player[playerid][uNumber] = cache_get_field_content_int(0, "uNumber", mysql);
		
		cache_get_field_content(0, "uPlayerText", query);
		strmid(Player[playerid][uPlayerText], query, 0, strlen(query), 255);


		cache_get_field_content(0, "uPhoneName1", phoneName[playerid][0], mysql);


		cache_get_field_content(0, "uPhoneName2", phoneName[playerid][1], mysql);
		cache_get_field_content(0, "uPhoneName3", phoneName[playerid][2], mysql);
		cache_get_field_content(0, "uPhoneName4", phoneName[playerid][3], mysql);
		cache_get_field_content(0, "uPhoneName5", phoneName[playerid][4], mysql);
		cache_get_field_content(0, "uPhoneName6", phoneName[playerid][5], mysql);
		cache_get_field_content(0, "uPhoneName7", phoneName[playerid][6], mysql);
		cache_get_field_content(0, "uPhoneName8", phoneName[playerid][7], mysql);
		cache_get_field_content(0, "uPhoneName9", phoneName[playerid][8], mysql);
		cache_get_field_content(0, "uPhoneName10", phoneName[playerid][9], mysql);


		Player[playerid][uLeader] = cache_get_field_content_int(0, "uLeader", mysql);
		Player[playerid][uMember] = cache_get_field_content_int(0, "uMember", mysql);
		Player[playerid][uRank] = cache_get_field_content_int(0, "uRank", mysql);

		Player[playerid][uWarn] = cache_get_field_content_int(0, "uWarn", mysql);
		Player[playerid][uMute] = cache_get_field_content_int(0, "uMute", mysql);
		Player[playerid][uBMute] = cache_get_field_content_int(0, "uBMute", mysql);
		Player[playerid][uPayTime] = cache_get_field_content_int(0, "uPayTime", mysql);
		Player[playerid][uPinCode] = cache_get_field_content_int(0, "uPinCode", mysql);


		Player[playerid][uRegDate] = cache_get_field_content_int(0, "uRegDate", mysql);
		Player[playerid][uLicGiveDate] = cache_get_field_content_int(0, "uLicGiveDate", mysql);
		Player[playerid][uBank] = cache_get_field_content_int(0, "uBank", mysql);
		Player[playerid][uLevel] = cache_get_field_content_int(0, "uLevel", mysql);
		Player[playerid][uPM] = cache_get_field_content_int(0, "uPM", mysql);
		Player[playerid][uOOC] = cache_get_field_content_int(0, "uOOC", mysql);
		Player[playerid][uRO] = cache_get_field_content_int(0, "uRO", mysql);
		Player[playerid][uEther] = cache_get_field_content_int(0, "uEther", mysql);
		Player[playerid][uBanPlayer] = cache_get_field_content_int(0, "uBanPlayer", mysql);
		Player[playerid][uRadio] = cache_get_field_content_int(0, "uRadio", mysql);
		Player[playerid][uDMJail] = cache_get_field_content_int(0, "uDMJail", mysql);
		Player[playerid][uArpBan] = cache_get_field_content_int(0, "uArpBan", mysql);
		Player[playerid][uEvictID] = cache_get_field_content_int(0, "uEvictID", mysql);

		Player[playerid][uCriminal] = cache_get_field_content_int(0, "uCriminal", mysql);
		Player[playerid][uLimitUgon] = cache_get_field_content_int(0, "uLimitUgon", mysql);
		Player[playerid][uGMoney] = cache_get_field_content_int(0, "uGMoney", mysql);
		Player[playerid][uLimitOtmis] = cache_get_field_content_int(0, "uLimitOtmis", mysql);

		Player[playerid][uJobValue] = cache_get_field_content_int(0, "uJobValue", mysql);
		Player[playerid][uJobValueDate] = cache_get_field_content_int(0, "uJobValueDate", mysql);
		Player[playerid][uCheck] = cache_get_field_content_int(0, "uCheck", mysql);
		Player[playerid][uShowJobValue] = cache_get_field_content_int(0, "uShowJobValue", mysql);
		
		Player[playerid][uStyle][0] = cache_get_field_content_int(0, "StyleOne", mysql);
		Player[playerid][uStyle][1] = cache_get_field_content_int(0, "StyleTwo", mysql);
		Player[playerid][uStyle][2] = cache_get_field_content_int(0, "StyleThree", mysql);
		Player[playerid][uStyle][3] = cache_get_field_content_int(0, "StyleFour", mysql);
		Player[playerid][uStyle][4] = cache_get_field_content_int(0, "StyleFive", mysql);
		Player[playerid][uChangeStyle] = cache_get_field_content_int(0, "ChangeStyle", mysql);
		Player[playerid][uStyleDate][0] = cache_get_field_content_int(0, "StyleDate", mysql);
		Player[playerid][uStyleDate][1] = cache_get_field_content_int(0, "StyleDateTwo", mysql);
		Player[playerid][uStyleDate][2] = cache_get_field_content_int(0, "StyleDateThree", mysql);
		Player[playerid][uValueSt] = cache_get_field_content_int(0, "ValueSt", mysql);
		
		Player[playerid][uTicket] = cache_get_field_content_int(0, "uTicket", mysql);
		Player[playerid][uTicketPay] = cache_get_field_content_int(0, "uTicketPay", mysql);
		
		Player[playerid][uDeath] = cache_get_field_content_int(0, "uDeath", mysql);
		Player[playerid][uCrimeL] = cache_get_field_content_int(0, "uCrimeL", mysql);
		Player[playerid][uCrimeM] = cache_get_field_content_int(0, "uCrimeM", mysql);
		Player[playerid][uCrimeRank] = cache_get_field_content_int(0, "uCrimeRank", mysql);
		cache_get_field_content(0, "uCrimeSet", gb_string, mysql ), sscanf( gb_string, "p<,>a<d>[10]", Player[playerid][uCrimeSet] );
		
		
		
		Player[playerid][uHouse] = cache_get_field_content_int(0, "uHouse", mysql);
		Player[playerid][uPremium] = cache_get_field_content_int( 0, "uPremium", mysql );
		Player[playerid][uPremiumDate] = cache_get_field_content_int( 0, "uPremiumDate", mysql );
		
		Player[playerid][uArrest] = cache_get_field_content_int(0, "uArrest", mysql);
		Player[playerid][uArrestCamera] = cache_get_field_content_int(0, "uArrestCamera", mysql);
		Player[playerid][uArrestTime] = cache_get_field_content_int(0, "uArrestTime", mysql);
		Player[playerid][uArrestStatDate] = cache_get_field_content_int(0, "uArrestStatDate", mysql);
		Player[playerid][uArrestStat] = cache_get_field_content_int(0, "uArrestStat", mysql);
		Player[playerid][uArrestCooler] = cache_get_field_content_int(0, "uArrestCooler", mysql);
		
		Player[playerid][uJail] = cache_get_field_content_int(0, "uJail", mysql);
		Player[playerid][uJailTime] = cache_get_field_content_int(0, "uJailTime", mysql);
		
		
		cache_get_field_content(0, "uRegIP", Player[playerid][uRegIP], mysql);
		//---------------------------------------------------------------------------------
		SetPlayerFightingStyleEx( playerid );
		
		if(getdate() > Player[playerid][uJobValueDate]) {
			switch( Player[playerid][uPremium] ) {
				case 1: Player[playerid][uJobValue] = 300;
				case 2: Player[playerid][uJobValue] = 400;
				case 3: Player[playerid][uJobValue] = 450;
				default: Player[playerid][uJobValue] = 200;
			}
            Player[playerid][uJobValueDate] = getdate();
            Player[playerid][uValueSt] = 0;
			if(Player[playerid][uShowJobValue]) {
			    format( gb_string, sizeof( gb_string ),"%d", Player[playerid][uJobValue]);
				PlayerTextDrawSetString(playerid,JobValueText[1][playerid], gb_string );
				PlayerTextDrawSetString(playerid,JobValueText[0][playerid],"Очки работы");
			}
            nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "uJobValue" , Player[playerid][uJobValue]);
            nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "ValueSt" , Player[playerid][uValueSt]);
            nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "uJobValueDate" , Player[playerid][uJobValueDate]);
		}
		if(Player[playerid][uShowJobValue]) {
			format( gb_string, sizeof( gb_string ),"%d", Player[playerid][uJobValue]);
			PlayerTextDrawSetString(playerid,JobValueText[1][playerid], gb_string );
			PlayerTextDrawShow(playerid, JobValueText[0][playerid]);
			PlayerTextDrawShow(playerid, JobValueText[1][playerid]);
			PlayerTextDrawSetString(playerid,JobValueText[0][playerid],"Очки работы");
		}
		if(Player[playerid][uSettings][8]) {
		    format( gb_string,sizeof( gb_string ),"CHANNEL:     %d~n~SLOT:        %d", Player[playerid][uRadioChanel], Player[playerid][uRadioSubChanel]);
			PlayerTextDrawSetString(playerid,RadioShow[1][playerid], gb_string);
			PlayerTextDrawShow(playerid, RadioShow[1][playerid]);
			PlayerTextDrawShow(playerid, RadioShow[0][playerid]);
		}
		if(Player[playerid][uBanPlayer] != 0) {
			if(Player[playerid][uBanPlayer] > gettime()) {
				SendMes(playerid, C_GRAY, ""gbError"Простите, но вы забанены на данном сервере. Дата разблокировки - "cBLUE"%s", date("%dd.%mm.%yy", Player[playerid][uBanPlayer]) );
	 			return KickEx(playerid);
			}
			else {
			    SendMes(playerid, C_GRAY, ""gbInfo"Срок действия вашего бана закончен. Не нарушайте правила сервера!");
			    Player[playerid][uBanPlayer] = 0;
			    nowUpdateInfo(playerid, "d" , "gb_users" , "uName" , "uBanPlayer" , Player[playerid][uBanPlayer]);
			}
		}
		if(Player[playerid][uRetest] != 0) {
		    SendClientMessage(playerid,C_GRAY, "Ваш аккаунт был отправлен на ретест. Чтобы пройти тест посетите наш сайт — www.g-rp.su");
			return KickEx(playerid);
		}
		SetPlayerColor( playerid, 0xFFFFFF00 );
		SetPlayerScore( playerid, 1 );
		
		setData( playerid, "SpecID", -1 );
		setData( playerid, "uLogin", 1 );
		//
		new Float:x, Float:y, Float:z, Float:root;
		getSpawnInfo( playerid, x, y, z, root );
		SetSpawnInfo( playerid, 264, 0, x, y, z, root, 0, 0, 0, 0, 0, 0 );
		togglePlayerSpectating(playerid,false);
		TogglePlayerControllable( playerid, true );
		if(Player[playerid][uPinCode] > 0) showPin( playerid );
		else {
			SendClientMessage( playerid, C_GRAY, ""gbInfo"Основное меню вашего персонажа открывается кнопкой "cBLUE"Y");
			SpawnPlayer( playerid );
		}
		format(query,sizeof(query),"UPDATE gb_users SET uStatus = '1' WHERE BINARY uName = '%s'",Player[playerid][uName]);
		mysql_tquery( mysql, query, "", "");
		format(query,sizeof(query),"SELECT * FROM `gb_business_money` WHERE Name = '%s'",Player[playerid][uName]);
		mysql_tquery( mysql, query, "MySQLQuery", "dd", playerid, 33);
		format(query,sizeof(query),"SELECT * FROM `gb_houses_money` WHERE Name = '%s'",Player[playerid][uName]);
		mysql_tquery( mysql, query, "MySQLQuery", "dd", playerid, 34);
		setData( playerid, "SessionStart", gettime() );
		new ip[32];
		GetPlayerIp(playerid, ip, sizeof(ip));
		setDataText( playerid, "PlayerIP", ip );
        LoadCars(playerid);
		updateWeather( playerid );
		stopPlayer( playerid, 3 );
	}
	else {
		if( getData( playerid, "Login:WrongPass" ) == 2 ) {
			SendMes( playerid, C_GRAY, ""gbError"Вы ввели неверный пароль. Осталось попыток: 3/3" );
			SendMes( playerid, C_GRAY, ""gbError"Вы были кикнуты с сервера за неправильно введёный пароль!" );
			KickEx( playerid );
			return true;
		}
		giveData( playerid, "Login:WrongPass", 1 );
		SendMes( playerid, C_GRAY, ""gbError"Вы ввели неверный пароль. Осталось попыток: "cBLUE"%d/3", getData( playerid, "Login:WrongPass" ) );
		showPlayerDialog( playerid, d_auth, 3, "Авторизация", logtext, "Дальше", "Выход" );
	}
	return true;
}

hook OnPlayerSpawn(playerid) {
	//Streamer_Update(playerid);
	
    if( !getData( playerid, "uLogin" ) ) KickEx(playerid);
	PreloadAnim( playerid );
	setPlayerHealth( playerid, 100.0 );
	SetPlayerSkillLevel(playerid, WEAPONSKILL_PISTOL, 0);
	SetPlayerSkillLevel(playerid, WEAPONSKILL_MICRO_UZI, 0);
	if( getData( playerid, "playerCuffed" ) ) {
		SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CUFFED);
        SetPlayerAttachedObject(playerid, 4, 19418, 6, -0.011000, 0.028000, -0.022000, -15.600012, -33.699977, -81.700035, 0.891999, 1.000000, 1.168000);
	}
	PlayerPlaySound(playerid, 1098, 0.0, 0.0, 0.0);
	SetPlayerWantedLevel(playerid,Player[playerid][uSuspect]);
	ResetWeapons(playerid);
	GetBackSkin(playerid);
	
	switch(Player[playerid][uMember]) {
		case 4,6: {
		    if( getData( playerid, "PlayerColor" ) ) SetPlayerColor( playerid, FracColor[0] );
		    else SetPlayerColor( playerid, FracColor[ Player[playerid][uMember] ] );
		}
		default: SetPlayerColor( playerid, FracColor[0] );
	}
	SetPlayerInterior( playerid, Player[playerid][uInt][0] );
	SetPlayerVirtualWorld(playerid, Player[playerid][uInt][1] );
	return true;
}

hook OnPlayerRequestSpawn(playerid) {
	if(! getData( playerid, "uLogin" ) ) {
	    SendClientMessage( playerid, -1, ""gbError"Не доступно!" );
	    return false;
	}
    return true;
}

hook OnPlayerRequestClass(playerid,classid) {
	if( IsPlayerNPC( playerid ) ) return true;
   	if( getData( playerid, "uLogin" ) ) return SpawnPlayer(playerid);
	setData( playerid, "Joined", 1 );
	OnPlayerJoin( playerid );
    return true;
}

publics: OnPlayerJoin( playerid ) {
	InterpolateCameraPos( playerid, 1494.964233, 13.226538, 189.263305, 1481.021728, -1798.964599, 254.696289, 50000);
    InterpolateCameraLookAt( playerid, 1494.903320, 8.249490, 188.788665, 1481.015502, -1795.936523, 250.717529, 50000);
	
    GetPlayerName( playerid, Player[playerid][uName], 24 );
	mysql_real_escape_string( Player[playerid][uName], Player[playerid][uName] );
 	TextDrawShowForPlayer(playerid,Logo[0]);
 	TextDrawShowForPlayer(playerid,Logo[1]);
 	TextDrawShowForPlayer(playerid,Logo[2]);
 	TextDrawShowForPlayer(playerid,Logo[3]);
 	
    format(query, sizeof( query ),"SELECT * FROM `gb_users` WHERE `uName` = '%s' LIMIT 1", Player[playerid][uName] );
	mysql_tquery( mysql, query, "OnPlayerCheckAcc", "d", playerid);
    return true;
}

publics: OnPlayerCheckAcc(playerid) {
    new Rows, Fields;
    cache_get_data(Rows, Fields);
    if(!Rows) showPlayerDialog(playerid, 9999, 0, "Регистрация", regtext, "Выход","");
	else {
		new ActiveCheck;
		ActiveCheck = cache_get_field_content_int(0, "uActive", mysql);
		if(ActiveCheck == 1) showPlayerDialog(playerid, d_auth, 3, "Авторизация", logtext, "Дальше", "Выход" );
		else showPlayerDialog( playerid, 9999, 0, "Регистрация", "Ваш аккаунт ещё не активирован. Время активации может\nзанимать до 24 часов.", "Выход", "" );
	} 
	return true;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	clear_massive();
	switch(dialogid) {
		case d_auth: {
			if(!response) return Kick(playerid);
			if(!strlen(inputtext)) return showPlayerDialog(playerid, d_auth, 3,"Авторизация",logtext,"Дальше","Выход");
			if(!CheckNormalPassword(inputtext)) return showPlayerDialog(playerid, d_auth,3,"Авторизация",logtext,"Дальше","Выход");
			format( query, sizeof query, "SELECT * FROM `gb_users` WHERE `uPass` = md5(md5('%s')) AND BINARY `uName` = '%s'", inputtext, Player[playerid][uName]);
			mysql_tquery( mysql, query, "OnPlayerLogin", "i", playerid);
		}
	}
	return true;
}
