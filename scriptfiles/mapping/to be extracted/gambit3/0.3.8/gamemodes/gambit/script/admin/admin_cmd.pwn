#include <YSI\y_hooks>

CMD:h( playerid, params[] )
{

	if( GetAccessAdmin( playerid, 1 ) )
	{
		if( sscanf( params, "s[128]", params[0] ) ) 
			return SendClientMessage(playerid, C_WHITE,""gbInfo"Введите: /h [ текст ]");
			
		format:gb_string( "[S] %s[%d]: %s",Player[playerid][uName],playerid,params[0]);
		SendSupportsMessage( 0x3373aaAA, gb_string );
	}
	else if( Player[playerid][uSupport] != 0 && GetPVarInt( playerid, "SDuty" ) )
	{
		if( sscanf( params, "s[128]", params[0] ) ) 
			return SendClientMessage(playerid, C_WHITE,""gbInfo"Введите: /h [ текст ]");
			
		format:gb_string( "[S] %s[%d]: %s",Player[playerid][uName],playerid,params[0]);
		SendSupportsMessage( 0x3373aaAA, gb_string );
	}
	else 
		return SendClientMessage( playerid, -1, !NO_ACCESS );
	
	return 1;
}

CMD:sduty( playerid, params[] )
{
	if( !Player[playerid][uSupport] ) 
		return SendClientMessage( playerid, -1, !NO_ACCESS );
		
	if( GetPVarInt(playerid, "SDuty") == 1 )
	{
		format(vb_string,sizeof(vb_string),"[S] Оператор %s[%d] покинул дежурство.", Player[playerid][uName], playerid);
		SendSupportsMessage(0x3373aaAA, vb_string);
		SetPVarInt(playerid, "SDuty", 0);
	}
	else
	{
		SetPVarInt(playerid, "SDuty", 1);
		format(vb_string,sizeof(vb_string),"[S] Оператор %s[%d] вышел на дежурство.", Player[playerid][uName], playerid);
		SendSupportsMessage(0x3373aaAA, vb_string);
	}
	
	return 1;
}

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

CMD:adaction( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, -1, !NO_ACCESS );
		
	if( sscanf(params, "us[60]", params[0], params[1])  ) 
		return SendClientMessage( playerid, C_GRAY, !""gbInfo"Введите: /adaction [ id игрока ] [ причина ]" );
		
	if( !GetPVarInt( playerid, "Player:UseAction" ) ) 
		return SendClientMessage( playerid, C_GRAY, !""gbError"Данный игрок не устанавливал какое-либо действие." );

	SetPVarInt( params[0], "Player:UseAction", 0 );
	
	if( IsValidDynamic3DTextLabel( Player[ params[0] ][uAction] ) )
	{
		DestroyDynamic3DTextLabel( Player[ params[0] ][uAction] );
		Player[ params[0] ][uAction] = Text3D: INVALID_3DTEXT_ID;
	}
	
	SendClientMessage( playerid, C_GRAY, ""gbAccess"Вы удалили действие данного игрока.");
	format(vb_string,sizeof(vb_string),""gbAccess"Администратор %s[%d] удалил ваше действие. Причина: %s",
		Player[playerid][uName],
		playerid,
		params[1]
	);
	
	SendClientMessage( params[0], C_WHITE, vb_string );

	return 1;
}

CMD:create( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 7 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	showPlayerDialog( playerid, d_create, 2, "Создание", "1. Создать подъезд\n2. Создать дом", "Далее", "Закрыть" );
	return 1;
}

CMD:tp( playerid ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	ShowAdminTeleportList( playerid, 0, 0 );
	
	return 1;
}

CMD:adm( playerid ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	strcat( vb_string, "{ffffff}1. "cGRAY"Администрация в игре\n");
	strcat( vb_string, "{ffffff}2. "cGRAY"Телепортироваться\n");
	strcat( vb_string, "{ffffff}3. "cGRAY"Список всех команд\n");
	strcat( vb_string, ""cWHITE"4. "cGRAY"Лог отключений" );
	showPlayerDialog( playerid, d_admins, 2, " ", vb_string, "Далее", "Закрыть" );
	return 1;
}

CMD:hp( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	setPlayerHealth( playerid, 100.0 );
	return 1;
}

CMD:unfreeze( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if(sscanf(params, "d", params[0])) 
		return SendClientMessage( playerid, C_WHITE,""gbInfo"Введите: /unfreeze [ id ]");
	if(!IsPlayerLogged(params[0])) 
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	togglePlayerControllable( params[0], true );
	SendClientMessage(playerid, C_WHITE, ""gbAccess"Вы разморозили данного игрока.");
	return 1;
}

CMD:aspawn( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "u", params[0] ) )  
		return SendClientMessage( playerid, C_WHITE,""gbInfo"Введите: /aspawn [ id ]");
		
	if( !IsPlayerLogged( params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	new 
		Float:x, 
		Float:y, 
		Float:z, 
		Float:root;
		
	GetSpawnInfo( params[0], x, y, z, root );
	SetSpawnInfo( params[0], 264, GetInventorySkinId( params[0] ), x, y, z, root, 0, 0, 0, 0, 0, 0 );
	
	SpawnPlayer( params[0] );
	
	SendMes( playerid, -1, ""gbAccess"Вы зареспавнили игрока %s[%d].", Player[ params[0] ][uName], params[0] );
	SendMes( params[0], -1, ""gbAccess"Администратор %s[%d] зареспавнил Вас.", Player[playerid][uName], playerid );

	return 1;
}

CMD:unsp( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	StopRecon( playerid, "~b~Spectate Exit" );
	return 1;
}

CMD:sethp( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 2 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "dd", params[0],params[1] ) ) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /sethp [ id игрока ] [ Здоровье ]");
		
	if( !IsPlayerLogged( params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	if( !GetAccessDeveloper( playerid, params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	setPlayerHealth(params[0],params[1]);
	
	SendMes( params[0], C_WHITE, ""gbAccess"Администратор %s[%d] установил Вам здоровье: %d ед.",
		Player[playerid][uName], 
		playerid,
		params[1]
	);
		
	SendClientMessage(playerid,C_GRAY,""gbAccess"Вы установили здоровье игроку.");
	return 1;
}

CMD:setfrac( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 3 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	if( sscanf( params, "d", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, !""gbInfo"Введите: /setfrac [ id фракции ]");
	
	if( params[0] < 0 || params[0] > MAX_FRAC )
		return SendClientMessage( playerid, C_WHITE, !""gbError"Вы ввели неверное значение." );
	
	Player[playerid][uMember] = params[0];
	Player[playerid][uRank] = 1;
	
	format:gb_string( "[A] %s[%d] установил себе фракцию: %s",
		Player[playerid][uName],
		playerid,
		F::[params[0]][fName]
	);
	
	SendAdminMessage( C_GRAY, gb_string );
	
	return 1;
}

CMD:weapons( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /weapons [ id игрока ] ");
		
	if( !IsPlayerLogged( params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
	new 
		weapon[ 13 ],
		ammo[ 13 ],
		weapon_name[ 32 ],
		bool: count = false;
		
	vb_string[0] = EOS;
	
	format( gb_string, sizeof gb_string, ""gbInfo"Информация о оружии игрока "cBLUE"%s[%d]"cWHITE".\n\n",
		Player[ params[0] ][uName],
		params[0]
	);
	
	strcat( vb_string, gb_string );
	
	for( new i; i < 13; i++ )
	{
		GetPlayerWeaponData( params[0], i, weapon[i], ammo[i] );
		
		if( !weapon[i] )
			continue;
			
		GetWeaponName(  weapon[i], weapon_name, sizeof weapon_name );
		format( gb_string, sizeof gb_string, " - Оружие: "cBLUE"%s"cWHITE" (Патронов: "cBLUE"%d"cWHITE") | Слот: "cBLUE"%d"cWHITE"\n",
			weapon_name,
			ammo[i],
			i
		);
		
		strcat( vb_string, gb_string );
		
		count = true;
	}
	
	if( !count )
		return SendClientMessage( playerid, C_WHITE, ""gbInfo"У данного игрока отсутствует оружие." );
	
	showPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", vb_string, "Закрыть", "" );
	
	return 1;
}

CMD:a( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, -1, !NO_ACCESS );
		
	if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /a [ текст ]");
	format(vb_string,sizeof(vb_string),"[A] %s[%d]: %s", Player[playerid][uName],playerid,params[0]);
	SendAdminMessage(C_GREEN,vb_string);
	
	return 1;
}

CMD:ans( playerid, params[] )
{
	if( Player[playerid][uAdmin] < 1 )
	{
		if(Player[playerid][uSupport] == 0 || !GetPVarInt(playerid, "SDuty") )
			return SendClientMessage( playerid, -1, !NO_ACCESS );
			
		if(sscanf(params, "us[128]", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ans [ id игрока ] [ текст ]");
		format(vb_string,sizeof(vb_string),"Ответ от оператора %s[%d]: %s",Player[playerid][uName], playerid,params[1]);
		SendClientMessage(params[0],C_YELLOW,vb_string);
		format(vb_string,sizeof(vb_string),"[S] Оператор %s[%d] ответил %s[%d]: %s",Player[playerid][uName],playerid,Player[params[0]][uName],params[0],params[1]);
		SendSupportsMessage(C_ORANGE,vb_string);
	}
	else
	{
		if( !GetPVarInt(playerid,"playerAdmin") ) 
			return SendClientMessage( playerid, -1, !NO_ACCESS );
			
		if(sscanf(params, "us[128]", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ans [ id игрока ] [ текст ]");
		format(vb_string,sizeof(vb_string),"Ответ от администратора %s[%d]: %s",Player[playerid][uName], playerid,params[1]);
		SendClientMessage(params[0],C_YELLOW,vb_string);
		format(vb_string,sizeof(vb_string),"[A] %s[%d] ответил %s[%d]: %s",Player[playerid][uName], playerid,Player[params[0]][uName],params[0],params[1]);
		SendAdminMessage( C_ORANGE, vb_string );
	}
	return 1;
}

CMD:restart( playerid ) 
{
	if( !GetAccessAdmin( playerid, 6 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	foreach(new i : Player) 
	{
		KickEx( i );
	}
	
	SetTimer( "GameModeExitDelay", 30 * 1000, false );
	return 1;
}

CMD:kickall( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 6 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	format( gb_string, sizeof gb_string, "Администратор %s отсоединил от сервера игроков.", 
		Player[playerid][uName]
	);
	
	SendAdminMessageToAll( C_LIGHTRED, gb_string );
	
	foreach(new i : Player) 
	{
		if( Player[i][uAdmin] != 0 )
			continue;
			
		KickEx( i );
	}
	
	return 1;
}

CMD:getbuycar( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 2 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "d", params[0] ) ) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /getbuycar [ id автомобиля ]");
		
	new 
		Float: x,
		Float: y,
		Float: z;
	
	for(new i; i != MAX_CARS_BUY; i ++) 
	{
		if( !IsBuyingCar( i ) ) 
			continue;
			
		if( Car::[i][cID] == params[0] )
		{
			GetPlayerPos( playerid, x, y, z );
			setVehiclePos( i, x, y, z );
			LinkVehicleToInterior( i, GetPlayerInterior( playerid ) );
			SetVehicleVirtualWorld( i, GetPlayerVirtualWorld( playerid) );
			break;
		}
	}
	
	SendMes( playerid, -1, ""gbAccess"Вы телепортировали транспорт "cBLUE"%d"cWHITE" к себе.", params[0] );
	
	return 1;
}

CMD:givemoney( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 6 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	if( sscanf( params, "ud", params[0], params[1] ) ) 
		return SendClientMessage( playerid, C_WHITE, !""gbInfo"Введите: /givemoney [ id игрока ] [ сумма ]");
	
	if( !IsPlayerLogged( params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );

	Player[params[0]][uMoney] += params[1];
	userUpdate( params[0], "uMoney", Player[params[0]][uMoney] );
	
	SendMes( playerid, -1, ""gbAccess"Вы выдали игроку %s[%d] - "cGREEN"$%d"cWHITE".",
		Player[ params[0] ][uName],
		params[0],
		params[1]
	);
	
	SendMes( params[0], -1, ""gbAccess"Администратор %s[%d] выдал Вам - "cGREEN"$%d"cWHITE".",
		Player[ playerid ][uName],
		playerid,
		params[1]
	);
	
	format:gb_string( "%s выдал %s количество денег - $%d.",
		Player[playerid][uName],
		Player[ params[0] ][uName],
		params[1]
	);
	
	logs( ALOG + 10, gb_string, Player[playerid][uID], Player[params[0]][uID], params[1] );
	return 1;
}	

CMD:setmoney( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 6 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	if( sscanf( params, "ud", params[0], params[1] ) ) 
		return SendClientMessage( playerid, C_WHITE, !""gbInfo"Введите: /setmoney [ id игрока ] [ сумма ]");
	
	if( !IsPlayerLogged( params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );

	Player[params[0]][uMoney] = params[1];

	mysql_format:vb_string( "UPDATE gb_users SET uMoney = '%d' WHERE uID = %d LIMIT 1",
		Player[playerid][uMoney],
		Player[playerid][uID]
	);
	
	mysql_tquery( mysql, vb_string, "", "");
	
	SendMes( playerid, -1, ""gbAccess"Вы установили игроку %s[%d] - "cGREEN"$%d"cWHITE".",
		Player[ params[0] ][uName],
		params[0],
		params[1]
	);
	
	SendMes( params[0], -1, ""gbAccess"Администратор %s[%d] установил Вам - "cGREEN"$%d"cWHITE".",
		Player[ playerid ][uName],
		playerid,
		params[1]
	);
	
	format:gb_string( "%s установил %s количество денег - $%d.",
		Player[playerid][uName],
		Player[ params[0] ][uName],
		params[1]
	);
	
	logs( ALOG + 10, gb_string, Player[playerid][uID], Player[params[0]][uID], params[1] );
	return 1;
}

CMD:removeadmin( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 7 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /removeadmin [ id игрока ]");
	
	if( !IsPlayerLogged( params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	Player[params[0]][uAdmin] = 0;
	SetPVarInt( params[0], "playerAdmin", 0 );
	
	mysql_format:query( "DELETE FROM gb_admins WHERE BINARY Name = '%s'", Player[playerid][uName] );
	mysql_tquery( mysql, query, "", "" );
	
	SendMes( params[0], C_WHITE, ""gbAccess"Администратор %s[%d] снял Вас с должности администратора.",
		Player[playerid][uName],
		playerid
	);
	
	SendMes( playerid, C_WHITE, ""gbAccess"Вы успешно сняли %s[%d] с должности администратора.", 
		Player[params[0]][uName],
		params[0]
	);
	
	return 1;
}

CMD:removesupport( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 5 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /removesupport [ id игрока ]");
	
	if( !IsPlayerLogged( params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	Player[params[0]][uSupport] = 0;
	SetPVarInt( params[0], "SDuty", 0 );
	
	userUpdate( playerid, "uSupport", 0 );
	
	SendMes( params[0], C_WHITE, ""gbAccess"Администратор %s[%d] снял Вас с должности оператора поддержки.",
		Player[playerid][uName],
		playerid
	);
	
	SendMes( playerid, C_WHITE, ""gbAccess"Вы успешно сняли %s[%d] с должности оператора поддержки.", 
		Player[params[0]][uName],
		params[0]
	);
	
	return 1;
}

CMD:vrepair( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 2 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	if( sscanf( params, "d", params[0] ) ) 
		return SendClientMessage(playerid, C_WHITE,""gbInfo"Введите: /vrepair [ id транспорта ]");
	if( !IsValidVehicle( params[0] ) ) 
		return SendClientMessage(playerid, C_WHITE,""gbError"Неверный ID транспорта.");

	setVehicleHealth( params[0], 1000.0 );
	RepairVehicle( params[0] );
	
	SendMes( playerid, C_WHITE, ""gbAccess"Вы успешно отремонтировали данный транспорт." );
	return 1;
}

CMD:aheal( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE,""gbInfo"Введите: /aheal [ id игрока ]" );
		
	if( !IsPlayerLogged( params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	HealthPlayer( params[0] );
	
	SendMes( playerid, C_WHITE, ""gbAccess"Вы успешно вылечили игрока "cBLUE"%s"cWHITE".", Player[params[0]][uName] );
	
	return 1;
}

CMD:sameip( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	new 
		bool: search = false;
		
	vb_string[0] = EOS;
	strcat( vb_string, ""gbInfo"Игроки с одинаковыми IP адресами:\n" );
	
	foreach( new i : Player)
	{
		if( !GetPVarInt( i, "uLogin" ) )
			continue;
			
		foreach( new j : Player)
		{
			if( !GetPVarInt( j, "uLogin" ) )
				continue;
			
			if( i == j )
				continue; 
				
			if( !strcmp( Player[ j ][ uIP ], Player[ i ][ uIP ] ) )
			{
				format:gb_string( "\n%s[%d] "cBLUE"<>"cWHITE" %s[%d] - IP: %s",
					Player[ j ][uName],
					j,
					Player[ i ][uName],
					i,
					Player[ i ][uIP]
				);
				
				strcat( vb_string, gb_string );
				
				search = true;
			}
		}
	}
	
	if( !search )
		return SendClientMessage( playerid, C_WHITE, !""gbInfo"По-вашему запросу не найдены игроки с одинаковыми IP." );
	
	ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", vb_string, "Закрыть", "" );
	
	return 1;
}

CMD:o( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 2 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "s[128]", params[0] ) ) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /o [ текст ]");
		
	format(vb_string,sizeof(vb_string),"%s %s: %s",
		( Player[playerid][uAdmin] == 7 ) ? ( "Разработчик" ) : ( "Администратор" ),
		Player[playerid][uName],
		params[0]
	);
	
	SendClientMessageToAll( 0xFFCD00FF, vb_string );
	return 1;
}

CMD:ck( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 3 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );

	if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, ""gbInfo"Введите: /ck [ id игрока ]" );

	if( !GetAccessDeveloper( playerid, params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	format:gb_string( "Администратор %s установил <Character Kill> персонажу %s.",
		Player[playerid][uName],
		GetCharacterName( params[0] )
	);
	
	SendAdminMessageToAll( C_LIGHTRED, gb_string, params[0] );
	
	AntiCheatKick( params[0], ""cRED"<Character Kill>"cWHITE".\n\
		Мы рекомендуем Вам сделать скриншот "cGREEN"(F8)"cWHITE".\n\
		Если Вы не согласны с вердиктом, то его можно обжаловать.\n\
		Пересоздать Вашего персонажа можно на сайте - "cBLUE"www.g-rp.su"cWHITE".", 
		false, 
		false 
	);
	
	userUpdate( params[0], "uActive", 4 );
	
	format:gb_string( "%s установил <CK> %s.",
		Player[playerid][uName],
		Player[params[0]][uName]
	);
	
	logs( ALOG + 17, gb_string, Player[playerid][uID], Player[params[0]][uID] );
	
	if( GetAccessAdmin( params[0], 1 ) )
	{
		KickEx( playerid );
	}
	
	return 1;
}

CMD:unck( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 2 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );

	if( sscanf( params, "s[25]", params[0] ) ) 
		return SendClientMessage(playerid, C_WHITE,""gbInfo"Введите: /unck [ имя игрока ]");

	mysql_format:query( "SELECT `uID` FROM `gb_users` WHERE BINARY `uName` = '%s' AND `uActive` = 4 LIMIT 1", params[0] );
	mysql_tquery( mysql, query, "UnCkPlayer", "is", playerid, params[0] );
	return 1;
}

CMD:banip( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 4 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );

	new 
		ip[ 16 ],
		reason[ 32 ];
		
	if( sscanf( params, "s[32]s[32]", ip, reason ) )
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /banip [ ip адрес ] [ причина ]");
		
	format(vb_string,sizeof(vb_string),"[A] %s[%d] заблокировал IP: %s. (%s)",Player[playerid][uName], playerid, ip, reason);
	SendAdminMessage(C_GRAY,vb_string);
	format(vb_string,sizeof(vb_string), "INSERT INTO gb_ipbans (uAdminName, uIP, uReason) VALUES ('%s', '%s', '%s')", Player[playerid][uName], ip, reason );
	mysql_tquery(1, vb_string, "", "");
	return 1;
}

CMD:unjail( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "d", params[0] ) ) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unjail [ id игрока ] ");
	
	if( !IsPlayerLogged( params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	if(Player[params[0]][uDMJail] != 0)
	{
		format(vb_string,sizeof(vb_string),"[A] %s[%d] выпустил %s из Де Моргана.",
			Player[playerid][uName], 
			playerid,
			Player[params[0]][uName]
		);
		
		SendAdminMessage(C_GRAY,vb_string);
		
		Player[params[0]][uDMJail] = 0;
		nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uDMJail" , Player[params[0]][uDMJail]);
		SendClientMessage(params[0],C_GRAY,""gbAccess"Вы отсидели свой срок в Де Моргане.");
		togglePlayerControllable(params[0],true);
		spawnFreezeTime(params[0]);
		SetPlayerInterior(params[0], 0);
		SetPlayerVirtualWorld(params[0], 0);
		setPlayerPos(params[0],1543.9922,-1669.7343,13.5575);
	}
	else return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок не находиться в Де Моргане.");
	return 1;
}

CMD:dpame( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "us[128]", params[0], params[1] ) ) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /dpame [ id игрока ] [ причина ]");
		
	if( !IsPlayerLogged( params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	if( GetPVarInt(params[0], "Player:Pame") == 0 ) 
		return SendClientMessage(playerid, C_GRAY, ""gbInfo"Данный игрок не использует описание персонажа.");
		
	SetPVarInt(params[0], "Player:Pame", 0);
	
	Player[params[0]][uPame][0] = EOS;
	
	SendClientMessage( playerid, C_GRAY, ""gbAccess"Вы успешно удалили описание персонажа персонажа.");
	format( vb_string, sizeof(vb_string), ""gbAccess"Администратор %s[%d] удалил описание Вашего персонажа. Причина: %s", Player[playerid][uName], playerid, params[1]);
	SendClientMessage( params[0], C_WHITE, vb_string );
	return 1;
}

CMD:jail( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "uds[32]", params[0], params[1], params[2] ) ) 
		return SendClientMessage( playerid, C_WHITE, !""gbInfo"Введите: /jail [ id игрока ] [ время ] [ причина ]" );
		
	if( !IsPlayerLogged( params[0] ) && Player[ params[0] ][uAdmin] > Player[ playerid ][ uAdmin ] ) 
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	if( !GetAccessDeveloper( playerid, params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( params[1] < 1 || params[1] > 600 ) 
		return SendClientMessage( playerid, C_WHITE,""gbError"Неверное количество минут. Минимально - 1 минута, максимально - 600." );
	
	format(vb_string,sizeof(vb_string),"Администратор %s посадил игрока %s в Де Морган на %d минут. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1],params[2]);
	SendAdminMessageToAll(C_LIGHTRED,vb_string,params[0]);
	
	Player[params[0]][uDMJail] = params[1];
	
	SetPlayerVirtualWorld( params[0], playerid + 1 );
	setPlayerPos( params[0], 3958.6768, -942.3129, 3.8427 );
	userUpdate( params[0], "uDMJail", Player[params[0]][uDMJail] );

	if(Player[playerid][uIsPlayerJob][0] == 1) Player[playerid][uIsPlayerJob][0] = 0;
	if(Player[playerid][uIsPlayerJob][1] == 1) Player[playerid][uIsPlayerJob][1] = 0;
	if(Player[playerid][uIsPlayerJob][2] == 1) Player[playerid][uIsPlayerJob][2] = 0;
	
	format:gb_string( "%s посадил в Де Морган на %d минут %s. Причина: %s",
		Player[playerid][uName],
		params[1],
		Player[params[0]][uName],
		params[2]
	);
	
	logs( ALOG + 7, gb_string, Player[playerid][uID], Player[params[0]][uID] );
	return 1;
}

CMD:getnpc( playerid, params[] ) 
{
	if( Player[playerid][uAdmin] < 4 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для использования данной команды" );
	if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
	if( sscanf( params, "u", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /getnpc [ ID npc ]" );
	if( !IsPlayerNPC( params[0] ) ) return SendMes( playerid, C_GRAY, ""gbError"Этот игрок не NPC!" );
	new Float:pos[3];
	GetPlayerPos( playerid, pos[0], pos[1], pos[2] );
	SetPlayerPos( params[0], pos[0], pos[1], pos[2] );
	return true;
}

CMD:resethouse( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 7 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "u", params[0] ) ) 
		return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /resethouse [ id дома ]" );
	if( !IsPlayerLogged( params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	Player[ params[0] ][uHouse] = 0, userUpdate( params[0], "uHouse", 0 );
	SendMes( playerid, C_GRAY, ""gbAccess"Вы сняли с игрока %s дом.", Player[ params[0] ][uName] );
	SendMes( playerid, C_GRAY, ""gbAccess"Администратор %s[%d] снял с Вас дом.", Player[ playerid ][uName], playerid );
	return true;
}

CMD:goto( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
    if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage(playerid, C_WHITE,""gbInfo"Введите: /goto [ id игрока ]");
	
    if( !IsPlayerLogged( params[0] ) || Player[params[0]][uAdmin] > Player[playerid][uAdmin] ) 
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	new Float:p[3];
	GetPlayerPos(params[0],p[0],p[1],p[2]);
	SendClientMessage(playerid,C_GRAY,""gbAccess"Вы телепортировались к игроку.");
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
	if( Player[playerid][uAdmin] < 7 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав для данной команды!");
	if( !getData( playerid, "playerAdmin" ) ) return SendMes( playerid, C_GRAY, ""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
    if( sscanf( params, "u", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /setweather [ id ]");
    if( params[0] < 1 || params[0] > 48 ) return 1;
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
			SendMes( playerid, -1, ""gbInfo"Вы успешно телепортировались." );
			break;
		}
	}
	return true;
}

CMD:slap( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, ""gbInfo"Введите: /slap [ id игрока ] " );
	
	if( !IsPlayerLogged( params[0] ) || Player[ params[0] ][uAdmin] > Player[playerid][uAdmin] ) 
		return SendClientMessage( playerid, C_WHITE, INCORRECT_PLAYER_ID );
		
	if( !GetAccessDeveloper( playerid, params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	new Float:slx, Float:sly, Float:slz, Float:shealth;
	
	GetPlayerHealth(params[0], shealth);
	SetPlayerHealth(params[0], shealth-5);
	GetPlayerPos(params[0], slx, sly, slz);
	SetPlayerPos(params[0], slx, sly, slz+5);
	PlayerPlaySound(params[0], 1130, slx, sly, slz+5);
	format(vb_string, sizeof(vb_string), "[A] %s[%d] подкинул %s[%d].",Player[playerid][uName], playerid, Player[params[0]][uName], params[0]);
	SendAdminMessage( C_GRAY,vb_string);
	
	SendMes( params[0], C_WHITE, ""gbError"Администратор "cBLUE"%s[%d]"cWHITE" подкинул Вас.",
		Player[playerid][uName], playerid
	);
	return 1;
}

CMD:alogin( playerid, params[] ) 
{
	showPlayerDialog( playerid, d_admins + 8, DIALOG_STYLE_PASSWORD, " ", 
		""gbInfo"Авторизация\n\nВведите пароль ниже, чтобы авторизоваться:", "Далее", "Отмена" );
	return 1;
}

CMD:alogout( playerid, params[] ) 
{
	if( !Player[playerid][uAdmin] ) 
		return 1;
	
	if( Player[playerid][uAdmin] < 6 )
	{
		format:gb_string( "[A] %s[%d] вышел как администратор.",
			Player[playerid][uName],
			playerid
		);
		
		SendAdminMessage( C_GREEN, gb_string );
	}
	else
	{
		SendMes( playerid, C_WHITE, ""gbAccess"Вы вышли как ведущий администратор." );
	}
	
	Player[playerid][uAdmin] = 0;
    delData( playerid, "playerAdmin" );
	return true;
}

CMD:warn( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 2 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf(params, "us[32]", params[0], params[1] ) ) 
		return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /warn [ id игрока ] [ причина ]");
	
	if( !IsPlayerLogged( params[0] ) || params[0] == playerid || Player[playerid][uAdmin] < Player[params[0]][uAdmin]) 
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	if( !GetAccessDeveloper( playerid, params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	Player[ params[0] ][uWarn]++;
	if( Player[ params[0] ][uWarn] >= 3 ) 
	{
		format( vb_string, sizeof vb_string, "Администратор %s заблокировал игрока %s навсегда [3/3]. Причина: %s", Player[playerid][uName], Player[params[0]][uName], params[1] );
		SendAdminMessageToAll( C_LIGHTRED, vb_string, params[0] );

		userUpdate( params[0], "uBanPlayer", 2145917100 );
		
		format:gb_string( "%s заблокировал навсегда %s [3/3]. Причина: %s",
			Player[playerid][uName],
			Player[params[0]][uName],
			params[1]
		);
		
		logs( ALOG + 4, gb_string, Player[playerid][uID], Player[params[0]][uID] );
	}
	else 
	{
		
		userUpdate( params[0], "uWarn", Player[ params[0] ][uWarn] );
		userUpdate( params[0], "uRetest", 1 );
		format( vb_string, sizeof vb_string,"Администратор %s выдал предупреждение игроку %s [%d/3]. Причина: %s",Player[playerid][uName],Player[params[0]][uName], Player[ params[0] ][uWarn],params[1]);
        SendAdminMessageToAll( C_LIGHTRED, vb_string, params[0] );
		
		format:gb_string( "%s предупреждение %s [%d/3]. Причина: %s",
			Player[playerid][uName],
			Player[params[0]][uName],
			Player[ params[0] ][uWarn],
			params[1]
		);
		
		logs( ALOG + 6, gb_string, Player[playerid][uID], Player[params[0]][uID] );
	}
	
	AntiCheatKick( params[0], params[1], false, false );
	return 1;
}

CMD:biz( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 2 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /biz [ID]");
	if(params[0] <= 0 || params[0] > cBizz) return SendClientMessage(playerid,C_GRAY,""gbInfo"Некорректый ID бизнеса!");
	setPlayerPos(playerid, Bizz::[params[0] - 1][bEnter][0],Bizz::[params[0]-1][bEnter][1],Bizz::[params[0]-1][bEnter][2]);
	if(GetPlayerVirtualWorld(playerid) > 0) SetPlayerVirtualWorld(playerid, 0);
	if(GetPlayerInterior(playerid) > 0) SetPlayerInterior(playerid, 0);
	new str[128];
	format(str, sizeof(str), ""gbAccess"Вы были телепортированы к бизнесу %d.", params[0]);
	SendClientMessage(playerid, -1, str);
	return true;
}

CMD:sellbiz( playerid, params[] )
{
	if(Player[playerid][uAdmin] < 7 || GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /sellbiz [ID]");
	if(params[0] > cBizz || params[0] <= 0) return SendClientMessage(playerid,C_GRAY,""gbInfo"Указанного бизнеса не существует");
	if(!strcmp(Bizz::[params[0]-1][bOwner], "None", true)) return SendClientMessage(playerid,C_GRAY,""gbInfo"У данного бизнеса нет владельца!");
	new query_strings[256];
	format(query_strings,sizeof(query_strings),"INSERT INTO `gb_business_money` (ID,Name,Money,BizzID) VALUES ('%d','%s','%d','%d')",Bizz::[params[0]][bOwnerID], Bizz::[params[0]][bOwner], Bizz::[params[0]][bSettings][0] / 100 * 80, params[0]+1);
	mysql_tquery(1, query_strings, "", "");
	SetBizzStr(params[0]-1,"bOwner", "None");
	strmid(Bizz::[params[0]-1][bOwner], "None", 0, strlen("None"), MAX_PLAYER_NAME);
	Bizz::[params[0]-1][bOwnerID] = 0;
	switch(Bizz::[params[0]-1][bSettings][7])
	{
		case 3:
		{
			if(Bizz::[params[0]-1][bUpdate][1] == 1)
			{
				for(new s; s != 351; s ++) DestroyDynamicObject(Bizz::[params[0]-1][bObjects][s]);
				for(new s; s != 5; s ++) {
				if (IsValidDynamic3DTextLabel(Bizz::[params[0]-1][bTextBuy][s]))
					DestroyDynamic3DTextLabel(Bizz::[params[0]-1][bTextBuy][s]);
				}
			}
		}
		case 8:
		{
			if(Bizz::[params[0]-1][bUpdate][1] == 1)
			{
				for(new i; i < 54; i ++) DestroyDynamicObject(Bizz::[params[0]-1][bAObject][i]);
				if (IsValidDynamic3DTextLabel(Bizz::[params[0]-1][bAText]))
					DestroyDynamic3DTextLabel(Bizz::[params[0]-1][bAText]);
			}
		}
	}
	format(query_strings, sizeof(query_strings), "[A] %s[%d] очистил бизнес %s [%d]", Player[playerid][uName], playerid, Bizz::[params[0] -1][bName], params[0]);
	SendAdminMessage( C_GRAY, query_strings);
	return 1;
}

CMD:setprod( playerid, params[] )
{
	if(Player[playerid][uAdmin] < 5  || GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if(sscanf(params, "dd", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /setprod [ID] [Prod]");
	//if(params[0] > 90 || params[0] <= 0 ) return SendClientMessage(playerid,C_GRAY,""gbInfo"Указанного бизнеса не существует");
	//if(!strcmp(Bizz::[params[0]-1][bOwner], "None", true)) return SendClientMessage(playerid,C_GRAY,""gbInfo"У данного бизнеса нет владельца!");
	if(params[1] > 40000 || params[1] <= 0) return SendClientMessage(playerid,C_GRAY,""gbInfo"Количество продуктов должно быть от 1 до 40000!");
	Bizz::[params[0]-1][bSettings][3] = params[1];
	new str[128];
	format(str, sizeof(str), "[A] %s[%d] установил бизнесу %s[%d] продуктов - %d.", Player[playerid][uName], playerid, Bizz::[params[0]-1][bName], params[0], params[1]);
	SendAdminMessage( C_GRAY, str);
	return true;
}

CMD:binfo( playerid, params[] )
{
	if(Player[playerid][uAdmin] < 5 || GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /binfo [ID]");
	if(params[0] > cBizz || params[0] < 0) return SendClientMessage(playerid,C_GRAY,""gbInfo"Указанного бизнеса не существует");
	//new id = params[0] - 1;
	
	
	
	new bizid = Bizz::[params[0]][bID];
	if(!strcmp(Bizz::[bizid][bOwner], "None", true)) return SendClientMessage(playerid,C_GRAY,""gbInfo"У данного бизнеса нет владельца!");
	new strs[512], str1[25], str2[25], str3[25];
	new str[52];
	if(Bizz::[bizid][bUpdate][0] == 0) str1 = "{FF6347}Нет{AFAFAF}";
	else str1 = "{33AA33}Есть{AFAFAF}";
	if(Bizz::[bizid][bUpdate][1] == 0) str2 = "{FF6347}Нет{AFAFAF}";
	else str2 = "{33AA33}Есть{AFAFAF}";
	if(Bizz::[bizid][bUpdate][2] == 0) str3 = "{FF6347}Нет{AFAFAF}";
	else str3 = "{33AA33}Есть{AFAFAF}";
	format(str, sizeof(str), "%s[%d]", Bizz::[bizid][bName], params[0]);
	format(strs, sizeof(strs), "{AFAFAF}Бизнес [%d]: %s\nВладелец [%d]: %s\nУлучшения первого уровня: %s\nУлучшение второго уровня: %s\nУлучшение третьего уровня: %s\nСтоимость: %d", Bizz::[bizid][bName], params[0], Bizz::[bizid][bOwner], Bizz::[bizid][bOwnerID], str1, str2, str3, Bizz::[bizid][bSettings][0]);
	showPlayerDialog(playerid,0,DIALOG_STYLE_MSGBOX,str,strs,"Далее","");
	return true;
}

CMD:mycar( playerid, params[] )
	return cmd_veh( playerid, params );
	
CMD:veh( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 4 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	//if(GetPlayerInterior(playerid) > 0) return 1;
	if( sscanf( params, "ddd", params[0],params[1],params[2] ) ) 
		return SendClientMessage(playerid, -1, ""gbInfo"Введите: /veh [ id машины ] [ цвет 1 ] [ цвет 2 ]");
	
	if( params[0] > 611 || params[0] < 400 ) 
		return SendClientMessage(playerid, -1, ""gbError"ID транспорта от 400 до 611!");
	if( params[1] > 255 || params[1] < 0 ) 
		return SendClientMessage(playerid, -1, ""gbError"ID цвета от 0 до 255!");
	if( params[2] > 255 || params[2] < 0 ) 
		return SendClientMessage(playerid, -1, ""gbError"ID цвета от 0 до 255!");
		
	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X,Y,Z);
	new carid = CreateVehicle(params[0], X + 1.0,Y,Z, 0.0, params[1], params[2], 60000);
	SetVehicleVirtualWorld( carid, GetPlayerVirtualWorld( playerid ) );
	LinkVehicleToInterior( carid, GetPlayerInterior( playerid ) );
	caradmin[carid] = true;
	
	SendMes( playerid, -1, ""gbAccess"Транспорт с ID: "cBLUE"%d"cWHITE" создан.", carid );
	return 1;
}

CMD:dveh( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 4 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	if(!IsPlayerInAnyVehicle(playerid)) 
		return SendClientMessage(playerid,C_GRAY,""gbError"Для удаления Вы должны быть в автомобиле!");
		
	if( !caradmin[GetPlayerVehicleID(playerid)] ) 
		return SendClientMessage( playerid, C_WHITE,""gbError"Данный транспорт нельзя удалить." );
		
	DestroyVehicle(GetPlayerVehicleID(playerid));
	SendClientMessage(playerid,C_GRAY,""gbAccess"Вы удалили временный транспорт.");
	return 1;
}

CMD:dvehall( playerid )
{
	if( !GetAccessAdmin( playerid, 4 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );

	for( new v = 1; v <= MAX_VEHICLES; v++ )
	{		
		if( !caradmin[ v ] ) 
			continue;
			
		DestroyVehicle( v );
	}
	
	SendClientMessage( playerid,C_GRAY,""gbAccess"Вы удалили весь временный транспорт на сервере.");
	return 1;
}

CMD:dvehid( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 4 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if(sscanf(params, "d", params[0])) 
		return SendClientMessage(playerid, -1, "Введите: /dvehid [id]");
		
	if( !caradmin[ params[0] ] ) 
		return SendClientMessage( playerid, C_WHITE,""gbError"Данный транспорт нельзя удалить." );
		
	DestroyVehicle(params[0]);
	SendClientMessage( playerid, C_WHITE, ""gbAccess"Вы удалили временный транспорт." );
	return 1;
}

CMD:setpaytime( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 7 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if(sscanf(params, "ud", params[0], params[1])) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /setpaytime [ id игрока ] [ время ]");
		
	if(params[1] < 0 || params[1] > 60) 
		return SendClientMessage(playerid,C_GRAY,""gbError"Время только от 0 до 60!");
		
	Player[params[0]][uPayTime] = params[1];
	
	format(vb_string, sizeof(vb_string), ""gbAccess"Вы установили игроку %s[%d] время игры.", Player[params[0]][uName], params[0] );
	SendClientMessage(playerid, C_WHITE, vb_string);
	return true;
}

CMD:vspawnr( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 3 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "d", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, ""gbInfo"Введите: /vspawnr [ радиус ]" );
	
	if( params[0] < 0 )
		return SendClientMessage( playerid, C_WHITE, ""gbError"Радиус не может быть отрицательным." );
	
	new
		Float: x,
		Float: y,
		Float: z,
		Float: range = float( params[0] );
	
	for( new i; i < MAX_VEHICLES; i++ )
	{
		GetVehiclePos( i, x, y, z );
		if( IsPlayerInRangeOfPoint( playerid, range, x, y, z ) )
		{		
			SetVehicleToRespawn( i );
		}
	}
	
	format:gb_string( "[A] %s[%d] зареспавнил тс в радиусе: %d.", 
		Player[playerid][uName], 
		playerid, 
		params[0] 
	); 
	
	SendAdminMessage( C_GRAY, gb_string );

	return 1;
}

CMD:makemic( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 3 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, ""gbInfo"Введите: /makemic [ id игрока ]" );
		
	if( !IsPlayerLogged( params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	SendClientMessage( playerid, C_WHITE, 
		( player_microphone{ params[0] } ) ? 
			( ""gbInfo"Вы забрали у данного игрока возможность использовать - "cBLUE"/mic"cWHITE"." )
			:
			( ""gbInfo"Вы выдали данному игроку возможность использовать - "cBLUE"/mic"cWHITE"." )
	);
	
	player_microphone{ params[0] } = ( player_microphone{ params[0] } ) ? 0 : 1;
	
	return 1;
}

/*CMD:gmtest( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );

	if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE,""gbInfo"Введите: /gmtest [ id игрока ]" );

	if( !IsPlayerLogged( params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	if( admin_gmtest_timer[ playerid ] != -1 )
		return SendClientMessage( playerid, C_WHITE, !""gbError"Вы уже проверяете игрока на GM." );
	
	new 
		Float: x,
		Float: y,
		Float: z;
	
	if( IsPlayerInAnyVehicle( params[ 0 ] ) )
	{
		GetVehicleHealth( GetPlayerVehicleID( params[0] ), admin_gmtest_prehealth[ params[0] ] );
	}
	else 
	{
		GetPlayerHealth( params[0], admin_gmtest_prehealth[ params[0] ] );
        GetPlayerArmour( params[0], admin_gmtest_prearmour[ params[0] ] );
	}
	
	
	GetPlayerPos( params[0], x, y, z );
	CreateExplosionForPlayer( params[0], x, y, z + 7.5, 5, 0.5 );
	
	admin_gmtest_timer[ playerid ] = SetTimerEx( "OnAdminGodmodeTest", false, 1500, "ii", playerid, params[0] );
	
	return 1;
}

function OnAdminGodmodeTest( adminid, testid )
{
	clear_massive();
	
	if( !IsPlayerLogged( adminid ) || !IsPlayerLogged( testid ) )
		return 1;

	new 
		_: vehicleid,
		Float: health,
		Float: armour,
		Float: prehealth = admin_gmtest_prehealth[ testid ],
		Float: prearmour = admin_gmtest_prearmour[ testid ],
		bool: is_gm = false;

	format:gb_string( "pre hp: %f", prehealth );
	SendClientMessage( testid, C_WHITE, gb_string );
	
	format:gb_string( ""gbInfo"Проверка игрока "cBLUE"%s"cWHITE":\n\n", Player[testid][uName] );
	strcat( vb_string, gb_string );
	
	if( IsPlayerInAnyVehicle( testid ) )
	{
		vehicleid = GetPlayerVehicleID( testid );
		GetVehicleHealth( vehicleid, health );
	}
	else 
	{		
		GetPlayerHealth( testid, health );
        GetPlayerArmour( testid, armour );
	}
	
	format:gb_string( "hp: %f", prehealth );
	SendClientMessage( adminid, C_WHITE, gb_string );
		
	if( IsPlayerInAnyVehicle( testid ) )
	{
		strcat( vb_string, ""gbInfo"До:\n" );
	
		format:gb_string( "Здоровье транспорта: %0.1f\n\n", prehealth );
		strcat( vb_string, gb_string );
		
		strcat( vb_string, ""gbInfo"После:\n" );
		
		format:gb_string( "Здоровье транспорта: %0.1f\n\n", health );
		strcat( vb_string, gb_string );
	
		if( _: floatsub( prehealth, health ) == _: 0.0 )
		{
			is_gm = true; 	
		}
	}
	else 
	{
		strcat( vb_string, ""gbInfo"До:\n" );
	
		format:gb_string( "Здоровье: %0.1f\nБроня: %0.1f\n\n", prehealth, prearmour );
		strcat( vb_string, gb_string );
		
		strcat( vb_string, ""gbInfo"После:\n" );
		
		format:gb_string( "Здоровье: %0.1f\nБроня: %0.1f\n\n", health, armour );
		strcat( vb_string, gb_string );
	
		format:gb_string( "pre hp: %f | health: %f", prehealth, health );
		SendClientMessage( testid, C_WHITE, gb_string );
		
		format:gb_string( "hp diff: %f | armor diff: %f", floatsub( prehealth, health ), floatsub( prearmour, armour ) );
		SendClientMessage( testid, C_WHITE, gb_string );
		
		if( _: floatsub( prehealth, health ) == _: 0.0 && _: floatsub( prearmour, armour ) == _: 0.0 )
		{
			is_gm = true;
		}
	}
	
	if( is_gm )
	{
		strcat( vb_string, ""cRED"| Здоровье и броня не уменьшились.\n| Данный игрок использует GM." );
		
		format:query( "Godmode [ %s ]", Player[adminid][uName] );
		AntiCheatSuspect( testid, query, _, true );
	}
	else 
	{
		strcat( vb_string, ""cGREEN"| Здоровье и броня уменьшились.\n| Данный игрок не использует GM.\n\n"gbAccess"Здоровье и броня восстановлены игроку." );
		
		if( IsPlayerInAnyVehicle( testid ) )
		{
			format:gb_string( "%d", vehicleid );
			cmd_vrepair( adminid, gb_string );
		}
		else 
		{
			format:gb_string( "%d", testid );
			cmd_aheal( adminid, gb_string );
		}
	}
	
	ShowPlayerDialog( adminid, 9999, DIALOG_STYLE_MSGBOX, " ", vb_string, "Закрыть", "" );
	
	KillTimer( admin_gmtest_timer[ adminid ] );
	admin_gmtest_timer[ adminid ] = -1;
	return 1;
}*/

CMD:unmute( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	if( sscanf(params, "u", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE,""gbInfo"Введите: /unmute [ id игрока ]" );
		
	if( !IsPlayerLogged( params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	if( Player[params[0]][uMute] == 0 ) 
		return SendClientMessage( playerid, C_WHITE,""gbError"У данного игрока отсутствует блокировка IC чата." );
		
	format:gb_string( "Администратор %s разблокировал IC чат %s.",Player[playerid][uName],Player[params[0]][uName]);
	SendAdminMessageToAll( C_LIGHTRED, gb_string, params[0] );
	
	Player[ params[0] ][uMute] = 0;
	userUpdate( params[0], "uMute", 0 );
	
	format:gb_string( "%s разблокировал IC чат %s.",
		Player[playerid][uName],
		Player[params[0]][uName]
	);
	
	logs( ALOG + 15, gb_string, Player[playerid][uID], Player[params[0]][uID] );
	return 1;
}

CMD:mute( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	if( sscanf( params, "uds[32]", params[0], params[1], params[2] ) ) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /mute [ id игрока ] [ минуты ] [ причина ]");
		
	if( !IsPlayerLogged( params[0] ) || params[0] == playerid ) 
		return SendClientMessage(playerid,C_GRAY,""gbError"Неверный id игрока!");
	if(params[1] < 1 || params[1] > 600) 
		return SendClientMessage(playerid,C_GRAY,""gbError"Неверное кол-во времени, от 1 до 600 минут!");
	
	format:gb_string( "Администратор %s заблокировал IC чат %s на %d минут. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1],params[2]);
	SendAdminMessageToAll( C_LIGHTRED, gb_string, params[0] );
	
	Player[ params[0] ][uMute] = params[1];
	userUpdate( params[0], "uMute", params[1] );
	
	format:gb_string( "%s заблокировал IC чат %s. Причина: %s",
		Player[playerid][uName],
		Player[params[0]][uName],
		params[2]
	);
	
	logs( ALOG + 14, gb_string, Player[playerid][uID], Player[params[0]][uID] );
	return 1;
}

CMD:bmute( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf(params, "uds[32]", params[0], params[1], params[2] ) ) 
		return SendClientMessage( playerid, C_WHITE,""gbInfo"Введите: /bmute [ id игрока ] [ минуты ] [ причина ]");
		
	if( !IsPlayerLogged(params[0]) || params[0] == playerid ) 
		return SendClientMessage( playerid, C_WHITE, INCORRECT_PLAYER_ID);
	
	if( params[1] < 1 || params[1] > 600 ) 
		return SendClientMessage(playerid, C_WHITE,""gbError"Неверное кол-во времени, от 1 до 600 минут!");
	
	format:gb_string( "Администратор %s заблокировал OOC чат %s на %d минут. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1],params[2]);
	SendAdminMessageToAll( C_LIGHTRED, gb_string,params[0] );
	
	Player[ params[0] ][uBMute] = params[1];
	userUpdate( params[0], "uBMute", params[1] );
	
	format:gb_string( "%s заблокировал OOC чат %s. Причина: %s",
		Player[playerid][uName],
		Player[params[0]][uName],
		params[2]
	);
	
	logs( ALOG + 13, gb_string, Player[playerid][uID], Player[params[0]][uID] );
	return 1;
}

CMD:unbmute( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, !""gbInfo"Введите: /unbmute [ id игрока ]" );
		
	if( !IsPlayerLogged( params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	if( !Player[params[0]][uBMute] ) 
		return SendClientMessage( playerid, C_WHITE,""gbError"У данного игрока не заблокирован OOC чат." );
		
	format:gb_string( "Администратор %s разблокировал OOC чат %s.",
		Player[playerid][uName],
		Player[params[0]][uName]
	);
	
	SendAdminMessageToAll( C_LIGHTRED, gb_string, params[0] );
	
	Player[params[0]][uBMute] = 0;
	userUpdate( params[0], "uBMute", 0 );
	
	format:gb_string( "%s разблокировал OOC чат %s. ",
		Player[playerid][uName],
		Player[params[0]][uName]
	);
	
	logs( ALOG + 12, gb_string, Player[playerid][uID], Player[params[0]][uID] );
	return 1;
}

CMD:kick( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "us[32]", params[0],params[1] ) ) 
		return SendClientMessage( playerid, C_WHITE, !""gbInfo"Введите: /kick [ id игрока ] [ причина ]");
		
	if( !IsPlayerConnected( params[0] ) || IsKicked( params[0] ) || params[0] == playerid || Player[playerid][uAdmin] < Player[params[0]][uAdmin] || IsPlayerNPC(params[0])) 
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	if( !GetAccessDeveloper( playerid, params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );

	format:gb_string( "Администратор %s отсоединил игрока %s. Причина: %s",
		Player[playerid][uName],
		Player[params[0]][uName],
		params[1]
	);
	
	SendAdminMessageToAll( C_LIGHTRED, gb_string, params[0] );
	
	format:gb_string( "%s отсоединил от сервера %s. Причина: %s",
		Player[playerid][uName],
		Player[params[0]][uName],
		params[1]
	);
	
	logs( ALOG + 11, gb_string, Player[playerid][uID], Player[params[0]][uID] );
	
	AntiCheatKick( params[0], params[1], false, false );
	return 1;
}

CMD:skick( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 7 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, !""gbInfo"Введите: /skick [ id игрока ]");
		
	if( !IsPlayerConnected( params[0] ) || IsKicked( params[0] ) || params[0] == playerid || IsPlayerNPC(params[0])) 
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );

	format:gb_string( "[A] %s[%d] тихо отсоединил %s[%d].",
		Player[playerid][uName],
		playerid,
		Player[params[0]][uName],
		params[0]
	);
	
	SendAdminMessage( C_GRAY, gb_string );
	
	Kick( params[0] );
	return 1;
}

CMD:sethouseint( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 7 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "d", params[0] ) ) 
		return SendClientMessage( playerid, -1, ""gbInfo"Введите: /sethouseint [ id интерьера ]" );
		
	for( new h; h < MAX_HOUSE; h++ ) 
	{
		if( IsPlayerInRangeOfPoint( playerid, 1.5, 
			HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2] ) ) 
		{
			
			HouseInfo[h][hExitPos][0] = house_int[ params[0] - 1 ][ht_p][0], 
			HouseInfo[h][hExitPos][1] = house_int[ params[0] - 1 ][ht_p][1], 
			HouseInfo[h][hExitPos][2] = house_int[ params[0] - 1 ][ht_p][2],
			HouseInfo[h][hExitPos][3] = house_int[ params[0] - 1 ][ht_p][3];
			HouseInfo[h][hInterior] = house_int[ params[0] - 1 ][ht_id]; 
			HouseInfo[h][hExitInt] = house_int[ params[0] - 1 ][ht_int]; 
			houseUpdate( HouseInfo[h][hID], "hInt", HouseInfo[h][hExitInt] ),
			houseUpdate( HouseInfo[h][hID], "hInterior", HouseInfo[h][hInterior] ),
			houseUpdateFloat( HouseInfo[h][hID], "hExPosX", HouseInfo[h][hExitPos][0] ),
			houseUpdateFloat( HouseInfo[h][hID], "hExPosY", HouseInfo[h][hExitPos][1] ),
			houseUpdateFloat( HouseInfo[h][hID], "hExPosZ", HouseInfo[h][hExitPos][2] ),
			houseUpdateFloat( HouseInfo[h][hID], "hExPosA", HouseInfo[h][hExitPos][3] );
			
			loadHouseInterior( h );
			
			SendMes( playerid, -1, ""gbAccess"Вы успешно установили дому %d интерьер %s.", 
				HouseInfo[h][hID], 
				house_int[ params[0] - 1 ][ht_name] 
			);
			
			break;
		}
	}
	
	return 1;
}

CMD:iban( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 4 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf(params, "us[64]", params[0], params[2] ) ) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /iban [ id игрока ] [ причина ]");
	
	if( !IsPlayerLogged( params[0] ) || params[0] == playerid ) 
		return SendClientMessage( playerid, C_WHITE, INCORRECT_PLAYER_ID );
		
	if( !GetAccessDeveloper( playerid, params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	
	format:gb_string( "Администратор %s заблокировал игрока %s навсегда. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[2]);
	SendAdminMessageToAll( C_LIGHTRED, gb_string,params[0] );

	if(Player[params[0]][uAdmin] > 0 )
	{
		SendClientMessage(playerid, C_LIGHTRED, "Вы были заблокированы за блокировку администратора!");
		SendClientMessage(playerid, C_LIGHTRED, "Чтобы снять блокировку, обратитесь к администратору!");
		return KickEx(playerid);
	}

	userUpdate( params[0], "uBanPlayer", 2145917100 );

	format:gb_string( "%s заблокировал навсегда %s. Причина: %s",
		Player[playerid][uName],
		Player[params[0]][uName],
		params[1]
	);
	
	logs( ALOG + 4, gb_string, Player[playerid][uID], Player[params[0]][uID] );

	AntiCheatKick( params[0], params[1], false, false );
	return 1;
}

CMD:ban( playerid, params[] )
{
	if( !GetAccessAdmin( playerid, 3 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf(params, "uds[128]", params[0], params[1], params[2] ) ) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ban [ id игрока ] [ дни ] [ причина ]");
		
	if( params[1] < 1 || params[1] > 299 ) 
		return SendClientMessage(playerid,C_GRAY,""gbError"Неверное количество дней. Минимальное - 1, максимальное - 299.");
		
	if( !IsPlayerLogged( params[0] ) || IsKicked(params[0]) || params[0] == playerid || Player[playerid][uAdmin] < Player[params[0]][uAdmin] || IsPlayerNPC( params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	if( !GetAccessDeveloper( playerid, params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		

	format:gb_string( "Администратор %s заблокировал игрока %s на %d дней. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1],params[2]);
	SendAdminMessageToAll( C_LIGHTRED, gb_string ,params[0] );

	userUpdate( params[0], "uBanPlayer", gettime() + params[1] * 86400 );

	format:gb_string( "%s заблокировал на %d дней %s. Причина: %s",
		Player[playerid][uName],
		params[1],
		Player[params[0]][uName],
		params[2]
	);
	
	logs( ALOG + 4, gb_string, Player[playerid][uID], Player[params[0]][uID] );

	AntiCheatKick( params[0], params[2], false, false );
	return 1;
}

CMD:giveitem( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 6 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "dd", params[0], params[1] ) ) 
		return SendMes( playerid, C_GRAY,""gbInfo"Введите: /giveitem [ id предмета ] [ item params ]");
		
	format( gb_string, sizeof gb_string, "[A] %s[%d] выдал себе предмет - %s[%d]", 
		Player[playerid][uName],
		playerid, 
		_itemsInfo[ params[0] ][invName], 
		params[1] 
	);
	SendAdminMessage( C_GRAY, gb_string );
	
	GivePlayerItem( playerid, params[0], params[1] );
	
	format:gb_string( "%s выдал себе предмет %s (Количество: %d)",
		Player[playerid][uName],
		_itemsInfo[ params[0] ][invName],
		params[1]
	);
	
	logs( ALOG + 5, gb_string, Player[playerid][uID], params[0], params[1] );

	return 1;
}

CMD:unretest( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 5 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "s[25]", params[0] ) ) 
		return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /unretest [ имя игрока ]" );
	format( vb_string, sizeof vb_string,"SELECT `uID` FROM `gb_users` WHERE BINARY `uName` = '%s' AND `uRetest` > 0 LIMIT 1", params[0] );
	mysql_tquery( mysql, vb_string, "UnRetestPlayer", "ds", playerid, params[0] );
	return 1;
}

CMD:unban( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 5 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "s[25]", params[0] ) ) 
		return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /unban [ имя игрока ]");
		
	mysql_format( mysql, query, sizeof query, "SELECT `uID` FROM `gb_users` WHERE BINARY `uName` = '%s' AND `uBanPlayer` > 0 LIMIT 1", params[0]);
	mysql_tquery( mysql, query, "UnBanPlayer", "ds", playerid, params[0] );
	
	return 1;
}

CMD:unbanip( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 5 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	if( sscanf( params, "s[32]", params[0] ) ) 
		return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /unbanip [ ip адрес ]");
		
	mysql_format:query( "DELETE FROM gb_ipbans WHERE uIP = '%s'", params[0] );
	mysql_tquery( mysql, query, "", "");
	
	format( gb_string, sizeof gb_string, "[A] %s[%d] разблокировал IP: %s", Player[playerid][uName], playerid, params[0] );
	SendAdminMessage( C_GRAY, gb_string );
	
	format:gb_string( "%s разблокировал IP: %s",
		Player[playerid][uName],
		params[0]
	);
	
	logs( ALOG + 8, gb_string, Player[playerid][uID] );
	return 1;
}

CMD:unwarn( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 5 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "d", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, ""gbInfo"Введите: /unwarn [ id игрока ]" );
		
	if( !IsPlayerLogged( params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
	
	if( Player[ params[0] ][uWarn] - 1 < 0 )
		return SendClientMessage( playerid, C_WHITE, !""gbError"У игрока отсутствуют предупреждения." );
		
	
	Player[ params[0] ][uWarn] -= 1;
	userUpdate( params[0], "uWarn", Player[ params[0] ][uWarn] );
	
	format:gb_string( ""gbAccess"Администратор "cBLUE"%s[%d]"cWHITE" снял с Вас предупреждений. Предупреждений: "cRED"%d"cWHITE".",
		Player[ playerid ][ uName ],
		playerid,
		Player[ params[0] ][uWarn]
	);
	
	SendClientMessage( params[0], C_WHITE, gb_string );
	
	format:gb_string( "[A] %s[%d] снял предупреждние с %s[%d] (Предупреждений: %d).", 
		Player[playerid][uName], 
		playerid,
		Player[params[0]][uName],
		params[0],
		Player[ params[0] ][uWarn]
	);
	
	SendAdminMessage( C_GRAY, gb_string );
	
	format:gb_string( "%s снял предупреждение %s",
		Player[playerid][uName],
		Player[params[0]][uName]
	);
	
	logs( ALOG + 2, gb_string, Player[playerid][uID] );
	return 1;
}

CMD:sp( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage(playerid, C_WHITE,""gbInfo"Введите: /sp [ id игрока ]");
	
	if( !IsPlayerLogged( params[0] ) ) 
		return SendClientMessage(playerid, C_WHITE, !INCORRECT_PLAYER_ID );
	
	if( params[0] == playerid ) 
		return SendClientMessage(playerid, C_WHITE, ""gbError"Вы не можете наблюдать за собой.");
		
	if( !GetAccessDeveloper( playerid, params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	StartRecon( playerid, params[0] );
	
	return 1;
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

CMD:stats( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	if( sscanf( params, "d", params[0] ) ) 
		return SendMes( playerid,C_GRAY,""gbInfo"Введите: /stats [ id ]");
	
	if( !IsPlayerLogged( playerid ) )
		return SendClientMessage( playerid, -1, !INCORRECT_PLAYER_ID );
		
	showStats( playerid, params[0] );
	return true;
}	

CMD:afrisk( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "u", params[0] )) 
		return SendClientMessage( playerid, C_WHITE, ""gbInfo"Введите: /afrisk [ id игрока ]" );
		
	adminFrisk( playerid, params[0] );
	return 1;
}

CMD:gethere( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 1 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
    if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /gethere [ id игрока ]");
		
    if( playerid == params[0] 
	|| !IsPlayerLogged( params[0] ) 
	|| Player[ params[0] ][uAdmin] > Player[ playerid ][uAdmin]  
	) 
		return SendClientMessage(playerid,C_WHITE,!INCORRECT_PLAYER_ID);
		
	new 
		player_state = GetPlayerState( params[0] ),
		Float: x,
		Float: y,
		Float: z;
		
	GetPlayerPos( playerid, x, y, z );
	
	if( player_state == PLAYER_STATE_SPECTATING )
	{
		StopRecon( params[0], "~r~You have been teleported" );
	}
	
	if( player_state == PLAYER_STATE_DRIVER ) 
	{
		new 	
			Float: v_x,
			Float: v_y,
			Float: v_z,
			vehicleid = GetPlayerVehicleID( params[0] );
			
		GetVehicleVelocity( vehicleid, v_x, v_y, v_z );
		setVehiclePos( vehicleid, x + 1.0, y + 1.0, z + 1.0 );
		SetVehicleVelocity( vehicleid, v_x, v_y, v_z );
	}
	else 
	{ 
		if( getData( params[0], "User:inInt" ) && GetPlayerInterior( playerid ) == 0 ) 
		{
			delData( params[0], "User:inInt" );
			updateWeather( params[0] );
		}		
		
		setPlayerPos( params[0], x + 1.0, y + 1.0, z );
	}	
	
	SetPlayerVirtualWorld( params[0], GetPlayerVirtualWorld( playerid ) );
  	SetPlayerInterior( params[0], GetPlayerInterior( playerid ) );
	
	format:gb_string( ""gbAccess"Администратор %s[%d] телепортировал Вас к себе.",Player[playerid][uName], playerid);
	SendClientMessage( params[0], C_WHITE, gb_string );
	
	format:gb_string( "[A] %s[%d] телепортировал к себе %s[%d].",
		Player[ playerid ][uName],
		playerid,
		Player[ params[0] ][uName],
		params[0]
	);
	
	SendAdminMessage( C_GRAY, gb_string );
	
	return 1;
}

CMD:payday( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 7 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	payDay( playerid );
	
	return 1;
}

CMD:unprison( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 5 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "u", params[0] ) ) 
		return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /unprison [ id игрока ]" );
		
	if( !IsPlayerLogged( params[0] ) ) 
		return SendMes( playerid, C_GRAY, !INCORRECT_PLAYER_ID );
		
	Player[ params[0] ][uArrestStat]++;
	Player[ params[0] ][uArrestStatDate] = gettime();
	Player[ params[0] ][uArrest] = 0, Player[ params[0] ][uArrestCamera] = 0, Player[ params[0] ][uArrestTime] = 0;
	userUpdate( params[0], "uArrest", 0 ), userUpdate( params[0], "uArrest", 0 ), userUpdate( params[0], "uArrest", 0 );
	userUpdate( params[0], "uArrestStat", Player[ params[0] ][uArrestStat] );
	userUpdate( params[0], "uArrestStatDate", gettime() );
	
	SendMes( playerid, C_GRAY, ""gbAccess"Вы выпустили игрока %s из тюрьмы.", Player[ params[0] ][uName] );
	SendMes( params[0], C_GRAY, ""gbAccess"Администратор %s[%d] выпустил Вас из тюрьмы.", Player[playerid][uName], playerid );
	
	format( query, sizeof query, "SELECT * FROM `gb_prison` WHERE `pName` = '%s' AND `pArrest` = '1'", Player[ params[0] ][uName] );
	mysql_tquery( mysql, query, "givePrisonInv", "ds", params[0], "(( Admin ))" );

	if( Player[ params[0] ][uRole] == 6 ) Player[ params[0] ][uRole] = 1, userUpdate( params[0], "uRole", 1 );
	
	format:gb_string( "[A] %s[%d] выпустил из тюрьмы %s[%d].",
		Player[playerid][uName],
		playerid,
		Player[ params[0] ][uName],
		params[0]
	);
	
	SendAdminMessage( C_GRAY, gb_string );
	
	format:gb_string( "%s выпустил %s из тюрьмы.",
		Player[playerid][uName],
		Player[ params[0] ][uName]
	);
	
	logs( ALOG + 9, gb_string, Player[playerid][uID], Player[params[0]][uID] );
	return 1;
}

CMD:vfuel( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 3 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "dd", params[0],params[1] ) ) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /vfuel [ id транспорта ] [ количество ]" );
	
	if( params[0] < 1 || params[0] > MAX_VEHICLES )
		return SendClientMessage( playerid, C_WHITE, ""gbError"Вы ввели некорректный ID транспорта." );
		
	V::[ params[0] ][ vFuel ] = params[1];
	
	return 1;
}

CMD:vspawn( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 2 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "d", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, ""gbInfo"Введите: /vspawn [ id транспорта ]" );
		
	if( params[0] < 1 || params[0] > MAX_VEHICLES )
		return SendClientMessage( playerid, C_WHITE, ""gbError"Вы ввели некорректный ID транспорта." );
		
	SetVehicleToRespawn( params[0] );
	return 1;
}

CMD:getcar( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 2 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "d", params[0] ) ) 
		return SendClientMessage(playerid,C_WHITE,""gbInfo"Введите: /getcar [ id ( /dl) транспорта ]");
	
	if( params[0] < 1 || params[0] > MAX_VEHICLES )
		return SendClientMessage( playerid, C_WHITE, ""gbError"Вы ввели некорректный ID транспорта." );
	
	new
		Float: x,
		Float: y,
		Float: z;
		
	GetPlayerPos( playerid, x, y, z );
	setVehiclePos( params[0], x, y, z );
	return 1;
}

CMD:gotocar( playerid, params[] ) 
{
	if( !GetAccessAdmin( playerid, 7 ) )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "d", params[0] ) ) 
		return SendClientMessage(playerid,C_WHITE,""gbInfo"Введите: /gotocar [ id транспорта ]");
	
	if( params[0] < 1 || params[0] > MAX_VEHICLES )
		return SendClientMessage( playerid, C_WHITE, ""gbError"Вы ввели некорректный ID транспорта." );
	new
		Float: x,
		Float: y,
		Float: z;
		
	GetVehiclePos( params[0], x, y, z );
	SetPlayerPos( playerid, x, y, z );
	
	
	return 1;
}