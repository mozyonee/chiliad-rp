
#include <YSI\y_hooks>

#define regtext		""gbInfo"Информация.\n\n\
					 Добро пожаловать на "cBLUE"GamBit Role Play{ffffff}.\n\
 					 Данный аккаунт не зарегистрирован.\n\
					 Для того, чтобы зарегистрировать аккаунт перейдите на - {4a86b6}www.g-rp.su"cWHITE"."
					  
#define logtext 	""gbAccess"Авторизация.\n\n\
					"cWHITE"Добро пожаловать на "cBLUE"GamBit RolePlay"cWHITE".\n\n\
					Для продолжения игры, Вам необходимо авторизоваться.\n\
					Введите Ваш пароль ниже:"

#define bantext  	""gbError"Информация.\n\n\
					  Добро пожаловать на "cBLUE"GamBit Role Play{ffffff}.\n\
					  Вы не можете авторизоваться, Ваш аккаунт заблокирован до "cBLUE"%s"cWHITE"."

#define retesttext  ""gbError"Информация.\n\n\
					  Добро пожаловать на "cBLUE"GamBit Role Play{ffffff}.\n\
					  Вы не можете авторизоваться, Ваш аккаунт отправлен на ретест."
					  
#define checktext  	""gbInfo"Информация.\n\n\
					  Добро пожаловать на "cBLUE"GamBit Role Play{ffffff}.\n\
					  Ваш аккаунт зарегистрирован и ожидает проверки."

#define deniedtext  ""gbInfo"Информация.\n\n\
					  Добро пожаловать на "cBLUE"GamBit Role Play{ffffff}.\n\
					  Ваш аккаунт недоступен, в связи с тем, что он отклонён администрацией."
					  
#define cktext  	""gbInfo"Информация.\n\n\
					  Добро пожаловать на "cBLUE"GamBit Role Play{ffffff}.\n\
					  Ваш аккаунт недоступен, в связи с тем, что Ваш персонаж получил "cBLUE"<Character Kill>"cWHITE".\n\n\
					  Для пересоздания игрового персонажа, перейдите на - "cBLUE"www.g-rp.su"cWHITE"."					  
					  
					  

hook OnPlayerConnect( playerid )
{
	setData( playerid, "SpecID", -1 );
	player_microphone{ playerid } = 0;
	return 1;
}
					  
hook OnPlayerDisconnect( playerid, reason ) 
{
	if( !getData( playerid, "uLogin" ) ) 
		return 1;
	
	if( GetPVarInt( playerid, "Player:UseAction" ) )
	{
		SetPVarInt( playerid, "Player:UseAction", 0 );
		
		if( IsValidDynamic3DTextLabel( Player[ playerid ][uAction] ) )
		{
			DestroyDynamic3DTextLabel( Player[ playerid ][uAction] );
			Player[ playerid ][uAction] = Text3D: INVALID_3DTEXT_ID;
		}
	}
	
	format:gb_string( "%d|%d|%d", 
		Player[playerid][uIsPlayerJob][0],
		Player[playerid][uIsPlayerJob][1],
		Player[playerid][uIsPlayerJob][2]
	);
	
	userUpdateStr( playerid, "uIsPlayerJob" , gb_string );
	
	userUpdate( playerid, "uLastTime", gettime() );
	
	if( !GetAccessAdmin( playerid, 1 ) )
	{
		format:gb_string("(( %s[%d] ", Player[playerid][uName], playerid );
		
		switch( reason )
		{
			case 0 : strcat( gb_string, "вылетел. ))" );
			case 1 : strcat( gb_string, "вышел. ))" );
			case 2 : strcat( gb_string, "отсоединён. ))" );
		}
		
		ProxDetector( 20.0, playerid, gb_string, COLOR_FADE2, COLOR_FADE3, COLOR_FADE3, COLOR_FADE4, COLOR_FADE5, 2 );
	}
	
	return 1;
}

hook OnPlayerDeath( playerid, killerid, reason )
{
	if( GetPVarInt( playerid, "Player:UseAction" ) )
	{
		SetPVarInt( playerid, "Player:UseAction", 0 );
		
		if( IsValidDynamic3DTextLabel( Player[ playerid ][uAction] ) )
		{
			DestroyDynamic3DTextLabel( Player[ playerid ][uAction] );
			Player[ playerid ][uAction] = Text3D: INVALID_3DTEXT_ID;
		}
	}
	
	return 1;
}

function OnPlayerLogin( playerid ) 
{
	clear_massive();
	new Rows, Fields;
    cache_get_data(Rows, Fields);
    if(Rows) 
	{
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
		
		cache_get_field_content(0, "uLicGiveDate", Player[playerid][uLicGiveDate], mysql);
		
		Player[playerid][uBank] = cache_get_field_content_int(0, "uBank", mysql);
		Player[playerid][uLevel] = cache_get_field_content_int(0, "uLevel", mysql);
		Player[playerid][uPM] = cache_get_field_content_int(0, "uPM", mysql);
		Player[playerid][uOOC] = cache_get_field_content_int(0, "uOOC", mysql);
		Player[playerid][uRO] = cache_get_field_content_int(0, "uRO", mysql);
		Player[playerid][uEther] = cache_get_field_content_int(0, "uEther", mysql);
		Player[playerid][uBanPlayer] = cache_get_field_content_int(0, "uBanPlayer", mysql);
		Player[playerid][uRadio] = cache_get_field_content_int(0, "uRadio", mysql);
		Player[playerid][uDMJail] = cache_get_field_content_int(0, "uDMJail", mysql);
		Player[playerid][uEvictID] = cache_get_field_content_int(0, "uEvictID", mysql);

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
		
		cache_get_field_content(0, "uArrestReason", Player[playerid][uArrestReason], mysql);
		
		Player[playerid][uJail] = cache_get_field_content_int(0, "uJail", mysql);
		Player[playerid][uJailTime] = cache_get_field_content_int(0, "uJailTime", mysql);
		
		
		cache_get_field_content(0, "uRegIP", Player[playerid][uRegIP], mysql);
		//---------------------------------------------------------------------------------
		SetPlayerFightingStyleEx( playerid );
		
		if(getdate() > Player[playerid][uJobValueDate]) {
			switch( Player[playerid][uPremium] ) 
			{
				case 1 : Player[playerid][uJobValue] = 300;
				case 2 : Player[playerid][uJobValue] = 400;
				case 3 : Player[playerid][uJobValue] = 450;
				case 4 : Player[playerid][uJobValue] = 500;
				default: Player[playerid][uJobValue] = 200;
			}
			
            Player[playerid][uJobValueDate] = getdate();
            Player[playerid][uValueSt] = 0;
			if(Player[playerid][uShowJobValue]) {
			    format( gb_string, sizeof( gb_string ),"Очки работы: %d", Player[playerid][uJobValue]);
				PlayerTextDrawSetString(playerid,JobValueText[playerid], gb_string );
			}
            nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "uJobValue" , Player[playerid][uJobValue]);
            nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "ValueSt" , Player[playerid][uValueSt]);
            nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "uJobValueDate" , Player[playerid][uJobValueDate]);
		}
		if(Player[playerid][uShowJobValue]) {
			format( gb_string, sizeof( gb_string ),"Очки работы: %d", Player[playerid][uJobValue] );
			PlayerTextDrawSetString( playerid,JobValueText[playerid], gb_string );
			PlayerTextDrawShow( playerid, JobValueText[playerid] );
		}
		if(Player[playerid][uSettings][8]) {
		    format( gb_string,sizeof( gb_string ),"CHANNEL:     %d~n~SLOT:        %d", Player[playerid][uRadioChanel], Player[playerid][uRadioSubChanel]);
			PlayerTextDrawSetString(playerid,RadioShow[1][playerid], gb_string);
			PlayerTextDrawShow(playerid, RadioShow[1][playerid]);
			PlayerTextDrawShow(playerid, RadioShow[0][playerid]);
		}
		SetPlayerColor( playerid, 0xFFFFFF00 );
		SetPlayerScore( playerid, 1 );
		//
		new 
			Float:x, 
			Float:y, 
			Float:z, 
			Float:root;
			
		GetSpawnInfo( playerid, x, y, z, root );
		
		SetSpawnInfo( playerid, 264, GetInventorySkinId( playerid ), x, y, z, root, 0, 0, 0, 0, 0, 0 );
		
		if( Player[playerid][uPinCode] > 0 ) 
		{
			showPin( playerid );
		}
		else 
		{
			LoadPlayer( playerid );
		}
	}
	else 
	{
		if( getData( playerid, "Login:WrongPass" ) == 2 ) 
		{
			SendMes( playerid, C_GRAY, ""gbError"Вы ввели неверный пароль. Осталось попыток: 3/3" );
			SendMes( playerid, C_GRAY, ""gbError"Вы были кикнуты с сервера за неправильно введёный пароль!" );
			KickEx( playerid );
			return true;
		}
		
		giveData( playerid, "Login:WrongPass", 1 );
		SendMes( playerid, C_GRAY, ""gbError"Вы ввели неверный пароль. Осталось попыток: "cBLUE"%d/3", getData( playerid, "Login:WrongPass" ) );
		showPlayerDialog( playerid, d_auth, 3, " ", logtext, "Далее", "Выход" );
	}
	return true;
}

stock LoadPlayer( playerid )
{
	mysql_format:query( "UPDATE gb_users SET uStatus = '1' WHERE uID = %d LIMIT 1",
		Player[playerid][uID]
	);
	
	mysql_tquery( mysql, query, "", "");
	
	mysql_format:query( "SELECT * FROM `gb_business_money` WHERE Name = '%s'",Player[playerid][uName]);
	mysql_tquery( mysql, query, "MySQLQuery", "dd", playerid, 33);
	
	mysql_format:query( "SELECT * FROM `gb_houses_money` WHERE Name = '%s'",Player[playerid][uName]);
	mysql_tquery( mysql, query, "MySQLQuery", "dd", playerid, 34);
	
	mysql_format:query( "SELECT * FROM `gb_cars` WHERE BINARY `cOwner` = '%s'",
		Player[playerid][uName]
	);
	
	mysql_tquery( mysql, query, "CarLoad", "d", playerid );
	
	setData( playerid, "SessionStart", gettime() );
	updateWeather( playerid );
	
	setData( playerid, "uLogin", 1 );
	SendClientMessage( playerid, C_GRAY, ""gbInfo"Основное меню вашего персонажа открывается кнопкой "cBLUE"Y"cWHITE".");
	SpawnPlayer( playerid );
	
	stopPlayer( playerid, 4 );
}


hook OnPlayerSpawn( playerid ) 
{
	//Streamer_Update(playerid);
    if( !getData( playerid, "uLogin" ) ) 
	{
		return KickEx(playerid);
	}
	
	PreloadAnim( playerid );
	setPlayerHealth( playerid, 100.0 );
	SetPlayerSkillLevel(playerid, WEAPONSKILL_PISTOL, 0);
	SetPlayerSkillLevel(playerid, WEAPONSKILL_MICRO_UZI, 0);
	
	if( getData( playerid, "playerCuffed" ) )
	{
		SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CUFFED);
        SetPlayerAttachedObject(playerid, 4, 19418, 6, -0.011000, 0.028000, -0.022000, -15.600012, -33.699977, -81.700035, 0.891999, 1.000000, 1.168000);
	}
	
	SetPlayerWantedLevel( playerid,Player[playerid][uSuspect] );
	
	SetPlayerInterior( playerid, Player[playerid][uInt][0] );
	SetPlayerVirtualWorld(playerid, Player[playerid][uInt][1] );
	
	new 
		f = Player[playerid][uMember];
	switch( f ) 
	{
		case 1, 4, 6 : 
		{
			if( getData( playerid, "PlayerColor" ) ) 
			{
				SetPlayerColor( playerid, FracColor[0] );
			}
			else
			{
				SetPlayerColor( playerid, FracColor[ f ] );
			}
		}
		
		case 2, 3, 5 :
		{
			if( Player[playerid][uIsPlayerJob][ ( f == 5 ) ? ( 2 ) : ( f - 2 ) ] )
			{
				if( getData( playerid, "PlayerColor" ) ) 
				{
					SetPlayerColor( playerid, FracColor[0] );
				}
				else
				{
					SetPlayerColor( playerid, FracColor[ f ] );
				}
			}
		}
		
		default: SetPlayerColor( playerid, FracColor[0] );
	}
	return 1;
}

hook OnPlayerRequestSpawn(playerid) {
	if(! getData( playerid, "uLogin" ) ) {
	    return false;
	}
    return true;
}

hook OnPlayerRequestClass(playerid,classid) 
{
	if( IsPlayerNPC( playerid ) ) return true;
   	if( getData( playerid, "uLogin" ) ) return SpawnPlayer(playerid);
	setData( playerid, "Joined", 1 );
	OnPlayerJoin( playerid );
    return true;
}

function OnPlayerJoin( playerid ) 
{
	/*new 
		first_name[ 15 ],
		last_name[ 15 ];*/
		
	InterpolateCameraPos( playerid, 1494.964233, 13.226538, 189.263305, 1481.021728, -1798.964599, 254.696289, 50000);
    InterpolateCameraLookAt( playerid, 1494.903320, 8.249490, 188.788665, 1481.015502, -1795.936523, 250.717529, 50000);
	
    GetPlayerName( playerid, Player[playerid][uName], MAX_PLAYER_NAME );
	
	GetWithoutUnderscore( Player[playerid][uName], Player[playerid][uRPName] );
	
	/*if( sscanf( Player[playerid][uName], "p<_>s[15]s[15]", first_name, last_name ) )
	{
		strcat( Player[playerid][uRPName], Player[playerid][uName], MAX_PLAYER_NAME );
	}
	else 
	{
		format( Player[playerid][uRPName], MAX_PLAYER_NAME, "%s %s", first_name, last_name );
	}*/
	
 	TextDrawShowForPlayer(playerid,Logo[0]);
 	TextDrawShowForPlayer(playerid,Logo[1]);
 	TextDrawShowForPlayer(playerid,Logo[2]);
 	TextDrawShowForPlayer(playerid,Logo[3]);
 	
    mysql_format:query( "SELECT * FROM `gb_users` WHERE `uName` = '%e' LIMIT 1", Player[playerid][uName] );
	mysql_tquery( mysql, query, "OnPlayerCheckAcc", "d", playerid);
	
    return 1;
}

function OnPlayerCheckBan( playerid )
{
	if( cache_get_row_count() != 0 )
	{
		gb_string[0] = EOS;
		cache_get_field_content(0, "uReason", gb_string );
	    SendClientMessage(playerid, C_WHITE, ""gbError"Вы не можете подключиться к серверу, Ваш IP адрес заблокирован.");
		SendMes( playerid, C_WHITE, ""gbInfo"Причина: "cBLUE"%s", gb_string );
	    KickEx(playerid);
	}
	
	return 1;
}


function OnPlayerCheckAcc( playerid ) 
{	
    if( !cache_get_row_count() )
	{
  ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", regtext, "Закрыть", "" );
		return KickEx( playerid );
	}

	new 
		ban = cache_get_field_content_int( 0, "uBanPlayer", mysql );
		
	if( ban != 0 )
	{
		if( ban > gettime() ) 
		{
			format:vb_string( ""bantext"", date( "%dd.%mm.%yy", ban ) );
			ShowPlayerDialog(playerid, 9999, DIALOG_STYLE_MSGBOX, " ", vb_string, "Закрыть", "" );
			return KickEx( playerid );
		}
		else 
		{
			SendClientMessage( playerid, C_WHITE, ""gbInfo"Срок действия блокировки истёк, Ваш аккаунт разблокирован." );
			nowUpdateInfo( playerid, "d" , "gb_users" , "uName" , "uBanPlayer" , 0 );
			return 1;
		}
	}
	
	new 
		active = cache_get_field_content_int( 0, "uActive", mysql ),
		retest = cache_get_field_content_int( 0, "uRetest", mysql );
		
	switch( active )
	{
		case 0 :
		{
			ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", checktext, "Закрыть", "" );
			return KickEx( playerid );
		}
		
		case 1 : 
		{
			if( retest != 0 )
			{
				ShowPlayerDialog(playerid, 9999, DIALOG_STYLE_MSGBOX, " ", retesttext, "Закрыть", "" );
				return KickEx( playerid );
			}
			else 
			{
				ShowPlayerDialog(playerid, d_auth, 3, " ", logtext, "Далее", "Выход" );
			}
		}
		
		case 2 :
		{
			ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", deniedtext, "Закрыть", "" );
			return KickEx( playerid );
		}
		
		case 4 :
		{
			ShowPlayerDialog(playerid, 9999, DIALOG_STYLE_MSGBOX, " ", cktext, "Закрыть", "" );
			return KickEx( playerid );
		}
		
	} 
	
	return 1;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) 
{
	if( dialog_cheat_use[playerid] == true ) return true;
	clear_massive();
	switch(dialogid) 
	{
		case d_auth :
		{
			if( !response )
				return Kick(playerid);

			if( !strlen( inputtext ) )
				return showPlayerDialog(playerid, d_auth, 3, " ", logtext, "Далее", "Выход" );

			if( !CheckNormalPassword( inputtext ) )
				return showPlayerDialog(playerid, d_auth, 3, " ", logtext, "Далее", "Выход" );

			mysql_format:query( "SELECT * FROM `gb_users` WHERE `uPass` = '%s' AND BINARY `uName` = '%s'", inputtext, Player[playerid][uName]);
//			mysql_format:query( "SELECT * FROM `gb_users` WHERE `uPass` = md5(md5('%s')) AND BINARY `uName` = '%s'", inputtext, Player[playerid][uName]);
			mysql_tquery( mysql, query, "OnPlayerLogin", "i", playerid);
		}
	}

	return 1;
}
