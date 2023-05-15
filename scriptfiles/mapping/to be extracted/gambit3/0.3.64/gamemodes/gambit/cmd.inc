//if(Player[playerid][uAdmin] > 0 && GetPVarInt(playerid,"playerAdmin") == 0) return true;

//
CMD:charity( playerid, params[] ) {
	if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /charity [сумма]" );
	if( params[0] < 1 ) return SendMes( playerid, C_GRAY, ""gbError"Недопустимое значение" );
	if( params[0] > Player[playerid][uMoney] ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно денег" );
	Player[playerid][uMoney] -= params[0];
	userUpdate( playerid, "uMoney", Player[playerid][uMoney] );
	SendMes( playerid, -1, ""gbAccess"Вы слили $%d", params[0] );
	logs( 13, "слил деньги", Player[playerid][uID], params[0] );
	return true;
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
	if( params[0] == 933 && Player[playerid][uMember] != 5 ) return SendMes( playerid, C_GRAY, ""gbError"Этот канал зашифрован!");
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
	if( Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2 ) return SendMes( playerid, C_GRAY, ""gbError"У вас нет доступа к этой команде" );
	new Float:pos[3], count;
	GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
	foreach(new i : Player) {
		if( playerid == i ) continue;
		if(IsPlayerInRangeOfPoint(i,5.0,pos[0],pos[1],pos[2])) {
		    if( Player[i][uMember] == 1 || Player[i][uMember] == 2) count++;
		}
	}
	if( !count ) return SendMes( playerid, C_GRAY, ""gbError"Для взлома двери вам нужен напарник!" );
	for( new h; h < sizeof HouseInfo; h++ ) {
		if( !HouseInfo[h][hID] || !HouseInfo[h][hOwned] ) continue;
		if( IsPlayerInRangeOfPoint( playerid, 3.0, 
			HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2] ) 
			&& HouseInfo[h][hEnterWorld] == GetPlayerVirtualWorld( playerid ) ) {
				
			if( !HouseInfo[h][hLock] ) return SendMes( playerid, C_GRAY, ""gbError"Двери этого дома открыты!" );
			GameTextForPlayer( playerid, "~g~UNLOCK", 3000, 3 );
			HouseInfo[h][hLock] = 0;
			inHouseMessage( h, 0xE75480FF, "Входная дверь в доме выбита." );	
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

CMD:d( playerid, params[] ) {
	if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
	if(Player[playerid][uMember] != 0) {
		if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /d [ желаемый текст ]");
		if(Player[playerid][uJailSettings][2] != 0 || Player[playerid][uJailSettings][4] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не в состоянии говорить что-то в рацию!");
		format(vb_string,sizeof(vb_string),"[D] %s %s: %s",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName],params[0]);
		foreach (new i : Player) {
			switch(Player[i][uMember]) {
				case 1,2,8: if(Player[i][uIsPlayerJob][0] == 1 && Player[playerid][uRank] >= 3) SendClientMessage(i,C_RED,vb_string);
				case 3: if(Player[i][uIsPlayerJob][1] == 1 && Player[playerid][uRank] >= 3) SendClientMessage(i,C_RED,vb_string);
				case 5: if(Player[i][uIsPlayerJob][2] == 1 && Player[playerid][uRank] >= 3) SendClientMessage(i,C_RED,vb_string);
				case 6: if(Player[playerid][uRank] >= 3) SendClientMessage(i,C_RED,vb_string);
			}
		}
	}
	else SendClientMessage(playerid,C_GRAY,""gbError"Этот канал только для государственных организации.");
	return 1;
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
	format( vb_string, sizeof vb_string, "подбрасывает игральные кости, выпадает число "cGRAY"%d", random(11) + 2 );
	MeAction( playerid, vb_string, 0 );
	return true;
}

CMD:object( playerid, params[] ) {
	switch(Player[playerid][uMember]) {
		case 1,2,3,5,8: {
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
		default: SendClientMessage(playerid, -1, ""gbError"Ваша организация не может выставлять объекты!");
	}
	return true;
}

CMD:delobject( playerid, params[] ) {
	switch(Player[playerid][uMember]) {
		case 1,2,3,5, 8: {
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
						DestroyDynamic3DTextLabel( ObjList[i][o3DText] );
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
	}
	return true;
}

CMD:setpaytime( playerid, params[] )
{
	if(Player[playerid][uAdmin] < 4 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
	if(sscanf(params, "ud", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /setpaytime [ID] [ Time ]");
	if(params[1] < 0 || params[1] > 60) return SendClientMessage(playerid,C_GRAY,""gbError"Время только от 0 до 60!");
	Player[params[0]][uPayTime] = params[1];
	format(vb_string, sizeof(vb_string), "Вы установили игроку %s[%d] время игры", Player[params[0]], params[0]);
	SendClientMessage(playerid, C_GRAY, vb_string);
	return true;
}
	
CMD:setvirt( playerid, params[] )//
{
	if(Player[playerid][uAdmin] < 4 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /setvirt [ID]");
	SetPlayerVirtualWorld(playerid, params[0]);
	format(vb_string, sizeof(vb_string), "Ваш виртуальный мир был изменен на %d", params[0]);
	SendClientMessage(playerid, -1, vb_string);
	return true;
}
	
CMD:gotopos( playerid, params[] )
{
	if(Player[playerid][uAdmin] < 5 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
	new Float:x, Float:y, Float:z;
	if(sscanf(params,"fff",x,y,z)) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /gotopos [x] [y] [z]");
	setPlayerPos(playerid,x,y,z);
	return true;
}
	
CMD:biz( playerid, params[] )
{
	if(Player[playerid][uAdmin] < 5 || GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /biz [ID]");
	if(params[0] <= 0 || params[0] > cBizz) return SendClientMessage(playerid,C_GRAY,""gbInfo"Некорректый ID бизнеса!");
	setPlayerPos(playerid, Bizz::[params[0] - 1][bEnter][0],Bizz::[params[0]-1][bEnter][1],Bizz::[params[0]-1][bEnter][2]);
	if(GetPlayerVirtualWorld(playerid) > 0) SetPlayerVirtualWorld(playerid, 0);
	if(GetPlayerInterior(playerid) > 0) SetPlayerInterior(playerid, 0);
	new str[128];
	format(str, sizeof(str), "Вы были телепортированы к бизнесу %d", params[0]);
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
	format(query_strings, sizeof(query_strings), "Администратор %s очистил бизнес %s [%d]", Player[playerid][uName], Bizz::[params[0] -1][bName], params[0]);
	SendAdminMessage(C_LIGHTRED, query_strings);
	return true;
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
	format(str, sizeof(str), "Администратор %s установил бизнесу %s [%d] продуктов в размере %d единиц", Player[playerid][uName], Bizz::[params[0]-1][bName], params[0], params[1]);
	SendAdminMessage(C_LIGHTRED, str);
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
		format(strs, sizeof(strs), "[CH: %d, S: 1] %s: %s", Player[playerid][uRadioChanel],Player[playerid][uName], params[0]);
		SendRadioMessage(Player[playerid][uRadioChanel], strs);
		format(str, sizeof(str), "[В рацию] %s: %s", Player[playerid][uName], params[0]);
		ProxDetector(10.0, playerid, str,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1, 2 );
		return true;
	}
	//ProxDetector(20.0, playerid, "Автобус отъезжает через 10 секунд.",COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1);
	CMD:mic( playerid, params[] )
	{
		if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /mic [ желаемый текст ]");
		if(IsPlayerInRangeOfPoint(playerid,5.0,391.0675,-1525.2642,33.3489) && Player[playerid][uMember] == 1 || Player[playerid][uMember] == 2 || Player[playerid][uMember] == 3 || Player[playerid][uMember] == 5)
		{
			format(vb_string, sizeof(vb_string), "[В микрофон] %s", params[0]);
			ProxDetector(30.0, playerid, vb_string,C_ORANGE,C_ORANGE,C_ORANGE,C_ORANGE,C_ORANGE);
		}
		return true;
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
		format(strs, sizeof(strs), "[CH: %d, S: %d] %s: %s", Player[playerid][uRadioChanel], Player[playerid][uRadioSubChanel], Player[playerid][uName], params[0]);
		SendRadioMessageForSubChanel(Player[playerid][uRadioChanel], Player[playerid][uRadioSubChanel], strs);

		format(str, sizeof(str), "[В рацию] %s: %s", Player[playerid][uName], params[0]);
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
		format(strs, sizeof(strs), "[CH: %d, S: 1] %s: %s", Player[playerid][uRadioChanel],Player[playerid][uName], params[0]);
		SendRadioMessage(Player[playerid][uRadioChanel], strs);
		
		format(str, sizeof(str), "[В рацию] %s: %s", Player[playerid][uName], params[0]);
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
		format(strs, sizeof(strs), "[CH: %d, S: %d] %s: %s", Player[playerid][uRadioChanel], Player[playerid][uRadioSubChanel],Player[playerid][uName], params[0]);
		SendRadioMessageForSubChanel(Player[playerid][uRadioChanel], Player[playerid][uRadioSubChanel], strs);

		format(str, sizeof(str), "[В рацию] %s: %s", Player[playerid][uName], params[0]);
		ProxDetector(10.0, playerid, str,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1, 2 );
		return true;
	}
	
	CMD:setfrac( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 4 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
		//if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /setfrac [fracid]");
		Player[playerid][uMember] = params[0];
		Player[playerid][uRank] = 15;
		new str[128];
		format(str, sizeof(str), "Вы установили себе фракцию %s", F::[params[0]][fName]);
		SendClientMessage(playerid, C_LIGHTRED, str);
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

	CMD:f( playerid, params[] ) {
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но Вам запрещено писать что-то!");
		if(Player[playerid][uBMute] != 0) return SendClientMessage(playerid, C_GRAY, ""gbError"Простите, но Вам запрещено писать что-то!");
		if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /f [ желаемый текст ]");
		if(Player[playerid][uJailSettings][2] != 0 || Player[playerid][uJailSettings][4] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не в состоянии говорить что-то в рацию!");
		switch(Player[playerid][uMember]) {
			case 1,2,8: if(Player[playerid][uIsPlayerJob][0] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет с собой рации, возьмите её в шкафчике!");
			case 3: if(Player[playerid][uIsPlayerJob][1] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет с собой рации, возьмите её в шкафчике!");
			case 4,6,7: {}
			case 5: if(Player[playerid][uIsPlayerJob][2] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет с собой рации, возьмите её в шкафчике!");
			default: return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет с собой рации!");
		}
		format(vb_string,sizeof(vb_string),"(( [F] %s[%d]: %s ))",Player[playerid][uName],playerid,params[0]);
		foreach (new i : Player) {
			if(Player[i][uMember] == 0) continue;
			if(Player[i][uRO] == 1) continue;
			if(Player[i][uMember] == Player[playerid][uMember]) {
				switch(Player[i][uMember]) {
					case 1,2,8: if(Player[i][uIsPlayerJob][0] == 1) SendClientMessage(i,0x6699FFAA,vb_string);
					case 3: if(Player[i][uIsPlayerJob][1] == 1) SendClientMessage(i,0xd6699FFAA,vb_string);
					case 5: if(Player[i][uIsPlayerJob][2] == 1) SendClientMessage(i,0x6699FFAA,vb_string);
					default: SendClientMessage(i,0x6699FFAA,vb_string);
				}
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
					if(GetPlayerVehicleID(playerid) >= firecar[0] && GetPlayerVehicleID(playerid) <= firecar[1])
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
						if(i >= firecar[0] && i <= firecar[1]) {
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
	
	CMD:ban( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 3) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "dds[128]", params[0],params[1],params[2])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ban [ id ] [ days ] [ reason ]");
		if(Player[playerid][uAdmin] < 3 && (params[1]< 1 || params[1] > 30)) return SendClientMessage(playerid,C_GRAY,""gbError"Максимальное число дней 30!");
		if(Player[playerid][uAdmin] >= 3 && (params[1] < 1 || params[1] > 299)) return SendClientMessage(playerid,C_GRAY,""gbError"Максимальное число дней от 1 до 299!");
		if(!IsPlayerConnected(params[0]) || IsKicked(params[0]) || params[0] == playerid || Player[playerid][uAdmin] < Player[params[0]][uAdmin] || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
		new ip[32], dates[16], unbandate;
		format(query,sizeof(query),"Администратор %s забанил игрока %s на %d дней. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1],params[2]);
		SendAdminMessageToAll(C_LIGHTRED,query,params[0]);
		unbandate = gettime() + params[1] * 86400;
		new year,month,day;
		getdate(year, month, day);
		format(dates, 16, "%02d.%02d.%04d", day, month, year);
		GetPlayerIp(params[0], ip, 32);
		if(Player[params[0]][uAdmin] > 0)
		{
			nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "uBanPlayer" , unbandate);
			SendClientMessage(playerid, C_LIGHTRED, "Вы были заблокированы за блокировку администратора!");
			SendClientMessage(playerid, C_LIGHTRED, "Чтобы снять блокировку, обратитесь к администратору!");
			KickEx(playerid);
		}
		Player[params[0]][uBanPlayer] = unbandate;
		nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uBanPlayer" , Player[params[0]][uBanPlayer]);

		format( query,sizeof(query), "INSERT INTO gb_bans (name, ip, bandate, time, unbandate, reason, adminban) VALUES ('%s', '%s', '%s', %d, %d, '%s', '%s')", Player[params[0]][uName], ip, dates, params[1], unbandate, params[2], Player[playerid][uName]);
		mysql_tquery(1, query, "", "");
		KickEx(params[0]);
		return 1;
	}
	CMD:banip( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 4 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
		new ip[32];
		//if() return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "s[32]s[32]", ip,params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /banip [ip adres] [ reason]");
		//new ip[32], dates[16], unbandate;
		format(vb_string,sizeof(vb_string),"[A] Администратор %s заблокировал IP: %s. Причина: %s",Player[playerid][uName],ip,params[1]);
		SendAdminMessage(C_LIGHTRED,vb_string);
		format(vb_string,sizeof(vb_string), "INSERT INTO gb_ipbans (uAdminName, uIP, uReason) VALUES ('%s', '%s', '%s')", Player[playerid][uName], ip, params[1]);
		mysql_tquery(1, vb_string, "", "");
		return 1;
	}
	CMD:retest( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 3 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
		SendClientMessage(playerid,C_GRAY,""gbInfo"Используйте команду /warn");
		return true;
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
	CMD:unjail( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unjail [ id ] ");
		if(Player[params[0]][uDMJail] != 0)
		{
			Player[params[0]][uDMJail] = 0;
			nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uDMJail" , Player[params[0]][uDMJail]);
			SendClientMessage(params[0],C_GRAY,""gbAccess"Вы отсидели свой срок в Де Моргане!");
			togglePlayerControllable(params[0],true);
			spawnFreezeTime(params[0]);
			SetPlayerInterior(params[0], 0);
			SetPlayerVirtualWorld(params[0], 0);
			setPlayerPos(params[0],1543.9922,-1669.7343,13.5575);
		}
		else return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок не находиться в Де Моргане!");
		return 1;
	}
	CMD:jail( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "dds[32]", params[0],params[1],params[2])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /jail [ id ] [ time ] [ reason ]");
		if(!IsPlayerConnected(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
		if(params[1] < 1 || params[1] > 600) return SendClientMessage(playerid,C_GRAY,""gbError"Неверное кол-во времени, от 1 до 600 минут!");
		Player[params[0]][uDMJail] = params[1];
		setPlayerPos(params[0], 3958.6768,-942.3129,3.8427);
		format(vb_string,sizeof(vb_string),"Администратор %s посадил игрока %s в Де Морган на %d минут. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1],params[2]);
		SendAdminMessageToAll(C_LIGHTRED,vb_string,params[0]);
		nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uDMJail" , Player[params[0]][uDMJail]);

		if(Player[playerid][uIsPlayerJob][0] == 1) Player[playerid][uIsPlayerJob][0] = 0;
		if(Player[playerid][uIsPlayerJob][1] == 1) Player[playerid][uIsPlayerJob][1] = 0;
		if(Player[playerid][uIsPlayerJob][2] == 1) Player[playerid][uIsPlayerJob][2] = 0;
		return 1;
	}
	CMD:mycar( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 4) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		//if(GetPlayerInterior(playerid) > 0) return 1;
		if(sscanf(params, "ddd", params[0],params[1],params[2])) return SendClientMessage(playerid, -1, "Введите: /mycar [id машины] [цвет 1] [цвет 2]");
		if(params[0] > 611 || params[0] < 400) return SendClientMessage(playerid, -1, "ID транспорта от 400 до 611!");
		if(params[1] > 126 || params[1] < 0) return SendClientMessage(playerid, -1, "ID цвета от 0 до 126!");
		if(params[2] > 126 || params[2] < 0) return SendClientMessage(playerid, -1, "ID цвета от 0 до 126!");
		new Float:X,Float:Y,Float:Z;
		GetPlayerPos(playerid, X,Y,Z);
		new carid = CreateVehicle(params[0], X,Y,Z, 0.0, params[1], params[2], 60000);
		V::[carid][vLock] = false;
		V::[carid][vHealth] = 1000.0;
		V::[carid][vFuel] = MaxVehicleFuel[GetVehicleModel(carid) - 400];
		V::[carid][vBuyingCar] = -1;
		V::[carid][vGang] = -1;
		SetVehicleVirtualWorld( carid, GetPlayerVirtualWorld( playerid ) );
		LinkVehicleToInterior( carid, GetPlayerInterior( playerid ) );
		caradmin[carid] = true;
		return 1;
	}
	CMD:dveh( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 4) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid,C_GRAY,""gbError"Для удаления Вы должны быть в автомобиле!");
		if(caradmin[GetPlayerVehicleID(playerid)] == false) return SendClientMessage(playerid,C_GRAY,""gbError"Этот автомобиль удалить нельзя!");
		DestroyVehicle(GetPlayerVehicleID(playerid));
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы удалили админский автомобиль!");
		return true;
	}
	CMD:dvehs( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 4) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, -1, "Введите: /dvehs [id]");
		DestroyVehicle(params[0]);
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы удалили автомобиль!");
		return true;
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
	
	CMD:weaponstats( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 5) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /weaponstats [ id ] ");
		format(vb_string, sizeof(vb_string), "GetPlayerAmmo: %d", GetPlayerAmmo(params[0]));
		SendClientMessage(playerid, -1, vb_string);
		for(new i; i < 13; i++)
		{
			format(vb_string, sizeof(vb_string), "Slot %d | %d -> Ammo in Massive", i, gAmmos[params[0]][i]);
			SendClientMessage(playerid, -1, vb_string);
		}
		return 1;
	}
	
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
		showPlayerDialog(playerid, d_makeleader,2,"Выбирите фракцию",vb_string,"Дальше","Закрыть");
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
	CMD:kick( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "ds[32]", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /kick [ id ] [ reason ]");
		if(!IsPlayerConnected(params[0]) || IsKicked(params[0]) || params[0] == playerid || Player[playerid][uAdmin] < Player[params[0]][uAdmin] || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
		format(vb_string,sizeof(vb_string),"Администратор %s кикнул игрока %s. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1]);
		SendAdminMessageToAll(C_LIGHTRED,vb_string,params[0]);
		KickEx(params[0]);
		if(Player[params[0]][uAdmin] > 0)
		{
			SendClientMessage(playerid, C_LIGHTRED, "Вы были кикнуты за попытку кикнуть администратора!");
			KickEx(playerid);
		}
		return 1;
	}
	
	CMD:a( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /a [ text ]");
		format(vb_string,sizeof(vb_string),"[A] %s[%d]: %s", Player[playerid][uName],playerid,params[0]);
		SendAdminMessage(C_GREEN,vb_string);
		return 1;
	}
	CMD:ans( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 1)
		{
			if(Player[playerid][uSupport] != 0)
			{
				if(GetPVarInt(playerid, "SDuty") == 1)
				{
					if(sscanf(params, "us[128]", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ans [ id ] [ text ]");
					format(vb_string,sizeof(vb_string),"Ответ от Support %s[%d]: %s",Player[playerid][uName], playerid,params[1]);
					SendClientMessage(params[0],C_YELLOW,vb_string);
					format(vb_string,sizeof(vb_string),"[S] Support %s[%d] ответил %s[%d]: %s",Player[playerid][uName],playerid,Player[params[0]][uName],params[0],params[1]);
					SendSupportsMessage(C_ORANGE,vb_string);
				}
				else return SendClientMessage(playerid, C_GRAY, ""gbError"Вы не авторизованы как Support. Для выхода на дежурство введите {4a86b6}/sduty");
			}
		}
		else
		{
			if(GetPVarInt(playerid,"playerAdmin") == 0) return true;
			if(sscanf(params, "ds[128]", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ans [ id ] [ text ]");
			format(vb_string,sizeof(vb_string),"Ответ от администратора %s[%d]: %s",Player[playerid][uName], playerid,params[1]);
			SendClientMessage(params[0],C_YELLOW,vb_string);
			format(vb_string,sizeof(vb_string),"[A] %s[%d] ответил %s[%d]: %s",Player[playerid][uName], playerid,Player[params[0]][uName],params[0],params[1]);
			SendSupportsMessage(C_ORANGE,vb_string);
		}
		return 1;
	}
	CMD:h( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 1)
		{
			if(Player[playerid][uSupport] != 0)
			{
				if(GetPVarInt(playerid, "SDuty") == 1)
				{
					if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /h [ Text ]");
					format(vb_string,sizeof(vb_string),"[S] Support %s[%d]: %s",Player[playerid][uName],playerid,params[0]);
					SendSupportsMessage(0x42aaffFF,vb_string);
				}
				else return SendClientMessage(playerid, C_GRAY, ""gbError"Вы не авторизованы как Support. Для выхода на дежурство введите {4a86b6}/sduty");
			}
		}
		else
		{
			if(GetPVarInt(playerid,"playerAdmin") == 0) return true;
			if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /h [ Text ]");
			format(vb_string,sizeof(vb_string),"[S] Администратор %s[%d]: %s",Player[playerid][uName],playerid,params[0]);
			SendSupportsMessage(0x42aaffFF,vb_string);
		}
		return 1;
	}
	CMD:support( playerid, params[] )
	{
		SendClientMessage(playerid, 0xFFFF99AA, "Список Support's онлайн:");
		new str[90];
		foreach(new i : Player)
		{
			if(Player[i][uSupport] == 1 && GetPVarInt(i, "SDuty") == 1)
			{
				format(str,sizeof(str),"%s[%d]\n",Player[i][uName],i);
				SendClientMessage(playerid, 0xFFFF99AA, str);
			}
		}
		return true;
	}
	
	CMD:sduty( playerid, params[] )
	{
		if(Player[playerid][uSupport] == 0) return true;
		if(GetPVarInt(playerid, "SDuty") == 1)
		{
			format(vb_string,sizeof(vb_string),"[S] Игрок %s[%d] покинул дежурство!", Player[playerid][uName], playerid);
			SendSupportsMessage(0xFFFF99AA, vb_string);
			SetPVarInt(playerid, "SDuty", 0);
		}
		else
		{
			SetPVarInt(playerid, "SDuty", 1);
			format(vb_string,sizeof(vb_string),"[S] Игрок %s[%d] вышел на дежурство!", Player[playerid][uName], playerid);
			SendSupportsMessage(0xFFFF99AA, vb_string);
		}
		return true;
	}
	
	CMD:o( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 3) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /o [ text ]");
		format(vb_string,sizeof(vb_string),"[O] Администратор %s: %s",Player[playerid][uName],params[0]);
		SendClientMessageToAll(C_ORANGE,vb_string);
		return 1;
	}
	CMD:restart( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 5) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		foreach(new i : Player) Kick(i);
		SetTimer("GameModeExitDelay",2000,false);
		return 1;
	}
	CMD:get( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 5) return true;
		if(sscanf(params, "u", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /get [ID]");
		format(vb_string, sizeof(vb_string), "Виртуальный мир: %d | Интерьер: %d",  GetPlayerVirtualWorld(params[0]), GetPlayerInterior(params[0]));
		SendClientMessage(playerid, -1, vb_string);
		new Float: Pos[3];
		GetPlayerPos(params[0], Pos[0], Pos[1], Pos[2]);
		format(vb_string, sizeof(vb_string), "Позиция: %f:%f:%f ",  Pos[0], Pos[1], Pos[2]);
		SendClientMessage(playerid, -1, vb_string);
		return 1;
	}
	
	//
	
	
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
	CMD:pm( playerid, params[] )
	{
		if(GetPVarInt(playerid,"pOff") > gettime()) return SendClientMessage(playerid,C_GRAY,""gbError"Попробуйте повторить через пару секунд..");
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
		if(Player[playerid][uBMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но Вам запрещено писать что-то!");
		if(sscanf(params, "ds[128]", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /pm [ ID игрока ] [ текст ]");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
		if(Player[params[0]][uPM] == 1) return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок отключил приём личных сообщений!");
		format(vb_string,sizeof(vb_string),"(( PM %s[%d]: %s ))",Player[params[0]][uName],params[0],params[1]);
		SendClientMessage(playerid,C_YELLOW,vb_string);
		format(vb_string,sizeof(vb_string),"(( PM От %s[%d]: %s ))",Player[playerid][uName],playerid,params[1]);
		SendClientMessage(params[0],C_YELLOW,vb_string);
		SetPVarInt(playerid,"pOff",gettime()+5);
		return 1;
	}
	
CMD:report( playerid, params[] ) {
	if( !getData( playerid, "uLogin" ) ) return 1;
	if( Player[playerid][uMute] != 0 ) return SendMes( playerid, C_GRAY, ""gbError"Простите, но вам запрещено писать что-то!");
	if( sscanf( params, "s[128]", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /report [ текст ]");
	if( PlayerCountReport[playerid] != 0 ) return SendMes( playerid, C_GRAY, ""gbError"Пожалуйста, подождите некоторое время прежде чем писать заново!");
	PlayerCountReport[playerid] = 60;
	if(Player[playerid][uJobDouble][5] != 0 && Player[playerid][uJobDouble][5] + (2592000) >= gettime()) {
		format( vb_string, sizeof vb_string, "[A] [VIP] Жалоба от %s(%d): %s", Player[playerid][uName], playerid, params[0]);
		SendSupportsMessage( 0xff6b81AA, vb_string );
	}
	else if( Player[playerid][uPremium] ) {
		format( vb_string, sizeof vb_string, "[A] [VIP] Жалоба от %s(%d): %s", Player[playerid][uName], playerid, params[0]);
		SendSupportsMessage( 0xff6b81AA, vb_string );
	}
	else {
		format( vb_string, sizeof vb_string, "[A] Жалоба от %s(%d): %s", Player[playerid][uName], playerid, params[0] );
		SendSupportsMessage( C_YELLOW, vb_string );
	}
	SendMes( playerid, C_GRAY, ""gbAccess"Вы успешно отправили жалобу/вопрос, ожидайте ответа от администратора!" );
	SendMes( playerid, C_GRAY, ""gbAccess"Текст жалобы: '%s'", params[0] ); 
	return 1;
}
	
	CMD:pay( playerid, params[] ) {
		if(sscanf(params, "dd", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /pay [ ID игрока ] [ сумма ]");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(Player[playerid][uMoney] < params[1]) return SendClientMessage(playerid,C_GRAY,""gbError"Недостаточно денег для передачи такой суммы!");
		if(params[1] < 1 || params[1] > 100000) return SendClientMessage(playerid,C_GRAY,""gbError"Минимальная сумма передачи - $1 | Максимальная - $100.000");

		Player[playerid][uMoney] -= params[1];
		Player[params[0]][uMoney] += params[1];

		format(vb_string,sizeof(vb_string),"UPDATE gb_users SET uMoney = '%d' WHERE BINARY uName = '%s'",Player[playerid][uMoney],Player[playerid][uName]);
		mysql_tquery(1, vb_string, "", "");
		format(vb_string,sizeof(vb_string),"UPDATE gb_users SET uMoney = '%d' WHERE BINARY uName = '%s'",Player[params[0]][uMoney],Player[params[0]][uName]);
		mysql_tquery(1, vb_string, "", "");

		format(vb_string,sizeof(vb_string),"INSERT INTO `transfer_money` (NameOne,NameTwo,AccountIDOne,AccountIDTwo,Money,Date) VALUES ('%s','%s','%d','%d','%d','%d')", Player[playerid][uName], Player[params[0]][uName], Player[playerid][uID], Player[params[0]][uID], params[1], getdate() );
		mysql_tquery(1, vb_string, "", "");

		format(vb_string,sizeof(vb_string),""gbAccess"Вы передали %s - "cGREEN"$%d",Player[params[0]][uName],params[1]);
		SendClientMessage(playerid,C_GRAY,vb_string);
		format(vb_string,sizeof(vb_string),""gbAccess"%s передал(-а) вам - "cGREEN"$%d",Player[playerid][uName],params[1]);
		SendClientMessage(params[0],C_GRAY,vb_string);

		format(vb_string,sizeof(vb_string),"передал(-а) деньги %s'y",Player[params[0]][uName]);
		MeAction(playerid,vb_string,1);

		format(vb_string, sizeof(vb_string), "[A] Игрок %s[%d][%s] передал деньги игроку %s[%d][%s] в размере %d", Player[playerid][uName], playerid, Player[playerid][uIP], Player[params[0]][uName], params[0], Player[params[0]][uIP], params[1]);
		SendAdminMessage(C_LIGHTRED, vb_string);

		ApplyAnimation(playerid,"DEALER", "shop_pay",4.0, 0, 1, 1, 0, 0, 1);
		return 1;
	}
	
CMD:members( playerid, params[] ) {
	if( Player[playerid][uMember] || Player[playerid][uCrimeM] ) {
		SendMes( playerid, C_YELLOW, "Список членов организации онлайн:" );
		foreach(new i : Player) {
			if( Player[i][uMember] == Player[playerid][uMember] && Player[i][uMember] != 0 ) {
				SendMes( playerid, -1, "%s[%d]", Player[i][uName], i );
			}
			else if( Player[playerid][uCrimeM] == Player[i][uCrimeM] && Player[i][uCrimeM] ) {
				SendMes( playerid, -1, "%s[%d]", Player[i][uName], i );
			}
		}
	}
	else SendMes( playerid, C_GRAY, ""gbError"У вас нет доступа к данной команде!");
	return true;
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
		if( sscanf( params, "u", params[0] )) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /frisk [ ID игрока ]" );
		if( GetDistanceBetweenPlayers( playerid, params[0]) > 3.0 
			|| GetPlayerVirtualWorld( playerid ) != GetPlayerVirtualWorld( params[0] ) ) return SendMes( playerid, C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if( Player[playerid][uMember] == 1 || Player[playerid][uMember] == 2 || Player[playerid][uMember] == 8 ) {
			if(Player[playerid][uIsPlayerJob][0] == 1) {
				for(new i; i != MAX_SLOTS; i++) {
					if( !Inv[params[0]][invSlot][i] ) continue;
					format( gb_string, sizeof gb_string, ""gbInfo"%s\t%d{ffffff}\n", 
						_itemsInfo[ Inv[params[0]][invSlot][i] ][invName], Inv[ params[0] ][invSlotKol][i]);
					strcat( vb_string, gb_string );
				}
				showPlayerDialog( playerid, 9999, 0, ""gbAccess"При обыске найдено:", vb_string, "Закрыть", "" );
				SendMes( params[0], -1, ""gbInfo"(( Игрок %s обыскал вас ))", Player[playerid][uName] );
			}
			return 1;
		}
		setData( params[0], "PlayerFrisk", playerid );
		SendMes( playerid, -1, "{1081C7}>> {FAEBD7}Вы предложили игроку %s обыскать его", Player[params[0]][uName] );
		SendMes( playerid, -1, "{1081C7}>> {FAEBD7}Игрок %s хочет обыскать вас", Player[playerid][uName]);
		SendMes( playerid, -1, "{1081C7}>> {FAEBD7}Нажмите {33AA33}Y{FAEBD7}, чтобы согласиться или {FF6347}N{FAEBD7}, чтобы отказаться");
		return 1;
	}
	CMD:givelic( playerid, params[] )
	{
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "dd", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /givelic [ ID игрока ] [ Цена ]");
		if(F::[Player[playerid][uMember]][fRank][5] > Player[playerid][uRank]) return SendClientMessage(playerid,C_GRAY,""gbError"Ваш ранг не достаточен!");
		if(Player[params[0]][uMoney] < params[1]) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно средств для покупки лицензии!");
		if(Player[params[0]][uLicenses][3] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"У игрока уже есть лицензия на оружие!");
		if(Player[params[0]][uTicket]) return SendClientMessage(playerid,C_GRAY,""gbError"У игрока есть неоплаченный штраф, оплатите его в участке полиции!");
		if(Player[params[0]][uLicensesTake][3] > getdate()) return SendClientMessage(playerid, -1, ""gbError"Лицензия игрока временно конфискована. Выдать новую нельзя!");
		SetPVarInt(params[0], "SellLicPrice", params[1]);
		format(vb_string, sizeof(vb_string), "{ffffff}Вы действительно хотите купить лицензию на оружие за "cGREEN"%d$", params[1]);
		showPlayerDialog(params[0],d_police + 1,0," ",vb_string,"Да","Нет");
		return true;
	}
	CMD:takelic( playerid, params[] ) {
		new strings[100];
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /takelic [ ID игрока ]");
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
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /take [ ID игрока ]");
		if(Player[playerid][uRank] < 2) return SendClientMessage(playerid,C_GRAY,""gbError"Доступно только с 2-ого ранга!");
		showPlayerDialog(playerid,d_police + 6,2,"Что конфисковать","\
		1. Водительские права (От 1 до 3 дней)\n\
		2. Права на водное т/с (от 1 до 3 дней)\n\
		3. Права на возжушное т/с ( от 1 до 3 дней)\n\
		4. Лицензия на оружие ( от 3 до 7 дней)\
		","Дальше","Закрыть");
		SetPVarInt(playerid, "ChooseHero", params[0]);
		return 1;
	}
	CMD:ticket( playerid, params[] ) {
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "dds[32]", params[0], params[1], params[2])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ticket [ ID игрока ] [ Сумма ] [ Причина ]");
		if(params[1] < 1 || params[1] > 10000) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ticket [ ID игрока ] [ Сумма ] [ Причина ]");
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
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /cuff [ ID игрока ]");
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
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /uncuff [ ID игрока ]");
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
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /eject [ ID игрока ]");
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
		
		showPlayerDialog(playerid,d_mdc,2," ", vb_string, "Дальше", "Закрыть");
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
				if(vehicleid >= firecar[0] && vehicleid <= firecar[1]) {}
				else return SendClientMessage(playerid,C_GRAY,""gbError"Вы находитесь не в служебном авто!");
				if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /m [ текст ]");
				format(vb_string,sizeof(vb_string),"[Мегафон %s]: %s", Player[playerid][uName],params[0]);
				ProxDetector(30.0, playerid,vb_string,C_YELLOW,C_YELLOW,C_YELLOW,C_YELLOW,C_YELLOW);
			}
			
			default: return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		}
		return 1;
	}
	CMD:taser( playerid, params[] ) {
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(Player[playerid][uIsPlayerJob][0] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы должны находиться на службе!");
		if(!GetPVarInt(playerid, "Tazer"))
		{
			SetPVarInt(playerid, "Tazer", 1);
			givePlayerWeapon(playerid, 23, 2);
			MeAction(playerid,"достал тазер",1);
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
			MeAction(playerid,"убрал тазер",1);
			SendClientMessage(playerid,C_GRAY,""gbAccess"Вы убрали тазер!");
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
	
	CMD:callsign( playerid, params[] ) {
		new vehicleid = GetPlayerVehicleID(playerid);
		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, -1,""gbError"Вы не находитесь в машине");
		if(sscanf(params, "s[48]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /callsign [ текст ]");
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
					vehicle3Dtext[vehicleid] = CreateDynamic3DTextLabel(params[0], -1, -1.0, -2.8, 0.0, 35.0, INVALID_PLAYER_ID, vehicleid);
					
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
						DestroyDynamic3DTextLabel(vehicle3Dtext[vehicleid]);
						
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
						case 426, 416, 482: vehicle3Dtext[vehicleid] = CreateDynamic3DTextLabel(params[0], -1, -1.0, -3.4, 0.0, 35.0, INVALID_PLAYER_ID, vehicleid);

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
						DestroyDynamic3DTextLabel(vehicle3Dtext[vehicleid]);
						
					vehiclecallsign[vehicleid] = 0;
					SendClientMessage(playerid, -1, ""gbInfo"Ваша маркировка была удалена.");
				}
			}
		}
		else if(Player[playerid][uMember] == 5)
		{
			if(vehicleid >= firecar[0] && vehicleid <= firecar[1]) {}
			else return SendClientMessage(playerid,C_GRAY,""gbError"Вы находитесь не в служебном авто!");
			switch(vehiclecallsign[GetPlayerVehicleID(playerid)])
			{
				case 0:
				{

					switch(GetVehicleModel(vehicleid))
					{
						case 403,407,416,417,426,428,431,473,487,490,495,497,544,563,573,579: vehicle3Dtext[vehicleid] = CreateDynamic3DTextLabel(params[0], -1, -1.0, -3.4, 0.0, 35.0, INVALID_PLAYER_ID, vehicleid);
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
						DestroyDynamic3DTextLabel(vehicle3Dtext[vehicleid]);

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
				vehiclecallsign[params[0]] = 0;
			}
			SendClientMessage(playerid, C_GRAY, ""gbInfo"Ваша маркировка была удалена.");
			return true;
		}
		else SendClientMessage(playerid,C_GRAY,""gbError"Сотрудник не устанавливал маркировку");
		return 1;
	}
	
	CMD:leaders( playerid, params[] ) {
		format( vb_string, sizeof vb_string, "Название организации >> Лидер\n\n");
		foreach(new i: Player) {
			if(Player[i][uLeader] != 0 && !strcmp(F::[Player[i][uLeader]][fLeader], Player[i][uName], true)) format( vb_string, sizeof vb_string, ""gbInfo"%s%s - %s\n", vb_string, F::[Player[i][uMember]][fName], F::[Player[i][uMember]][fLeader]);
		}
		showPlayerDialog(playerid,9999,0," ", vb_string,"Закрыть","");
		return 1;
	}
	
	CMD:wanted( playerid, params[] ) {
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2 ) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		new nation[64];
		new zStr[1024];
		format(zStr, sizeof(zStr), "Имя преступника\tУровень розыска\tРаса\tВозраст\n");
		foreach(new i: Player) {
			if(Player[i][uSuspect] <= 0) continue;
			switch(Player[i][uNation]) {
				case 1: nation = "Американец";
				case 2: nation = "Латиноамериканец";
				case 3: nation = "Русский";
				case 4: nation = "Француз";
				case 5: nation = "Итальянец";
				case 6: nation = "Испанец";
				case 7: nation = "Немец";
				case 8: nation = "Португалец";
				case 9: nation = "Австралиец";
				case 10: nation = "Колумбиец";
				case 11: nation = "Мексиканец";
				case 12: nation = "Китаец";
				case 13: nation = "Японец";
				case 14: strcat(nation,"Бразилец");
				case 15: strcat(nation,"Кореец");
				case 16: strcat(nation,"Въетнамец");
				case 17: strcat(nation,"Чех");
				case 18: strcat(nation,"Британец");
				case 19: strcat(nation,"Голландец");
				case 20: strcat(nation,"Поляк");
			}
			format(zStr, sizeof(zStr), "{FFFFFF}%s%s\t\t%d\t\t%s\t\t%d\n",zStr,Player[i][uName],Player[i][uSuspect],nation,Player[i][uAge]);
		}
		showPlayerDialog(playerid, 9999, DIALOG_STYLE_TABLIST_HEADERS, "Список преступников", zStr, "Закрыть", "");
		return 1;
	}
	CMD:su( playerid, params[] ) {
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "dds[32]", params[0],params[1],params[2])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /su [ ID игрока ] [ кол-во ] [ текст ]");
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
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unsu [ ID игрока ]");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет в штате!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		Player[params[0]][uSuspect] = 0;
		SetPlayerWantedLevel(params[0],Player[params[0]][uSuspect]);
		nowUpdateInfo(params[0], "d" , "gb_users" , "uName" , "uSuspect" , Player[params[0]][uSuspect]);
		format(vb_string,sizeof(vb_string),""gbAccess"%s снял(-а) вам уровень розыска!",Player[playerid][uName]);
		SendClientMessage(params[0],C_GRAY,vb_string);
		format(vb_string,sizeof(vb_string),""gbAccess"Вы сняли уровень розыска - %s",Player[params[0]][uName]);
		SendClientMessage(playerid,C_GRAY,vb_string);
		return 1;
	}
	//SetPlayerColor(playerid,FracColor[0]);
	CMD:clist( playerid, params[] ) {
		if(Player[playerid][uMember] == 0) return true;
		if(GetPVarInt(playerid, "PlayerColor") == 1)
		{
			SetPlayerColor(playerid, FracColor[Player[playerid][uMember]]);
			SetPVarInt(playerid, "PlayerColor", 0);
		}
		else
		{
			SetPVarInt(playerid, "PlayerColor", 1);
			SetPlayerColor(playerid,FracColor[0]);
		}
		return true;
	}
	
	CMD:copattach( playerid, params[] )
	{
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		new strings[2048];
		strcat(strings, "1. Бронежилет\n");
		strcat(strings, "2. Жетон Полицейского\n3. Рация [Пояс]\n4. Рация [Левое плечо]\n");
		strcat(strings, "5. Рация [Правое плечо]\n6. Рация [Спина]\n7. Жилет высокой видимости\n");
		strcat(strings, "8. Шлем\n9. Шлем мотоциклиста\n10. Кепка ""POLICE""\n11. Кепка ""POLICE""\n12. Очистить все объекты");
		showPlayerDialog(playerid,3003,DIALOG_STYLE_LIST, "Список объектов", strings, "Выбрать", "Отмена");
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
	CMD:attach( playerid, params[] ) {
		if(Player[playerid][uMember] != 8 && Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /attach [ ID игрока ]");
		if(GetPVarInt(params[0],"playerCuffed") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок должен быть в наручниках!");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(GetPVarInt(playerid,"follow") != INVALID_PLAYER_ID) return SendClientMessage(playerid,C_GRAY,""gbError"Вы уже ведёте за собой кого-то!");
		SetPVarInt(playerid,"follow",params[0]);
		SetPVarInt(params[0],"follow",playerid);
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы заставили этого человека идти за вами! (( "cBLUE"/unattach{ffffff} - отпустить ))");
		format(vb_string,sizeof(vb_string),""gbInfo"%s %s заставил(-а) вас идти за ним(ней)!",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName]);
		SendClientMessage(params[0],C_GRAY,vb_string);
		togglePlayerControllable(params[0],true);
		format(vb_string,sizeof(vb_string),"ведёт за собой %s",Player[params[0]][uName]);
		MeAction(playerid,vb_string,1);
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
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unattach [ ID игрока ]");
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
            format(vb_string, sizeof(vb_string), "~y~Time~w~%02d:%02d~n~~y~Date: ~w~%02d/%02d/%d~n~~w~Min to PayCheck %d", Hour, Minute, Day, Month, Year, 60 - Player[playerid][uPayTime]);
			GameTextForPlayer(playerid, vb_string, 5000, 1);
		} 
		else
		{
			format(vb_string,sizeof(vb_string),"{ffffff}| Информация о времени и дате:\n\n"cGRAY"Время: %02d:%02d\n\
			Дата: %02d/%02d/%d\n\nВремя в КПЗ: %d сек.\nВремя в Де Моргане: %d мин.\nВремя до снятия мута: %d мин.\n\
			Время до снятия OOC мута: %d мин.\nВремени в игре: %d ",
			Hour, Minute, Day, Month, Year, Player[playerid][uJailTime],Player[playerid][uDMJail],Player[playerid][uMute], 
			Player[playerid][uBMute], Player[playerid][uPayTime] );
			
            showPlayerDialog(playerid,9999,0," ",vb_string,"Закрыть","");
		}
		ApplyAnimation(playerid,"COP_AMBIENT","Coplook_watch",4.1,0,0,0,0,2000,1);
	    MeAction(playerid,"посмотрел(-а) на часы",1);
	    return 1;
	}
	//
	CMD:vfuel( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 3) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
        if(sscanf(params, "dd", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /vfuel [ veh ] [ params ]");
        V::[params[0]][vFuel] = params[1];
		return 1;
	}
	CMD:vrepair( playerid, params[] )
	{
	    if(Player[playerid][uAdmin] < 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
        if(sscanf(params, "df", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /vrepair [ vehid ] [ params ]");
        if(!IsValidVehicle(params[0])) return SendClientMessage(playerid, C_GRAY,""gbError"Этого авто не сущетсвует!");
        if(params[1] > 1000.0 || params[1] <= 0.0) return SendClientMessage(playerid, C_GRAY,""gbError"Неверный параметр!");
        setVehicleHealth(params[0],params[1]);
        format(vb_string, sizeof(vb_string), "Вы установили транспорту ID: %d HP - %f", params[0], params[1]);
        SendClientMessage(playerid, C_GRAY, vb_string);
		return 1;
	}
	CMD:vspawn( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
        if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /vspawn [ veh ]");
        SetVehicleToRespawn(params[0]);
		return 1;
	}
	CMD:getcar( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	    if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /getcar [ id ( /dl) ]");
	    new Float:p[3];
     	GetPlayerPos(playerid,p[0],p[1],p[2]);
		setVehiclePos(params[0],p[0],p[1],p[2]);
	    return 1;
	}
	CMD:getbuycar( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	    if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /getbuycar [ veh ]");
	    new Float:p[3];
	    for(new i; i != MAX_CARS_BUY; i ++) {
	        if(Car::[i][cID] == 0 || Car::[i][cModel] == 0) continue;
	        if(Car::[i][cID] == params[0])
			{
	            GetPlayerPos(playerid,p[0],p[1],p[2]);
				setVehiclePos(Car::[i][cCar],p[0],p[1],p[2]);
				LinkVehicleToInterior(Car::[i][cCar], 0);
				SetVehicleVirtualWorld(Car::[i][cCar], 0);
				break;
	        }
	    }
	    return 1;
	}
	
	CMD:fixcar( playerid, params[] ) {
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /fixcar [ номер авто ]");
  		for(new i; i != MAX_CARS_BUY; i++)
		{
		    if(Car::[i][cModel] == 0 || Car::[i][cID] == 0) continue;
 			if(Car::[i][cID] == params[0])
 			{
    			if(strcmp(Car::[i][cOwner], Player[playerid][uName], true) == 0)
				{
				    if(IsPlayerInVehicle(playerid, Car::[i][cCar])) return SendClientMessage(playerid, -1, ""gbError"Нельзя использовать команду находясь в своем т/с");
				    if(Car::[i][cUgon]) return SendClientMessage(playerid,C_GRAY,""gbError"Ваше авто угнано, вы можете обратиться в полицию.");
    				if(IsVehicleOccupied(Car::[i][cCar])) return SendClientMessage(playerid,C_GRAY,""gbError"Нельзя использовать данную команду, находясь в т/с!");
      	    		SetVehicleZAngle(Car::[i][cCar], Car::[i][cPos][3]);
        	    	setVehiclePos(Car::[i][cCar], Car::[i][cPos][0], Car::[i][cPos][1], Car::[i][cPos][2]);
         	    	SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно вернули свой автомобиль, туда где Вы его припарковали!");
					break;
				}
			}
		}
		return 1;
	}
	CMD:park( playerid, params[] ) {
		if(IsPlayerInAnyVehicle(playerid)) {
	        if(V::[GetPlayerVehicleID(playerid)][vBuyingCar] != -1) {
	            new i = V::[GetPlayerVehicleID(playerid)][vBuyingCar];
	            if(strcmp(Car::[i][cOwner], Player[playerid][uName], true) == 0) {
					GetVehiclePos(GetPlayerVehicleID(playerid),Car::[i][cPos][0],Car::[i][cPos][1],Car::[i][cPos][2]);
					GetVehicleZAngle(GetPlayerVehicleID(playerid),Car::[i][cPos][3]);

					format( query, sizeof query,"UPDATE `gb_cars` SET `cPosition` = '%f|%f|%f|%f',`cStatus` = '%d' WHERE `cID` = %d",
					Car::[i][cPos][0],Car::[i][cPos][1],Car::[i][cPos][2],Car::[i][cPos][3],Car::[i][cStatus][0],Car::[i][cID]);
					mysql_tquery( mysql, query );
					format( query, sizeof query,"%f|%f|%f",V::[GetPlayerVehicleID(playerid)][vFuel],V::[GetPlayerVehicleID(playerid)][vMile],V::[GetPlayerVehicleID(playerid)][vHealth]);
					SetCarStr( Car::[i][cID], "cFloating", query);
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно припарковали свой автомобиль!");
                    SetVehicleZAngle(GetPlayerVehicleID(playerid), Car::[i][cPos][3]);
         	    	setVehiclePos(GetPlayerVehicleID(playerid),Car::[i][cPos][0],Car::[i][cPos][1],Car::[i][cPos][2]);
					//SetVehicleToRespawn(GetPlayerVehicleID(playerid));
				}
			}
			else SendClientMessage(playerid,C_GRAY,""gbError"Это не ваш транспорт!");
		}
		else SendClientMessage(playerid,C_GRAY,""gbError"Вы не находитесь в автомобиле!");
	    return 1;
	}

	CMD:fermnone( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 5) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
        _dropFerm = 0;
        SendClientMessage(playerid,C_GRAY,"Вы обнулили все мешки на фермер!");
		return 1;
	}
	
	/* забыл добвить */
	
	CMD:job( playerid, params[] ) {
		if(D::[playerid][dFermClassDuty] != 0) return showPlayerDialog(playerid,d_ferm + 3,2,"Ферма","1. "cGRAY"Информация о ферме{ffffff}\n2. "cGRAY"Список рабочих фермы","Дальше","Закрыть");
        if(D::[playerid][dWoodsDuty] != 0) return showPlayerDialog(playerid,d_woods + 1,2,"Лесопилка","1. "cGRAY"Информация о лесопилке{ffffff}\n2. "cGRAY"Список рабочих лесопилки","Дальше","Закрыть");
		switch(Player[playerid][uJob]) {
			case 1: {
				new car = GetPlayerVehicleID(playerid);
				if(IsPlayerInAnyVehicle(playerid)) {
					if(GetPlayerVehicleSeat(playerid) == 0) {
						if(car >= ataxils[0] && car <= ataxils[1]) {
							if(V::[car][vTaxiDriver] == playerid && D::[playerid][dTaxiKey] == car && D::[playerid][dTaxiDuty] == true)
					    	showPlayerDialog(playerid,d_taxi + 1,2,"Инструменты","1. "cGRAY"Включить счётчик{ffffff}\n2. "cGRAY"Изменить тариф{ffffff}\n3. "cGRAY"Выключить счётчик{ffffff}\n4. "cGRAY"Закончить рабочий день","Дальше","Закрыть");
						}
					}
				}
			}
	        case 2: showPlayerDialog(playerid,d_bus + 2,2,"Информационное окно","1. "cGRAY"Информация о стаже{ffffff}\n2. "cGRAY"Кол-во автобусов на маршрутах","Дальше","Закрыть");
	        case 3: {
	        	switch(GetVehicleModel(GetPlayerVehicleID(playerid))) {
	        		case 498,456,499,414: showPlayerDialog(playerid,d_daln + 4,2,"Информационное окно","1. "cGRAY"Список бизнесов заказавших товары","Дальше","Закрыть");
	        		default: showPlayerDialog(playerid,d_daln + 3,2,"Информационное окно","1. "cGRAY"Информация о стаже{ffffff}\n2. "cGRAY"Общая информация о материалах","Дальше","Закрыть");
	        	}
	        }
	        default: SendClientMessage(playerid,C_GRAY,""gbError"По вашей работе нет информации в базе данных.");
	    }
	    return 1;
	}
	CMD:me( playerid, params[] ) {
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
	    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /me [ действие ]");
		MeAction(playerid,params[0],0);
		return 1;
	}
	CMD:ame( playerid, params[] ) {
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
	    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ame [ действие ]");
		format(vb_string,sizeof(vb_string),"> %s %s",Player[playerid][uName],params[0]);
		SendClientMessage(playerid,0xE75480FF,vb_string);
		MeAction(playerid,params[0],1);
		return 1;
	}
	CMD:do( playerid, params[] ) {
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
	    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /do [ действие ]");
	    if(GetPVarInt(playerid,"playerAdmin") == 1) {
			SendClientMessage(playerid,C_GRAY,""gbError"Администратор не может писать в IC чат!");
			return 1;
		}
		DoAction(playerid,params[0]);
		return 1;
	}
	CMD:todo( playerid, params[] )
	{
	    if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
        if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /todo [ текст ] * [ действие ]");
		if(strfind( params , "*" , true ) == -1 ) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /todo [ текст ] * [ действие ]");
	    new arrCoords[2][128];
	    sscanf(params[0],"p<*>s[128]s[128]",arrCoords[0],arrCoords[1]);
	    if(Player[playerid][uSex] == 1) format(vb_string, sizeof(vb_string), "\"%s\", - сказал %s,{E75480} %s",arrCoords[0], Player[playerid][uName],arrCoords[1]);
	    else format(vb_string, sizeof(vb_string), "\"%s\", - сказала %s,{E75480} %s",arrCoords[0], Player[playerid][uName],arrCoords[1]);
		ProxDetector(30.0, playerid, vb_string, COLOR_FADE1,COLOR_FADE2,COLOR_FADE3,COLOR_FADE4,COLOR_FADE5);
		return true;
	}
	CMD:try( playerid, params[] ) {
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
	    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /try [ действие ]");
		TryAction(playerid,params[0]);
		return 1;
	}
	CMD:w( playerid, params[] ) {
	    if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
	    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /w [ текст ]");
	    if(GetPVarInt(playerid,"playerAdmin") == 1) {
			SendClientMessage(playerid,C_GRAY,""gbError"Администратор не может писать в IC чат!");
			return 1;
		}
	    format(vb_string, sizeof(vb_string), "%s(%d) шепчет: %s", Player[playerid][uName], playerid, params[0]);
  		ProxDetector(3.0, playerid, vb_string,COLOR_FADE3,COLOR_FADE3,COLOR_FADE3,COLOR_FADE3,COLOR_FADE3);
	    return 1;
	}
	CMD:b( playerid, params[] ) {
	    if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но Вам запрещено писать что-то!");
	    if(Player[playerid][uBMute] != 0) return SendClientMessage(playerid, C_GRAY, ""gbError"Простите, но Вам запрещено писать что-то!");
	    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /b [ текст ]");
		format(vb_string, sizeof(vb_string), "(( %s(%d): %s ))", Player[playerid][uName], playerid, params[0]);
  		ProxDetector(15.0, playerid, vb_string, COLOR_FADE1, COLOR_FADE2, COLOR_FADE3, COLOR_FADE4, COLOR_FADE5, 1);
		return 1;
	}
	CMD:s( playerid, params[] ) {
	    if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
	    if(Player[playerid][uJailSettings][2] != 0 || Player[playerid][uJailSettings][4] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не в состоянии говорить что-то!");
	    if(GetPVarInt(playerid,"playerAdmin") == 1) {
			SendClientMessage(playerid,C_GRAY,""gbError"Администратор не может писать в IC чат!");
			return 1;
		}

	    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /s [ текст ]");
	    format(vb_string, sizeof(vb_string), "%s(%d) кричит: %s", Player[playerid][uName], playerid, params[0]);
	    ProxDetector(35.0, playerid, vb_string,COLOR_FADE1,COLOR_FADE2,COLOR_FADE3,COLOR_FADE4,COLOR_FADE5);
	    if(!IsPlayerInAnyVehicle(playerid)) ApplyAnimation(playerid,"RIOT","RIOT_shout",4.0, 0, 1, 1, 0, 0, 1);
	    return 1;
 	}
	CMD:action( playerid, params[] ) {
	    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /action [ текст ]");
	    if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
	    if(GetPVarInt(playerid,"PlayerUseAction") != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы уже устанавливали действие своего персонажа. (( "cBLUE"/dellaction "cGRAY"))");
	    format(vb_string,sizeof(vb_string),"%s\n(( %s[%d] ))",params[0],Player[playerid][uName],playerid);
	    new Float:p[3];
	    GetPlayerPos(playerid,p[0],p[1],p[2]);
	    SetPVarInt(playerid,"playerUseAction",1);
	    SetPVarInt(playerid,"playerTextAction",_:CreateDynamic3DTextLabel(vb_string,0xE75480FF,p[0],p[1],p[2],10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,-1,GetPlayerVirtualWorld(playerid)));
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы установили действие своего персонажа. (( "cBLUE"/dellaction"cGRAY" ))");
        format(vb_string,sizeof(vb_string),"[A] Игрок %s установил действие: %s (( /adellaction %d ))",Player[playerid][uName],params[0],playerid);
		foreach(new i : Player)
		{
		    if(Player[i][uAdmin] >= 1) SendClientMessage(i,C_LIGHTRED,vb_string);
		}
		return 1;
	}
	CMD:adellaction( playerid, params[] ) {
        if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(sscanf(params, "ds[60]", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /adellaction [ ID ] [ причина ]");
		if(GetPVarInt(params[0],"PlayerUseAction") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок не устанавливал какое-либо действие.");
	    else {
	        SetPVarInt(params[0],"playerUseAction",0);
	        
	        if (IsValidDynamic3DTextLabel(Text3D:GetPVarInt(params[0],"playerTextAction")))
	        	DestroyDynamic3DTextLabel(Text3D:GetPVarInt(params[0],"playerTextAction"));
	        	
	        DeletePVar(params[0],"playerTextAction");
	        SendClientMessage(playerid,C_GRAY,""gbAccess"Вы удалили действие данного игрока!");
			format(vb_string,sizeof(vb_string),"%s удалил ваше действие. Причина: %s",Player[playerid][uName],params[1]);
			SendClientMessage(params[0],C_LIGHTRED,vb_string);
	    }
	    return 1;
	}
	CMD:dellaction( playerid, params[] ) {
	    if(GetPVarInt(playerid,"PlayerUseAction") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не устанавливали действие своего персонажа!");
	    else {
	        SetPVarInt(playerid,"playerUseAction",0);
	        if (IsValidDynamic3DTextLabel(Text3D:GetPVarInt(playerid,"playerTextAction")))
	        	DestroyDynamic3DTextLabel(Text3D:GetPVarInt(playerid,"playerTextAction"));
	        DeletePVar(playerid,"playerTextAction");
	        SendClientMessage(playerid,C_GRAY,""gbAccess"Вы удалили действие своего персонажа!");
	    }
	    return 1;
	}
	CMD:pame( playerid, params[] )
	{
	    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid, C_GRAY,""gbInfo"Введите: /pame [ текст ]");
		if(GetPVarInt(playerid, "playerPame") != 0) return SendClientMessage(playerid,C_GRAY,""gbError"У Вас уже установленно описание персонажа!");
  		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
		SetPVarInt(playerid, "playerPame", 1);
		if(strlen(params[0]) > 50)
		{
           	new mess[128];//переменная для форматирования и отправки п.т
           	strmid(mess,params[0],50,128);
            //strmid(vb_string,text,64,128,128);//запишем текст для переноса в переменную
           	strdel(params[0],50,128);//удалим из переменной для записи текста половину текста
           	format(vb_string, sizeof(vb_string), "%s\n%s", params[0], mess);//форматнем для отправки в первое сообщение
           	SetPVarInt(playerid,"playerPameText",_:CreateDynamic3DTextLabel(vb_string, 0xD0D0D0AA, 0.0, 0.0, 0.4, 10.0, playerid));
		}
		else
		{
		    format(vb_string, sizeof(vb_string), "%s", params[0]);
			SetPVarInt(playerid,"playerPameText",_:CreateDynamic3DTextLabel(vb_string, 0xD0D0D0AA, 0.0, 0.0, 0.4, 10.0, playerid));
		}
		SendClientMessage(playerid, C_GRAY, ""gbAccess"Вы успешно установили бесконечное действие над персонажем.");
		SendClientMessage(playerid, C_GRAY, ""gbInfo"Чтобы удалить используйте повторно команду - "cBLUE"(( /dellpame ))");
        format(vb_string,sizeof(vb_string),"[A] Игрок %s установил описание персонажа: %s (( /adellpame %d ))",Player[playerid][uName],params[0],playerid);
		foreach(new i : Player)
		{
		    if(Player[i][uAdmin] >= 1) SendClientMessage(i,C_LIGHTRED,vb_string);
		}
		return true;
	}
	CMD:dellpame( playerid, params[] )
	{
		if(GetPVarInt(playerid, "playerPame") == 0) return SendClientMessage(playerid, C_GRAY, ""gbError"Вы не устанавливали описание персонажа.");
	    SetPVarInt(playerid, "playerPame", 0);
	    
	    if (IsValidDynamic3DTextLabel(Text3D:GetPVarInt(playerid, "playerPameText")))
	    	DestroyDynamic3DTextLabel(Text3D:GetPVarInt(playerid, "playerPameText"));
	    
	    SendClientMessage(playerid, C_GRAY, ""gbAccess"Вы успешно удалили описание персонажа.");
	    return 1;
	}
	CMD:adellpame( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
        if(sscanf(params, "us[128]", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /adpame [ id ] [ текст ]");
		if(GetPVarInt(params[0], "playerPame") == 0) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Данный игрок не использует описание персонажа.");
 		SetPVarInt(params[0], "playerPame", 0);
 		
 		if (IsValidDynamic3DTextLabel(Text3D:GetPVarInt(params[0], "playerPameText")))
	    	DestroyDynamic3DTextLabel(Text3D:GetPVarInt(params[0], "playerPameText"));
	    
	    SendClientMessage(playerid, C_GRAY, ""gbAccess"Вы успешно удалили описание персонажа персонажа.");
   		format(vb_string, sizeof(vb_string), "Администратор %s удалил описание вашего персонажа. Причина: %s", Player[playerid][uName],params[1]);
		SendClientMessage(params[0], C_LIGHTRED, vb_string);
		return 1;
	}
	CMD:caraction( playerid, params[] )
	{
	    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /caraction [ текст ]");
	    if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
	    if(GetPVarInt(playerid, "carAction") != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы уже установили действие транспорта. (( "cBLUE"/dellcaraction "cGRAY"))");
		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, C_GRAY, ""gbError"Для использование данной команды, необходимо находиться в транспорте.");
        if(V::[GetPlayerVehicleID(playerid)][vBuyingCar] == -1) return SendClientMessage(playerid, C_GRAY, ""gbError"Это не Ваш личный транспорт!");
		if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
        {
			format(vb_string, sizeof(vb_string), "%s\n(( %s[%d] ))",params[0],Player[playerid][uName],playerid);
			SetPVarInt(playerid, "carAction", 1);
		    V::[GetPlayerVehicleID(playerid)][vIDAction] = playerid;
		    V::[GetPlayerVehicleID(playerid)][vAction] = true;
		    V::[GetPlayerVehicleID(playerid)][vTextAction] = CreateDynamic3DTextLabel(vb_string, 0xD0D0D0AA, 0.0, 0.0, 0.4, 10.0, INVALID_PLAYER_ID, GetPlayerVehicleID(playerid));
			SendClientMessage(playerid,C_GRAY,""gbAccess"Вы установили действие на транспорт. (( "cBLUE"/dellcaraction"cGRAY" ))");
	        format(vb_string, sizeof(vb_string), "[A] Игрок %s установил действие транспорта: %s (( /adcaraction %d ))",Player[playerid][uName],params[0],GetPlayerVehicleID(playerid));
			SendAdminMessage(C_LIGHTRED, vb_string);
		}
		else SendClientMessage(playerid, C_GRAY, ""gbError"Необходимо находиться на месте водителя для установки действия.");
		return 1;
	}
	CMD:adellcaraction( playerid, params[] )
	{
        if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(sscanf(params, "ds[60]", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /adcaraction [ ID Car ] [ причина ]");
		if(V::[GetPlayerVehicleID(playerid)][vAction] == true)
		{
			SetPVarInt(V::[params[0]][vIDAction], "carAction", 0);
			
			if (IsValidDynamic3DTextLabel(Text3D:V::[params[0]][vTextAction]))
				DestroyDynamic3DTextLabel(Text3D:V::[params[0]][vTextAction]);
				
	        SendClientMessage(playerid,C_GRAY,""gbAccess"Вы удалили действие транспорта игрока!");
			//format(vb_string,sizeof(vb_string),"Администратор %s удалил ваше действие транспорта. Причина: %s",AdminInfo[Player[playerid][uAdmin]],Player[playerid][uName],params[1]);
			//SendClientMessage(V::[params[0]][vIDAction],C_LIGHTRED, vb_string);
			V::[params[0]][vIDAction] = INVALID_PLAYER_ID;
		}
		else SendClientMessage(playerid, C_GRAY, ""gbError"На данном транспорте отсутствует действие.");
	    return 1;
	}
	CMD:dellcaraction( playerid, params[] )
	{
	    if(GetPVarInt(playerid, "carAction") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не устанавливали действие личного транспорта!");
		if(V::[GetPlayerVehicleID(playerid)][vAction] == true)
		{
			SetPVarInt(playerid, "carAction", 0);
	        V::[GetPlayerVehicleID(playerid)][vAction] = false;
	        
	        if (IsValidDynamic3DTextLabel(Text3D:V::[GetPlayerVehicleID(playerid)][vTextAction]))
				DestroyDynamic3DTextLabel(Text3D:V::[GetPlayerVehicleID(playerid)][vTextAction]);
				
	        SendClientMessage(playerid,C_GRAY,""gbAccess"Вы удалили действие личного транспорта.");
	        V::[GetPlayerVehicleID(playerid)][vIDAction] = INVALID_PLAYER_ID;
		}
		else SendClientMessage(playerid, C_GRAY, ""gbError"На данном транспорте отсутствует действие.");
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
						showPlayerDialog(playerid,d_fill,1," ",vb_string,"Дальше","Закрыть");
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
					showPlayerDialog(playerid,d_bizz,2,"Управление бизнесом","1. "cGRAY"Информация о бизнесе{ffffff}\n2. "cGRAY"Улучшения бизнеса{ffffff}\n3. "cGRAY"Настройка бизнеса{ffffff}\n4. "cGRAY"Банковские операции","Дальше","Закрыть");
					message = true;
					SetPVarInt(playerid,"PlayerBizzID",i);
					break;
				}
			}
		}
		if(message == false) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет бизнеса или вы не внутри него!");
		return 1;
	}
	CMD:cpanel( playerid, params[] ) {
		if(!IsPlayerInAnyVehicle(playerid)) return 1;
		if(V::[GetPlayerVehicleID(playerid)][vBuyingCar] != -1) {
		    new i = V::[GetPlayerVehicleID(playerid)][vBuyingCar];
		    if(strcmp(Car::[i][cOwner], Player[playerid][uName], true) == 0) {
				showPlayerDialog(playerid,d_cars + 1,2," ","1. "cGRAY"Информация об автомобиле{ffffff}\n2. "cGRAY"Управление автомобилем{ffffff}\n3. "cGRAY"Продать автомобиль человеку","Дальше","Закрыть");
				SetPVarInt(playerid,"SelectedSlotBuyingCar",i);
			}
		}
		return 1;
	}
	CMD:fpanel( playerid, params[] ) {
		if(Player[playerid][uMember] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вы не состоите какой нибудь организации!");
		//if(strcmp(F::[Player[playerid][uLeader]][fLeader], Player[playerid][uName], true) == 0) {
		switch(Player[playerid][uMember])
		 {
				case 6: showPlayerDialog(playerid,d_frac,2," ","1. "cGRAY"Управление сотрудниками организации{ffffff}\n2. "cGRAY"Настройки организации\n{ffffff}3. "cGRAY"Заспавнить фракционный транспорт\n{ffffff}4. "cGRAY"Управление финансами\n{ffffff}5. "cGRAY"Управление ресурсами","Дальше","Закрыть");
				case 5: showPlayerDialog(playerid,d_frac,2," ","1. "cGRAY"Управление сотрудниками организации{ffffff}\n2. "cGRAY"Настройки организации\n{ffffff}3. "cGRAY"Заспавнить фракционный транспорт","Дальше","Закрыть");
				default: showPlayerDialog(playerid,d_frac,2," ","1. "cGRAY"Управление сотрудниками организации{ffffff}\n2. "cGRAY"Настройки организации\n{ffffff}3. "cGRAY"Заспавнить фракционный транспорт","Дальше","Закрыть");
			}
	//	}
		return 1;
	}
	CMD:damages( playerid, params[] ) {
	    if(sscanf(params, "u", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /damages [ID]");
	    if(GetDistanceBetweenPlayers(playerid,params[0]) > 10.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
        GetInfoAboutDamage(playerid, params[0]);
		return 1;
	}


	
	CMD:slap( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	    if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
        if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /slap [ id ]");
        if(!IsPlayerConnected(params[0]) || Player[params[0]][uAdmin] > Player[playerid][uAdmin]  || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,"Неверный ID игрока!");
        new Float:slx, Float:sly, Float:slz, Float:shealth;
		GetPlayerHealth(params[0], shealth);
	    SetPlayerHealth(params[0], shealth-5);
	    GetPlayerPos(params[0], slx, sly, slz);
	    SetPlayerPos(params[0], slx, sly, slz+5);
	    PlayerPlaySound(params[0], 1130, slx, sly, slz+5);
	    format(vb_string, sizeof(vb_string), "[A] Администратор %s дал пинка %s",Player[playerid][uName], Player[params[0]][uName]);
	    SendAdminMessage(C_LIGHTRED,vb_string);
	    SendClientMessage(params[0], C_LIGHTRED, vb_string);
		return 1;
	}

	CMD:unfreeze( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	    if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unfreeze [ id ]");
	    if(!IsPlayerConnected(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
	    togglePlayerControllable(params[0],true);
	    SendClientMessage(playerid,C_GRAY,"Вы разморозили данного игрока!");
	    return 1;
	}
	CMD:unsp( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		StopRecon(playerid, "~r~SPEC: PANEL IS OFF");
		//Iter_Add( StreamedPlayers[params[0]], playerid );
	    return 1;
	}
	CMD:unmute( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	    if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
	    if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unmute [ id ]");
	    if(!IsPlayerConnected(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
	    if(Player[params[0]][uMute] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У данного игрока нет блокировки чата!");
	    format(vb_string,sizeof(vb_string),"Администратор %s снял молчанку с %s.",Player[playerid][uName],Player[params[0]][uName]);
		SendAdminMessageToAll(C_LIGHTRED,vb_string,params[0]);
	    Player[params[0]][uMute] = 0;
	    nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uMute" , Player[params[0]][uMute]);
	    return 1;
	}

	CMD:mute( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "dds[32]", params[0],params[1],params[2])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /mute [ id ] [ minuts ] [ reason ]");
		if(!IsPlayerConnected(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
		if(params[1] < 1 || params[1] > 600) return SendClientMessage(playerid,C_GRAY,""gbError"Неверное кол-во времени, от 1 до 600 минут!");
		Player[params[0]][uMute] = params[1];
		format(vb_string,sizeof(vb_string),"Администратор %s выдал молчанку %s на %d минут. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1],params[2]);
		SendAdminMessageToAll(C_LIGHTRED,vb_string,params[0]);
		nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uMute" , Player[params[0]][uMute]);
		return 1;
	}
	CMD:bmute( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "dds[32]", params[0],params[1],params[2])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /bmute [ id ] [ minuts ] [ reason ]");
		if(!IsPlayerConnected(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
		if(params[1] < 1 || params[1] > 600) return SendClientMessage(playerid,C_GRAY,""gbError"Неверное кол-во времени, от 1 до 600 минут!");
		Player[params[0]][uBMute] = params[1];
		format(vb_string,sizeof(vb_string),"Администратор %s выдал молчанку OOC чата %s на %d минут. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1],params[2]);
		SendAdminMessageToAll(C_LIGHTRED,vb_string,params[0]);
		nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uBMute" , Player[params[0]][uBMute]);
		return 1;
	}
	CMD:unbmute( playerid, params[] )
	{
	    if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	    if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
	    if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unbmute [ id ]");
	    if(!IsPlayerConnected(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
	    if(Player[params[0]][uBMute] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У данного игрока нет блокировки чата!");
	    format(vb_string,sizeof(vb_string),"Администратор %s снял молчанку OOC x с %s.",Player[playerid][uName],Player[params[0]][uName]);
		SendAdminMessageToAll(C_LIGHTRED,vb_string,params[0]);
	    Player[params[0]][uBMute] = 0;
	    nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uBMute" , Player[params[0]][uBMute]);
	    return 1;
	}
	
	CMD:iban( playerid, params[] )
	{
		if(Player[playerid][uAdmin] <  4) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "us[128]", params[0],params[2])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /iban [ id ] [ reason ]");
		if(!IsPlayerConnected(params[0]) || IsKicked(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
		new ip[32], dates[16], unbandate;
		format(vb_string,sizeof(vb_string),"Администратор %s забанил игрока %s навсегда. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[2]);
		SendAdminMessageToAll(C_LIGHTRED,vb_string,params[0]);
		unbandate = 2145917100;
		new year,month,day;
		getdate(year, month, day);
		format(dates, 16, "%02d.%02d.%04d", day, month, year);
		GetPlayerIp(params[0], ip, 32);
		if(Player[params[0]][uAdmin] > 0)
		{
		    nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "uBanPlayer" , unbandate);
		    SendClientMessage(playerid, C_LIGHTRED, "Вы были заблокированы за блокировку администратора!");
		    SendClientMessage(playerid, C_LIGHTRED, "Чтобы снять блокировку, обратитесь к администратору!");
		    KickEx(playerid);
		}
		Player[params[0]][uBanPlayer] = unbandate;
		nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uBanPlayer" , Player[params[0]][uBanPlayer]);

		format(vb_string,sizeof(vb_string), "INSERT INTO gb_bans (name, ip, bandate, time, unbandate, reason, adminban) VALUES ('%s', '%s', '%s', %d, %d, '%s', '%s')", Player[params[0]][uName], ip, dates, "900", unbandate, params[2], Player[playerid][uName]);
		mysql_tquery(1, vb_string, "", "");
		KickEx(params[0]);
		return 1;
	}

CMD:afk( playerid, params[] ) {
    if( sscanf( params, "u", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /afk [ ID игрока ]" );
    SendMes( playerid, C_GRAY, "%s - %d", Player[ params[0] ][uName], getData( params[0], "PlayerAFK" ) );
	return true;
}