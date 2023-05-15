//if(Player[playerid][uAdmin] > 0 && GetPVarInt(playerid,"playerAdmin") == 0) return true;

//

CMD:heal( playerid, params[] ) 
{
	if( Player[playerid][uMember] != 5 || Player[playerid][uIsPlayerJob][2] == 0 )
	{
		new 
			bool: cuff = false;
			
		for( new i; i != 48; i++ ) 
		{
			if(Inv[playerid][invSlot][i] == 434 
			|| Inv[playerid][invSlot][i] == 451 
			|| Inv[playerid][invSlot][i] == 457) 
			cuff = true;
		}
		
		if( !cuff ) 
			return SendClientMessage( playerid, C_WHITE,""gbError"У Вас нет с собой аптечки или сумки с медикаментами.");
		
		if( sscanf(params, "u", params[0] ) ) 
			return SendClientMessage( playerid, C_WHITE, ""gbInfo"Введите: /heal [ id игрока ]");
		
		if( Player[params[0]][uJailSettings][2] != 0 ) 
			return SendClientMessage( playerid, C_WHITE,""gbError"Данный персонаж уже проходит реабилитацию." );
		
		if( Player[params[0]][uDeath] == 2 ) 
			return SendClientMessage( playerid, C_WHITE, ""gbError"Данный персонаж мёртв, его невозможно вылечить." );
		
		if( !IsPlayerLogged( params[0] ) || params[0] == playerid || IsPlayerNPC( params[0] ) ) 
			return SendClientMessage( playerid, C_WHITE, INCORRECT_PLAYER_ID );
		
		if( GetDistanceBetweenPlayers( playerid, params[0] ) > 5.0 
			|| GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld( params[0] ) 
		) 
			return SendClientMessage( playerid, C_WHITE,""gbError"Данного игрока нет рядом с Вами." );
			
		for(new i; i != 48; i++) 
		{
			switch( Inv[playerid][invSlot][i] ) 
			{
				case 434, 457 : 
				{
					if( Inv[playerid][invSlotKol][i] != 0 ) 
					{
						Inv[playerid][invSlotKol][i]--;
					}
					else 
					{
						Inv[playerid][invSlotKol][i] = 0;
						Inv[playerid][invSlot][i] = 0;
					}
					
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы использовали аптечку.");
					
					format:gb_string( "использовал%s аптечку",
						Player[ playerid ][ uSex ] == 2 ? ( "а" ) : ( "" )
					);
					
					MeAction( playerid, gb_string, 1 );
					
					HealthPlayer( params[0] );
					break;
				}
				
				case 451: 
				{
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы использовали сумку с медикаментами.");
					
					format:gb_string( "использовал%s аптечку",
						Player[ playerid ][ uSex ] == 2 ? ( "а" ) : ( "" )
					);
					
					MeAction( playerid, gb_string, 1 );
					
				
					HealthPlayer( params[0] );
					break;
				}
			}
		}
		
		ApplyAnimation( playerid, "MEDIC", "CPR",4.0, 0, 1, 1, 0, 0, 1);

		if( Player[ params[0] ][ uHP ] + 50.0 < 100.0 ) 
		{
			setPlayerHealth( params[0], Player[ params[0] ][ uHP ] + 50.0 );
		}
		else 
		{
			setPlayerHealth( params[0], 100.0);
		}
		
		HealthPlayer( params[0] );
	}
	else 
	{
		return cmd_fdheal( playerid, params );
	}
	
	return 1;
}

CMD:charity( playerid, params[] ) 
{
	if( sscanf( params, "d", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, ""gbInfo"Введите: /charity [ сумма ]" );
	
	if( params[0] < 1 || params[0] > Player[playerid][uMoney] ) 
		return SendClientMessage( playerid, C_WHITE, !NO_MONEY );
	
	Player[playerid][uMoney] -= params[0];
	
	userUpdate( playerid, "uMoney", Player[playerid][uMoney] );
	
	SendMes( playerid, -1, ""gbAccess"Вы слили $%d", params[0] );
	
	logs( 13, "слил деньги", Player[playerid][uID], params[0] );
	return 1;
	
}

CMD:channel( playerid, params[] ) {
	new bool:selecttrue;
	for( new i; i != 48; i++ ) {
		if( Inv[playerid][invSlot][i] == 495 ) selecttrue = true;
	}
	if( selecttrue == false ) return SendMes( playerid, C_GRAY, ""gbInfo"У вас нет рации! Купить её можно в магазине электроники!");
	if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /channel [канал]");
	if( params[0] <= 0 || params[0] > 999 ) return SendMes( playerid, C_GRAY, ""gbInfo"Такого канала не существует! Только от 1 до 999!");
	if( params[0] == 911 && Player[playerid][uMember] != 2 ) return SendMes( playerid, C_GRAY, ""gbError"Этот канал зашифрован!");
	if( params[0] == 922 && Player[playerid][uMember] != 3 ) return SendMes( playerid, C_GRAY, ""gbError"Этот канал зашифрован!");
	if( params[0] == 900 && Player[playerid][uMember] != 6 ) return SendMes( playerid, C_GRAY, ""gbError"Этот канал зашифрован!");
	if( params[0] == 999 && Player[playerid][uMember] != 1 ) return SendMes( playerid, C_GRAY, ""gbError"Этот канал зашифрован!");
	if( params[0] == 991 && Player[playerid][uMember] != 5 ) return SendMes( playerid, C_GRAY, ""gbError"Этот канал зашифрован!");
	if( params[0] == 912 && Player[playerid][uMember] != 8 ) return SendMes( playerid, C_GRAY, ""gbError"Этот канал зашифрован!" );
	Player[playerid][uRadioChanel] = params[0];
	format( query, sizeof(query),"UPDATE `gb_users` SET `uRadioChanel` = '%d' WHERE BINARY `uName` = '%s'", params[0], Player[playerid][uName]);
	mysql_query( mysql, query );
	SendMes( playerid, C_GRAY, "Вы переключили канал своей рации на %d", params[0] );
	if(Player[playerid][uSettings][8]) {
		format(vb_string,sizeof(vb_string),"CHANNEL:     %d~n~SLOT:        %d", Player[playerid][uRadioChanel], Player[playerid][uRadioSubChanel]);
		PlayerTextDrawSetString(playerid,RadioShow[1][playerid],vb_string);
	}
	return true;
}

CMD:slot( playerid, params[] ) {	
	new bool:selecttrue;
	for(new i; i != 48; i++) {
		if(Inv[playerid][invSlot][i] == 495) selecttrue = true;
	}
	if(selecttrue == false) return SendClientMessage(playerid,C_GRAY,""gbInfo"У вас нет рации! Купить её можно в магазине электроники!");
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /slot [подканал]");
	if(params[0] <= 1 || params[0] > 99) return SendClientMessage(playerid,C_GRAY,""gbInfo"Такого подканала не существует! Только от 2 до 99!");
	Player[playerid][uRadioSubChanel] = params[0];	
	format(query,sizeof(query),"UPDATE `gb_users` SET `uRadioSubChanel` = '%d' WHERE BINARY `uName` = '%s'", params[0], Player[playerid][uName]);
	mysql_query( mysql, query );
	SendMes( playerid, C_GRAY, "Вы переключили подканал своей рации на %d", params[0]);
	if(Player[playerid][uSettings][8]) {
		format(vb_string,sizeof(vb_string),"CHANNEL:     %d~n~SLOT:        %d", Player[playerid][uRadioChanel], Player[playerid][uRadioSubChanel]);
		PlayerTextDrawSetString(playerid,RadioShow[1][playerid],vb_string);
	}
	return true;
}

CMD:radio( playerid, params[] ) {
	if(IsPlayerInAnyVehicle(playerid)) {
		switch( GetVehicleModel( GetPlayerVehicleID( playerid ) ) ) {
			case 448, 461, 462, 463, 468, 471, 481, 509, 510, 521, 522, 523, 581, 586: {
				SendMes( playerid, -1, ""gbError"В данном виде техники нельзя включить радио!" );
				return true;
			}
		}
		if(GetPlayerVehicleSeat(playerid) != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы должны быть за рулём транспортного средства!");
		for( new r; r < sizeof Radio; ++ r) format( gb_string, sizeof gb_string, "%i. "cBLUE"%s\n", r + 1, Radio[r][0] ), strcat( vb_string, gb_string );
		strcat( vb_string, "Выключить\n" );
		showPlayerDialog(playerid, d_radio, DIALOG_STYLE_LIST, " ", vb_string, "Выбрать", "Закрыть");
	}
	else if(Player[playerid][uRadio]) {
		if(!Player[playerid][uRadio]) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не включили радио в телефоне!");
		for( new r; r < sizeof Radio; ++ r) format( gb_string, sizeof gb_string, "%i. "cBLUE"%s\n", r + 1, Radio[r][0] ), strcat( vb_string, gb_string );
		strcat( vb_string,"Выключить\n" );
		showPlayerDialog(playerid, d_radio, DIALOG_STYLE_LIST, " ", vb_string, "Выбрать", "Закрыть");
	}
	return true;
}

CMD:ram( playerid, params[] ) {
	if( Player[playerid][uMember] != 1 
		&& Player[playerid][uMember] != 2 
		&& Player[playerid][uMember] != 5 
	) return SendMes( playerid, C_GRAY, ""gbError"У вас нет доступа к этой команде" );
	for( new h; h < sizeof HouseInfo; h++ ) {
		if( !HouseInfo[h][hID] || !HouseInfo[h][hOwned] ) continue;
		if( IsPlayerInRangeOfPoint( playerid, 3.0, 
			HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2] ) 
			&& HouseInfo[h][hEnterWorld] == GetPlayerVirtualWorld( playerid ) ) {
				
			if( !HouseInfo[h][hLock] ) return SendMes( playerid, C_GRAY, ""gbError"Двери этого дома открыты!" );
			GameTextForPlayer( playerid, "~g~UNLOCK", 3000, 3 );
			HouseInfo[h][hLock] = 0;
			inHouseMessage( h, 0xC2A2DAFF, "Входная дверь в доме выбита." );	
			return true;
		}		
	}
	SendMes( playerid, C_GRAY, ""gbError"Вы слишком далеко от двери!" );
	return true;
}

CMD:clearchat( playerid, params[] ) {
	for( new i; i < 20; i++ ) SendMes( playerid, -1, " " );
	printf( "| Игрок отчистил себе чат [%d] %s", playerid, Player[playerid][uName] );
	return true;
}

CMD:smoke( playerid, params[] ) {
	if( GetPVarInt( playerid, "smoke" ) ) {
		DeletePVar( playerid, "smoke" );
		RemovePlayerAttachedObject(playerid,7);
		return MeAction(playerid, "выбросил сигарету", 1);
	}
	else {
		new ciga = -1;
		if( GetPVarInt(playerid,"selectSlot") != -1 ) {
			if( Inv[playerid][invSlot][GetPVarInt(playerid,"selectSlot")] == 515 || Inv[playerid][invSlot][GetPVarInt(playerid,"selectSlot")] == 516 ) {
				ciga = GetPVarInt( playerid, "SelectSlot" );
				DeletePVar( playerid, "SelectSlot" );
			}
		}
		else {
			for(new i; i != 48; i++) {
				if(Inv[playerid][invSlot][i] == 515 || Inv[playerid][invSlot][i] == 516 && Inv[playerid][invSlotKol][i] > 0 ) ciga = i;
			}
			if(ciga == -1 ) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет сигарет!");
		}
		SetPVarInt( playerid, "use_cigg", ciga );
		showPlayerDialog( playerid, d_cigg, DIALOG_STYLE_LIST, "Использование сигареты", "1. "cGRAY"Взять сигарету в правую руку{ffffff}\n2. "cGRAY"Взять сигарету в левую руку{ffffff}\n3. "cGRAY"Прикрепить сигарету ко рту", "Выбор", "" );
	}
	return true;
}

CMD:dice( playerid, params[] ) {
	new bool:cuff = false;
	for(new i; i != 48; i++) {
		if(Inv[playerid][invSlot][i] == 513) cuff = true;
	}
	if(cuff == false) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет игральных костей для использования!");
	format:gb_string( "подбрасывает игральные кости, выпадает число "cGRAY"%d"cWHITE".", random(11) + 2 );
	MeAction( playerid, gb_string, 0 );
	return true;
}

CMD:object( playerid, params[] ) 
{
	switch(Player[playerid][uMember]) 
	{
		case 1,2,3,8: {
			strcat(vb_string, "Название\tID ограждения\n");
			strcat(vb_string, "1. Борды красно-белая полоса\t978\n");
			strcat(vb_string, "2. Борды красно-белая полоса\t979\n");
			strcat(vb_string, "3. Перекрытие всей дороги\t981\n");
			strcat(vb_string, "4. Каталки для парамедиков.\t1997\n");
			strcat(vb_string, "5. Бочка перекрытия дороги\t1237\n");
			strcat(vb_string, "6. Каменные плиты для перекрытия дороги\t1422\n");
			strcat(vb_string, "7. Борт со светящимися лампами на концах\t1423\n");
			strcat(vb_string, "8. Маленькое дорожное перекрытие\t1427\n");
			strcat(vb_string, "9. Каменная плита для перекрытия дороги\t1434\n");
			strcat(vb_string, "Следующая страница >>");
			showPlayerDialog(playerid, d_objectlist, DIALOG_STYLE_TABLIST_HEADERS, " ", vb_string, "Выбрать", "Отмена");
		}
		case 5 :
		{
			return cmd_fdobject( playerid );
		}
		
		default: SendClientMessage(playerid, -1, ""gbError"Ваша организация не может выставлять объекты!");
	}
	return 1;
}

CMD:delobject( playerid, params[] ) {
	switch(Player[playerid][uMember]) {
		case 1,2,3,8: {
			if( sscanf( params, "d", params[0] ) ) {
				//SendClientMessage( playerid, C_GRAY,""gbInfo"Введите: /delobject [ID]");
				showPlayerDialog(playerid, d_objectlist + 3, DIALOG_STYLE_LIST, " ", "1. Удалить с помощью ID\n2. Удалить с помощью клика", "Выбрать", "Отмена");
			}
			else {
				if( params[0] < 1 ) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID!");
				for(new i; i != MAX_OBJECT; i++)
				{
					if( ObjList[i][oID] == params[0] )
					{
						DestroyDynamicObject(ObjList[i][oObject]);
						
						if( IsValidDynamic3DTextLabel( ObjList[i][o3DText] ) )
						{
							DestroyDynamic3DTextLabel( ObjList[i][o3DText] );
							ObjList[i][o3DText] = Text3D: INVALID_3DTEXT_ID;
						}
						
						ObjList[i][Obj_X] = 0;
						ObjList[i][Obj_Y] = 0;
						ObjList[i][Obj_Z] = 0;
						ObjList[i][ObjRx] = 0;
						ObjList[i][ObjRy] = 0;
						ObjList[i][ObjRz] = 0;
						ObjList[i][oModel] = 0;
						ObjList[i][oID] = 0;
						SendClientMessage(playerid, -1, ""gbAccess"Вы убрали объект!");
						cObjectS--;
						return true;
					}
				}
				SendClientMessage(playerid,C_GRAY,""gbError"Объект с таким ID не найден!");
			}
		}
		
		case 5 :
		{
			return cmd_dfdobject( playerid, params );
		}
	}
	
	return 1;
}
	
CMD:gotopos( playerid, params[] )
{
	if(Player[playerid][uAdmin] < 5 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
	new Float:x, Float:y, Float:z;
	if(sscanf(params,"fff",x,y,z)) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /gotopos [x] [y] [z]");
	setPlayerPos(playerid,x,y,z);
	return true;
}
	
	CMD:r( playerid, params[] )
	{
		if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /r [ желаемый текст ]");
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
		if(Player[playerid][uJailSettings][2] != 0 || Player[playerid][uJailSettings][4] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не в состоянии говорить что-то в рацию!");
		if(Player[playerid][uRadioChanel] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не настроили свою рацию!");
		new strs[340], str[230];
		new bool:selecttrue;
		for(new i; i != 48; i++) {
			if(Inv[playerid][invSlot][i] == 495) selecttrue = true;
		}
		if(selecttrue == false) return SendClientMessage(playerid,C_GRAY,""gbInfo"У вас нет рации! Купить её можно в магазине электроники!");
		format(strs, sizeof(strs), "[CH: %d, S: 1] %s: %s", Player[playerid][uRadioChanel], GetCharacterName( playerid ), params[0]);
		SendRadioMessage(Player[playerid][uRadioChanel], strs);
		format(str, sizeof(str), "[В рацию] %s: %s", GetCharacterName( playerid ), params[0]);
		ProxDetector(10.0, playerid, str,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1, 2 );
		return true;
	}
	//ProxDetector(20.0, playerid, "Автобус отъезжает через 10 секунд.",COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1);
	CMD:mic( playerid, params[] )
	{
		if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /mic [ желаемый текст ]");
		if( Player[playerid][uMember] == 1 
			|| Player[playerid][uMember] == 2 
			|| Player[playerid][uMember] == 3 
			|| Player[playerid][uMember] == 5
			|| player_microphone{ playerid } == 1 
		  )
		{
			format(vb_string, sizeof(vb_string), "[В микрофон] %s", params[0]);
			ProxDetector(30.0, playerid, vb_string,C_ORANGE,C_ORANGE,C_ORANGE,C_ORANGE,C_ORANGE);
		}
		
		return 1;
	}
	CMD:rr( playerid, params[] )
	{
		if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /rr [ желаемый текст ]");
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
		if(Player[playerid][uJailSettings][2] != 0 || Player[playerid][uJailSettings][4] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не в состоянии говорить что-то в рацию!");
		if(Player[playerid][uRadioChanel] == 0 || Player[playerid][uRadioSubChanel] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не настроили свою рацию!");
		new bool:selecttrue;
		for(new i; i != 48; i++) {
			if(Inv[playerid][invSlot][i] == 495) selecttrue = true;
		}
		if(selecttrue == false) return SendClientMessage(playerid,C_GRAY,""gbInfo"У вас нет рации! Купить её можно в магазине электроники!");
		new strs[340],str[230];
		format(strs, sizeof(strs), "[CH: %d, S: %d] %s: %s", Player[playerid][uRadioChanel], Player[playerid][uRadioSubChanel], GetCharacterName( playerid ), params[0]);
		SendRadioMessageForSubChanel(Player[playerid][uRadioChanel], Player[playerid][uRadioSubChanel], strs);

		format(str, sizeof(str), "[В рацию] %s: %s", GetCharacterName( playerid ), params[0]);
		ProxDetector(10.0, playerid, str,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1, 2 );
		return true;
	}
	CMD:rl( playerid, params[] )
	{
		if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /rl [ желаемый текст ]");
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
		if(Player[playerid][uJailSettings][2] != 0 || Player[playerid][uJailSettings][4] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не в состоянии говорить что-то в рацию!");
		if(Player[playerid][uRadioChanel] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не настроили свою рацию!");
		new strs[340],str[230];
		new bool:selecttrue;
		for(new i; i != 48; i++) {
			if(Inv[playerid][invSlot][i] == 495) selecttrue = true;
		}
		if(selecttrue == false) return SendClientMessage(playerid,C_GRAY,""gbInfo"У вас нет рации! Купить её можно в магазине электроники!");
		format(strs, sizeof(strs), "[CH: %d, S: 1] %s: %s", Player[playerid][uRadioChanel], GetCharacterName( playerid ), params[0]);
		SendRadioMessage(Player[playerid][uRadioChanel], strs);
		
		format(str, sizeof(str), "[В рацию] %s: %s", GetCharacterName( playerid ), params[0]);
		ProxDetector(1.0, playerid, str,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1, 2 );
		return true;
	}
	CMD:rrl( playerid, params[] )
	{
		if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /rrl [ желаемый текст ]");
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
		if(Player[playerid][uJailSettings][2] != 0 || Player[playerid][uJailSettings][4] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не в состоянии говорить что-то в рацию!");
		if(Player[playerid][uRadioChanel] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не настроили свою рацию!");
		new strs[340], str[230];
		new bool:selecttrue;
		for(new i; i != 48; i++) {
			if(Inv[playerid][invSlot][i] == 495) selecttrue = true;
		}
		if(selecttrue == false) return SendClientMessage(playerid,C_GRAY,""gbInfo"У вас нет рации! Купить её можно в магазине электроники!");
		format(strs, sizeof(strs), "[CH: %d, S: %d] %s: %s", Player[playerid][uRadioChanel], Player[playerid][uRadioSubChanel], GetCharacterName( playerid ), params[0]);
		SendRadioMessageForSubChanel(Player[playerid][uRadioChanel], Player[playerid][uRadioSubChanel], strs);

		format(str, sizeof(str), "[В рацию] %s: %s", GetCharacterName( playerid ), params[0]);
		ProxDetector(10.0, playerid, str,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1, 2 );
		return true;
	}
	
CMD:accept( playerid, params[] ) {
	if( Player[playerid][uMember] == 0) {
		switch(Player[playerid][uJob]) {
			case 1: acceptTaxi( playerid );
		}
	}
	else {
		if( Player[playerid][uMember] == 4 ) return SendClientMessage( playerid, -1, ""gbError"Ваша организация не может принимать вызовы!");
		new totalcirc;
		for( new i; i < MAX_CALLS; i++ ) {
			if( CallInfo[i][cStatus] ) {
				format( vb_string, sizeof vb_string, "%s%d. Вызов из: %s\n", vb_string, totalcirc + 1, CallInfo[i][cZone] );
				totalcirc++;
			}
		}
		if( !totalcirc ) return SendMes( playerid, -1, ""gbError"Нет активных вызовов!");
		showPlayerDialog( playerid, d_accept + 1, DIALOG_STYLE_LIST, " ", vb_string, "Далее", "Отмена");
	}
	return true;
}

	CMD:f( playerid, params[] ) 
	{
		if(Player[playerid][uBMute] != 0) return SendClientMessage(playerid, C_GRAY, ""gbError"Простите, но Вам запрещено писать что-то!");
		if(sscanf(params, "s[144]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /f [ желаемый текст ]");
		format(vb_string,sizeof(vb_string),"(( [F] %s[%d]: %s ))",Player[playerid][uName],playerid,params[0]);
		foreach (new i : Player) 
		{
			if(Player[i][uMember] == 0) continue;
			if(Player[i][uRO] == 1) continue;
			if(Player[i][uMember] == Player[playerid][uMember]) 
			{
				SendClientMessage( i, 0x6699FFAA, vb_string );
			}
		}
		return 1;
	}
	CMD:lock( playerid, params[] )
	{
		if(sscanf(params, "i", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /lock [ номер ] ( 1 - дом/ 2 - личное авто/ 3 - бизнес/ 4 - рабочее авто  )");
		new Float:p[3];
		if( params[0] == 1 ) lockHouse( playerid );
		if(params[0] == 2) {
			if(IsPlayerInAnyVehicle(playerid)) {
				for(new g; g != 48; g++) {
					switch(_itemsInfo[Inv[playerid][invSlot][g]][invID]) {
						case 23:
						{
							if(V::[GetPlayerVehicleID(playerid)][vBuyingCar] != -1)
							{
								new i = V::[GetPlayerVehicleID(playerid)][vBuyingCar];
								if(Car::[i][cID] == Inv[playerid][invSlotKol][g])
								{
									GetVehicleParamsEx(Car::[i][cCar],eng,light,other1,other2,other3,other4,other5);
									if(other2 != 0) {
										SetVehicleParamsEx(Car::[i][cCar],eng,light,other1,0,other3,other4,other5);
										GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3);
										V::[Car::[i][cCar]][vLock] = false;
										PlayerTextDrawSetString(playerid,Speed[3][playerid],"~l~lock");
										MeAction(playerid,"открыл(-а) автомобиль",1);
										Car::[i][cSettings][5] = 0;
									}
									else {
										SetVehicleParamsEx(Car::[i][cCar],eng,light,other1,1,other3,other4,other5);
										GameTextForPlayer(playerid, "~r~LOCK", 3000, 3);
										V::[Car::[i][cCar]][vLock] = true;
										PlayerTextDrawSetString(playerid,Speed[3][playerid],"~w~lock");
										MeAction(playerid,"закрыл(-а) автомобиль",1);
										Car::[i][cSettings][5] = 1;
									}
									format(vb_string,sizeof(vb_string),"%d|%d|%d|%d|%d|%d|%d",Car::[i][cSettings][0],Car::[i][cSettings][1],Car::[i][cSettings][2],
									Car::[i][cSettings][3],Car::[i][cSettings][4],Car::[i][cSettings][5],Car::[i][cSettings][6]);
									SetCarStr(Car::[i][cID],"cSettings",vb_string);
									break;
								}
							}
						}
					}
				}
			}
			else
			{
				for(new g; g != 48; g++)
				{
					switch(_itemsInfo[Inv[playerid][invSlot][g]][invID])
					{
						case 23:
						{
							for(new i; i != MAX_CARS_BUY; i++)
							{
								if(Car::[i][cModel] == 0 || Car::[i][cID] == 0) continue;
								GetVehiclePos(Car::[i][cCar],p[0],p[1],p[2]);
								if(IsPlayerInRangeOfPoint(playerid,4.0, p[0],p[1],p[2]))
								{
									if(Inv[playerid][invSlotKol][g] == Car::[i][cID])
									{
										GetVehicleParamsEx(Car::[i][cCar],eng,light,other1,other2,other3,other4,other5);
										if(other2 != 0)
										{
											SetVehicleParamsEx(Car::[i][cCar],eng,light,other1,0,other3,other4,other5);
											GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3);
											MeAction(playerid,"открыл(-а) автомобиль",1);
											V::[Car::[i][cCar]][vLock] = false;
											Car::[i][cSettings][5] = 0;
										}
										else
										{
											SetVehicleParamsEx(Car::[i][cCar],eng,light,other1,1,other3,other4,other5);
											GameTextForPlayer(playerid, "~r~LOCK", 3000, 3);
											MeAction(playerid,"закрыл(-а) автомобиль",1);
											V::[Car::[i][cCar]][vLock] = true;
											Car::[i][cSettings][5] = 1;
										}
										format(vb_string,sizeof(vb_string),"%d|%d|%d|%d|%d|%d|%d",Car::[i][cSettings][0],Car::[i][cSettings][1],Car::[i][cSettings][2],
										Car::[i][cSettings][3],Car::[i][cSettings][4],Car::[i][cSettings][5],Car::[i][cSettings][6]);
										SetCarStr(Car::[i][cID],"cSettings",vb_string);
										break;
									}
								}
							}
						}
					}
				}
			}



		}
		if(params[0] == 3) {
			for(new g; g != 48; g++) {
				switch(_itemsInfo[Inv[playerid][invSlot][g]][invID]) {
					case 25,49 .. 52,60 .. 64, 123, 126, 127: {
						for(new i; i != cBizz; i++) {
							if(IsPlayerInRangeOfPoint(playerid,3.0,Bizz::[i][bEnter][0],Bizz::[i][bEnter][1],Bizz::[i][bEnter][2]) && Inv[playerid][invSlotKol][g] - 1 == i) {
								if(Bizz::[i][bSettings][4] == 0) {
									Bizz::[i][bSettings][4] = 1;
									GameTextForPlayer(playerid, "~r~LOCK", 3000, 3);
									MeAction(playerid,"закрыл(-а) дверь бизнеса",1);
								}
								else {
									Bizz::[i][bSettings][4] = 0;
									GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3);
									MeAction(playerid,"открыл(-а) дверь бизнеса",1);
								}
								switch(Bizz::[i][bSettings][7]) {
									case 0: format(vb_string,sizeof(vb_string),"{ffffff}Номер бизнеса: %d\nЗакусочная "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 1: format(vb_string,sizeof(vb_string),"{ffffff}Номер бизнеса: %d\nБар "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 2: format(vb_string,sizeof(vb_string),"{ffffff}Номер бизнеса: %d\nРесторан "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 3: format(vb_string,sizeof(vb_string),"{ffffff}Номер бизнеса: %d\nМагазин одежды "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 4: format(vb_string,sizeof(vb_string),"{ffffff}Номер бизнеса: %d\nМагазин электроники "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 5: format(vb_string,sizeof(vb_string),"{ffffff}Номер бизнеса: %d\nАвтосалон "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 6: format(vb_string,sizeof(vb_string),"{ffffff}Номер бизнеса: %d\nМагазин оружия "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 7: format(vb_string,sizeof(vb_string),"{ffffff}Номер бизнеса: %d\nМагазин мебели "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 8: format(vb_string,sizeof(vb_string),"{ffffff}Номер бизнеса: %d\nКлуб "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 9: format(vb_string,sizeof(vb_string),"{ffffff}Номер бизнеса: %d\nЗаправка "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 10: format(vb_string,sizeof(vb_string),"{ffffff}Номер бизнеса: %d\nВсе для отдыха "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 11: format(vb_string,sizeof(vb_string),"{ffffff}Номер бизнеса: %d\nАрента транспорта "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 12: format(vb_string,sizeof(vb_string),"{ffffff}Номер бизнеса: %d\nСпортзал "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
								}
								UpdateDynamic3DTextLabelText(Bizz::[i][bText],C_BLUE,vb_string);
								format(vb_string,sizeof(vb_string),"%d|%d|%d|%d|%d|%d|%d|%d",Bizz::[i][bSettings][0],Bizz::[i][bSettings][1],Bizz::[i][bSettings][2],
								Bizz::[i][bSettings][3],Bizz::[i][bSettings][4],Bizz::[i][bSettings][5],Bizz::[i][bSettings][6],Bizz::[i][bSettings][7]);
								SetBizzStr(Bizz::[i][bID],"bSettings",vb_string);
								break;
							}
							else if(IsPlayerInRangeOfPoint(playerid,3.0,Bizz::[i][bEnter][4],Bizz::[i][bEnter][5],Bizz::[i][bEnter][6]) && GetPlayerVirtualWorld(playerid) == Bizz::[i][bID] && Inv[playerid][invSlotKol][g] - 1 == i) {
								if(Bizz::[i][bSettings][4] == 0) {
									Bizz::[i][bSettings][4] = 1;
									GameTextForPlayer(playerid, "~r~LOCK", 3000, 3);
									MeAction(playerid,"закрыл(-а) дверь бизнеса",1);
								}
								else {
									Bizz::[i][bSettings][4] = 0;
									GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3);
									MeAction(playerid,"открыл(-а) дверь бизнеса",1);
								}
								switch(Bizz::[i][bSettings][7]) {
									case 0: format(vb_string,sizeof(vb_string),"{ffffff}Закусочная "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 1: format(vb_string,sizeof(vb_string),"{ffffff}Бар "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 2: format(vb_string,sizeof(vb_string),"{ffffff}Ресторан "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 3: format(vb_string,sizeof(vb_string),"{ffffff}Магазин одежды "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 4: format(vb_string,sizeof(vb_string),"{ffffff}Магазин электроники "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 5: format(vb_string,sizeof(vb_string),"{ffffff}Автосалон "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 6: format(vb_string,sizeof(vb_string),"{ffffff}Магазин оружия "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 7: format(vb_string,sizeof(vb_string),"{ffffff}Магазин мебели "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 8: format(vb_string,sizeof(vb_string),"{ffffff}Клуб "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 9: format(vb_string,sizeof(vb_string),"{ffffff}Заправка "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 10: format(vb_string,sizeof(vb_string),"{ffffff}Все для отдыха "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 11: format(vb_string,sizeof(vb_string),"{ffffff}Арента транспорта "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 12: format(vb_string,sizeof(vb_string),"{ffffff}Спортзал "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
								}
								UpdateDynamic3DTextLabelText(Bizz::[i][bText],C_BLUE,vb_string);
								format(vb_string,sizeof(vb_string),"%d|%d|%d|%d|%d|%d|%d|%d",Bizz::[i][bSettings][0],Bizz::[i][bSettings][1],Bizz::[i][bSettings][2],
								Bizz::[i][bSettings][3],Bizz::[i][bSettings][4],Bizz::[i][bSettings][5],Bizz::[i][bSettings][6],Bizz::[i][bSettings][7]);
								SetBizzStr(Bizz::[i][bID],"bSettings",vb_string);
								break;
							}
						}
					}
				}
			}
		}
		if(params[0] == 4)
		{
			if(IsPlayerInAnyVehicle(playerid))
			{
				new carid = GetPlayerVehicleID(playerid);
				if(GetPlayerVehicleSeat(playerid) == 0)
				{
					if(GetPlayerVehicleID(playerid) >= ataxils[0] && GetPlayerVehicleID(playerid) <= ataxils[1])
					{
						if(V::[GetPlayerVehicleID(playerid)][vTaxiDriver] == playerid && D::[playerid][dTaxiKey] == GetPlayerVehicleID(playerid)) CheckDoor(playerid);
					}
					if(GetPlayerVehicleID(playerid) >= dalncars[0] && GetPlayerVehicleID(playerid) <= dalncars[1]) {
						if(V::[GetPlayerVehicleID(playerid)][vDalnDriver] == playerid && D::[playerid][dDalnKey] == GetPlayerVehicleID(playerid)) CheckDoor(playerid);
					}
					if(GetPlayerVehicleID(playerid) >= sherifcar[0] && GetPlayerVehicleID(playerid) <= sherifcar[1])
					{
						if(Player[playerid][uMember] == 1)
						{
							GetVehicleParamsEx(carid,eng,light,other1,other2,other3,other4,other5);
							if(other2 != 0) SetVehicleParamsEx(carid,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[carid][vLock] = false;
							else SetVehicleParamsEx(carid,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[carid][vLock] = true;
						}
						else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
					}
					if(GetPlayerVehicleID(playerid) >= lspdcars[0] && GetPlayerVehicleID(playerid) <= lspdcars[1])
					{
						if(Player[playerid][uMember] == 2)
						{
							GetVehicleParamsEx(carid,eng,light,other1,other2,other3,other4,other5);
							if(other2 != 0) SetVehicleParamsEx(carid,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[carid][vLock] = false;
							else SetVehicleParamsEx(carid,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[carid][vLock] = true;
						}
						else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
					}
					if(GetPlayerVehicleID(playerid) >= medicalcar[0] && GetPlayerVehicleID(playerid) <= medicalcar[1])
					{
						if(Player[playerid][uMember] == 3)
						{
							GetVehicleParamsEx(carid,eng,light,other1,other2,other3,other4,other5);
							if(other2 != 0) SetVehicleParamsEx(carid,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[carid][vLock] = false;
							else SetVehicleParamsEx(carid,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[carid][vLock] = true;
						}
						else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
					}
					if(GetPlayerVehicleID(playerid) >= smicars[0] && GetPlayerVehicleID(playerid) <= smicars[1])
					{
						if(Player[playerid][uMember] == 4)
						{
							GetVehicleParamsEx(carid,eng,light,other1,other2,other3,other4,other5);
							if(other2 != 0) SetVehicleParamsEx(carid,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[carid][vLock] = false;
							else SetVehicleParamsEx(carid,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[carid][vLock] = true;
						}
						else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
					}
					if(GetPlayerVehicleID(playerid) >= fd_cars[0] && GetPlayerVehicleID(playerid) <= fd_cars[1])
					{
						if(Player[playerid][uMember] == 5)
						{
							GetVehicleParamsEx(carid,eng,light,other1,other2,other3,other4,other5);
							if(other2 != 0) SetVehicleParamsEx(carid,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[carid][vLock] = false;
							else SetVehicleParamsEx(carid,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[carid][vLock] = true;
						}
						else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
					}
					if(GetPlayerVehicleID(playerid) >= meria[0] && GetPlayerVehicleID(playerid) <= meria[1])
					{
						if(Player[playerid][uMember] == 6)
						{
							GetVehicleParamsEx(carid,eng,light,other1,other2,other3,other4,other5);
							if(other2 != 0) SetVehicleParamsEx(carid,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[carid][vLock] = false;
							else SetVehicleParamsEx(carid,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[carid][vLock] = true;
						}
						else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
					}
					if( GetPlayerState( playerid ) == PLAYER_STATE_DRIVER ) {
						
						for( new id; id < MAX_CRIMINAL; id++ ) {
							if( !CrimeInfo[id][crID] ) continue;
							for( new v; v < MAX_CRIME_CAR; v++ ) {
								if( CrimeCar[id][v][cr_vCar] == carid ) {
									if( CrimeCar[id][v][cr_vCrime] == Player[playerid][uCrimeM] ) {
										GetVehicleParamsEx(carid,eng,light,other1,other2,other3,other4,other5);
										if(other2 != 0) SetVehicleParamsEx(carid,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[carid][vLock] = false;
										else SetVehicleParamsEx(carid,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[carid][vLock] = true;
									}
									else return SendMes(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
								
								}
							}
						}
					}	
				}
			}
			else {
				for(new i; i <= MAX_VEHICLES; i++) {
					if(!IsValidVehicle(i)) continue;
					GetVehiclePos(i,p[0],p[1],p[2]);
					if(IsPlayerInRangeOfPoint(playerid,4.0, p[0],p[1],p[2]))
					{
						if(i >= sherifcar[0] && i <= sherifcar[1]) {
							if(Player[playerid][uMember] == 1) {
								GetVehicleParamsEx(i,eng,light,other1,other2,other3,other4,other5);
								if(other2 != 0) SetVehicleParamsEx(i,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[i][vLock] = false;
								else SetVehicleParamsEx(i,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[i][vLock] = true;
							}
							else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
						}
						if(i >= lspdcars[0] && i <= lspdcars[1]) {
							if(Player[playerid][uMember] == 2) {
								GetVehicleParamsEx(i,eng,light,other1,other2,other3,other4,other5);
								if(other2 != 0) SetVehicleParamsEx(i,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[i][vLock] = false;
								else SetVehicleParamsEx(i,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[i][vLock] = true;
							}
							else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
						}
						if(i >= medicalcar[0] && i <= medicalcar[1]) {
							if(Player[playerid][uMember] == 3) {
								GetVehicleParamsEx(i,eng,light,other1,other2,other3,other4,other5);
								if(other2 != 0) SetVehicleParamsEx(i,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[i][vLock] = false;
								else SetVehicleParamsEx(i,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[i][vLock] = true;
							}
							else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
						}
						if(i >= smicars[0] && i <= smicars[1]) {
							if(Player[playerid][uMember] == 4) {
								GetVehicleParamsEx(i,eng,light,other1,other2,other3,other4,other5);
								if(other2 != 0) SetVehicleParamsEx(i,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[i][vLock] = false;
								else SetVehicleParamsEx(i,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[i][vLock] = true;
							}
							else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
						}
						if(i >= fd_cars[0] && i <= fd_cars[1]) {
							if(Player[playerid][uMember] == 5) {
								GetVehicleParamsEx(i,eng,light,other1,other2,other3,other4,other5);
								if(other2 != 0) SetVehicleParamsEx(i,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[i][vLock] = false;
								else SetVehicleParamsEx(i,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[i][vLock] = true;
							}
							else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
						}
						if(i >= meria[0] && i <= meria[1]) {
							if(Player[playerid][uMember] == 6) {
								GetVehicleParamsEx(i,eng,light,other1,other2,other3,other4,other5);
								if(other2 != 0) SetVehicleParamsEx(i,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[i][vLock] = false;
								else SetVehicleParamsEx(i,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[i][vLock] = true;
							}
							else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
						}
						if(i >= ataxils[0] && i <= ataxils[1]) {
							if(V::[i][vTaxiDriver] == playerid && D::[playerid][dTaxiKey] == i) {
								GetVehicleParamsEx(i,eng,light,other1,other2,other3,other4,other5);
								if(other2 != 0) SetVehicleParamsEx(i,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[i][vLock] = false;
								else SetVehicleParamsEx(i,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[i][vLock] = true;
							}
							else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
						}
						if(i >= dalncars[0] && i <= dalncars[1]) {
							if(V::[i][vDalnDriver] == playerid && D::[playerid][dDalnKey] == i) {
								GetVehicleParamsEx(i,eng,light,other1,other2,other3,other4,other5);
								if(other2 != 0) SetVehicleParamsEx(i,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[i][vLock] = false;
								else SetVehicleParamsEx(i,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[i][vLock] = true;
							}
							else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
						}
						for( new id; id < MAX_CRIMINAL; id++ ) {
							if( !CrimeInfo[id][crID] ) continue;
							for( new v; v < MAX_CRIME_CAR; v++ ) {
								if( CrimeCar[id][v][cr_vCar] ==  i ) {
									if( CrimeCar[id][v][cr_vCrime] == Player[playerid][uCrimeM] ) {
										GetVehicleParamsEx( i,eng,light,other1,other2,other3,other4,other5);
										if(other2 != 0) SetVehicleParamsEx( i,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[i][vLock] = false;
										else SetVehicleParamsEx( i,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[i][vLock] = true;
									}
									else return SendMes(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
								
								}
							}
						}
						break;
					}
				}
			}
		}
		if(params[0] == 5)
		{
			for(new i; i <= MAX_VEHICLES; i++)
			{
				if(!IsValidVehicle(i)) continue;
				GetVehiclePos(i,p[0],p[1],p[2]);
				if(IsPlayerInRangeOfPoint(playerid, 4.0, p[0],p[1],p[2]))
				{
					if(i >= carsalon[0][0] && i <= carsalon[1][0] || i >= carsalon[0][1] && i <= carsalon[1][1]
					|| i >= carsalon[0][2] && i <= carsalon[1][2] || i >= carsalon[0][3] && i <= carsalon[1][3])
					{
						if(V::[i][vRentCar][1] == playerid && D::[playerid][dRentVehicleID] == i)
						{
							GetVehicleParamsEx(i,eng,light,other1,other2,other3,other4,other5);
							if(other2 != 0) SetVehicleParamsEx(i,eng,light,other1,0,other3,other4,other5),GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3),V::[i][vLock] = false;
							else SetVehicleParamsEx(i,eng,light,other1,1,other3,other4,other5),GameTextForPlayer(playerid, "~r~LOCK", 3000, 3),V::[i][vLock] = true;
						}
						else return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от этого транспорта!");
					}
					break;
				}
			}
		}
		return 1;
	}
	
	
	CMD:music( playerid, params[] )
	{
		format( vb_string, sizeof vb_string, "" );
		if(IsPlayerInRangeOfPoint(playerid, 3.0, GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"))) {
			for( new i; i < sizeof Radio; i++ ) {
				format( vb_string, sizeof vb_string, "%s%d. %s\n", vb_string, i + 1, Radio[i][0] );
			}
			showPlayerDialog(playerid, d_radio + 1, DIALOG_STYLE_LIST, " ", vb_string, "Выбрать", "Закрыть");
		}
		return 1;
	}
	
	CMD:settime( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 5) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /settime [время]");
		if(params[0] < 0 || params[0] > 23) return SendClientMessage(playerid, C_GRAY, "Время от 0 до 23!");
		SetWorldTime(params[0]);
		return 1;
	}
	//GetTickCount() - GetPVarInt(playerid,"ENT_GTC")
	
	CMD:myharki( playerid, params[] ) {		
		format( vb_string, sizeof(vb_string), "" );
		strcat( vb_string, ""gbInfo"Характеристики:\n" );
		format( gb_string, sizeof gb_string, "{FFFFFF}Сила: "cGREEN"%d/1000\n", Player[playerid][uStyle][3]), strcat( vb_string, gb_string );
		format( gb_string, sizeof gb_string, "{FFFFFF}Выносливость: "cGREEN"%d/1000{FFFFFF}\n\n", Player[playerid][uStyle][2]), strcat( vb_string, gb_string );
		format( gb_string, sizeof gb_string, ""gbInfo"Стили боя:\n"), strcat( vb_string, gb_string );
		format( gb_string, sizeof gb_string, "{FFFFFF}Бокс: "cGREEN"%d/1000\n", Player[playerid][uStyle][0]), strcat( vb_string, gb_string );
		format( gb_string, sizeof gb_string, "{FFFFFF}Кунг-Фу: "cGREEN"%d/1000\n", Player[playerid][uStyle][1]), strcat( vb_string, gb_string );
		format( gb_string, sizeof gb_string, "{FFFFFF}Кик-бокс: "cGREEN"%d/1000\n", Player[playerid][uStyle][4]), strcat( vb_string, gb_string );
		showPlayerDialog( playerid, 9999, 0, " ", vb_string, "Закрыть", "" );
		return 1;
	}
	
	CMD:fleader( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 5) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /fleader [ id ]");

		for(new i; i < 8; i++) format(vb_string,sizeof(vb_string),"%s%d. %s\n",vb_string,i+1,F::[i][fName]);
		SetPVarInt(playerid, "MakeLeader", params[0]);
		showPlayerDialog(playerid, d_makeleader,2,"Выбирите фракцию",vb_string,"Далее","Закрыть");
		return 1;
	}
	
	
	CMD:leave( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 3) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "ds[32]", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /leave [ id ] [ reason ]");
		if(!Player[params[0]][uMember]) return SendClientMessage(playerid,C_GRAY,""gbError"Игрок не состоит в организации");
		Player[params[0]][uMember] = 0;
		Player[params[0]][uRank] = 0;
		format(vb_string,sizeof(vb_string),"UPDATE gb_users SET uMember = '%d',uRank = '%d' WHERE BINARY uName = '%s'",Player[params[0]][uMember],Player[params[0]][uRank],Player[params[0]][uName]);
		mysql_tquery(1, vb_string, "", "");
		SetPlayerColor(params[0],FracColor[0]);
		GetBackSkin(params[0]);
		if(Player[params[0]][uIsPlayerJob][0] == 1) {
			RemovePlayerAttachedObject(params[0],5);
			RemovePlayerAttachedObject(params[0],6);
			Player[params[0]][uIsPlayerJob][0] = 0;
		}
		if(Player[params[0]][uIsPlayerJob][1] == 1) Player[params[0]][uIsPlayerJob][1] = 0;
		if(Player[params[0]][uIsPlayerJob][2] == 1) Player[params[0]][uIsPlayerJob][2] = 0;
		for(new g; g != 56; g++) {
			switch(Inv[params[0]][invSlot][g]) {
				case 426 .. 441,451,458,340: {
					switch(Inv[params[0]][invSlot][50]) {
						case 426,429,340: RemovePlayerWeapon(params[0],GetWeaponToObject(_itemsInfo[Inv[params[0]][invSlot][50]][invObject]));
					}
					switch(Inv[params[0]][invSlot][51]) {
						case 458,428,430: RemovePlayerWeapon(params[0],GetWeaponToObject(_itemsInfo[Inv[params[0]][invSlot][51]][invObject]));
					}
					if(Inv[params[0]][invSlot][54] == 431) setPlayerArmour(params[0],0);
					Inv[params[0]][invSlot][g] = 0,Inv[params[0]][invSlotKol][g] = 0;
				}
			}
		}
		if(newsLeaderEther == params[0]) {
			newsLeaderEther = INVALID_PLAYER_ID;
			D::[newsClientEther][dPhone] = false;
			PhoneStatus(newsClientEther,false);
			newsClientEther = INVALID_PLAYER_ID;
			SendClientMessage(newsClientEther,C_GRAY,""gbError"Эфир был экстренно приостановлен!");
			EtherStatus = false;
		}
		format(vb_string, sizeof(vb_string), ""gbInfo"Администратор %s уволил Вас из организации. Причина: %s", Player[playerid][uName], params[1]);
		SendClientMessage(params[0],C_GRAY, vb_string);
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно уволили человека из организации!");
		return 1;
	}
	
	
	CMD:makeleader( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 5) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "dd", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /makeleader [ id ] [ frac ]");
		if(Player[params[0]][uCrimeM] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данный человек состоит в динамической организации!");
		if(params[1] == 0) {
			if(Player[params[0]][uLeader] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У данного игрока нет лидерки!");
			strmid(F::[Player[params[0]][uLeader]][fLeader], "None", 0, strlen("None"), MAX_PLAYER_NAME);
			format(vb_string,sizeof(vb_string),"UPDATE gb_frac SET fLeader = '%s' WHERE fID = '%d'",F::[Player[params[0]][uLeader]][fLeader],Player[params[0]][uLeader]);
			mysql_tquery(1, vb_string, "", "");
			Player[params[0]][uLeader] = 0;
			Player[params[0]][uMember] = 0;
			Player[params[0]][uRank] = 0;
			Player[params[0]][uJob] = 0;
			format(vb_string,sizeof(vb_string),"UPDATE gb_users SET uLeader = '%d',uMember = '%d',uRank = '%d',uJob = '%d' WHERE BINARY uName = '%s'",
			Player[params[0]][uLeader],Player[params[0]][uMember],Player[params[0]][uRank],Player[params[0]][uJob],Player[params[0]][uName]);
			mysql_tquery(1, vb_string, "", "");
			for(new g; g != 56; g++) {
				switch(Inv[params[0]][invSlot][g]) {
					case 426 .. 441,451,458,340: {
						switch(Inv[params[0]][invSlot][50]) {
							case 426,429,340: RemovePlayerWeapon(params[0],GetWeaponToObject(_itemsInfo[Inv[params[0]][invSlot][50]][invObject]));
						}
						switch(Inv[params[0]][invSlot][51]) {
							case 458,428,430: RemovePlayerWeapon(params[0],GetWeaponToObject(_itemsInfo[Inv[params[0]][invSlot][51]][invObject]));
						}
						if(Inv[params[0]][invSlot][54] == 431) setPlayerArmour(params[0],0);
						Inv[params[0]][invSlot][g] = 0,Inv[params[0]][invSlotKol][g] = 0;
					}
				}
			}
			return SendClientMessage(playerid,C_GRAY,""gbAccess"Вы сняли лидерку с этого человека!");
		}
		if(Player[params[0]][uLeader] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Сначала пропишите этому человеку фракцию 0!");
		if(strcmp(F::[params[1]][fLeader], "None", true) == 0) {
			Player[params[0]][uLeader] = params[1];
			Player[params[0]][uMember] = params[1];
			Player[params[0]][uRank] = 1;
			Player[params[0]][uJob] = 0;
			strmid(F::[params[1]][fLeader], Player[params[0]][uName], 0, strlen(Player[params[0]][uName]), MAX_PLAYER_NAME);
			format(vb_string,sizeof(vb_string),"UPDATE gb_frac SET fLeader = '%s' WHERE fID = '%d'",F::[params[1]][fLeader],params[1]);
			mysql_tquery(1, vb_string, "", "");
			format(vb_string,sizeof(vb_string),"UPDATE gb_users SET uLeader = '%d',uMember = '%d',uRank = '%d',uJob = '%d' WHERE BINARY uName = '%s'",
			Player[params[0]][uLeader],Player[params[0]][uMember],Player[params[0]][uRank],Player[params[0]][uJob],Player[params[0]][uName]);
			mysql_tquery(1, vb_string, "", "");
			format(vb_string,sizeof(vb_string),""gbInfo"Вам выдали лидерку %s.",F::[Player[params[0]][uLeader]][fName]);
			SendClientMessage(params[0],C_GRAY,vb_string);
			format(vb_string,sizeof(vb_string),""gbAccess"Вы выдали лидерку %s.",F::[Player[params[0]][uLeader]][fName]);
			SendClientMessage(playerid,C_GRAY,vb_string);
		}
		else SendClientMessage(playerid,C_GRAY,""gbError"У этой организации уже есть лидер!");
		return 1;
	}
	// -
	
	CMD:pay( playerid, params[] ) 
	{
		if(sscanf(params, "dd", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /pay [ id игрока ] [ сумма ]");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(Player[playerid][uMoney] < params[1]) return SendClientMessage(playerid,C_GRAY,""gbError"Недостаточно денег для передачи такой суммы!");
		if(params[1] < 1 || params[1] > 100000) return SendClientMessage(playerid,C_GRAY,""gbError"Минимальная сумма передачи - $1 | Максимальная - $100.000");

		Player[playerid][uMoney] -= params[1];
		Player[params[0]][uMoney] += params[1];

		mysql_format:vb_string( "UPDATE gb_users SET uMoney = '%d' WHERE uID = %d LIMIT 1",
			Player[playerid][uMoney],
			Player[playerid][uID]
		);
		
		mysql_tquery( mysql, vb_string, "", "");
		
		mysql_format:vb_string( "UPDATE gb_users SET uMoney = '%d' WHERE uID = %d LIMIT 1",
			Player[params[0]][uMoney],
			Player[params[0]][uID]
		);
		
		mysql_tquery( mysql, vb_string, "", "");

		format:gb_string( "%s[%s] передал деньги %s[%s] - $%d",
			Player[playerid][uName],
			Player[playerid][uIP],
			Player[params[0]][uName],
			Player[params[0]][uIP],
			params[1]
		);
			
		logs( 15, gb_string, Player[playerid][uID], Player[params[0]][uID], params[1] );
	
		format(vb_string,sizeof(vb_string),""gbAccess"Вы передали игроку %s - "cGREEN"$%d",Player[params[0]][uName],params[1]);
		SendClientMessage(playerid,C_GRAY,vb_string);
		format(vb_string,sizeof(vb_string),""gbAccess"Игрок %s передал Вам - "cGREEN"$%d",Player[playerid][uName],params[1]);
		SendClientMessage(params[0],C_GRAY,vb_string);

		format(vb_string,sizeof(vb_string),"передал%s деньги %s'y",
			Player[playerid][uSex] == 2 ? ("а") : (""),
			Player[params[0]][uName]
		);
		
		MeAction(playerid,vb_string,1);

		format(vb_string, sizeof(vb_string), "[A] %s[%d][%s] передал деньги %s[%d][%s] - $%d", 
			Player[playerid][uName], 
			playerid, 
			Player[playerid][uIP], 
			Player[params[0]][uName], 
			params[0], 
			Player[params[0]][uIP],
			params[1]
		);
		
		SendAdminLog( playerid, vb_string );
		
		ApplyAnimation(playerid,"DEALER", "shop_pay",4.0, 0, 1, 1, 0, 0, 1);
		return 1;
	}
	
	CMD:bk( playerid, params[] ) {
		if(GetPVarInt(playerid, "BKONFORPLAYER") == 1) return SendClientMessage(playerid,C_GRAY,""gbError"Вы уже вызвали поддержку, отмените текущюю /unbk");
		format(vb_string,sizeof(vb_string),"[R] Диспетчер: %s | %s запрашивает поддержку полицейского департамента.", FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName]);
		if(Player[playerid][uMember] == 1 || Player[playerid][uMember] == 2 || Player[playerid][uMember] == 8) {
			foreach(new i: Player)
			{
				if(Player[i][uMember] == 1 || Player[i][uMember] == 2 || Player[i][uMember] == 8 )
				{
					if(Player[i][uIsPlayerJob][0] == 1)
					{
						SetPlayerMarkerForPlayer(i, playerid, 0xF62222AA);
						SendClientMessage(i, FracColor[Player[i][uMember]], vb_string);
					}
				}
			}
			SendClientMessage(playerid, -1, ""gbInfo"Введите /unbk чтобы отменить ваш запрос на поддержку.");
		}
		SetPVarInt(playerid, "BKONFORPLAYER", 1);
		//SetTimerEx("BackupClear", 300000, false, "ii", playerid, 1);
		return 1;
	}
	CMD:unbk( playerid, params[] )
	{
		if(GetPVarInt(playerid, "BKONFORPLAYER") == 1)
		{
			BackupClear(playerid, 0);
			SetPVarInt(playerid, "BKONFORPLAYER", 0);
		}
		return 1;
	}
	
	CMD:frisk( playerid, params[] ) {
		if( sscanf( params, "u", params[0] )) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /frisk [ id игрока ]" );
		if( GetDistanceBetweenPlayers( playerid, params[0]) > 3.0 
			|| GetPlayerVirtualWorld( playerid ) != GetPlayerVirtualWorld( params[0] ) ) return SendMes( playerid, C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if( Player[playerid][uMember] == 1 || Player[playerid][uMember] == 2 || Player[playerid][uMember] == 8 ) {
			if(Player[playerid][uIsPlayerJob][0] == 1) 
			{
				format:gb_string( ""gbInfo"Наличные: "cGREEN"$%d"cWHITE".\n\n", Player[ params[0] ][uMoney] );
				strcat( vb_string, gb_string );
				for(new i; i != MAX_SLOTS; i++) 
				{
					if( !Inv[params[0]][invSlot][i] ) continue;
					format( gb_string, sizeof gb_string, ""gbInfo"%s\t%d{ffffff}\n", 
						_itemsInfo[ Inv[params[0]][invSlot][i] ][invName], Inv[ params[0] ][invSlotKol][i]);
					strcat( vb_string, gb_string );
				}
				showPlayerDialog( playerid, 9999, 0, ""gbAccess"При обыске найдено:", vb_string, "Закрыть", "" );
				SendMes( params[0], -1, ""gbInfo"Игрок %s[%d] обыскал Вас.", Player[playerid][uName], playerid );
			}
			return 1;
		}
		setData( params[0], "PlayerFrisk", playerid );
		SendMes( playerid, -1, ""gbInfo"Вы предложили игроку %s обыскать его.", Player[params[0]][uName] );
		SendMes( params[0], -1, ""gbInfo"Игрок %s хочет обыскать Вас.", Player[playerid][uName]);
		SendMes( params[0], -1, ""gbInfo"Нажмите "cBLUE"Y"cWHITE", чтобы согласиться или "cBLUE"N"cWHITE", чтобы отказаться.");
		return 1;
	}
	CMD:givelic( playerid, params[] )
	{
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "dd", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /givelic [ id игрока ] [ Цена ]");
		if(F::[Player[playerid][uMember]][fRank][5] > Player[playerid][uRank]) return SendClientMessage(playerid,C_GRAY,""gbError"Ваш ранг не достаточен!");
		if(Player[params[0]][uMoney] < params[1]) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно средств для покупки лицензии!");
		if(Player[params[0]][uLicenses][3] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"У игрока уже есть лицензия на оружие!");
		if(Player[params[0]][uTicket]) return SendClientMessage(playerid,C_GRAY,""gbError"У игрока есть неоплаченный штраф, оплатите его в участке полиции!");
		if(Player[params[0]][uLicensesTake][3] > getdate()) return SendClientMessage(playerid, -1, ""gbError"Лицензия игрока временно конфискована. Выдать новую нельзя!");
		SetPVarInt(params[0], "SellLicPrice", params[1]);
		SetPVarInt( params[0], "SellLicPriceId", playerid );
		format(vb_string, sizeof(vb_string), "{ffffff}Вы действительно хотите купить лицензию на оружие за "cGREEN"%d$", params[1]);
		showPlayerDialog(params[0],d_police + 1,0," ",vb_string,"Да","Нет");
		return true;
	}
	CMD:takelic( playerid, params[] ) {
		new strings[100];
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /takelic [ id игрока ]");
		if(Player[params[0]][uLicenses][3] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У данного игрока и так нет лицензии на оружие!");
		if(Player[playerid][uRank] < 2) return SendClientMessage(playerid,C_GRAY,""gbError"Доступно только с 2-ого ранга!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		Player[params[0]][uLicenses][3] = 0;
		format(vb_string,sizeof(vb_string),"%d|%d|%d|%d",Player[params[0]][uLicenses][0],Player[params[0]][uLicenses][1],Player[params[0]][uLicenses][2],Player[params[0]][uLicenses][3]);
		format(strings,sizeof(strings),"UPDATE gb_users SET uLicenses = '%s' WHERE BINARY uName = '%s'",vb_string,Player[params[0]][uName]);
		mysql_tquery(1, strings, "", "");
		format(vb_string,sizeof(vb_string),""gbInfo"%s %s забрал у Вас лицензию на оружие!",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName]);
		SendClientMessage(params[0],C_GRAY,vb_string);
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы забрали лицензию на оружие у данного человека!");
		return 1;
	}
	
	
	CMD:take( playerid, params[] ) {
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /take [ id игрока ]");
		if(Player[playerid][uRank] < 2) return SendClientMessage(playerid,C_GRAY,""gbError"Доступно только с 2-ого ранга!");
		showPlayerDialog(playerid,d_police + 6,2,"Что конфисковать","\
		1. Водительские права (От 1 до 3 дней)\n\
		2. Права на водное т/с (от 1 до 3 дней)\n\
		3. Права на возжушное т/с ( от 1 до 3 дней)\n\
		4. Лицензия на оружие ( от 3 до 7 дней)\
		","Далее","Закрыть");
		SetPVarInt(playerid, "ChooseHero", params[0]);
		return 1;
	}
	CMD:ticket( playerid, params[] ) {
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "dds[32]", params[0], params[1], params[2])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ticket [ id игрока ] [ Сумма ] [ Причина ]");
		if(params[1] < 1 || params[1] > 10000) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ticket [ id игрока ] [ Сумма ] [ Причина ]");
		if(Player[playerid][uRank] < 2) return SendClientMessage(playerid,C_GRAY,""gbError"Доступно только с 2-ого ранга!");
		if(Player[params[0]][uTicket]) return SendClientMessage(playerid,C_GRAY,""gbError"У данного игрока уже есть неоплаченный штраф!");

		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		format(vb_string, sizeof(vb_string), ""gbInfo"Офицер %s выписал Вам штраф на сумму %d$ по причине: %s.", Player[playerid][uName], params[1], params[2]);
		SendClientMessage(params[0], -1, vb_string);
		format(vb_string, sizeof(vb_string), ""gbAccess"Вы выписали штраф %s на сумму %d за %s.", Player[params[0]][uName], params[1], params[2]);
		SendClientMessage(playerid, -1, vb_string);
		Player[params[0]][uTicket] = 1;
		Player[params[0]][uTicketPay] = params[1];
		nowUpdateInfo(params[0], "d" , "gb_users" , "uName" , "uTicket" , Player[params[0]][uTicket]);
		nowUpdateInfo(params[0], "d" , "gb_users" , "uName" , "uTicketPay" , Player[params[0]][uTicketPay]);
		return 1;
	}
	CMD:cuff( playerid, params[] ) {
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет с собой наручников для их использования!");
		new bool:cuff = false;
		for(new i; i != 48; i++) {
			if(Inv[playerid][invSlot][i] == 432) cuff = true;
		}
		if(cuff == false) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет с собой наручников для их использования!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /cuff [ id игрока ]");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(GetPVarInt(params[0],"playerCuffed") == 1) return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок уже в наручниках!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		SetPlayerSpecialAction(params[0], SPECIAL_ACTION_CUFFED);
		SetPlayerAttachedObject(params[0], 4, 19418, 6, -0.011000, 0.028000, -0.022000, -15.600012, -33.699977, -81.700035, 0.891999, 1.000000, 1.168000);
		SetPVarInt(params[0],"playerCuffed",1);
		format(vb_string,sizeof(vb_string),"надел(-а) наручники на %s",Player[params[0]][uName]);
		MeAction(playerid,vb_string,1);
		togglePlayerControllable(params[0],false);
		format(vb_string,sizeof(vb_string),""gbInfo"%s %s надел(-а) на вас наручники!",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName]);
		SendClientMessage(params[0],C_GRAY,vb_string);
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы надели наручники на данного человека!");
		return 1;
	}
	CMD:uncuff( playerid, params[] ) {
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /uncuff [ id игрока ]");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок должен находиться рядом с вами!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(GetPVarInt(params[0],"follow") != INVALID_PLAYER_ID) return SendClientMessage(playerid,C_GRAY,""gbError"Нельзя снять наручники с данного человека, пока он идёт за кем-то!");
		if(GetPVarInt(params[0],"playerCuffed") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Этот игрок не находится в наручниках!");
		SetPlayerSpecialAction(params[0], SPECIAL_ACTION_NONE);
		RemovePlayerAttachedObject(params[0],4);
		SetPVarInt(params[0],"playerCuffed",0);
		format(vb_string,sizeof(vb_string),"снял(-а) наручники с %s",Player[params[0]][uName]);
		MeAction(playerid,vb_string,1);
		togglePlayerControllable(params[0],true);
		format(vb_string,sizeof(vb_string),""gbInfo"%s %s снял(-а) с вас наручники!",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName]);
		SendClientMessage(params[0],C_GRAY,vb_string);
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы сняли наручники с данного человека!");
		return 1;
	}
	
	CMD:eject( playerid, params[] ) {
		if(!IsPlayerInAnyVehicle(playerid)) return 1;
		if(GetPlayerVehicleSeat(playerid) != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы должны быть за рулём транспортного средства!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /eject [ id игрока ]");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(GetPlayerVehicleID(playerid) == GetPlayerVehicleID(params[0]) && GetPlayerVehicleSeat(params[0]) != 0) {
			removePlayerFromVehicle(params[0]);
			format(vb_string,sizeof(vb_string),"выкинул(-а) %s из автомобиля",Player[params[0]][uName]);
			MeAction(playerid,vb_string,1);
			SendClientMessage(params[0],C_GRAY,""gbInfo"Вас выкинули из транспортного средства!");
		}
		else SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		return 1;
	}
	CMD:mdc( playerid, params[] ) {
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
		if(!IsPlayerInAnyVehicle(playerid)) return 1;
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		new vehicleid = GetPlayerVehicleID(playerid);
		if(vehicleid >= lspdcars[0] && vehicleid <= lspdcars[1] 
			|| vehicleid >= sherifcar[0] && vehicleid <= sherifcar[1]
			|| vehicleid >= sasd_car[0] && vehicleid <= sasd_car[1] ) {}
		else return SendClientMessage(playerid,C_GRAY,""gbError"Вы находитесь не в служебном авто!");
		
		format( vb_string, sizeof vb_string, "" );
		strcat( vb_string, "1. Запрос информации о человеке.\n" );
		strcat( vb_string, "2. Запрос информации о автомобиле.\n" );
		strcat( vb_string, "3. Запрос информации о бизнесе.\n" );
		strcat( vb_string, "4. Запрос информации о доме.\n" );
		strcat( vb_string, "5. Запрос местоположения по номеру телефона.\n" );
		strcat( vb_string, "6. Список разыскиваемых преступников.\n" );
		strcat( vb_string, "7. Просмотр сотрудников на дежурстве.\n" );
		strcat( vb_string, "8. Объявить машину в розыск.\n" );
		strcat( vb_string, "9. Список разыскиваемых авто.\n" );
		strcat( vb_string, "10. Запрос информации о лицензии" );
		
		showPlayerDialog(playerid,d_mdc,2," ", vb_string, "Далее", "Закрыть");
		return 1;
	}
	
	CMD:m( playerid, params[] )
	{
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
		if(!IsPlayerInAnyVehicle(playerid)) return 1;
		new vehicleid = GetPlayerVehicleID(playerid);
		switch(Player[playerid][uMember])
		{
			case 1,2,8:
			{
				if(vehicleid >= lspdcars[0] && vehicleid <= lspdcars[1] 
				|| vehicleid >= sherifcar[0] && vehicleid <= sherifcar[1]
				|| vehicleid >= sasd_car[0] && vehicleid <= sasd_car[1] ) {}
				else return SendClientMessage(playerid,C_GRAY,""gbError"Вы находитесь не в служебном авто!");
				if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /m [ текст ]");
				format(vb_string,sizeof(vb_string),"[Мегафон %s %s]: %s",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName],params[0]);
				ProxDetector(30.0, playerid,vb_string,C_YELLOW,C_YELLOW,C_YELLOW,C_YELLOW,C_YELLOW);
				new Float: p[3];
				GetPlayerPos(playerid, p[0], p[1], p[2]);
				switch(random(2))
				{
					case 0: PlayerPlaySoundEx(playerid, 15800);
					case 1: PlayerPlaySoundEx(playerid, 15855);
				}
			}
			case 3:
			{
				if(vehicleid >= medicalcar[0] && vehicleid <= medicalcar[1]) {}
				else return SendClientMessage(playerid,C_GRAY,""gbError"Вы находитесь не в служебном авто!");
				if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /m [ текст ]");
				format(vb_string,sizeof(vb_string),"[Мегафон %s]: %s", Player[playerid][uName],params[0]);
				ProxDetector(30.0, playerid,vb_string,C_YELLOW,C_YELLOW,C_YELLOW,C_YELLOW,C_YELLOW);
			}
			//case 426, 416, 482
			case 5:
			{
				if(vehicleid >= fd_cars[0] && vehicleid <= fd_cars[1]) {}
				else return SendClientMessage(playerid,C_GRAY,""gbError"Вы находитесь не в служебном авто!");
				if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /m [ текст ]");
				format(vb_string,sizeof(vb_string),"[Мегафон %s]: %s", Player[playerid][uName],params[0]);
				ProxDetector(30.0, playerid,vb_string,C_YELLOW,C_YELLOW,C_YELLOW,C_YELLOW,C_YELLOW);
			}
			
			default: return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		}
		return 1;
	}
	CMD:spu( playerid, params[] )
	{
		new vehicleid = GetPlayerVehicleID(playerid);
		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, -1,""gbError"Вы не находитесь в машине");
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(GetPlayerVehicleSeat(playerid) != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы должны быть за рулём транспортного средства!");
		if(Player[playerid][uIsPlayerJob][0] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы должны находиться на службе!");
		if(vehicleid >= lspdcars[0] && vehicleid <= lspdcars[1] || vehicleid >= sasd_car[0] && vehicleid <= sasd_car[1]) {}
		else return SendClientMessage(playerid,C_GRAY,""gbError"Вы находитесь не в служебном авто!");
		new model = GetVehicleModel(GetPlayerVehicleID(playerid));
		if(IsValidObject(VehicleObject[vehicleid])) return DestroyObject(VehicleObject[vehicleid]);
		else {
			switch(model)
			{
				case 426:
				{
					VehicleObject[vehicleid] = CreateObject(18646,0,0,0,0,0,0);
					AttachObjectToVehicle(VehicleObject[vehicleid], GetPlayerVehicleID(playerid), 0.600000,0.749999,0.375000,0.000000,0.000000,0.000000);
				}
				case 541:
				{
					VehicleObject[vehicleid] = CreateObject(18646,0,0,0,0,0,0);
					AttachObjectToVehicle(VehicleObject[vehicleid], GetPlayerVehicleID(playerid), -0.450000,0.075000,0.674999,0.000000,0.000000,0.000000);
				}
				case 579:
				{
					VehicleObject[vehicleid] = CreateObject(18646,0,0,0,0,0,0);
					AttachObjectToVehicle(VehicleObject[vehicleid], GetPlayerVehicleID(playerid), 0.749999,0.524999,0.675000,0.000000,0.000000,0.000000);
				}
				case 560:
				{
					VehicleObject[vehicleid] = CreateObject(18646,0,0,0,0,0,0);
					AttachObjectToVehicle(VehicleObject[vehicleid], GetPlayerVehicleID(playerid), 0.675000,0.749999,0.450000,0.000000,0.000000,0.000000);
				}
				default: return SendClientMessage(playerid, -1,""gbError"На данный тип авто, нельзя установить мигалку!");
			}
			MeAction(playerid,"установил мигалку на авто",1);
		}
		return 1;
	}
	
	CMD:callsign( playerid, params[] ) 
	{
		if( !IsPlayerInAnyVehicle( playerid ) ) 
			return SendClientMessage(playerid, -1,""gbError"Вы не находитесь в машине");
			
		if( sscanf( params, "s[60]", params[0] ) || strlen( params[0] ) > 60 ) 
			return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /callsign [ текст ]");
			
		new 
			vehicleid = GetPlayerVehicleID( playerid );
			
		if(Player[playerid][uMember] == 2 || Player[playerid][uMember] == 1 || Player[playerid][uMember] == 8 )
		{
			if(vehicleid >= lspdcars[0] && vehicleid <= lspdcars[1] 
			|| vehicleid >= sherifcar[0] && vehicleid <= sherifcar[1]
			|| vehicleid >= sasd_car[0] && vehicleid <= sasd_car[1]) {}
			else return SendClientMessage(playerid,C_GRAY,""gbError"Вы находитесь не в служебном авто!");
			switch(vehiclecallsign[GetPlayerVehicleID(playerid)])
			{
				case 0:
				{
					vehicle3Dtext[vehicleid] = CreateDynamic3DTextLabel(params[0], 0xFFFFFF80, -1.0, -2.8, 0.0, 8.0, INVALID_PLAYER_ID, vehicleid);
					
					vehiclecallsign[vehicleid] = 1;
					format(vb_string,sizeof(vb_string),""gbInfo"Сотрудник %s установил маркировку: %s (( /dellsign %d ))",Player[playerid][uName],params[0],vehicleid);
					foreach(new i : Player)
					{
						if( Player[i][uLeader] == Player[playerid][uMember] ) 
						{
							SendClientMessage(i,C_GRAY,vb_string);
						}
					}
				}
				case 1:
				{
					if (IsValidDynamic3DTextLabel(vehicle3Dtext[vehicleid]))
					{
						DestroyDynamic3DTextLabel(vehicle3Dtext[vehicleid]);
						vehicle3Dtext[vehicleid] = Text3D: INVALID_3DTEXT_ID;	
					}
					
					vehiclecallsign[vehicleid] = 0;
					SendClientMessage(playerid, -1, ""gbInfo"Ваша маркировка была удалена.");
				}
			}
		}
		else if(Player[playerid][uMember] == 3)
		{
			if(vehicleid >= medicalcar[0] && vehicleid <= medicalcar[1]) {}
			else return SendClientMessage(playerid,C_GRAY,""gbError"Вы находитесь не в служебном авто!");
			switch(vehiclecallsign[GetPlayerVehicleID(playerid)])
			{
				case 0:
				{
					
					switch(GetVehicleModel(vehicleid))
					{
						case 426, 416, 482: vehicle3Dtext[vehicleid] = CreateDynamic3DTextLabel(params[0], 0xFFFFFF80, -1.0, -3.4, 0.0, 8.0, INVALID_PLAYER_ID, vehicleid);

						default:
						{
							SendClientMessage(playerid, C_GRAY, ""gbError"Недоступно для данного Т/С.");
							return true;
						}
					}
					vehiclecallsign[vehicleid] = 1;
					format(vb_string,sizeof(vb_string),""gbInfo"Сотрудник %s установил маркировку: %s (( /dellsign %d ))",Player[playerid][uName],params[0],vehicleid);
					foreach(new i : Player)
					{
						if(Player[i][uLeader] == Player[playerid][uMember]) SendClientMessage(i,C_GRAY,vb_string);
					}
				}
				case 1:
				{
					if (IsValidDynamic3DTextLabel(vehicle3Dtext[vehicleid]))
					{
						DestroyDynamic3DTextLabel(vehicle3Dtext[vehicleid]);
						vehicle3Dtext[vehicleid] = Text3D: INVALID_3DTEXT_ID;
					}
					
					vehiclecallsign[vehicleid] = 0;
					SendClientMessage(playerid, -1, ""gbInfo"Ваша маркировка была удалена.");
				}
			}
		}
		else if(Player[playerid][uMember] == 5)
		{
			if(vehicleid >= fd_cars[0] && vehicleid <= fd_cars[1]) {}
			else return SendClientMessage(playerid,C_GRAY,""gbError"Вы находитесь не в служебном авто!");
			switch(vehiclecallsign[GetPlayerVehicleID(playerid)])
			{
				case 0:
				{

					switch(GetVehicleModel(vehicleid))
					{
						case 407,416,418,426,
						428,431,433,442,455,
						457,471,472,473,
						482,490,495,497,487,
						417,515,525,544,552,563,
						561,560,573,577,548: vehicle3Dtext[vehicleid] = CreateDynamic3DTextLabel(params[0], 0xFFFFFF80, -1.0, -3.4, 0.0, 8.0, INVALID_PLAYER_ID, vehicleid);
						default:
						{
							SendClientMessage(playerid, C_GRAY, ""gbError"Недоступно для данного Т/С.");
							return true;
						}
					}
					vehiclecallsign[vehicleid] = 1;
					format(vb_string,sizeof(vb_string),""gbInfo"Сотрудник %s установил маркировку: %s (( /dellsign %d ))",Player[playerid][uName],params[0],vehicleid);
					foreach(new i : Player)
					{
						if(Player[i][uLeader] == Player[playerid][uMember]) SendClientMessage(i,C_GRAY,vb_string);
					}
				}
				case 1:
				{
					if (IsValidDynamic3DTextLabel(vehicle3Dtext[vehicleid]))
					{
						DestroyDynamic3DTextLabel(vehicle3Dtext[vehicleid]);
						vehicle3Dtext[vehicleid] = Text3D: INVALID_3DTEXT_ID;
					}
					vehiclecallsign[vehicleid] = 0;
					SendClientMessage(playerid, -1, ""gbInfo"Ваша маркировка была удалена.");
				}
			}
		}
		else
		{
			SendClientMessage(playerid, C_GRAY, ""gbError"Это действие недоступно для Вашей организации!");
			return true;
		}
		return 1;
	}
	CMD:dellsign( playerid, params[] )
	{
		if(Player[playerid][uLeader] != 8 && Player[playerid][uLeader] != 1 && Player[playerid][uLeader] != 2 && Player[playerid][uLeader] != 3 && Player[playerid][uLeader] != 5) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /dellsign [ ID ]");
		if(vehiclecallsign[params[0]] == 1)
		{
			if(IsValidDynamic3DTextLabel(vehicle3Dtext[params[0]]))
			{
				DestroyDynamic3DTextLabel(vehicle3Dtext[params[0]]);
				vehicle3Dtext[params[0]] = Text3D: INVALID_3DTEXT_ID;
				vehiclecallsign[params[0]] = 0;
			}
			SendClientMessage(playerid, C_GRAY, ""gbInfo"Ваша маркировка была удалена.");
			return true;
		}
		else SendClientMessage(playerid,C_GRAY,""gbError"Сотрудник не устанавливал маркировку");
		return 1;
	}
	
	CMD:wanted( playerid, params[] ) 
	{
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2 ) 
			return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		
		vb_string[0] = EOS;
		strcat( vb_string, "Имя преступника\tУровень розыска\tРаса\tВозраст\n" );
		foreach( new i: Player) 
		{
			if( Player[i][uSuspect] <= 0 ) 
				continue;
				
			format:gb_string( "{FFFFFF}%s\t\t%d\t\t%s\t\t%d\n",
				Player[i][uName],
				Player[i][uSuspect],
				users_nation[ Player[i][uNation] ],
				Player[i][uAge]
			);
			
			strcat( vb_string, gb_string );
		}
		
		showPlayerDialog( playerid, 9999, DIALOG_STYLE_TABLIST_HEADERS, " ", vb_string, "Закрыть", "" );
		
		return 1;
	}
	
	CMD:su( playerid, params[] ) {
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "dds[32]", params[0],params[1],params[2])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /su [ id игрока ] [ кол-во ] [ текст ]");
		if(Player[params[0]][uSuspect] == 6) return SendClientMessage(playerid,C_GRAY,""gbError"У данного человека уже достаточно звёзд!");
		if(!IsPlayerConnected(params[0]) || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет в штате!");
		if(params[0] == playerid) return SendClientMessage(playerid,C_GRAY,""gbError"Вы указали свой ID!");
		SuspectPlayer(params[0],params[2],Player[playerid][uName],params[1]);
		format(vb_string,sizeof(vb_string),"[D] %s объявлен(-а) в розыск. Обвинитель: %s. Причина: %s. %d/6",Player[params[0]][uName],Player[playerid][uName],params[2],Player[params[0]][uSuspect]);
		foreach (new i : Player) {
			switch(Player[i][uMember]) {
				case 1,2,8: {
					if(Player[i][uIsPlayerJob][0] == 1) SendClientMessage(i,C_RED,vb_string);
				}
			}
		}
		return 1;
	}
	CMD:unsu( playerid, params[] ) {
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unsu [ id игрока ]");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет в штате!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		Player[params[0]][uSuspect] = 0;
		SetPlayerWantedLevel(params[0],Player[params[0]][uSuspect]);
		nowUpdateInfo(params[0], "d" , "gb_users" , "uName" , "uSuspect" , Player[params[0]][uSuspect]);
		format(vb_string,sizeof(vb_string),""gbAccess"%s снял%s Вам уровень розыска.",
			Player[playerid][uName],
			( Player[playerid][uSex] == 2 ) ? ( "а" ) : ("")
		);
		SendClientMessage(params[0],C_GRAY,vb_string);
		format(vb_string,sizeof(vb_string),""gbAccess"Вы сняли уровень розыска персонажу "cBLUE"%s"cWHITE".",Player[params[0]][uName]);
		SendClientMessage(playerid,C_GRAY,vb_string);
		return 1;
	}
	//SetPlayerColor(playerid,FracColor[0]);
	CMD:color( playerid )
	{
		if( Player[playerid][uMember] == 0 ) 
			return 1;
			
		if( GetPVarInt( playerid, "PlayerColor" ) )
		{
			SetPlayerColor( playerid, FracColor[Player[playerid][uMember]] );
			SetPVarInt( playerid, "PlayerColor", 0);
		}
		else
		{
			SetPVarInt( playerid, "PlayerColor", 1 );
			SetPlayerColor( playerid, FracColor[0] );
		}
		
		return 1;
	}
	
	CMD:copattach( playerid, params[] )
	{
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		
		vb_string[0] = EOS;
		strcat(vb_string, "1. Бронежилет\n");
		strcat(vb_string, "2. Жетон Полицейского\n3. Рация [Пояс]\n4. Рация [Левое плечо]\n");
		strcat(vb_string, "5. Рация [Правое плечо]\n6. Рация [Спина]\n7. Жилет высокой видимости\n");
		strcat(vb_string, "8. Шлем\n9. Шлем мотоциклиста\n10. Кепка ""POLICE""\n11. Кепка ""POLICE""\n12. Очистить все объекты");
		showPlayerDialog(playerid,3003,DIALOG_STYLE_LIST, "Список объектов", vb_string, "Выбрать", "Отмена");
		return true;
	}
	CMD:tow( playerid, params[] )
	{
		if(GetVehicleModel(GetPlayerVehicleID(playerid)) != 525) return SendClientMessage(playerid, -1, ""gbError"Вы должны быть в эвакуаторе");
		new Float:cord[2][3];
		GetPlayerPos(playerid,cord[0][0],cord[0][1],cord[0][2]);
		for(new i = 1, x = GetPlayerVehicleID(playerid); i <= MAX_VEHICLES; ++i)
		{
			GetVehiclePos(i,cord[1][0],cord[1][1],cord[1][2]);
			if(floatabs(cord[0][0]-cord[1][0]) < 7.0 &&
			floatabs(cord[0][1]-cord[1][1]) < 7.0 &&
			floatabs(cord[0][2]-cord[1][2]) < 7.0 &&
			i != x)
			{
				AttachTrailerToVehicle(i, x);
				break;
			}
		}
		return true;
	}
	CMD:untow( playerid, params[] )
	{
		if(IsTrailerAttachedToVehicle(GetPlayerVehicleID(playerid))) DetachTrailerFromVehicle(GetPlayerVehicleID(playerid));
		return true;
	}
	CMD:attach( playerid, params[] ) 
	{
		if( Player[playerid][uMember] != 5 || Player[playerid][uIsPlayerJob][2] == 0 )
		{
			if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
			if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /attach [ id игрока ]");
			if(GetPVarInt(params[0],"playerCuffed") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок должен быть в наручниках!");
			if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
			if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
			if(GetPVarInt(playerid,"follow") != INVALID_PLAYER_ID) return SendClientMessage(playerid,C_GRAY,""gbError"Вы уже ведёте за собой кого-то!");
			SetPVarInt(playerid,"follow",params[0]);
			SetPVarInt(params[0],"follow",playerid);
			SendClientMessage(playerid,C_GRAY,""gbAccess"Данный игрок следует за Вами. Чтобы отпустить используйте команду - "cBLUE"/unattach"cWHITE".");
			format(vb_string,sizeof(vb_string),""gbInfo"%s %s заставил%s Вас идти за %s.",
				FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],
				Player[playerid][uName],
				Player[playerid][uSex] == 1 ? ("") : ("а"),
				Player[playerid][uSex] == 1 ? ("ним") : ("ней")
			);
			SendClientMessage(params[0],C_GRAY,vb_string);
			togglePlayerControllable(params[0],true);
			format(vb_string,sizeof(vb_string),"ведёт за собой %s",Player[params[0]][uName]);
			MeAction(playerid,vb_string,1);
		}
		else
		{
			return cmd_fdattach( playerid );
		}
		
		return 1;
	}
	CMD:aattach( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 4) return true;
		if(sscanf(params, "dddd", params[0], params[1], params[2], params[3])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /aattach [ID] [Index] [Model] [Bone]");
		SetPlayerAttachedObject(params[0], params[1], params[2], params[3]);
		EditAttachedObject(params[0], params[1]);
		return true;
	}
	CMD:unattach( playerid, params[] ) {
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unattach [ id игрока ]");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(GetPVarInt(params[0],"follow") != playerid) return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок идёт не за вами!");
		SetPVarInt(playerid,"follow",INVALID_PLAYER_ID);
		SetPVarInt(params[0],"follow",INVALID_PLAYER_ID);
		if(GetPVarInt(params[0],"playerCuffed") != 0) togglePlayerControllable(params[0],false);
		SendClientMessage(params[0],C_GRAY,""gbAccess"Вы прекратили следовать за полицейским!");
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы прекратили вести за собой преступника!");
		return 1;
	}
	
	

	
	CMD:pass( playerid, params[] ) {
		new bool:cuff = false, str[128];
		for(new i; i != 48; i++) {
			if(Inv[playerid][invSlot][i] == 452) cuff = true;
		}
		if(cuff == false) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет с собой документов!");
		new name[2][24],nation[64];
		explode(name,Player[playerid][uName],"_");
		if(!strlen(name[1])) strcat(name[1],"Неизвестно");
		switch(Player[playerid][uNation]) {
			case 1: strcat(nation,"Американец");
			case 2: strcat(nation,"Латиноамериканец");
			case 3: strcat(nation,"Русский");
			case 4: strcat(nation,"Француз");
			case 5: strcat(nation,"Итальянец");
			case 6: strcat(nation,"Испанец");
			case 7: strcat(nation,"Немец");
			case 8: strcat(nation,"Португалец");
			case 9: strcat(nation,"Австралиец");
			case 10: strcat(nation,"Колумбиец");
			case 11: strcat(nation,"Мексиканец");
			case 12: strcat(nation,"Китаец");
			case 13: strcat(nation,"Японец");
			case 14: strcat(nation,"Бразилец");
			case 15: strcat(nation,"Кореец");
			case 16: strcat(nation,"Въетнамец");
			case 17: strcat(nation,"Чех");
			case 18: strcat(nation,"Британец");
			case 19: strcat(nation,"Голландец");
			case 20: strcat(nation,"Поляк");
		}
		new licensestrue[25];
		if(Player[playerid][uLicenses][3] != 1)
		{
			licensestrue = "Нет";

		}
		else format(licensestrue, sizeof(licensestrue), "Есть № %d", Player[playerid][uID]);
		
		format( vb_string, sizeof vb_string, "{ffffff}| Данные о человеке:\n\n" );
		format( str, sizeof str, ""cGRAY"Имя: {ffffff}%s\n", name[0] ), strcat( vb_string, str );
		format( str, sizeof str, ""cGRAY"Фамилия: {ffffff}%s\n", name[1] ), strcat( vb_string, str );
		format( str, sizeof str, ""cGRAY"Национальность: {ffffff}%s\n",nation ), strcat( vb_string, str );
		format( str, sizeof str, ""cGRAY"Возраст: {ffffff}%d\n",Player[playerid][uAge] ), strcat( vb_string, str );
		if( Player[playerid][uArrestStat] ) {
			format( str, sizeof str, ""cGRAY"Судимости: есть ( %d )\nДата выхода: %s\n\n",
				Player[playerid][uArrestStat], date( "%dd.%mm.%yy", Player[playerid][uArrestStatDate] ) );
			strcat( vb_string, str );
		}
		else format( str, sizeof str, ""cGRAY"Судимости: нет\n\n" ), strcat( vb_string, str );
		format( str, sizeof str, "{ffffff}| Лицензии:\n\n" ), strcat( vb_string, str );
		format( str, sizeof str, ""cGRAY"Лицензия на наземное ТС: {ffffff}%s\n", Player[playerid][uLicenses][0] ? ("Есть") : ("Нет") ), strcat( vb_string, str );
		format( str, sizeof str, ""cGRAY"Лицензия на водное ТС: {ffffff}%s\n", Player[playerid][uLicenses][1] ? ("Есть") : ("Нет") ), strcat( vb_string, str );
		format( str, sizeof str, ""cGRAY"Лицензия на воздушное ТС: {ffffff}%s\n", Player[playerid][uLicenses][2] ? ("Есть") : ("Нет") ), strcat( vb_string, str );
		format( str, sizeof str, ""cGRAY"Лицензия на оружие: {ffffff}%s\n", licensestrue ), strcat( vb_string, str );
		
		if(sscanf(params, "d", params[0])) showPlayerDialog(playerid,9999,0," ",vb_string,"Закрыть","");
		else {
			if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
			showPlayerDialog(params[0],9999,0," ",vb_string,"Закрыть","");
		}
		return 1;
	}
	
	CMD:id( playerid, params[] )
	{
		if(sscanf(params, "s[25]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /id [ имя_фамилия ]");
		new bool:find = false, str[128];
		vb_string = "";
		foreach(new i : Player)
		{
			if(strfind(Player[i][uName],params[0],true) != -1)
			{
				format(str,sizeof(str),"%s[%d]",Player[i][uName],i);
				SendClientMessage(playerid,C_GRAY,str);
				find = true;
			}
		}
		if(find == false) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но по вашему запросу ничего не найдено!");
		return 1;
	}
	
	CMD:time( playerid, params[] )
	{
	    new Year, Month, Day, Hour, Minute, Second;
		getdate(Year, Month, Day);
		gettime(Hour, Minute, Second);
		if( !Player[playerid][uJail] && !Player[playerid][uDMJail] &&
			!Player[playerid][uMute] && !Player[playerid][uBMute] )
		{
            format(vb_string, sizeof(vb_string), "~b~Time: ~w~%02d:%02d~n~~b~Date: ~w~%02d/%02d/%d~n~~b~PayCheck: ~w~%d min", Hour, Minute, Day, Month, Year, 60 - Player[playerid][uPayTime]);
			GameTextForPlayer(playerid, vb_string, 5000, 1);
		} 
		else
		{
			format(vb_string,sizeof(vb_string),""gbInfo"Информация о времени и дате:\n\n"cGRAY"Время: %02d:%02d\n\
			Дата: %02d/%02d/%d\n\nВремя в КПЗ: %d сек.\nВремя в Де Моргане: %d мин.\nВремя до снятия мута: %d мин.\n\
			Время до снятия OOC мута: %d мин.\nВремени в игре: %d ",
			Hour, Minute, Day, Month, Year, Player[playerid][uJailTime],Player[playerid][uDMJail],Player[playerid][uMute], 
			Player[playerid][uBMute], Player[playerid][uPayTime] );
			
            showPlayerDialog(playerid,9999,0," ",vb_string,"Закрыть","");
		}
	    return 1;
	}
	//
	
	/* забыл добвить */
	
	CMD:job( playerid, params[] ) {
        if(D::[playerid][dWoodsDuty] != 0) return showPlayerDialog(playerid,d_woods + 1,2,"Лесопилка","1. "cGRAY"Информация о лесопилке{ffffff}\n2. "cGRAY"Список рабочих лесопилки","Далее","Закрыть");
		switch(Player[playerid][uJob]) {
			case 1: {
				new car = GetPlayerVehicleID(playerid);
				if(IsPlayerInAnyVehicle(playerid)) {
					if(GetPlayerVehicleSeat(playerid) == 0) {
						if(car >= ataxils[0] && car <= ataxils[1]) {
							if(V::[car][vTaxiDriver] == playerid && D::[playerid][dTaxiKey] == car && D::[playerid][dTaxiDuty] == true)
					    	showPlayerDialog(playerid,d_taxi + 1,2,"Инструменты","1. "cGRAY"Включить счётчик{ffffff}\n2. "cGRAY"Изменить тариф{ffffff}\n3. "cGRAY"Выключить счётчик{ffffff}\n4. "cGRAY"Закончить рабочий день","Далее","Закрыть");
						}
					}
				}
			}
	        case 2: showPlayerDialog(playerid,d_bus + 2,2,"Информационное окно","1. "cGRAY"Информация о стаже{ffffff}\n2. "cGRAY"Кол-во автобусов на маршрутах","Далее","Закрыть");
	        case 3: {
	        	switch(GetVehicleModel(GetPlayerVehicleID(playerid))) {
	        		case 498,456,499,414: showPlayerDialog(playerid,d_daln + 4,2,"Информационное окно","1. "cGRAY"Список бизнесов заказавших товары","Далее","Закрыть");
	        		default: showPlayerDialog(playerid,d_daln + 3,2,"Информационное окно","1. "cGRAY"Информация о стаже{ffffff}\n2. "cGRAY"Общая информация о материалах","Далее","Закрыть");
	        	}
	        }
	        default: SendClientMessage(playerid,C_GRAY,""gbError"По вашей работе нет информации в базе данных.");
	    }
	    return 1;
	}

	CMD:fill( playerid, params[] ) {
		if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SendClientMessage(playerid,C_GRAY,""gbError"Вы должны быть за рулём транспортного средства!");
		GetVehicleParamsEx(GetPlayerVehicleID(playerid),eng,light,other1,other2,other3,other4,other5);
		if(eng == 1) return SendClientMessage(playerid,C_GRAY,""gbError"Сначала заглушите двигатель вашего транспортного средства!");
		for(new i; i != MAX_FUELS; i ++) {
			if(IsPlayerInRangeOfPoint(playerid,9.0,FuelCoords[i][0],FuelCoords[i][1],FuelCoords[i][2])) {
				for(new b; b != cBizz; b ++) {
					if(IsPlayerInRangeOfPoint(playerid,50.0,Bizz::[b][bEnter][0],Bizz::[b][bEnter][1],Bizz::[b][bEnter][2]) && Bizz::[b][bSettings][7] == 9) {
						format(vb_string,sizeof(vb_string),"{ffffff}Введите кол-во топлива, которое хотите заправить:\n\nСтоимость 1 литра: "cGREEN"$%d{ffffff}\nМаскимальное кол-во топлива: "cGREEN"%.0f{ffffff}",
						Bizz::[b][bSettings][5],MaxVehicleFuel[GetVehicleModel(GetPlayerVehicleID(playerid)) - 400] - V::[GetPlayerVehicleID(playerid)][vFuel]);
						showPlayerDialog(playerid,d_fill,1," ",vb_string,"Далее","Закрыть");
						SetPVarInt(playerid,"PlayerBizzID",b);
						break;
					}
				}
				break;
			}
		}
		return 1;
	}
	CMD:bpanel( playerid, params[] ) {
		new bool:message = false;
		for(new i; i != cBizz; i ++) {
			if(IsPlayerInRangeOfPoint(playerid,50.0,Bizz::[i][bEnter][4],Bizz::[i][bEnter][5],Bizz::[i][bEnter][6]) && GetPlayerVirtualWorld(playerid) == Bizz::[i][bID]) {
				if(!strcmp(Bizz::[i][bOwner],Player[playerid][uName],true)) {
					showPlayerDialog(playerid,d_bizz,2,"Управление бизнесом","1. "cGRAY"Информация о бизнесе{ffffff}\n2. "cGRAY"Улучшения бизнеса{ffffff}\n3. "cGRAY"Настройка бизнеса{ffffff}\n4. "cGRAY"Банковские операции","Далее","Закрыть");
					message = true;
					SetPVarInt(playerid,"PlayerBizzID",i);
					break;
				}
			}
		}
		if(message == false) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет бизнеса или вы не внутри него!");
		return 1;
	}
	CMD:fpanel( playerid, params[] ) {
		if(Player[playerid][uMember] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вы не состоите какой нибудь организации!");
		//if(strcmp(F::[Player[playerid][uLeader]][fLeader], Player[playerid][uName], true) == 0) {
		switch(Player[playerid][uMember])
		 {
				case 6: showPlayerDialog(playerid,d_frac,2," ","1. "cGRAY"Управление сотрудниками организации{ffffff}\n2. "cGRAY"Настройки организации\n{ffffff}3. "cGRAY"Заспавнить фракционный транспорт\n{ffffff}4. "cGRAY"Управление финансами\n{ffffff}5. "cGRAY"Управление ресурсами","Далее","Закрыть");
				case 5: showPlayerDialog(playerid,d_frac,2," ","1. "cGRAY"Управление сотрудниками организации{ffffff}\n2. "cGRAY"Настройки организации\n{ffffff}3. "cGRAY"Заспавнить фракционный транспорт","Далее","Закрыть");
				default: showPlayerDialog(playerid,d_frac,2," ","1. "cGRAY"Управление сотрудниками организации{ffffff}\n2. "cGRAY"Настройки организации\n{ffffff}3. "cGRAY"Заспавнить фракционный транспорт","Далее","Закрыть");
			}
	//	}
		return 1;
	}

CMD:afk( playerid, params[] ) {
    if( sscanf( params, "u", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /afk [ id игрока ]" );
    SendMes( playerid, C_GRAY, "%s - %d", Player[ params[0] ][uName], getData( params[0], "PlayerAFK" ) );
	return true;
}

CMD:pame( playerid, params[] )
{
	if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage(playerid, C_GRAY,""gbInfo"Введите: /pame [ id игрока ]");
	
	if( !IsPlayerLogged( params[0] ) )
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
	
	if( GetPVarInt( params[0], "Player:Pame" ) == 0 ) 
		return SendClientMessage(playerid,C_GRAY,""gbError"У данного игрока не установлено описание.");
	
	vb_string[0] = EOS;
	
	format:gb_string( ""gbInfo"Описание персонажа "cBLUE"%s"cWHITE":\n\n%s",
		Player[params[0]][uName],
		Player[params[0]][uPame]
	);
	
	strcat( vb_string, gb_string );
	
	if( Player[ params[0] ][uMember] != 0 && IsDuty( params[0] ) != 0 )
	{
		format:gb_string( "\n\n"cGRAY"— %s, %s", 
			F::[ Player[ params[0] ][uMember] ][fName],
			FRank[ Player[ params[0] ][uMember] ][ Player[ params[0] ][uRank] - 1 ] 
		);
		
		strcat( vb_string, gb_string );
	}
	
	showPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", vb_string, "Закрыть", "" );
	return 1;
}

CMD:mypame( playerid, params[] )
{
	if( Player[playerid][uMute] != 0) 
		return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
		
	if( GetPVarInt( playerid, "Player:Pame" ) != 0) 
		return SendClientMessage(playerid,C_GRAY,""gbError"У Вас уже установленно описание персонажа.");
		
	if( sscanf(params, "s[144]", params[0] ) ) 
		return SendClientMessage(playerid, C_GRAY,""gbInfo"Введите: /mypame [ текст ]");
		
	SetPVarInt( playerid, "Player:Pame", 1 );
	Player[playerid][uPame][0] = EOS;
	strcat( Player[playerid][uPame], params[0], 144 );
	
	SendClientMessage( playerid, C_GRAY, ""gbAccess"Вы успешно установили бесконечное действие над персонажем.");
	SendClientMessage( playerid, C_GRAY, ""gbInfo"Чтобы удалить используйте повторно команду - "cBLUE"/dmypame");
	format( vb_string,sizeof(vb_string),"[A] %s[%d] установил описание: %s",Player[playerid][uName], playerid,params[0]);
	SendAdminMessage( C_LIGHTGREEN, vb_string );
	
	return 1;
}

CMD:dmypame( playerid, params[] )
{
	if( !GetPVarInt( playerid, "Player:Pame" ) ) 
		return SendClientMessage(playerid, C_GRAY, ""gbError"Вы не устанавливали описание персонажа.");
		
	SetPVarInt( playerid, "Player:Pame", 0 );
	Player[playerid][uPame][0] = EOS;
	
	SendClientMessage(playerid, C_GRAY, ""gbAccess"Вы успешно удалили описание персонажа.");
	return 1;
}

CMD:coin( playerid )
{
	if( IsMute( playerid, TYPE_IC ) ) 
		return SendClientMessage( playerid, C_WHITE, !PLAYER_MUTED );
		
	gb_string[0] = EOS;
	strcat( gb_string, "подкидывает монетку, выпадает " );
	
	if( random( 2 ) == 1 )
		strcat( gb_string, ""cGRAY"орёл{C2A2DA}." );
	else 
		strcat( gb_string, ""cGRAY"решка{C2A2DA}." );
		
	MeAction( playerid, gb_string, 0 );
	
	return 1;
}

CMD:action( playerid, params[] ) 
{
	if( IsMute( playerid, TYPE_IC ) ) 
		return SendClientMessage( playerid, C_WHITE, !PLAYER_MUTED );
		
	if( sscanf( params, "s[128]", params[0] ))  
		return SendClientMessage( playerid,C_GRAY,""gbInfo"Введите: /action [ текст ]" );
		
	if( GetPVarInt( playerid, "Player:UseAction" ) != 0 ) 
		return SendClientMessage(playerid,C_GRAY,""gbError"Вы уже устанавливали действие своего персонажа.");
	
	new 
		Float: x,
		Float: y,
		Float: z;
	
	GetPlayerPos( playerid, x, y, z );
	
	format:vb_string( "%s\n(( %s[%d] ))",
		params[0],
		Player[playerid][uName],
		playerid
	);
	
	Player[playerid][uAction] = CreateDynamic3DTextLabel(
		vb_string,
		0xC2A2DAFF,
		x,
		y,
		z,
		10.0,
		INVALID_PLAYER_ID,
		INVALID_VEHICLE_ID,
		0,
		-1,
		GetPlayerVirtualWorld( playerid )
	);
	
	SendClientMessage( playerid,C_GRAY,""gbAccess"Вы установили действие персонажа. Чтобы удалить используйте - "cBLUE"/daction"cWHITE".");
	
	format:gb_string( "[A] %s[%d] установил действие: %s",
		Player[playerid][uName], 
		playerid,
		params[0]
	);
	
	SendAdminMessage( C_LIGHTGREEN, gb_string );

	SetPVarInt( playerid,"Player:UseAction", 1 );
	return 1;
}

CMD:daction( playerid ) 
{
	if( !GetPVarInt( playerid, "Player:UseAction" ) ) 
		return SendClientMessage( playerid, C_GRAY, !""gbError"Вы не устанавливали какое-либо действие." );

	SetPVarInt( playerid, "Player:UseAction", 0 );
	
	if( IsValidDynamic3DTextLabel( Player[ playerid ][uAction] ) )
	{
		DestroyDynamic3DTextLabel( Player[ playerid ][uAction] );	
		Player[ playerid ][uAction] = Text3D: INVALID_3DTEXT_ID;
	}
	
	SendClientMessage( playerid, -1, ""gbAccess"Вы успешно удалили действие." );
	return 1;
}

CMD:taser( playerid, params[] ) 
{
	if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
	if(Player[playerid][uIsPlayerJob][0] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы должны находиться на службе!");
	if(!GetPVarInt(playerid, "Tazer"))
	{
		SetPVarInt(playerid, "Tazer", 1);
		givePlayerWeapon(playerid, 23, 2);
		MeAction(playerid,"достал(-а) тазер",1);
		SetPlayerArmedWeapon(playerid, 23);
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы достали тазер!");
	}
	else
	{
		ResetWeapons(playerid);
		if(Inv[playerid][invSlot][50] != 0) givePlayerWeapon(playerid,GetWeaponToObject(_itemsInfo[Inv[playerid][invSlot][50]][invObject]),Inv[playerid][invSlotKol][50]);
		if(Inv[playerid][invSlot][51] != 0) givePlayerWeapon(playerid,GetWeaponToObject(_itemsInfo[Inv[playerid][invSlot][51]][invObject]),Inv[playerid][invSlotKol][51]);
		SetPVarInt(playerid, "Tazer", 0);
		SetPlayerArmedWeapon(playerid, 1);
		MeAction(playerid,"убрал(-а) тазер",1);
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы убрали тазер!");
	}
	return 1;
}

CMD:todo( playerid, params[] )
{
	new 
		string_text		[ 128 ],
		string_action	[ 128 ];
		
	if( IsMute( playerid, TYPE_IC ) ) 
		return SendClientMessage( playerid, C_WHITE, !PLAYER_MUTED );
		
	if( sscanf( params, "p<*>s[128]s[128]", string_text, string_action ) )
		return SendClientMessage( playerid, C_WHITE, !""gbInfo"Введите: /todo [ текст * действие ]");	
	
	if( strlen( params ) <= 72 )
	{
		format:gb_string( "\"%s\", - сказал%s %s,{C2A2DA} %s",
			string_text,
			(Player[playerid][uSex] == 2) ? ("а") : (""),
			GetCharacterName( playerid ),
			string_action
		);
		
		ProxDetector( 20.0, playerid, gb_string, COLOR_FADE1, COLOR_FADE2, COLOR_FADE3, COLOR_FADE4, COLOR_FADE5 );
	}
	else if( strlen( params ) > 72 )
	{
		format:gb_string( "\"%s\", - сказал%s %s ...",
			string_text,
			(Player[playerid][uSex] == 2) ? ("а") : (""),
			GetCharacterName( playerid )
		);
		
		ProxDetector( 20.0, playerid, gb_string, COLOR_FADE1, COLOR_FADE2, COLOR_FADE3, COLOR_FADE4, COLOR_FADE5 );
		
		format:gb_string( "... %s",
			string_action
		);
		
		ProxDetector( 20.0, playerid, gb_string, 0xC2A2DAFF, 0xC2A2DAFF, 0xC2A2DAFF, 0xC2A2DAFF, 0xC2A2DAFF );
	}
	
	return 1;
}

CMD:me( playerid, params[] ) 
{
	if( IsMute( playerid, TYPE_IC ) ) 
		return SendClientMessage( playerid, C_WHITE, !PLAYER_MUTED );
		
	if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /me [ действие ]");
	MeAction(playerid,params[0],0);
	return 1;
}

CMD:ame( playerid, params[] ) 
{
	if( IsMute( playerid, TYPE_IC ) ) 
		return SendClientMessage( playerid, C_WHITE, !PLAYER_MUTED );
		
	if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ame [ действие ]");
	format(vb_string,sizeof(vb_string),"> %s %s", GetCharacterName( playerid ),params[0]);
	SendClientMessage(playerid,0xC2A2DAFF,vb_string);
	MeAction(playerid,params[0],1);
	return 1;
}

CMD:do( playerid, params[] ) 
{
	if( IsMute( playerid, TYPE_IC ) ) 
		return SendClientMessage( playerid, C_WHITE, !PLAYER_MUTED );
		
	if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /do [ действие ]");
	DoAction(playerid,params[0]);
	return 1;
}

CMD:w( playerid, params[] ) 
{
	if( IsMute( playerid, TYPE_IC ) ) 
		return SendClientMessage( playerid, C_WHITE, !PLAYER_MUTED );
		
	if( sscanf( params, "s[128]", params[0] ) ) 
		return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /w [ текст ]");
		
	format( vb_string, sizeof(vb_string), "%s шепчет: %s", GetCharacterName( playerid ), params[0] );
	sendLongMessage( playerid, vb_string, COLOR_FADE3,COLOR_FADE3,COLOR_FADE3,COLOR_FADE3,COLOR_FADE3, 3.0 );
	return 1;
}

CMD:wto( playerid, params[] ) 
{
	if( IsMute( playerid, TYPE_IC ) ) 
		return SendClientMessage( playerid, C_WHITE, !PLAYER_MUTED );
		
	if( sscanf( params, "us[128]", params[0], params[1] ) ) 
		return SendClientMessage( playerid, C_WHITE, ""gbInfo"Введите: /wto [ id игрока ][ текст ]");
	
	if( !IsPlayerLogged( params[0] ) || params[0] == playerid ) 
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	if( GetDistanceBetweenPlayers( playerid,params[0] ) > 2.0 
		|| GetPlayerVirtualWorld( playerid ) != GetPlayerVirtualWorld( params[0] ) 
	  ) 
		return SendClientMessage( playerid, C_WHITE, ""gbError"Данного игрока нет рядом с Вами.");
	
	format:gb_string( "Вам шепчет %s: %s", GetCharacterName( playerid ), params[1] );
	SendClientMessage( params[0], COLOR_FADE3, gb_string );
	
	format:gb_string( "Вы шепчете %s: %s", GetCharacterName( params[0] ), params[1] );
	SendClientMessage( playerid, COLOR_FADE3, gb_string );

	return 1;
}

CMD:b( playerid, params[] ) 
{
	if( IsMute( playerid, TYPE_OOC ) ) 
		return SendClientMessage( playerid, C_WHITE, !PLAYER_MUTED );
		
	if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /b [ текст ]");
	format(vb_string, sizeof(vb_string), "(( %s[%d]: %s ))", Player[playerid][uName], playerid, params[0]);
	sendLongMessage( playerid, vb_string, COLOR_FADE1, COLOR_FADE2, COLOR_FADE3, COLOR_FADE4, COLOR_FADE5, 20.0, 1 );
	return 1;
}

CMD:s( playerid, params[] ) 
{
	if( IsMute( playerid, TYPE_IC ) ) 
		return SendClientMessage( playerid, C_WHITE, !PLAYER_MUTED );
		
	if(Player[playerid][uJailSettings][2] != 0 || Player[playerid][uJailSettings][4] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не в состоянии говорить что-то!");

	if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /s [ текст ]");
	format(vb_string, sizeof(vb_string), "%s кричит: %s", GetCharacterName( playerid ), params[0]);
	sendLongMessage( playerid, vb_string, COLOR_FADE1, COLOR_FADE1, COLOR_FADE2, COLOR_FADE3, COLOR_FADE4, 35.0 );
	
	if( !IsPlayerInAnyVehicle( playerid ) && !Player[ playerid ][ uDeath ] ) 
	{
		ApplyAnimation(playerid,"RIOT","RIOT_shout",4.0, 0, 1, 1, 0, 0, 1);
	}
	return 1;
}

CMD:window( playerid, params[] )
{
	if( !IsPlayerInAnyVehicle( playerid ) )
		return SendClientMessage( playerid, C_WHITE, !""gbError"Для использования команды, Вам необходимо находиться в транспорте." );
	
	new
		vehicleid = GetPlayerVehicleID( playerid ),
		seat = GetPlayerVehicleSeat( playerid );
		
	if( !vehicleid || seat == 128 || seat > 4 )
		return 1;
	
	if( SkipVehicleMessage( vehicleid ) )
		return SendClientMessage( playerid, C_WHITE, !""gbError"В текущем транспорте не может использоваться данная команда." );
	
	GetVehicleParamsCarWindows( vehicleid, 
		V::[vehicleid][vehicle_state_window][0], 
		V::[vehicleid][vehicle_state_window][1], 
		V::[vehicleid][vehicle_state_window][2], 
		V::[vehicleid][vehicle_state_window][3] 
	);
	
	if( isnull( params ) )
	{
		if( !V::[vehicleid][vehicle_state_window][seat] )
		{
			V::[vehicleid][vehicle_state_window][seat] = true;
		}
		else
		{
			V::[vehicleid][vehicle_state_window][seat] = false;
		}
	}
	else if( !isnull( params ) && seat == 0 )
	{
		if( !strcmp( params, "l", true ) )
		{
			if( !V::[vehicleid][vehicle_state_window][0] )
			{
				V::[vehicleid][vehicle_state_window][0] = true;
			}
			else
			{
				V::[vehicleid][vehicle_state_window][0] = false;
			}
		}
		else if( !strcmp( params, "r", true ) )
		{
			if( !V::[vehicleid][vehicle_state_window][1] )
			{
				V::[vehicleid][vehicle_state_window][1] = true;
			}
			else
			{
				V::[vehicleid][vehicle_state_window][1] = false;
			}
		}
		else if( !strcmp( params, "rl", true ) )
		{
			if( !V::[vehicleid][vehicle_state_window][2] )
			{
				V::[vehicleid][vehicle_state_window][2] = true;
			}
			else
			{
				V::[vehicleid][vehicle_state_window][2] = false;
			}
			
		}
		else if( !strcmp( params, "rr", true ) )
		{
			if( !V::[vehicleid][vehicle_state_window][3] )
			{
				V::[vehicleid][vehicle_state_window][3] = true;
			}
			else
			{
				V::[vehicleid][vehicle_state_window][3] = false;
			}
		}
		else
		{
			return SendClientMessage( playerid, C_WHITE, ""gbInfo"Введите: /window [ l - переднее левое | r - переднее правое | rl - заднее левое | rr - заднее правое ]" );
		}

	}
	
	SetVehicleParamsCarWindows( vehicleid, 
		V::[vehicleid][vehicle_state_window][0], 
		V::[vehicleid][vehicle_state_window][1], 
		V::[vehicleid][vehicle_state_window][2], 
		V::[vehicleid][vehicle_state_window][3] 
	);	
	
	return 1;
}

CMD:pm( playerid, params[] )
{
	new
	    server_tick = GetTickCount();
	
	if( GetPVarInt( playerid, "CmdTime:Pm" ) > server_tick )
		return SendClientMessage(playerid, C_WHITE, !""gbError"Вы слишком часто используете данную команду, подождите.");
		
	if( IsMute( playerid, TYPE_OOC ) ) 
		return SendClientMessage( playerid, C_WHITE, !PLAYER_MUTED );
		
	if( sscanf( params, "us[128]", params[0],params[1] ) ) 
		return SendClientMessage( playerid, C_WHITE, !""gbInfo"Введите: /pm [ id игрока ] [ текст ]" );
		
	if( !IsPlayerLogged( params[0] ) || params[0] == playerid ) 
		return SendClientMessage( playerid, C_WHITE, !INCORRECT_PLAYER_ID );
		
	if( Player[params[0]][uPM] == 1 )
		return SendClientMessage( playerid, C_WHITE, !""gbError"Данный игрок отключил приём личных сообщений." );
		
	format:gb_string( "(( PM к %s[%d]: %s ))", 
		Player[params[0]][uName],
		params[0],
		params[1]
	);
	
	SendClientMessage( playerid, 0xFFCD00FF, gb_string );
	
	format:gb_string( "(( PM от %s[%d]: %s ))",
		Player[playerid][uName],
		playerid,
		params[1]
	);
	
	SendClientMessage( params[0], 0xFFCD00FF, gb_string );
	
	SetPVarInt( playerid, "CmdTime:Pm", server_tick + 3500 );
	return 1;
}

CMD:rep( playerid, params[] )
	return cmd_report( playerid, params );
	
CMD:report( playerid, params[] ) 
{
	new
	    server_tick = GetTickCount();
	
	if( GetPVarInt( playerid, "CmdTime:Report" ) > server_tick )
		return SendClientMessage(playerid, C_WHITE, !""gbError"Вы слишком часто используете данную команду, подождите.");
		
	if( sscanf( params, "s[128]", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, !""gbInfo"Введите: /report [ текст ]");
		
	if( Player[playerid][uPremium] ) 
	{
		format( vb_string, sizeof vb_string, "[S] Вопрос %s[%d]: %s", Player[playerid][uName], playerid, params[0] );
		SendSupportsMessage( 0xff6b81AA, vb_string, false );
		
		format( vb_string, sizeof vb_string, "[A] Жалоба %s[%d]: %s", Player[playerid][uName], playerid, params[0] );
		SendAdminMessage( 0xff6b81AA, vb_string );
	}
	else 
	{
		format( vb_string, sizeof vb_string, "[S] Вопрос %s[%d]: %s", Player[playerid][uName], playerid, params[0] );
		SendSupportsMessage( C_YELLOW, vb_string, false );
		
		format( vb_string, sizeof vb_string, "[A] Жалоба %s[%d]: %s", Player[playerid][uName], playerid, params[0] );
		SendAdminMessage( C_YELLOW, vb_string );
	}
	
	SendMes( playerid, C_WHITE, ""gbAccess"Вы успешно отправили запрос администрации и операторам поддержки." );
	SendMes( playerid, C_WHITE, ""gbAccess"Текст жалобы: "cBLUE"%s", params[0] ); 
	
	SetPVarInt( playerid, "CmdTime:Report", server_tick + 60000 );
	return 1;
}

CMD:supports( playerid )
{
	new 
		bool: exists = false;
	
	vb_string[0] = EOS;
	
	strcat( vb_string, ""gbInfo"Операторы поддержки в сети:\n\n" );
	foreach(new i : Player)
	{
		if(Player[ i ][uSupport] && GetPVarInt( i, "SDuty" ) )
		{
			format:gb_string( "%s[%d]\n", Player[i][uName], i );
			strcat( vb_string, gb_string );
			
			exists = true;
		}
	}
	
	if( !exists )
		return SendMes( playerid, -1, ""gbInfo"На данный момент операторов поддержки нет в сети." );
	
	ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", vb_string, "Закрыть", "" );
	
	return 1;
}

CMD:members( playerid, params[] ) 
{
	if( Player[playerid][uMember] || Player[playerid][uCrimeM] ) 
	{
		vb_string[0] = EOS;
	
		strcat( vb_string, ""gbInfo"Члены организации в сети:\n\n" );
		foreach( new i : Player) 
		{
			if( Player[i][uMember] == Player[playerid][uMember] && Player[i][uMember] != 0 ) 
			{
				format:gb_string( "%s[%d]\n", Player[i][uName], i );
				strcat( vb_string, gb_string );
			}
			else if( Player[playerid][uCrimeM] == Player[i][uCrimeM] && Player[i][uCrimeM] ) 
			{
				format:gb_string( "%s[%d]\n", Player[i][uName], i );
				strcat( vb_string, gb_string );
			}
		}
		
		ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", vb_string, "Закрыть", "" );
	}
	else 
	{
		SendMes( playerid, C_WHITE, !NO_ACCESS );
	}
	
	return 1;
}

CMD:leaders( playerid ) 
{
	new 
		bool: exists = false;
	
	vb_string[0] = EOS;
	
	strcat( vb_string, ""gbInfo"Лидеры в сети:\n\n" );
	foreach(new i : Player)
	{
		if( Player[ i ][uLeader] != 0 && !strcmp( F::[Player[i][uLeader]][fLeader], Player[i][uName], true ) )
		{
			format:gb_string( ""cBLUE"%s"cWHITE" - %s[%d]\n", 
				F::[Player[i][uMember]][fName], 
				F::[Player[i][uMember]][fLeader], 
				i
			);
			
			strcat( vb_string, gb_string );
			
			exists = true;
		}
	}
	
	if( !exists )
		return SendMes( playerid, -1, ""gbInfo"На данный момент лидеров нет в сети." );
	
	ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", vb_string, "Закрыть", "" );
	
	return 1;
}

CMD:d( playerid, params[] ) 
{
	if( IsMute( playerid, TYPE_IC ) ) 
		return SendClientMessage( playerid, C_WHITE, !PLAYER_MUTED );
		
	if( !Player[playerid][uMember] ) 
		return SendClientMessage( playerid, C_WHITE, ""gbError"Этот канал только для государственных структур.");
	
	if( !IsDuty( playerid ) )
		return SendClientMessage( playerid, C_WHITE, ""gbError"Для использования данного канала, необходимо находиться на дежурстве.");
	
	if( sscanf( params, "s[128]", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE,""gbInfo"Введите: /d [ желаемый текст ]" );
		
	if( Player[playerid][uJailSettings][2] != 0 || Player[playerid][uJailSettings][4] != 0 ) 
		return SendClientMessage( playerid, C_GRAY,""gbError"Вы не в состоянии говорить что-то в рацию." );
		
	format(vb_string,sizeof(vb_string),"[D] %s %s: %s",
		FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],
		GetCharacterName( playerid ),
		params[0]
	);
	
	foreach (new i : Player) 
	{
		switch(Player[i][uMember]) 
		{
			case 1 ,2, 8 : 
			{
				if( Player[i][uIsPlayerJob][0] == 1 && Player[playerid][uRank] >= 3 ) 
				{
					SendClientMessage( i, C_RED, vb_string );
				}
			}
			
			case 3: 
			{
				if( Player[i][uIsPlayerJob][1] == 1 && Player[playerid][uRank] >= 3 ) 
				{
					SendClientMessage( i, C_RED, vb_string );
				}
			}
			
			case 5: 
			{
				if( Player[i][uIsPlayerJob][2] == 1 && Player[playerid][uRank] >= 3 ) 
				{
					SendClientMessage( i, C_RED, vb_string);
				}
			}
			case 6: 
			{
				if(Player[playerid][uRank] >= 3) 
				{
					SendClientMessage( i, C_RED, vb_string );
				}
			}
		}
	}
	return 1;
}


CMD:blind( playerid )
{
	if( !GetPVarInt( playerid, "Player:Blinded" ) )
	{
		TextDrawShowForPlayer( playerid, blind_background );
		SetPVarInt( playerid, "Player:Blinded", 1 );
	}
	else 
	{
		TextDrawHideForPlayer( playerid, blind_background );
		SetPVarInt( playerid, "Player:Blinded", 0 );
		GameTextForPlayer(playerid, "Unblind", 2000, 5 );
	}
	
	return 1;
}

CMD:ab( playerid, params[] ) 
{
	if( IsMute( playerid, TYPE_OOC ) ) 
		return SendClientMessage( playerid, C_WHITE, !PLAYER_MUTED );
		
	if( sscanf( params, "s[128]", params[0] ) ) 
		return SendClientMessage(playerid, C_WHITE,""gbInfo"Введите: /ab [ текст ]");
		
	format:gb_string( "> (( %s[%d]: %s ))", 
		Player[playerid][uName],
		playerid,
		params[0] 
	);
	
	SendClientMessage( playerid, COLOR_FADE1, gb_string );
	
	format:gb_string( "(( %s ))", params[ 0 ] );
	SetPlayerChatBubble( playerid, gb_string, COLOR_FADE1, 10.0, 5000 );
	
	return 1;
}