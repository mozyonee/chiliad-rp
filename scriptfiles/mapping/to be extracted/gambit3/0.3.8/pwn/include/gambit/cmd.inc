//if(Player[playerid][uAdmin] > 0 && GetPVarInt(playerid,"playerAdmin") == 0) return true;
new cstring[2048];

CMD:d( playerid, params[] ) {
	if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
	if(Player[playerid][uMember] != 0) {
		if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /d [ желаемый текст ]");
		if(Player[playerid][uJailSettings][2] != 0 || Player[playerid][uJailSettings][4] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не в состоянии говорить что-то в рацию!");
		format(cstring,sizeof(cstring),"[D] %s %s: %s",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName],params[0]);
		foreach (new i : Player) {
			switch(Player[i][uMember]) {
			case 1,2: if(Player[i][uIsPlayerJob][0] == 1 && Player[playerid][uRank] >= 3) SendClientMessage(i,C_RED,cstring);
			case 3: if(Player[i][uIsPlayerJob][1] == 1 && Player[playerid][uRank] >= 3) SendClientMessage(i,C_RED,cstring);
			case 5: if(Player[i][uIsPlayerJob][2] == 1 && Player[playerid][uRank] >= 3) SendClientMessage(i,C_RED,cstring);
			case 6,7: if(Player[playerid][uRank] >= 3) SendClientMessage(i,C_RED,cstring);
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
	format( cstring, sizeof cstring, "подбрасывает игральные кости, выпадает число "cGRAY"%d", random(12) + 1 );
	MeAction(playerid, cstring, 0);
	return true;
}

CMD:object( playerid, params[] )
{
	switch(Player[playerid][uMember])
	{
	case 1,2,3,5:
		{
			strcat(cstring, "Название\tID ограждения\n");
			strcat(cstring, "1. Борды красно-белая полоса\t978\n");
			strcat(cstring, "2. Борды красно-белая полоса\t979\n");
			strcat(cstring, "3. Перекрытие всей дороги\t981\n");
			strcat(cstring, "4. Каталки для парамедиков.\t1997\n");
			strcat(cstring, "5. Бочка перекрытия дороги\t1237\n");
			strcat(cstring, "6. Каменные плиты для перекрытия дороги\t1422\n");
			strcat(cstring, "7. Борт со светящимися лампами на концах\t1423\n");
			strcat(cstring, "8. Маленькое дорожное перекрытие\t1427\n");
			strcat(cstring, "9. Каменная плита для перекрытия дороги\t1434\n");
			strcat(cstring, "Следующая страница >>");
			showPlayerDialog(playerid, d_objectlist, DIALOG_STYLE_TABLIST_HEADERS, " ", cstring, "Выбрать", "Отмена");
		}
	default: SendClientMessage(playerid, -1, ""gbError"Ваша организация не может выставлять объекты!");
	}
	return true;
}

CMD:delobject( playerid, params[] )
{
	switch(Player[playerid][uMember])
	{
		case 1,2,3,5:
		{
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
	format(cstring, sizeof(cstring), "Вы установили игроку %s[%d] время игры", Player[params[0]], params[0]);
	SendClientMessage(playerid, C_GRAY, cstring);
	return true;
}
CMD:getainfo( playerid, params[] )
{
	if(Player[playerid][uAdmin] < 4 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /getainfo [ID]");
	format(cstring, sizeof(cstring), "ID: %d", A::[params[0]][aID]);
	SendClientMessage(playerid, -1, cstring);
	format(cstring, sizeof(cstring), "Владелец: %s", A::[params[0]][aOwner]);
	SendClientMessage(playerid, -1, cstring);
	format(cstring, sizeof(cstring), "Координаты входа: X:%f Y:%f Y:%f", A::[params[0]][aEnterPos][0], A::[params[0]][aEnterPos][1], A::[params[0]][aEnterPos][2]);
	SendClientMessage(playerid, -1, cstring);
	format(cstring, sizeof(cstring), "Координаты выхода: X:%f Y:%f Y:%f", A::[params[0]][aExitPos][0], A::[params[0]][aExitPos][1], A::[params[0]][aExitPos][2]);
	SendClientMessage(playerid, -1, cstring);
	format(cstring, sizeof(cstring), "Стоимость: %d", A::[params[0]][aPrice]);
	SendClientMessage(playerid, -1, cstring);
	format(cstring, sizeof(cstring), "Сейа: %d", A::[params[0]][aSafe]);
	SendClientMessage(playerid, -1, cstring);
	format(cstring, sizeof(cstring), "Дверь: %d", A::[params[0]][aLock]);
	SendClientMessage(playerid, -1, cstring);
	format(cstring, sizeof(cstring), "Баланс: %d", A::[params[0]][aBalance]);
	SendClientMessage(playerid, -1, cstring);
	format(cstring, sizeof(cstring), "Интерьер: %d", A::[params[0]][aInt]);
	SendClientMessage(playerid, -1, cstring);
	format(cstring, sizeof(cstring), "Корпус в общаге: %d", A::[params[0]][aHostel]);
	SendClientMessage(playerid, -1, cstring);
	format(cstring, sizeof(cstring), "Этаж: %d", A::[params[0]][aFloor]);
	SendClientMessage(playerid, -1, cstring);
	return true;
}
	
CMD:setvirt( playerid, params[] )//
{
	if(Player[playerid][uAdmin] < 4 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /setvirt [ID]");
	SetPlayerVirtualWorld(playerid, params[0]);
	format(cstring, sizeof(cstring), "Ваш виртуальный мир был изменен на %d", params[0]);
	SendClientMessage(playerid, -1, cstring);
	return true;
}

CMD:graffiti( playerid, params[] )
{
	new bool:selecttrue;
	for(new i; i != 56; i++)
	{
		if(Inv[playerid][invSlot][i] == 339) selecttrue = true;
	}
	if(selecttrue == false) return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет балончика с краской. Купить его можно в магазине «{4a86b6}Всё для отдыха{ffffff}»");
	ShowSprayMenu(playerid); //вызываем диалог с параметрами граффити
	return true;
}
	
CMD:gfmenu( playerid, params[] )
{
	if(Player[playerid][uAdmin] < 2 || GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	new string2[512], totalcirc = 0, bool: status = false;
	for(new i = 0; i != MAX_SPRAY; i++)
	{
		if(SprayInfo[i][grVarificated] == 0 && strlen(SprayInfo[i][grAuthorName]) > 2)
		{
			if(totalcirc >= 20) break;
			new str2[60];
			format(str2, sizeof(str2), "[%d] — %s\n", totalcirc+1, SprayInfo[i][grAuthorName]);
			strcat(string2, str2);
			totalcirc++;
			status = true;
		}
	}
	if(status == false) return SendClientMessage(playerid,C_GRAY,""gbError"Нет граффити для одобрения!");
	showPlayerDialog(playerid, d_spraytag + 10, DIALOG_STYLE_LIST, " ", string2, "Далее", "Отмена");
	return true;
}
	
CMD:gfids( playerid, params[] )
{
	if(Player[playerid][uAdmin] < 2 || GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	new string2[512], bool: status = false, count = 0;
	for(new i = 0; i != cSprayTag; i++)
	{
		if(IsPlayerInRangeOfPoint(playerid,5.0,SprayInfo[i][grX], SprayInfo[i][grY], SprayInfo[i][grZ]))
		{
			new str2[128];
			format(str2, sizeof(str2), "[ID: %d] %s\n", SprayInfo[i][grID], SprayInfo[i][grAuthorName]);
			strcat(string2, str2);
			status = true;
			count++;
			if(count >= 20) break;
		}
	}
	if(status == false) return SendClientMessage(playerid,C_GRAY,""gbError"Рядом с Вами нет граффити!");
	showPlayerDialog(playerid,9999,0," ",string2,"Закрыть","");
	return true;
}
	
CMD:gfclear( playerid, params[] )
{
	new string2[1024], bool: status = false;
	for(new i = 0; i != cSprayTag; i++)
	{
		if(!strcmp(SprayInfo[i][grAuthorName],Player[playerid][uName],true))
		{
			new str2[128];
			format(str2, sizeof(str2), "[Mysql ID: %d] %s\n", SprayInfo[i][grID], SprayInfo[i][grText]);
			strcat(string2, str2);
			status = true;
		}
	}
	if(status == false) return SendClientMessage(playerid,C_GRAY,""gbError"Вы еще не рисовали граффити!");
	showPlayerDialog(playerid,d_spraytag + 12,DIALOG_STYLE_LIST," ",string2,"Далее","Закрыть");
	return true;
}
	
CMD:gfdell( playerid, params[] )
{
	if(Player[playerid][uAdmin] < 2 || GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /gfdell [Mysql ID]"), SendClientMessage(playerid,C_GRAY,""gbInfo"Просмотреть список граффити в 5-ти метрах можно командой /gfids");
	new id, bool: status = false;
	for(new i; i != MAX_SPRAY; i++)
	{
		if(SprayInfo[i][grID] == params[0])
		{
			id = i;
			status = true;
			break;
		}
	}
	if(status == false) return SendClientMessage(playerid,C_GRAY,""gbError"Не найдено граффити с таким ID");
	if(IsValidDynamicObject(SprayInfo[id][grObject]))
	{
		DestroyDynamicObject(SprayInfo[id][grObject]);
	}
	for(new Grnfo:i; i < Grnfo; ++i) SprayInfo[id][i] = 0;
	SendClientMessage(playerid, -1, "Вы удалили граффити!");
	new string2[215];
	format(string2,sizeof(string2),"DELETE FROM `gb_spraytag` WHERE `sID` = %d", params[0]);
	mysql_tquery(mysql, cstring, "", "");
	cSprayTag--;
	return true;
}
	
CMD:house( playerid, params[] )
{
	if(Player[playerid][uAdmin] < 5 || GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /house [ID]");
	setPlayerPos(playerid, H::[params[0]-1][hPos][0],H::[params[0]-1][hPos][1],H::[params[0]-1][hPos][2]);
	if(GetPlayerVirtualWorld(playerid) > 0) SetPlayerVirtualWorld(playerid, 0);
	if(GetPlayerInterior(playerid) > 0) SetPlayerInterior(playerid, 0);
	new str[128];
	format(str, sizeof(str), "Вы были телепортированы к дому %d", params[0]);
	SendClientMessage(playerid, -1, str);
	return true;
}

CMD:apartment( playerid, params[] )
{
	if(Player[playerid][uAdmin] < 5 || GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /apartment [ID]");
	setPlayerPos(playerid, K::[params[0]-1][kEnterPos][0],K::[params[0]-1][kEnterPos][1],K::[params[0]-1][kEnterPos][2]);
	if(GetPlayerVirtualWorld(playerid) > 0) SetPlayerVirtualWorld(playerid, 0);
	if(GetPlayerInterior(playerid) > 0) SetPlayerInterior(playerid, 0);
	new str[128];
	format(str, sizeof(str), "Вы были телепортированы к подъезду %d", params[0]);
	SendClientMessage(playerid, -1, str);
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
	if(params[0] > cBizz || params[0] <= 0) return SendClientMessage(playerid,C_GRAY,""gbInfo"Указанного бизнеса не существует");
	if(!strcmp(Bizz::[params[0]-1][bOwner], "None", true)) return SendClientMessage(playerid,C_GRAY,""gbInfo"У данного бизнеса нет владельца!");
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
		ProxDetectorNews(10.0, playerid, str,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1);
		return true;
	}
	//ProxDetector(20.0, playerid, "Автобус отъезжает через 10 секунд.",COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1);
	CMD:mic( playerid, params[] )
	{
		if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /mic [ желаемый текст ]");
		if(IsPlayerInRangeOfPoint(playerid,5.0,391.0675,-1525.2642,33.3489) && Player[playerid][uMember] == 1 || Player[playerid][uMember] == 2 || Player[playerid][uMember] == 3 || Player[playerid][uMember] == 5)
		{
			format(cstring, sizeof(cstring), "[В микрофон] %s", params[0]);
			ProxDetector(30.0, playerid, cstring,C_ORANGE,C_ORANGE,C_ORANGE,C_ORANGE,C_ORANGE);
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
		ProxDetectorNews(10.0, playerid, str,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1);
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
		ProxDetectorNews(1.0, playerid, str,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1);
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
		ProxDetectorNews(10.0, playerid, str,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1,COLOR_FADE1);
		return true;
	}
	CMD:channel( playerid, params[] )
	{
		new bool:selecttrue;
		for(new i; i != 48; i++) {
			if(Inv[playerid][invSlot][i] == 495) selecttrue = true;
		}
		if(selecttrue == false) return SendClientMessage(playerid,C_GRAY,""gbInfo"У вас нет рации! Купить её можно в магазине электроники!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /channel [канал]");
		if(params[0] <= 0 || params[0] > 999) return SendClientMessage(playerid,C_GRAY,""gbInfo"Такого канала не существует! Только от 1 до 999!");
		if(params[0] == 911 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"Этот канал зашифрован!");
		if(params[0] == 922 && Player[playerid][uMember] != 3) return SendClientMessage(playerid,C_GRAY,""gbError"Этот канал зашифрован!");
		if(params[0] == 900 && Player[playerid][uMember] != 6) return SendClientMessage(playerid,C_GRAY,""gbError"Этот канал зашифрован!");
		if(params[0] == 999 && Player[playerid][uMember] != 1) return SendClientMessage(playerid,C_GRAY,""gbError"Этот канал зашифрован!");
		if(params[0] == 933 && Player[playerid][uMember] != 5) return SendClientMessage(playerid,C_GRAY,""gbError"Этот канал зашифрован!");
		Player[playerid][uRadioChanel] = params[0];
		new query[256];
		format(query,sizeof(query),"UPDATE gb_users SET uRadioChanel = '%d' WHERE BINARY uName = '%s'", params[0], Player[playerid][uName]);
		mysql_tquery(1, query, "", "");
		//nowUpdateInfo(playerid, "d" , "gb_users" , "uName" , "uRadioChanel" , Player[params[0]][uRadioChanel]);
		new strs[128];
		format(strs, sizeof(strs), "Вы переключили канал своей рации на %d", params[0]);
		SendClientMessage(playerid, C_GRAY, strs);
		if(Player[playerid][uSettings][8])
		{
			format(cstring,sizeof(cstring),"CHANNEL:     %d~n~SLOT:        %d", Player[playerid][uRadioChanel], Player[playerid][uRadioSubChanel]);
			PlayerTextDrawSetString(playerid,RadioShow[1][playerid],cstring);

		}
		return true;
	}
	CMD:slot( playerid, params[] )
	{
		new bool:selecttrue;
		for(new i; i != 48; i++) {
			if(Inv[playerid][invSlot][i] == 495) selecttrue = true;
		}
		if(selecttrue == false) return SendClientMessage(playerid,C_GRAY,""gbInfo"У вас нет рации! Купить её можно в магазине электроники!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /slot [подканал]");
		if(params[0] <= 1 || params[0] > 99) return SendClientMessage(playerid,C_GRAY,""gbInfo"Такого подканала не существует! Только от 2 до 99!");
		Player[playerid][uRadioSubChanel] = params[0];
		new query[256];
		format(query,sizeof(query),"UPDATE gb_users SET uRadioSubChanel = '%d' WHERE BINARY uName = '%s'", params[0], Player[playerid][uName]);
		mysql_tquery(1, query, "", "");
		//nowUpdateInfo(playerid, "d" , "gb_users" , "uName" , "uRadioSubChanel" , Player[playerid][uRadioSubChanel]);
		new strs[128];
		format(strs, sizeof(strs), "Вы переключили подканал своей рации на %d", params[0]);
		SendClientMessage(playerid, C_GRAY, strs);
		if(Player[playerid][uSettings][8])
		{
			format(cstring,sizeof(cstring),"CHANNEL:     %d~n~SLOT:        %d", Player[playerid][uRadioChanel], Player[playerid][uRadioSubChanel]);
			PlayerTextDrawSetString(playerid,RadioShow[1][playerid],cstring);

		}
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
	CMD:accept( playerid, params[] )
	{
		if(Player[playerid][uMember] == 0)
		{
			switch(Player[playerid][uJob])
			{
				case 1:
				{
					new car = GetPlayerVehicleID(playerid);
					if(D::[playerid][dTaxiDuty] == false) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не начали свой рабочий день водителя такси.");
					if(!(ataxils[0] <= car <= ataxils[1])) return SendClientMessage(playerid,C_GRAY,""gbError"Вы должны находиться в автомобиле, который выдали вам.");
					if(taxicall != -1)
					{
						//if(GetPVarInt(playerid,"NoTaxiAccept") + (300) > gettime()) return SendClientMessage(playerid,C_GRAY,""gbError"Прошло слишком мало времени с момента последнего принятия заказа.");
						if(!IsPlayerConnected(taxicall))
						{
							taxicall = -1;
							return SendClientMessage(playerid,C_GRAY,""gbInfo"Связь с данным человеком была разорвана.");
						}
						new Float:p[3];
						GetPlayerPos(taxicall,p[0],p[1],p[2]);
						SetPlayerCheckpoint(playerid,p[0],p[1],p[2],5.0);
						SendClientMessage(taxicall,C_GRAY,""gbInfo"Один из таксистов принял ваш вызов, ждите на месте.");
						SendClientMessage(playerid,C_GRAY,""gbAccess"Вы приняли вызов, езжайте на красный чекпоинт.");
						//SetPVarInt(playerid,"NoTaxiAccept",gettime());
						foreach (new i : Player)
						{
							if(D::[i][dTaxiDuty] == true)
							{

								if(GetPlayerVehicleID(i) >= ataxils[0] && GetPlayerVehicleID(i) <= ataxils[1])
								{
									format(cstring,sizeof(cstring),"[R] Диспетчер: Хорошо %s, вас поняла, координаты высланы вам на GPS.",Player[playerid][uName]);
									SendClientMessage(i,C_YELLOW,cstring);
								}
							}
						}
						taxicall = -1;
					}
				}
				default: {}
			}
		}
		else
		{
			if(Player[playerid][uMember] == 4) return SendClientMessage(playerid, -1, ""gbError"Ваша организация не может принимать вызовы!");
			new totalcirc = 0, string2[700], bool: status = false;
			string2 = "";
			for(new i = 0; i < MAX_CALLS; i++)
			{
				if(CallInfo[i][cStatus] == true)
				{
					new str2[128];
					str2 = "";
					format(str2, sizeof(str2), "%d. Вызов из: %s\n", totalcirc+1,CallInfo[i][cZone]);
					strcat(string2, str2);
					totalcirc++;
					status = true;
				}
			}
			if(status == false) return SendClientMessage(playerid, -1, ""gbError"Нет активных вызовов!");
			showPlayerDialog(playerid, d_accept + 1, DIALOG_STYLE_LIST, " ", string2, "Далее", "Отмена");
		}
		return true;
	}
	CMD:f( playerid, params[] ) {
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но Вам запрещено писать что-то!");
		if(Player[playerid][uBMute] != 0) return SendClientMessage(playerid, C_GRAY, ""gbError"Простите, но Вам запрещено писать что-то!");
		if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /f [ желаемый текст ]");
		if(Player[playerid][uJailSettings][2] != 0 || Player[playerid][uJailSettings][4] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не в состоянии говорить что-то в рацию!");
		switch(Player[playerid][uMember]) {
			case 1,2: if(Player[playerid][uIsPlayerJob][0] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет с собой рации, возьмите её в шкафчике!");
			case 3: if(Player[playerid][uIsPlayerJob][1] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет с собой рации, возьмите её в шкафчике!");
			case 4,6,7: {}
			case 5: if(Player[playerid][uIsPlayerJob][2] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет с собой рации, возьмите её в шкафчике!");
			default: return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет с собой рации!");
		}
		format(cstring,sizeof(cstring),"(( [F] %s[%d]: %s ))",Player[playerid][uName],playerid,params[0]);
		foreach (new i : Player) {
			if(Player[i][uMember] == 0) continue;
			if(Player[i][uRO] == 1) continue;
			if(Player[i][uMember] == Player[playerid][uMember]) {
				switch(Player[i][uMember]) {
					case 1,2: if(Player[i][uIsPlayerJob][0] == 1) SendClientMessage(i,0x6699FFAA,cstring);
					case 3: if(Player[i][uIsPlayerJob][1] == 1) SendClientMessage(i,0xd6699FFAA,cstring);
					case 5: if(Player[i][uIsPlayerJob][2] == 1) SendClientMessage(i,0x6699FFAA,cstring);
					default: SendClientMessage(i,0x6699FFAA,cstring);
				}
			}
		}
		return 1;
	}
	CMD:lock( playerid, params[] )
	{
		if(sscanf(params, "i", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /lock [ номер ] ( 1 - дом/ 2 - личное авто/ 3 - бизнес/ 4 - рабочее авто  )");
		new Float:p[3];
		if(params[0] == 1)
		{
			new bool: status = false;
			new bool: key = false;
			for(new i; i != cHouses; i ++)
			{
				if(IsPlayerInRangeOfPoint(playerid,2.0,H::[i][hPos][0],H::[i][hPos][1],H::[i][hPos][2]))
				{
					
					for(new g; g != 48; g++)
					{
						if(_itemsInfo[Inv[playerid][invSlot][g]][invID] == 24 &&  Inv[playerid][invSlotKol][g] - 1 == i)
						{
							key = true;
							break;
						}
					}
					if(key == false) return SendClientMessage(playerid, C_GRAY, ""gbError"У Вас нет ключей от этого дома!");
					if(H::[i][hLock] == 0)
					{
						MeAction(playerid,"закрыл(-а) дверь дома",1);
						GameTextForPlayer(playerid, "~r~LOCK", 3000, 3);
						H::[i][hLock] = 1;
					}
					else
					{
						MeAction(playerid,"открыл(-а) дверь дома",1);
						GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3);
						H::[i][hLock] = 0;
					}
					status = true;
					SetHouseInt(H::[i][hID],"hLock",H::[i][hLock]);
					break;
				}
				else if(IsPlayerInRangeOfPoint(playerid,3.0,H::[i][hExPos][0],H::[i][hExPos][1],H::[i][hExPos][2]) && GetPlayerVirtualWorld(playerid) == H::[i][hID])
				{
					for(new g; g != 48; g++)
					{
						if(_itemsInfo[Inv[playerid][invSlot][g]][invID] == 24 &&  Inv[playerid][invSlotKol][g] - 1 == i)
						{
							key = true;
							break;
						}
					}
					if(key == false) return SendClientMessage(playerid, C_GRAY, ""gbError"У Вас нет ключей от этого дома!");
					if(H::[i][hLock] == 0)
					{
						MeAction(playerid,"закрыл(-а) дверь дома",1);
						GameTextForPlayer(playerid, "~r~LOCK", 3000, 3);
						H::[i][hLock] = 1;
					}
					else
					{
						MeAction(playerid,"открыл(-а) дверь дома",1);
						GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3);
						H::[i][hLock] = 0;
					}
					status = true;
					SetHouseInt(H::[i][hID],"hLock",H::[i][hLock]);
					break;
				}
			}
			if(status == false)
			{
				for(new i; i != cApartments; i ++)
				{
					if(IsPlayerInRangeOfPoint(playerid,2.0,A::[i][aEnterPos][0],A::[i][aEnterPos][1],A::[i][aEnterPos][2]) && GetPlayerVirtualWorld(playerid) == A::[i][aHostel])
					{
						for(new g; g != 48; g++)
						{
							if(_itemsInfo[Inv[playerid][invSlot][g]][invID] == 148 &&  Inv[playerid][invSlotKol][g] - 1 == i)
							{
								key = true;
								break;
							}
						}
						if(key == false) return SendClientMessage(playerid, C_GRAY, ""gbError"У Вас нет ключей от этой квартиры!");
						if(A::[i][aLock] == 0)
						{
							MeAction(playerid,"закрыл(-а) дверь квартиры",1);
							GameTextForPlayer(playerid, "~r~LOCK", 3000, 3);
							A::[i][aLock] = 1;
						}
						else
						{
							MeAction(playerid,"открыл(-а) дверь квартиры",1);
							GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3);
							A::[i][aLock] = 0;
						}
						status = true;
						SetApartmentInt(A::[i][aID],"aLock",A::[i][aLock]);
						break;
					}
					else if(IsPlayerInRangeOfPoint(playerid,4.0,A::[i][aExitPos][0],A::[i][aExitPos][1],A::[i][aExitPos][2]) && GetPlayerVirtualWorld(playerid) == A::[i][aID])
					{
						for(new g; g != 48; g++)
						{
							if(_itemsInfo[Inv[playerid][invSlot][g]][invID] == 148 &&  Inv[playerid][invSlotKol][g] - 1 == i)
							{
								key = true;
								break;
							}
						}
						if(key == false) return SendClientMessage(playerid, C_GRAY, ""gbError"У Вас нет ключей от этой квартиры!");
						if(A::[i][aLock] == 0)
						{
							MeAction(playerid,"закрыл(-а) дверь квартиры",1);
							GameTextForPlayer(playerid, "~r~LOCK", 3000, 3);
							A::[i][aLock] = 1;
						}
						else
						{
							MeAction(playerid,"открыл(-а) дверь квартиры",1);
							GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3);
							A::[i][aLock] = 0;
						}
						status = true;
						SetApartmentInt(A::[i][aID],"aLock",A::[i][aLock]);
						break;
					}
				}
			}
		}
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
									format(cstring,sizeof(cstring),"%d|%d|%d|%d|%d|%d|%d",Car::[i][cSettings][0],Car::[i][cSettings][1],Car::[i][cSettings][2],
									Car::[i][cSettings][3],Car::[i][cSettings][4],Car::[i][cSettings][5],Car::[i][cSettings][6]);
									SetCarStr(Car::[i][cID],"cSettings",cstring);
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
										format(cstring,sizeof(cstring),"%d|%d|%d|%d|%d|%d|%d",Car::[i][cSettings][0],Car::[i][cSettings][1],Car::[i][cSettings][2],
										Car::[i][cSettings][3],Car::[i][cSettings][4],Car::[i][cSettings][5],Car::[i][cSettings][6]);
										SetCarStr(Car::[i][cID],"cSettings",cstring);
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
									case 0: format(cstring,sizeof(cstring),"{ffffff}Номер бизнеса: %d\nЗакусочная "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 1: format(cstring,sizeof(cstring),"{ffffff}Номер бизнеса: %d\nБар "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 2: format(cstring,sizeof(cstring),"{ffffff}Номер бизнеса: %d\nРесторан "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 3: format(cstring,sizeof(cstring),"{ffffff}Номер бизнеса: %d\nМагазин одежды "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 4: format(cstring,sizeof(cstring),"{ffffff}Номер бизнеса: %d\nМагазин электроники "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 5: format(cstring,sizeof(cstring),"{ffffff}Номер бизнеса: %d\nАвтосалон "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 6: format(cstring,sizeof(cstring),"{ffffff}Номер бизнеса: %d\nМагазин оружия "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 7: format(cstring,sizeof(cstring),"{ffffff}Номер бизнеса: %d\nМагазин мебели "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 8: format(cstring,sizeof(cstring),"{ffffff}Номер бизнеса: %d\nКлуб "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 9: format(cstring,sizeof(cstring),"{ffffff}Номер бизнеса: %d\nЗаправка "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 10: format(cstring,sizeof(cstring),"{ffffff}Номер бизнеса: %d\nВсе для отдыха "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 11: format(cstring,sizeof(cstring),"{ffffff}Номер бизнеса: %d\nАрента транспорта "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 12: format(cstring,sizeof(cstring),"{ffffff}Номер бизнеса: %d\nСпортзал "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
								}
								UpdateDynamic3DTextLabelText(Bizz::[i][bText],C_BLUE,cstring);
								format(cstring,sizeof(cstring),"%d|%d|%d|%d|%d|%d|%d|%d",Bizz::[i][bSettings][0],Bizz::[i][bSettings][1],Bizz::[i][bSettings][2],
								Bizz::[i][bSettings][3],Bizz::[i][bSettings][4],Bizz::[i][bSettings][5],Bizz::[i][bSettings][6],Bizz::[i][bSettings][7]);
								SetBizzStr(Bizz::[i][bID],"bSettings",cstring);
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
									case 0: format(cstring,sizeof(cstring),"{ffffff}Закусочная "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 1: format(cstring,sizeof(cstring),"{ffffff}Бар "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 2: format(cstring,sizeof(cstring),"{ffffff}Ресторан "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 3: format(cstring,sizeof(cstring),"{ffffff}Магазин одежды "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 4: format(cstring,sizeof(cstring),"{ffffff}Магазин электроники "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 5: format(cstring,sizeof(cstring),"{ffffff}Автосалон "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 6: format(cstring,sizeof(cstring),"{ffffff}Магазин оружия "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 7: format(cstring,sizeof(cstring),"{ffffff}Магазин мебели "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 8: format(cstring,sizeof(cstring),"{ffffff}Клуб "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 9: format(cstring,sizeof(cstring),"{ffffff}Заправка "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 10: format(cstring,sizeof(cstring),"{ffffff}Все для отдыха "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 11: format(cstring,sizeof(cstring),"{ffffff}Арента транспорта "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
									case 12: format(cstring,sizeof(cstring),"{ffffff}Спортзал "cBLUE"\"%s\"{ffffff}\nДвери: %s\n\nALT",Bizz::[i][bID],Bizz::[i][bName],Bizz::[i][bSettings][4] ? (""cRED"Закрыты"cBLUE"") : (""cGREEN"Открыты"cBLUE""));
								}
								UpdateDynamic3DTextLabelText(Bizz::[i][bText],C_BLUE,cstring);
								format(cstring,sizeof(cstring),"%d|%d|%d|%d|%d|%d|%d|%d",Bizz::[i][bSettings][0],Bizz::[i][bSettings][1],Bizz::[i][bSettings][2],
								Bizz::[i][bSettings][3],Bizz::[i][bSettings][4],Bizz::[i][bSettings][5],Bizz::[i][bSettings][6],Bizz::[i][bSettings][7]);
								SetBizzStr(Bizz::[i][bID],"bSettings",cstring);
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
	/**/
	
	CMD:ban( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 3) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "dds[32]", params[0],params[1],params[2])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ban [ id ] [ days ] [ reason ]");
		if(Player[playerid][uAdmin] < 3 && (params[1]< 1 || params[1] > 30)) return SendClientMessage(playerid,C_GRAY,""gbError"Максимальное число дней 30!");
		if(Player[playerid][uAdmin] >= 3 && (params[1] < 1 || params[1] > 299)) return SendClientMessage(playerid,C_GRAY,""gbError"Максимальное число дней от 1 до 299!");
		if(!IsPlayerConnected(params[0]) || IsKicked(params[0]) || params[0] == playerid || Player[playerid][uAdmin] < Player[params[0]][uAdmin] || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
		new ip[32], dates[16], unbandate;
		format(cstring,sizeof(cstring),"Администратор %s забанил игрока %s на %d дней. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1],params[2]);
		SendAdminMessageToAll(C_LIGHTRED,cstring,params[0]);
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
			NewKick(playerid);
		}
		Player[params[0]][uBanPlayer] = unbandate;
		nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uBanPlayer" , Player[params[0]][uBanPlayer]);

		format(cstring,sizeof(cstring), "INSERT INTO gb_bans (name, ip, bandate, time, unbandate, reason, adminban) VALUES ('%s', '%s', '%s', %d, %d, '%s', '%s')", Player[params[0]][uName], ip, dates, params[1], unbandate, params[2], Player[playerid][uName]);
		mysql_tquery(1, cstring, "", "");
		NewKick(params[0]);
		return 1;
	}
	CMD:banip( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 4 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
		new ip[32];
		//if() return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "s[32]s[32]", ip,params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /banip [ip adres] [ reason]");
		//new ip[32], dates[16], unbandate;
		format(cstring,sizeof(cstring),"[A] Администратор %s заблокировал IP: %s. Причина: %s",Player[playerid][uName],ip,params[1]);
		SendAdminMessage(C_LIGHTRED,cstring);
		format(cstring,sizeof(cstring), "INSERT INTO gb_ipbans (uAdminName, uIP, uReason) VALUES ('%s', '%s', '%s')", Player[playerid][uName], ip, params[1]);
		mysql_tquery(1, cstring, "", "");
		return 1;
	}
	CMD:retest( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 3 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
		SendClientMessage(playerid,C_GRAY,""gbInfo"Используйте команду /warn");
		return true;
	}
	CMD:unretest( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 3 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
		if(sscanf(params, "s[32]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unretest [ name ]");
		format(cstring, sizeof(cstring),"SELECT * FROM `gb_users` WHERE BINARY  `uName` = '%s' AND `uRetest` > 0 LIMIT 1", params[0]);
		mysql_tquery(1, cstring, "UnRetestPlayer", "ds", playerid, params[0]);
		return true;
	}
	CMD:unban( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 4) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "s[32]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unban [ name ]");
		mysql_format(1, cstring, sizeof(cstring), "UPDATE `gb_users` SET `uBanPlayer` = '0' WHERE `uName` = '%s'", params[0]);
		mysql_tquery(1, cstring, "", "");
		SendClientMessage(playerid, C_GRAY, ""gbAccess"Вы успешно разбанили игрока!");
		return 1;
	}
	CMD:unbanip( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 4 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
		if(sscanf(params, "s[32]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unbanip [ip adres]");
		format(cstring,sizeof(cstring),"DELETE FROM gb_ipbans WHERE uIP = '%s'", params[0]);
		mysql_tquery(1, cstring, "", "");
		SendClientMessage(playerid, C_GRAY, ""gbAccess"Вы успешно разбанили IP!");
		format(cstring, sizeof(cstring), "[A] Администратор %s разбанил IP: %s", Player[playerid][uName], params[0]);
		SendAdminMessage(C_LIGHTRED, cstring);
		return 1;
	}
	CMD:music( playerid, params[] )
	{
		format( cstring, sizeof cstring, "" );
		if(IsPlayerInRangeOfPoint(playerid, 3.0, GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"))) {
			for( new i; i < sizeof Radio; i++ ) {
				format( cstring, sizeof cstring, "%s%d. %s\n", cstring, i + 1, Radio[i][0] );
			}
			showPlayerDialog(playerid, d_radio + 1, DIALOG_STYLE_LIST, " ", cstring, "Выбрать", "Закрыть");
		}
		return 1;
	}
	CMD:radio( playerid, params[] )
	{
		new _str [ 256 ] ;
		if(IsPlayerInAnyVehicle(playerid))
		{
			if(GetPlayerVehicleSeat(playerid) != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы должны быть за рулём транспортного средства!");
			for( new _r; _r < MAX_RADIO ; ++ _r) format( cstring, sizeof cstring, "%i. "cBLUE"%s\n", _r + 1, Radio[_r][0] ), strcat( _str, cstring );
			strcat( _str,"Выключить\n" );
			showPlayerDialog(playerid, d_radio, DIALOG_STYLE_LIST, " ", _str, "Выбрать", "Закрыть");
		}
		else if(Player[playerid][uRadio])
		{
			if(!Player[playerid][uRadio]) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не включили радио в телефоне!");
			for( new _r; _r < MAX_RADIO ; ++ _r) format( cstring, sizeof cstring, "%i. "cBLUE"%s\n", _r + 1, Radio[_r][0] ), strcat( _str, cstring );
			strcat( _str,"Выключить\n" );
			showPlayerDialog(playerid, d_radio, DIALOG_STYLE_LIST, " ", _str, "Выбрать", "Закрыть");
		}

		return true ;
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
		format(cstring,sizeof(cstring),"Администратор %s посадил игрока %s в Де Морган на %d минут. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1],params[2]);
		SendAdminMessageToAll(C_LIGHTRED,cstring,params[0]);
		nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uDMJail" , Player[params[0]][uDMJail]);

		if(Player[playerid][uIsPlayerJob][0] == 1) Player[playerid][uIsPlayerJob][0] = 0;
		if(Player[playerid][uIsPlayerJob][1] == 1) Player[playerid][uIsPlayerJob][1] = 0;
		if(Player[playerid][uIsPlayerJob][2] == 1) Player[playerid][uIsPlayerJob][2] = 0;
		return 1;
	}
	CMD:giveitem( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 5 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
		if(sscanf(params, "dd", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /giveitem [ id item ] [ item params ]");
		new querysql[512];
		format(querysql,sizeof(querysql),"INSERT INTO `gb_itemlog` (AdminName,ItemID,ItemCount) VALUES ('%s','%d', '%d')", Player[playerid][uName], params[0], params[1]);
		mysql_tquery(1, querysql, "", "");
		new strst[256];
		format(strst, sizeof(strst), "[A] Администратор %s выдал себе предмет %d [Count: %d]", Player[playerid][uName], params[0], params[1]);
		SendAdminMessage(C_LIGHTRED, strst);
		GivePlayerItem(playerid, params[0], params[1]);
		return 1;
	}
	CMD:hevict( playerid, params[] )
	{
		if(Player[playerid][uEvictID] != 0)
		{
			new HouseID = Player[playerid][uEvictID] - 1;
			for(new i; i < 3; i++)
			{
				if(!strcmp(HEvictName[HouseID][i], Player[playerid][uName], true))
				{
					//--------------------------------------------------------------
					strmid(HEvictName[HouseID][i], "None", 0, strlen("None"), MAX_PLAYER_NAME);
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно высилились из дома");
					//--------------------------------------------------------------
					format(cstring,sizeof(cstring),"%s|%s|%s",HEvictName[HouseID][0],HEvictName[HouseID][1],HEvictName[HouseID][2]);
					SetHouseStr(H::[HouseID][hID],"hEvictName",cstring);
					Player[playerid][uEvictID] = 0;
					nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "uEvictID" , Player[playerid][uEvictID]);
					break;
				}
			}
		}
		else SendClientMessage(playerid, -1, ""gbError"Вы не засели в какой либо дом");
		return 1;
	}
	CMD:ahevict( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 3) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(sscanf(params, "u", params[0])) return SendClientMessage(playerid,-1,""gbInfo"Введите: /ahevict [ id ]");
		Player[params[0]][uEvictID] = 0;
		Player[params[0]][uHouseSpawn] = 0;
		nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uEvictID" , Player[params[0]][uEvictID]);
		nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uHouseSpawn" , Player[params[0]][uHouseSpawn]);
		SendClientMessage(params[0],C_GRAY,""gbAccess"Вы успешно выселены из дома!");
		format(cstring, sizeof(cstring), ""gbAccess"Вы успешно выселили %s из дома", Player[params[0]][uName]);
		SendClientMessage(params[0],C_GRAY, cstring);
		return true;
	}
	//**************************
	
	CMD:mycar( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 4) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPlayerInterior(playerid) > 0) return 1;
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
	CMD:evict( playerid, params[] ) {
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /evict [ id ]");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		SetPVarInt(params[0], "PlayerEvict", playerid);
		format(cstring, sizeof(cstring), "{1081C7}>> {FAEBD7}Вы предложили игроку %s поселиться у Вас в доме", Player[params[0]][uName]);
		SendClientMessage(playerid, -1, cstring);
		format(cstring, sizeof(cstring), "{1081C7}>> {FAEBD7}Игрок %s хочет поселить Вас в его дом", Player[playerid][uName]);
		SendClientMessage(params[0], -1, cstring);
		SendClientMessage(params[0], -1, "{1081C7}>> {FAEBD7}Нажмите {33AA33}Y{FAEBD7}, чтобы согласиться или {FF6347}N{FAEBD7}, чтобы отказаться");
		return 1;
	}
	CMD:glock( playerid, params[] ) {

		if(Player[playerid][uRegDate] + (259200) >= gettime()) return SendClientMessage(playerid,C_GRAY,""gbError"Вы должны отыграть 3 дня.");

		if(Player[playerid][uMemberGang] <= 0)
		{
			return SendClientMessage(playerid,C_GRAY,""gbError"Вы не состоите в банде!");
		}
		if(Player[playerid][uLimitUgon] >= getdate()) return SendClientMessage(playerid,C_GRAY,""gbError"Вы уже угоняли автомобиль сегодня!");
		if(IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid,C_GRAY,""gbError"В машине кто-то есть!");
		new Float: p[3];
		new bool:cuff = false;
		for(new i; i != 48; i++) {
			if(Inv[playerid][invSlot][i] == 464) cuff = true;
		}
		if(!cuff) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет отмычек!");
		for(new i; i != MAX_CARS_BUY; i++)
		{
			if(Car::[i][cModel] == 0 || Car::[i][cID] == 0 || !strcmp(Car::[i][cOwner], Player[playerid][uName],true)) continue;
			GetVehiclePos(Car::[i][cCar],p[0],p[1],p[2]);
			if(IsPlayerInRangeOfPoint(playerid, 3.0, p[0],p[1],p[2]))
			{
				if(V::[Car::[i][cCar]][vLock])
				{

					SetPVarInt(playerid, "CarJack", i);
					showPlayerDialog(playerid,d_carjack,0," ",""gbInfo"Вы хотите воспользоваться отмычкой и угнать транспорт ?\n\n"gbError"Данное действие нельзя отменить!","Да","Нет");
				}
				else SendClientMessage(playerid,C_GRAY,""gbAccess"Машина и так уже открыта!");
				break;
			}
		}
		return 1;
	}
	CMD:capture( playerid, params[] ) {
		if(Player[playerid][uMemberGang] == 0 || Gang::[GetGangServer(playerid)][gangType] != 5 && Gang::[GetGangServer(playerid)][gangType] != 6 && Gang::[GetGangServer(playerid)][gangType] != 7) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа к данной команде!");
		printf("!!!!!!!!!!!!!5555555555577");
		if(Gang::[GetGangServer(playerid)][gangGangZone] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"На сегодня вашей группировке больше нельзя захватывать территории!");
		printf("!!!!!!!!!!!!!5555555555588");
		new j = -1;
		new bool: cuff = false;
		if(IsPlayerInRangeOfPoint(playerid, 50.0, 2457.4651,-1901.9833,13.5469))
		{
			cuff = true;
			j = 0;
		}
		if(IsPlayerInRangeOfPoint(playerid, 50.0, 2288.1794,-1104.6497,38.5947))
		{
			cuff = true;
			j = 1;
		}
		if(IsPlayerInRangeOfPoint(playerid, 50.0, 2313.2795,56.3699,26.4844))
		{
			cuff = true;
			j = 2;
		}
		if(IsPlayerInRangeOfPoint(playerid, 50.0, 165.6671,-166.4745,6.7786))
		{
			cuff = true;
			j = 3;
		}
		if(cuff)
		{
			printf("!!!!!!!!!!!!!5555555555111");
			if(GangZone::[j][gzGang] != 0) {
				if(!IsPlayerInBandOnline(GangZone::[j][gzGang])) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не можете напасть на эту территорию! ( Владельцы оффлайн )");
				if(GangZone::[j][gzGang] == Player[playerid][uMemberGang]) return SendClientMessage(playerid,C_GRAY,""gbError"Эта территория принадлежит вашей группировке!");
			}
			if(GangZone::[j][gzAttack] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"На данную территорию уже кто-то напал!");

			Gang::[GetGangServer(playerid)][gangGangZone] --;
			GangZone::[j][gzAttack] = Player[playerid][uMemberGang];
			GangZone::[j][gzTime][0] = 120;
			GangZone::[j][gzTime][1] = 180;
			foreach (new p : Player) {
				if(Player[p][uMemberGang] != 0 && Player[p][uMemberGang] == GangZone::[j][gzGang]) {
					SendClientMessage(p,-1,""gbInfo"На одну из территорий вашей группировки напали, у вас 2 минуты на подготовку.");
					GangZoneFlashForPlayer(p,GangZone::[j][gzZones],C_RED);
				}
				if(Player[p][uMemberGang] != 0 && Player[p][uMemberGang] == Player[playerid][uMemberGang]) {
					SendClientMessage(p,-1,""gbAccess"Ваша группировка напала на чью-то территорию, у вас 2 минуты на подготовку.");
					GangZoneFlashForPlayer(p,GangZone::[j][gzZones],C_RED);
				}
			}
		}
		return 1;
	}
	
	CMD:stats( playerid, params[] ) {

		if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /stats [ id ]");
		new str[80], strs[80];
		format(str, sizeof(str), "{AFAFAF}Имя игрока:        %s [%d]\n", Player[params[0]][uName], Player[params[0]][uID]);
		strcat(cstring,str);
		format(str, sizeof(str), "{AFAFAF}Деньги:               %d$\n", Player[params[0]][uMoney]);
		strcat(cstring,str);
		format(str, sizeof(str), "{AFAFAF}Банк:                %d\n", Player[params[0]][uBank]);
		strcat(cstring,str);
		new sstring[64];
		sstring = "";
		if(Player[params[0]][uSex] == 1) sstring = "Мужской";
		else sstring = "Женский";
		format(str, sizeof(str), "{AFAFAF}Пол:                  %s\n", sstring);
		strcat(cstring,str);
		switch(Player[params[0]][uNation])
		{
			case 1: sstring = "Американец";
			case 2: sstring = "Латиноамериканец";
			case 3: sstring = "Русский";
			case 4: sstring = "Француз";
			case 5: sstring = "Итальянец";
			case 6: sstring = "Испанец";
			case 7: sstring = "Немец";
			case 8: sstring = "Португалец";
			case 9: sstring = "Австралиец";
			case 10: sstring = "Колумбиец";
			case 11: sstring = "Мексиканец";
			case 12: sstring = "Китаец";
			case 13: sstring = "Японец";
			case 14: sstring = "Бразилец";
			case 15: sstring = "Кореец";
			case 16: sstring = "Въетнамец";
			case 17: sstring = "Чех";
			case 18: sstring = "Британец";
			case 19: sstring = "Голландец";
			case 20: sstring = "Поляк";
		}
		format(str, sizeof(str), "{AFAFAF}Национальность:    %s\n", sstring);
		strcat(cstring,str);
		for(new i; i != MAX_HOUSES; i ++)
		{
			if(!strcmp(H::[i][hOwner], Player[params[0]][uName],true) && H::[i][hID] != 0)
			{
				format(str,sizeof(str),"{AFAFAF}Деньги в доме %d: %d$\n",H::[i][hID], H::[i][hMoney]),strcat(cstring,str);
			}
		}
		format(str, sizeof(str), "{AFAFAF}Телефон: %d\n", Player[params[0]][uNumber]);
		strcat(cstring,str);
		format(str, sizeof(str), "{AFAFAF}Варны: %d\n", Player[params[0]][uWarn]);
		strcat(cstring,str);
		format(str, sizeof(str), "{AFAFAF}Розыск: %d\n", Player[params[0]][uSuspect]);
		strcat(cstring,str);
		format(str, sizeof(str), "{AFAFAF}Фракция: %d\n", Player[params[0]][uMember]);
		strcat(cstring,str);
		format(str, sizeof(str), "{AFAFAF}Ранг: %d\n", Player[params[0]][uRank]);
		strcat(cstring,str);
		format(str, sizeof(str), "{AFAFAF}Лидер: %d\n", Player[params[0]][uLeader]);
		strcat(cstring,str);
		format(strs, sizeof(strs), "%s", date("%dd.%mm.%yyyy", Player[params[0]][uRegDate]));
		format(str, sizeof(str), "Дата регистрации: %s\n", strs);
		strcat(cstring,str);
		format(str, sizeof(str), "Группировка: %d | %d\n", Player[params[0]][uMemberGang], Player[params[0]][uRankGang]);
		strcat(cstring,str);
		showPlayerDialog(playerid,9999,0,"Статистика",cstring,"Закрыть","");
		return 1;
	}
	
	CMD:gleave( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 3) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "ds[32]", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /gleave [ id ] [ reason ]");

		if(Player[params[0]][uMemberGang] != 0 && Gang::[GetGangServer(params[0])][gangType] == 5 || Gang::[GetGangServer(params[0])][gangType] == 6 || Gang::[GetGangServer(params[0])][gangType] == 7) {
			for(new i = 0; i < 4; i++) GangZoneHideForPlayer(params[0],GangZone::[i][gzZones]);
		}
		Gang::[GetGangServer(params[0])][gangMembers] --;
		format(cstring, sizeof(cstring),"UPDATE gb_gangs SET gangMembers = '%d' WHERE gangID = '%d' LIMIT 1",Gang::[GetGangServer(params[0])][gangMembers],Gang::[GetGangServer(params[0])][gangExp], Player[params[0]][uMemberGang]);
		mysql_tquery(1, cstring, "", "");
		Player[params[0]][uMemberGang] = 0;
		Player[params[0]][uRankGang] = 0;
		format(cstring,sizeof(cstring),"UPDATE gb_users SET uMemberGang = '%d',uRankGang = '%d' WHERE BINARY uName = '%s'",Player[params[0]][uMemberGang],Player[params[0]][uRankGang],Player[params[0]][uName]);
		mysql_tquery(1, cstring, "", "");

		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы выкинули игрока из организации!");
		format(cstring, sizeof(cstring), ""gbInfo"Администратор %s уволил Вас из организации. Причина: %s", Player[playerid][uName], params[1]);
		SendClientMessage(params[0], C_GRAY, cstring);
		return 1;
	}
	
	

	CMD:vert( playerid, params[] ) {
		new vehicleid = GetPlayerVehicleID(playerid);
		if(Player[playerid][uMember] != 5 && Player[playerid][uMember] != 3) return SendClientMessage(playerid, C_GRAY, ""gbError"Вы должны быть военнослужащим/медиком!");
		if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SendClientMessage(playerid, C_GRAY, ""gbError"Вы должны находится за рулем транспорта!");
		if(GetVehicleModel(GetPlayerVehicleID(playerid)) != 548 && GetVehicleModel(GetPlayerVehicleID(playerid)) != 563) return SendClientMessage(playerid, C_GRAY, ""gbError"Вы должны находится в специальном ТС!");
		GetVehicleParamsEx(vehicleid,eng,light,other1,other2,other3,other4,other5);
		if(eng == 1 && GetVehicleModel(GetPlayerVehicleID(playerid)) == 563) return SendClientMessage(playerid, C_GRAY, ""gbError"Вы находитесь в воздухе!");

		
		if(V::[vehicleid][vArmyStatus][1] == true)
		{
			V::[vehicleid][vArmyStatus][0] = true;
			V::[vehicleid][vArmyStatus][1] = false;
			V::[vehicleid][vArmyStatus][2] = false;
			DestroyDynamicPickup(V::[vehicleid][vExitPos][0]);
			DestroyDynamicPickup(V::[vehicleid][vExitPos][1]);
			SendClientMessage(playerid,C_GRAY,""gbAccess"Люк успешно закрыт!");
			return 1;
		}
		SendClientMessage(playerid,C_GRAY,""gbAccess"Люк успешно открыт!");
		new Float: p[3];
		if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 548) {
			GetVehiclePos(GetPlayerVehicleID(playerid), p[0], p[1], p[2]);
			GetXYInFrontOfPlayer(playerid, p[0], p[1], -4.0);
			V::[vehicleid][vExitPos][0] = CreateDynamicPickup(19197,23,p[0],p[1],p[2]-2);
			V::[vehicleid][vExitPos][1] = CreateDynamicPickup(19197,23,302.3647,1104.9005,1954.6388,vehicleid);
			V::[vehicleid][vExitPosC][3] = 302.3647;
			V::[vehicleid][vExitPosC][4] = 1104.9005;
			V::[vehicleid][vExitPosC][5] = 1954.6388;
			V::[vehicleid][vExitPosC][0] = p[0];
			V::[vehicleid][vExitPosC][1] = p[1];
			V::[vehicleid][vExitPosC][2] = p[2];
			V::[vehicleid][vArmyStatus][1] = true;
			V::[vehicleid][vArmyStatus][0] = false;
			return 1;
		}
		if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 563)
		{
			GetVehiclePos(GetPlayerVehicleID(playerid), p[0], p[1], p[2]);
			GetXYInFrontOfPlayer(playerid, p[0], p[1], -0.5);
			V::[vehicleid][vExitPos][0] = CreateDynamicPickup(19197,23,p[0],p[1]+2,p[2]-1);
			V::[vehicleid][vExitPos][1] = CreateDynamicPickup(19197,23,467.3643,915.6750,1954.5730,vehicleid);
			V::[vehicleid][vExitPosC][3] = 467.3643;
			V::[vehicleid][vExitPosC][4] = 915.6750;
			V::[vehicleid][vExitPosC][5] = 1954.5730;
			V::[vehicleid][vArmyStatus][2] = true;
			V::[vehicleid][vExitPosC][0] = p[0];
			V::[vehicleid][vExitPosC][1] = p[1]+2;
			V::[vehicleid][vExitPosC][2] = p[2]-1;
			V::[vehicleid][vArmyStatus][1] = true;
			V::[vehicleid][vArmyStatus][0] = false;
			return 1;
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
	
	CMD:weaponstats( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 5) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /weaponstats [ id ] ");
		format(cstring, sizeof(cstring), "GetPlayerAmmo: %d", GetPlayerAmmo(params[0]));
		SendClientMessage(playerid, -1, cstring);
		for(new i; i < 13; i++)
		{
			format(cstring, sizeof(cstring), "Slot %d | %d -> Ammo in Massive", i, gAmmos[params[0]][i]);
			SendClientMessage(playerid, -1, cstring);
		}
		return 1;
	}
	
	CMD:myharki( playerid, params[] ) {		
		new str[64];
		format(cstring, sizeof(cstring), "" );
		strcat( cstring, ""gbInfo"Характеристики:\n" );
		format( str, sizeof str, "{FFFFFF}Сила: "cGREEN"%d/1000\n", Player[playerid][uStyle][3]), strcat( cstring, str );
		format( str, sizeof str, "{FFFFFF}Выносливость: "cGREEN"%d/1000{FFFFFF}\n\n", Player[playerid][uStyle][2]), strcat( cstring, str );
		format( str, sizeof str, ""gbInfo"Стили боя:\n"), strcat( cstring, str );
		format( str, sizeof str, "{FFFFFF}Бокс: "cGREEN"%d/1000\n", Player[playerid][uStyle][0]), strcat( cstring, str );
		format( str, sizeof str, "{FFFFFF}Кунг-Фу: "cGREEN"%d/1000\n", Player[playerid][uStyle][1]), strcat( cstring, str );
		format( str, sizeof str, "{FFFFFF}Кик-бокс: "cGREEN"%d/1000\n", Player[playerid][uStyle][4]), strcat( cstring, str );
		showPlayerDialog(playerid,d_event,0," ",cstring, "Закрыть","");
		return 1;
	}

	CMD:event( playerid, params[] ) {
		if(!Player[playerid][uFriendON]) return SendClientMessage(playerid, -1, ""gbError"Вы не кого не указали, в своем реферале");
		format(cstring, sizeof(cstring), ""gbInfo"Реферальная статистика\n\n{FFFFFF}Отыграно часов: "cGREEN"%d/5\n{FFFFFF}Потрачено очков работы: "cGREEN"%d/400", Player[playerid][uFriendClock], Player[playerid][uFriendValue]);
		showPlayerDialog(playerid,d_event,0," ",cstring,"Закрыть","Выдать подарок");
		return 1;
	}
	
	CMD:invite( playerid, params[] )
	{
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /invite [ id ]");
		if(Player[playerid][uMember] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данная команда Вам не доступна!");
		if(Player[playerid][uMemberGang] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не состоите в какой либо группировке!");
		if(Gang::[GetGangServer(playerid)][gangMembers] >= GangPlayers(Gang::[GetGangServer(playerid)][gangType])) return SendClientMessage(playerid,C_GRAY,""gbError"У вас и так уже много членов в организации!");
		if(Player[params[0]][uMember] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок состоит во фракции!");
		if(Player[params[0]][uMemberGang] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок уже состоите в какой-то группировке!");
		if(Gang::[GetGangServer(playerid)][gangRank][0] > Player[playerid][uRankGang]) return SendClientMessage(playerid,C_GRAY,""gbError"Ваш ранг слишком мал!");
		SetPVarInt(params[0],"playerInviteFrac",Gang::[GetGangServer(playerid)][gangID]);
		new str[255];
		format(str,sizeof(str),"{ffffff}| Приглашение в организацию:"cGRAY"\n\nЛидер организации - %s\nПриглашает вас в организацию - %s",Player[playerid][uName], Gang::[GetGangServer(playerid)][gangName]);
		showPlayerDialog(params[0],d_gang + 11,0," ",str,"Дальше","Закрыть");
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы пригласили кого-то в свою организацию, ожидайте ответа!");
		return 1;
	}
	CMD:uninvite( playerid, params[] ) {
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /uninvite [ id ]");
		if(Player[playerid][uMember] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данная команда Вам не доступна!");
		if(Player[playerid][uMemberGang] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не состоите в какой либо группировке!");
		if(Player[params[0]][uMemberGang] != Player[playerid][uMemberGang]) return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок не состоите в вашей группировке!");
		if(playerid == params[0]) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не можете уволить самого себя из организации!");
		
		if(Gang::[GetGangServer(playerid)][gangRank][1] > Player[playerid][uRankGang] || Player[params[0]][uRankGang] > Player[playerid][uRankGang]) return SendClientMessage(playerid,C_GRAY,""gbError"Ваш ранг слишком мал!");
		if(!strcmp(Gang::[GetGangServer(params[0])][gangLeader], Player[params[0]][uName], true)) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не можете уволить лидера организцаии!");
		if(Player[params[0]][uMemberGang] != 0 && Gang::[GetGangServer(params[0])][gangType] == 5 || Gang::[GetGangServer(params[0])][gangType] == 6 || Gang::[GetGangServer(params[0])][gangType] == 7) {
			for(new i = 0; i < 4; i++) GangZoneHideForPlayer(params[0], GangZone::[i][gzZones]);
		}
		Player[params[0]][uMemberGang] = 0;
		Player[params[0]][uRankGang] = 0;
		format(cstring, sizeof(cstring),"UPDATE gb_users SET uMemberGang = '%d',uRankGang = '%d' WHERE BINARY uName = '%s'",Player[params[0]][uMemberGang],Player[params[0]][uRankGang],Player[params[0]][uName]);
		mysql_tquery(1, cstring, "", "");
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы выкинули одного из членов вашей организации!");
		SendClientMessage(params[0],C_GRAY,""gbInfo"Вас выкинул лидер организации!");
		Player[params[0]][uRadioChanel] = 0;
		Player[params[0]][uRadioSubChanel] = 0;
		nowUpdateInfo(playerid, "d" , "gb_users" , "uName" , "uRadioChanel" , Player[params[0]][uRadioChanel]);
		nowUpdateInfo(playerid, "d" , "gb_users" , "uName" , "uRadioSubChanel" , Player[playerid][uRadioSubChanel]);
		Gang::[GetGangServer(playerid)][gangMembers] --;
		if(Gang::[GetGangServer(playerid)][gangExp] >= 20) Gang::[GetGangServer(playerid)][gangExp] -= 20;
		else Gang::[GetGangServer(playerid)][gangExp] = 0;
		format(cstring,sizeof(cstring),"UPDATE gb_gangs SET gangMembers = '%d',gangExp = '%d' WHERE gangID = '%d' LIMIT 1",Gang::[GetGangServer(playerid)][gangMembers],Gang::[GetGangServer(playerid)][gangExp],Player[playerid][uMemberGang]);
		mysql_tquery(1, cstring, "", "");
		return 1;
	}
	
	
	CMD:giverank( playerid, params[] ) {
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /giverank [ id ]");
		if(Player[playerid][uMember] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данная команда Вам не доступна!");
		if(Player[playerid][uMemberGang] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не состоите в какой либо группировке!");
		if(Player[params[0]][uMemberGang] != Player[playerid][uMemberGang]) return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок не состоите в вашей группировке!");
		if(Gang::[GetGangServer(playerid)][gangRank][2] > Player[playerid][uRankGang] || Player[params[0]][uRankGang] > Player[playerid][uRankGang]) return SendClientMessage(playerid,C_GRAY,""gbError"Ваш ранг слишком мал!");
		SetPVarInt(playerid,"playerSelectIDFrac",params[0]);
		showPlayerDialog(playerid,d_gang + 14,1," ","{ffffff}Введите введите новый номер ранга:\n\n","Дальше","Закрыть");
		return true;
	}
	CMD:fleader( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 5) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /fleader [ id ]");

		for(new i; i < 8; i++) format(cstring,sizeof(cstring),"%s%d. %s\n",cstring,i+1,F::[i][fName]);
		SetPVarInt(playerid, "MakeLeader", params[0]);
		showPlayerDialog(playerid, d_makeleader,2,"Выбирите фракцию",cstring,"Дальше","Закрыть");
		return 1;
	}
	
	
	CMD:leave( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 3) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "ds[32]", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /leave [ id ] [ reason ]");
		if(!Player[params[0]][uMember]) return SendClientMessage(playerid,C_GRAY,""gbError"Игрок не состоит в организации");
		Player[params[0]][uMember] = 0;
		Player[params[0]][uRank] = 0;
		format(cstring,sizeof(cstring),"UPDATE gb_users SET uMember = '%d',uRank = '%d' WHERE BINARY uName = '%s'",Player[params[0]][uMember],Player[params[0]][uRank],Player[params[0]][uName]);
		mysql_tquery(1, cstring, "", "");
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
		format(cstring, sizeof(cstring), ""gbInfo"Администратор %s уволил Вас из организации. Причина: %s", Player[playerid][uName], params[1]);
		SendClientMessage(params[0],C_GRAY, cstring);
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно уволили человека из организации!");
		return 1;
	}
	CMD:kick( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "ds[32]", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /kick [ id ] [ reason ]");
		if(!IsPlayerConnected(params[0]) || IsKicked(params[0]) || params[0] == playerid || Player[playerid][uAdmin] < Player[params[0]][uAdmin] || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
		format(cstring,sizeof(cstring),"Администратор %s кикнул игрока %s. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1]);
		SendAdminMessageToAll(C_LIGHTRED,cstring,params[0]);
		NewKick(params[0]);
		if(Player[params[0]][uAdmin] > 0)
		{
			SendClientMessage(playerid, C_LIGHTRED, "Вы были кикнуты за попытку кикнуть администратора!");
			NewKick(playerid);
		}
		return 1;
	}
	
	CMD:a( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /a [ text ]");
		format(cstring,sizeof(cstring),"[A] %s[%d]: %s", Player[playerid][uName],playerid,params[0]);
		SendAdminMessage(C_GREEN,cstring);
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
					format(cstring,sizeof(cstring),"Ответ от Support %s[%d]: %s",Player[playerid][uName], playerid,params[1]);
					SendClientMessage(params[0],C_YELLOW,cstring);
					format(cstring,sizeof(cstring),"[S] Support %s[%d] ответил %s[%d]: %s",Player[playerid][uName],playerid,Player[params[0]][uName],params[0],params[1]);
					SendSupportsMessage(C_ORANGE,cstring);
				}
				else return SendClientMessage(playerid, C_GRAY, ""gbError"Вы не авторизованы как Support. Для выхода на дежурство введите {4a86b6}/sduty");
			}
		}
		else
		{
			if(GetPVarInt(playerid,"playerAdmin") == 0) return true;
			if(sscanf(params, "ds[128]", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ans [ id ] [ text ]");
			format(cstring,sizeof(cstring),"Ответ от администратора %s[%d]: %s",Player[playerid][uName], playerid,params[1]);
			SendClientMessage(params[0],C_YELLOW,cstring);
			format(cstring,sizeof(cstring),"[A] %s[%d] ответил %s[%d]: %s",Player[playerid][uName], playerid,Player[params[0]][uName],params[0],params[1]);
			SendSupportsMessage(C_ORANGE,cstring);
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
					format(cstring,sizeof(cstring),"[S] Support %s[%d]: %s",Player[playerid][uName],playerid,params[0]);
					SendSupportsMessage(0x42aaffFF,cstring);
				}
				else return SendClientMessage(playerid, C_GRAY, ""gbError"Вы не авторизованы как Support. Для выхода на дежурство введите {4a86b6}/sduty");
			}
		}
		else
		{
			if(GetPVarInt(playerid,"playerAdmin") == 0) return true;
			if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /h [ Text ]");
			format(cstring,sizeof(cstring),"[S] Администратор %s[%d]: %s",Player[playerid][uName],playerid,params[0]);
			SendSupportsMessage(0x42aaffFF,cstring);
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
			format(cstring,sizeof(cstring),"[S] Игрок %s[%d] покинул дежурство!", Player[playerid][uName], playerid);
			SendSupportsMessage(0xFFFF99AA, cstring);
			SetPVarInt(playerid, "SDuty", 0);
		}
		else
		{
			SetPVarInt(playerid, "SDuty", 1);
			format(cstring,sizeof(cstring),"[S] Игрок %s[%d] вышел на дежурство!", Player[playerid][uName], playerid);
			SendSupportsMessage(0xFFFF99AA, cstring);
		}
		return true;
	}
	
	CMD:o( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 3) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /o [ text ]");
		format(cstring,sizeof(cstring),"[O] Администратор %s: %s",Player[playerid][uName],params[0]);
		SendClientMessageToAll(C_ORANGE,cstring);
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
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /get [ID]");
		format(cstring, sizeof(cstring), "Виртуальный мир: %d | Интерьер: %d",  GetPlayerVirtualWorld(params[0]), GetPlayerInterior(params[0]));
		SendClientMessage(playerid, -1, cstring);
		new Float: Pos[3];
		GetPlayerPos(params[0], Pos[0], Pos[1], Pos[2]);
		format(cstring, sizeof(cstring), "Позиция: %f:%f:%f ",  Pos[0], Pos[1], Pos[2]);
		SendClientMessage(playerid, -1, cstring);
		return 1;
	}
	
	//
	CMD:tp( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 1 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
		showPlayerDialog(playerid, d_teleport, DIALOG_STYLE_LIST, "Телепорт", "1. "cGRAY"Организации{ffffff}\n2. "cGRAY"Работы{ffffff}\n3. "cGRAY"Транспортные узлы{ffffff}\n4. "cGRAY"Округ Рэд{ffffff}\n5. "cGRAY"Разное\n6. "cGRAY"Интерьеры", "Дальше", "Закрыть");
		return true;
	}
	CMD:adm( playerid, params[] )
	{
		if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		strcat(cstring, "1. "cGRAY"Администрация в игре\n");
		strcat(cstring, "{ffffff}2. "cGRAY"Телепортироваться\n");
		strcat(cstring, "{ffffff}3. "cGRAY"Список всех команд\n");
		strcat(cstring, "{ffffff}4. "cGRAY"Прослушка\n");
		if(Player[playerid][uAdmin] >= 5) strcat(cstring, "{ffffff}6. "cGRAY"Управление Support's");
		showPlayerDialog(playerid,d_admins,2," ",cstring,"Дальше","Закрыть");
		return 1;
	}
	CMD:hp( playerid, params[] )
	{
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
	
	CMD:makeleader( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 5) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "dd", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /makeleader [ id ] [ frac ]");
		if(Player[params[0]][uMemberGang] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данный человек состоит в динамической организации!");
		if(params[1] == 0) {
			if(Player[params[0]][uLeader] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У данного игрока нет лидерки!");
			strmid(F::[Player[params[0]][uLeader]][fLeader], "None", 0, strlen("None"), MAX_PLAYER_NAME);
			format(cstring,sizeof(cstring),"UPDATE gb_frac SET fLeader = '%s' WHERE fID = '%d'",F::[Player[params[0]][uLeader]][fLeader],Player[params[0]][uLeader]);
			mysql_tquery(1, cstring, "", "");
			Player[params[0]][uLeader] = 0;
			Player[params[0]][uMember] = 0;
			Player[params[0]][uRank] = 0;
			Player[params[0]][uJob] = 0;
			format(cstring,sizeof(cstring),"UPDATE gb_users SET uLeader = '%d',uMember = '%d',uRank = '%d',uJob = '%d' WHERE BINARY uName = '%s'",
			Player[params[0]][uLeader],Player[params[0]][uMember],Player[params[0]][uRank],Player[params[0]][uJob],Player[params[0]][uName]);
			mysql_tquery(1, cstring, "", "");
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
			format(cstring,sizeof(cstring),"UPDATE gb_frac SET fLeader = '%s' WHERE fID = '%d'",F::[params[1]][fLeader],params[1]);
			mysql_tquery(1, cstring, "", "");
			format(cstring,sizeof(cstring),"UPDATE gb_users SET uLeader = '%d',uMember = '%d',uRank = '%d',uJob = '%d' WHERE BINARY uName = '%s'",
			Player[params[0]][uLeader],Player[params[0]][uMember],Player[params[0]][uRank],Player[params[0]][uJob],Player[params[0]][uName]);
			mysql_tquery(1, cstring, "", "");
			format(cstring,sizeof(cstring),""gbInfo"Вам выдали лидерку %s.",F::[Player[params[0]][uLeader]][fName]);
			SendClientMessage(params[0],C_GRAY,cstring);
			format(cstring,sizeof(cstring),""gbAccess"Вы выдали лидерку %s.",F::[Player[params[0]][uLeader]][fName]);
			SendClientMessage(playerid,C_GRAY,cstring);
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
		format(cstring,sizeof(cstring),"(( PM %s[%d]: %s ))",Player[params[0]][uName],params[0],params[1]);
		SendClientMessage(playerid,C_YELLOW,cstring);
		format(cstring,sizeof(cstring),"(( PM От %s[%d]: %s ))",Player[playerid][uName],playerid,params[1]);
		SendClientMessage(params[0],C_YELLOW,cstring);
		SetPVarInt(playerid,"pOff",gettime()+5);
		return 1;
	}
	
	CMD:report( playerid, params[] ) {
		if(GetPVarInt(playerid, "uLogin") == 0) return 1;
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
		if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /report [ текст ]");
		if(PlayerCountReport[playerid] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Пожалуйста, подождите некоторое время прежде чем писать заного!");
		PlayerCountReport[playerid] = 60;
		if(Player[playerid][uJobDouble][5] != 0 && Player[playerid][uJobDouble][5] + (2592000) >= gettime())
		{
			format(cstring,sizeof(cstring),"[A] [VIP] Жалоба от %s(%d): %s",Player[playerid][uName],playerid,params[0]);
			SendSupportsMessage(0xff6b81AA,cstring);
		}
		else {
			format(cstring,sizeof(cstring),"[A] Жалоба от %s(%d): %s",Player[playerid][uName],playerid,params[0]);
			SendSupportsMessage(C_YELLOW,cstring);
		}
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно отправили жалобу/вопрос, ожидайте ответа от администратора!");
		return 1;
	}
	
	CMD:armyplus( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 5) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "dd", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /armyplus [ ID Massive ] [ Value ]");
		new bool: cuff = false;
		switch(params[0])
		{
			case 0: if(ArmyMaterials[Army][0] + params[1] > 300000) cuff = true;
			case 1: if(ArmyMaterials[Army][1] + params[1] > 30000) cuff = true;
			case 2: if(ArmyMaterials[Army][2] + params[1] > 50000) cuff = true;
		}
		if(cuff) return SendClientMessage(playerid, -1, ""gbError"Указанный Вами склад заполнен");
		ArmyMaterials[Army][params[0]] += params[1];
		format(cstring, sizeof(cstring), "[ Боеприпасов на складе ]\n\n"cBLUE"%d / 200000", ArmyMaterials[Army][0]);
		UpdateDynamic3DTextLabelText(ArmyText[0],-1,cstring);
		UpdateDynamic3DTextLabelText(ArmyText[1],-1,cstring);
		format(cstring, sizeof(cstring), "[ Боеприпасов на складе ]\n\n"cBLUE"%d / 30000", ArmyMaterials[Army][1]);
		UpdateDynamic3DTextLabelText(ArmyText[2],-1,cstring);
		format(cstring, sizeof(cstring), "[ Боеприпасов на складе ]\n\n"cBLUE"%d / 50000", ArmyMaterials[Army][2]);
		UpdateDynamic3DTextLabelText(ArmyText[3],-1,cstring);
		new query[100];
		format(cstring,sizeof(cstring),"%d|%d|%d|%d",ArmyMaterials[Army][0], ArmyMaterials[Army][1], ArmyMaterials[Army][2], ArmyMaterials[Army][3]);
		format(query,sizeof(query),"UPDATE gb_others SET Ammo = '%s'",cstring);
		return 1;
	}
	
	CMD:pay( playerid, params[] ) {
		if(Player[playerid][uRegDate] + (172800) >= gettime()) return SendClientMessage(playerid,C_GRAY,""gbError"Для передачи денег вы должны отыграть 2 дня.");
		if(sscanf(params, "dd", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /pay [ ID игрока ] [ сумма ]");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(Player[playerid][uMoney] < params[1]) return SendClientMessage(playerid,C_GRAY,""gbError"Недостаточно денег для передачи такой суммы!");
		if(params[1] < 1 || params[1] > 100000) return SendClientMessage(playerid,C_GRAY,""gbError"Минимальная сумма передачи - $1 | Максимальная - $100.000");

		Player[playerid][uMoney] -= params[1];
		Player[params[0]][uMoney] += params[1];

		format(cstring,sizeof(cstring),"UPDATE gb_users SET uMoney = '%d' WHERE BINARY uName = '%s'",Player[playerid][uMoney],Player[playerid][uName]);
		mysql_tquery(1, cstring, "", "");
		format(cstring,sizeof(cstring),"UPDATE gb_users SET uMoney = '%d' WHERE BINARY uName = '%s'",Player[params[0]][uMoney],Player[params[0]][uName]);
		mysql_tquery(1, cstring, "", "");
		new str[100];
		new Year, Month, Day;
		getdate(Year, Month, Day);
		format(str,sizeof(str),"%02d/%02d/%d", Day, Month, Year);
		format(cstring,sizeof(cstring),"INSERT INTO `transfer_money` (NameOne,NameTwo,AccountIDOne,AccountIDTwo,Money,Date) VALUES ('%s','%s','%d','%d','%d', '%02d/%02d/%d')", Player[playerid][uName], Player[params[0]][uName], Player[playerid][uID], Player[params[0]][uID], params[1], Day, Month, Year);
		mysql_tquery(1, cstring, "", "");

		format(cstring,sizeof(cstring),""gbAccess"Вы передали %s - "cGREEN"$%d",Player[params[0]][uName],params[1]);
		SendClientMessage(playerid,C_GRAY,cstring);
		format(cstring,sizeof(cstring),""gbAccess"%s передал(-а) вам - "cGREEN"$%d",Player[playerid][uName],params[1]);
		SendClientMessage(params[0],C_GRAY,cstring);

		format(cstring,sizeof(cstring),"передал(-а) деньги %s'y",Player[params[0]][uName]);
		MeAction(playerid,cstring,1);
		new pIP[32], pIP_Two[32];
		GetPlayerIp(playerid, pIP, sizeof(pIP));
		GetPlayerIp(params[0], pIP_Two, sizeof(pIP_Two));
		format(cstring, sizeof(cstring), "[A] Игрок %s[%d][%s] передал деньги игроку %s[%d][%s] в размере %d", Player[playerid][uName], playerid, pIP, Player[params[0]][uName], params[0], pIP_Two, params[1]);
		SendAdminMessage(C_LIGHTRED, cstring);

		ApplyAnimation(playerid,"DEALER", "shop_pay",4.0, 0, 1, 1, 0, 0, 1);
		return 1;
	}
	
	CMD:members( playerid, params[] ) {
		if(Player[playerid][uMember] == 0 && Player[playerid][uMemberGang] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа к данной команде!");
		SendClientMessage(playerid, C_YELLOW, "Список членов организации онлайн:");
		foreach(new i : Player) {
			if(Player[i][uMember] == Player[playerid][uMember] && Player[i][uMember] != 0) {
				format(cstring, sizeof(cstring), "%s[%d]",Player[i][uName],i);
				SendClientMessage(playerid, -1, cstring);
			}
			if(Player[i][uMemberGang] == Player[playerid][uMemberGang] && Player[i][uMemberGang] != 0)
			{
				format(cstring, sizeof(cstring), "%s[%d]",Player[i][uName],i);
				SendClientMessage(playerid, -1, cstring);
			}
		}
		return 1;
	}
	
	
	CMD:bk( playerid, params[] ) {
		if(GetPVarInt(playerid, "BKONFORPLAYER") == 1) return SendClientMessage(playerid,C_GRAY,""gbError"Вы уже вызвали поддержку, отмените текущюю /unbk");
		format(cstring,sizeof(cstring),"[R] Диспетчер: %s | %s запрашивает поддержку полицейского департамента.", FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName]);
		if(Player[playerid][uMember] == 1 || Player[playerid][uMember] == 2) {
			foreach(new i: Player)
			{
				if(Player[i][uMember] == 1 || Player[i][uMember] == 2)
				{
					if(Player[i][uIsPlayerJob][0] == 1)
					{
						SetPlayerMarkerForPlayer(i, playerid, 0xF62222AA);
						SendClientMessage(i, FracColor[Player[i][uMember]], cstring);
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
	
	CMD:frisk( playerid, params[] )
	{
		cstring = "";
		new str[100];
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /frisk [ ID игрока ]");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(Player[playerid][uMember] == 1 || Player[playerid][uMember] == 2)
		{
			if(Player[playerid][uIsPlayerJob][0] == 1) {
				for(new i; i != MAX_SLOTS; i++) {
					switch(Inv[params[0]][invSlot][i])
					{
						case 0: continue;
					}
					format(str,sizeof(str),""gbInfo"%s\t%d{ffffff}\n",_itemsInfo[Inv[params[0]][invSlot][i]][invName], Inv[params[0]][invSlotKol][i]);
					strcat(cstring,str);
				}
				showPlayerDialog(playerid,9999,0,""gbAccess"При обыске найдено:",cstring,"Закрыть","");
			}
			return 1;
		}

		SetPVarInt(params[0], "PlayerFrisk", playerid);
		format(cstring, sizeof(cstring), "{1081C7}>> {FAEBD7}Вы предложили игроку %s обыскать его", Player[params[0]][uName]);
		SendClientMessage(playerid, -1, cstring);
		format(cstring, sizeof(cstring), "{1081C7}>> {FAEBD7}Игрок %s хочет обыскать вас", Player[playerid][uName]);
		SendClientMessage(params[0], -1, cstring);
		SendClientMessage(params[0], -1, "{1081C7}>> {FAEBD7}Нажмите {33AA33}Y{FAEBD7}, чтобы согласиться или {FF6347}N{FAEBD7}, чтобы отказаться");
		return 1;
	}
	CMD:givelic( playerid, params[] )
	{
		if(Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "dd", params[0], params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /givelic [ ID игрока ] [ Цена ]");
		if(F::[Player[playerid][uMember]][fRank][5] > Player[playerid][uRank]) return SendClientMessage(playerid,C_GRAY,""gbError"Ваш ранг не достаточен!");
		if(Player[params[0]][uMoney] < params[1]) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно средств для покупки лицензии!");
		if(Player[params[0]][uLicenses][3] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"У игрока уже есть лицензия на оружие!");
		if(Player[params[0]][uTicket]) return SendClientMessage(playerid,C_GRAY,""gbError"У игрока есть неоплаченный штраф, оплатите его в участке полиции!");
		if(Player[params[0]][uLicensesTake][3] > getdate()) return SendClientMessage(playerid, -1, ""gbError"Лицензия игрока временно конфискована. Выдать новую нельзя!");
		SetPVarInt(params[0], "SellLicPrice", params[1]);
		format(cstring, sizeof(cstring), "{ffffff}Вы действительно хотите купить лицензию на оружие за "cGREEN"%d$", params[1]);
		showPlayerDialog(params[0],d_police + 1,0," ",cstring,"Да","Нет");
		return true;
	}
	CMD:takelic( playerid, params[] ) {
		new strings[100];
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /takelic [ ID игрока ]");
		if(Player[params[0]][uLicenses][3] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У данного игрока и так нет лицензии на оружие!");
		if(Player[playerid][uRank] < 2) return SendClientMessage(playerid,C_GRAY,""gbError"Доступно только с 2-ого ранга!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		Player[params[0]][uLicenses][3] = 0;
		format(cstring,sizeof(cstring),"%d|%d|%d|%d",Player[params[0]][uLicenses][0],Player[params[0]][uLicenses][1],Player[params[0]][uLicenses][2],Player[params[0]][uLicenses][3]);
		format(strings,sizeof(strings),"UPDATE gb_users SET uLicenses = '%s' WHERE BINARY uName = '%s'",cstring,Player[params[0]][uName]);
		mysql_tquery(1, strings, "", "");
		format(cstring,sizeof(cstring),""gbInfo"%s %s забрал у Вас лицензию на оружие!",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName]);
		SendClientMessage(params[0],C_GRAY,cstring);
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы забрали лицензию на оружие у данного человека!");
		return 1;
	}
	
	
	CMD:take( playerid, params[] ) {
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
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
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "dds[32]", params[0], params[1], params[2])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ticket [ ID игрока ] [ Сумма ] [ Причина ]");
		if(params[1] < 1 || params[1] > 10000) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /ticket [ ID игрока ] [ Сумма ] [ Причина ]");
		if(Player[playerid][uRank] < 2) return SendClientMessage(playerid,C_GRAY,""gbError"Доступно только с 2-ого ранга!");
		if(Player[params[0]][uTicket]) return SendClientMessage(playerid,C_GRAY,""gbError"У данного игрока уже есть неоплаченный штраф!");

		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		format(cstring, sizeof(cstring), ""gbInfo"Офицер %s выписал Вам штраф на сумму %d$ по причине: %s.", Player[playerid][uName], params[1], params[2]);
		SendClientMessage(params[0], -1, cstring);
		format(cstring, sizeof(cstring), ""gbAccess"Вы выписали штраф %s на сумму %d за %s.", Player[params[0]][uName], params[1], params[2]);
		SendClientMessage(playerid, -1, cstring);
		Player[params[0]][uTicket] = 1;
		Player[params[0]][uTicketPay] = params[1];
		nowUpdateInfo(params[0], "d" , "gb_users" , "uName" , "uTicket" , Player[params[0]][uTicket]);
		nowUpdateInfo(params[0], "d" , "gb_users" , "uName" , "uTicketPay" , Player[params[0]][uTicketPay]);
		return 1;
	}
	CMD:cuff( playerid, params[] ) {
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет с собой наручников для их использования!");
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
		format(cstring,sizeof(cstring),"надел(-а) наручники на %s",Player[params[0]][uName]);
		MeAction(playerid,cstring,1);
		togglePlayerControllable(params[0],false);
		format(cstring,sizeof(cstring),""gbInfo"%s %s надел(-а) на вас наручники!",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName]);
		SendClientMessage(params[0],C_GRAY,cstring);
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы надели наручники на данного человека!");
		return 1;
	}
	CMD:uncuff( playerid, params[] ) {
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /uncuff [ ID игрока ]");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок должен находиться рядом с вами!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(GetPVarInt(params[0],"follow") != INVALID_PLAYER_ID) return SendClientMessage(playerid,C_GRAY,""gbError"Нельзя снять наручники с данного человека, пока он идёт за кем-то!");
		if(GetPVarInt(params[0],"playerCuffed") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Этот игрок не находится в наручниках!");
		SetPlayerSpecialAction(params[0], SPECIAL_ACTION_NONE);
		RemovePlayerAttachedObject(params[0],4);
		SetPVarInt(params[0],"playerCuffed",0);
		format(cstring,sizeof(cstring),"снял(-а) наручники с %s",Player[params[0]][uName]);
		MeAction(playerid,cstring,1);
		togglePlayerControllable(params[0],true);
		format(cstring,sizeof(cstring),""gbInfo"%s %s снял(-а) с вас наручники!",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName]);
		SendClientMessage(params[0],C_GRAY,cstring);
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
			format(cstring,sizeof(cstring),"выкинул(-а) %s из автомобиля",Player[params[0]][uName]);
			MeAction(playerid,cstring,1);
			SendClientMessage(params[0],C_GRAY,""gbInfo"Вас выкинули из транспортного средства!");
		}
		else SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		return 1;
	}
	CMD:mdc( playerid, params[] ) {
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
		if(!IsPlayerInAnyVehicle(playerid)) return 1;
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		new vehicleid = GetPlayerVehicleID(playerid);
		if(vehicleid >= lspdcars[0] && vehicleid <= lspdcars[1] || vehicleid >= sherifcar[0] && vehicleid <= sherifcar[1]) {}
		else return SendClientMessage(playerid,C_GRAY,""gbError"Вы находитесь не в служебном авто!");
		
		format( cstring, sizeof cstring, "" );
		strcat( cstring, "1. Запрос информации о человеке.\n" );
		strcat( cstring, "2. Запрос информации о автомобиле.\n" );
		strcat( cstring, "3. Запрос информации о бизнесе.\n" );
		strcat( cstring, "4. Запрос информации о доме.\n" );
		strcat( cstring, "5. Запрос местоположения по номеру телефона.\n" );
		strcat( cstring, "6. Список разыскиваемых преступников.\n" );
		strcat( cstring, "7. Просмотр сотрудников на дежурстве.\n" );
		strcat( cstring, "8. Объявить машину в розыск.\n" );
		strcat( cstring, "9. Список разыскиваемых авто.\n" );
		strcat( cstring, "10. Запрос информации о лицензии" );
		
		showPlayerDialog(playerid,d_mdc,2," ", cstring, "Дальше", "Закрыть");
		return 1;
	}
	
	CMD:m( playerid, params[] )
	{
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
		if(!IsPlayerInAnyVehicle(playerid)) return 1;
		new vehicleid = GetPlayerVehicleID(playerid);
		switch(Player[playerid][uMember])
		{
			case 1,2:
			{
				if(vehicleid >= lspdcars[0] && vehicleid <= lspdcars[1] || vehicleid >= sherifcar[0] && vehicleid <= sherifcar[1]) {}
				else return SendClientMessage(playerid,C_GRAY,""gbError"Вы находитесь не в служебном авто!");
				if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /m [ текст ]");
				format(cstring,sizeof(cstring),"[Мегафон %s %s]: %s",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName],params[0]);
				ProxDetector(30.0, playerid,cstring,C_YELLOW,C_YELLOW,C_YELLOW,C_YELLOW,C_YELLOW);
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
				format(cstring,sizeof(cstring),"[Мегафон %s]: %s", Player[playerid][uName],params[0]);
				ProxDetector(30.0, playerid,cstring,C_YELLOW,C_YELLOW,C_YELLOW,C_YELLOW,C_YELLOW);
			}
			//case 426, 416, 482
			case 5:
			{
				if(vehicleid >= firecar[0] && vehicleid <= firecar[1]) {}
				else return SendClientMessage(playerid,C_GRAY,""gbError"Вы находитесь не в служебном авто!");
				if(sscanf(params, "s[256]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /m [ текст ]");
				format(cstring,sizeof(cstring),"[Мегафон %s]: %s", Player[playerid][uName],params[0]);
				ProxDetector(30.0, playerid,cstring,C_YELLOW,C_YELLOW,C_YELLOW,C_YELLOW,C_YELLOW);
			}
			
			default: return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		}
		return 1;
	}
	CMD:taser( playerid, params[] ) {
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
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
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(GetPlayerVehicleSeat(playerid) != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы должны быть за рулём транспортного средства!");
		if(Player[playerid][uIsPlayerJob][0] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы должны находиться на службе!");
		if(vehicleid >= lspdcars[0] && vehicleid <= lspdcars[1] || vehicleid >= sherifcar[0] && vehicleid <= sherifcar[1]) {}
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
	CMD:alogin( playerid, params[] )
	{
		showPlayerDialog(playerid, d_admins + 8, DIALOG_STYLE_PASSWORD, "Админцентр", "{B4B5B7}Введите пароль для доступа к админцентру:", "Далее", "Отмена");
		//if(Player[playerid][uAdmin] != 0 && GetPVarInt(playerid,"playerAdmin") != 1) showPlayerDialog(playerid, d_admins + 8, 1, "Авторизация", "{ffffff}Введите в данное окошко ваш пароль от админки:", "Принять", "Отмена");
		return 1;
	}
	CMD:callsign( playerid, params[] ) {
		new vehicleid = GetPlayerVehicleID(playerid);
		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, -1,""gbError"Вы не находитесь в машине");
		if(sscanf(params, "s[48]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /callsign [ текст ]");
		if(Player[playerid][uMember] == 2 || Player[playerid][uMember] == 1)
		{
			if(vehicleid >= lspdcars[0] && vehicleid <= lspdcars[1] || vehicleid >= sherifcar[0] && vehicleid <= sherifcar[1]) {}
			else return SendClientMessage(playerid,C_GRAY,""gbError"Вы находитесь не в служебном авто!");
			switch(vehiclecallsign[GetPlayerVehicleID(playerid)])
			{
				case 0:
				{
					vehicle3Dtext[vehicleid] = CreateDynamic3DTextLabel(params[0], -1, -1.0, -2.8, 0.0, 35.0, INVALID_PLAYER_ID, vehicleid);
					
					vehiclecallsign[vehicleid] = 1;
					format(cstring,sizeof(cstring),""gbInfo"Сотрудник %s установил маркировку: %s (( /dellsign %d ))",Player[playerid][uName],params[0],vehicleid);
					foreach(new i : Player)
					{
						if(Player[i][uLeader] == Player[playerid][uMember]) SendClientMessage(i,C_GRAY,cstring);
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
					format(cstring,sizeof(cstring),""gbInfo"Сотрудник %s установил маркировку: %s (( /dellsign %d ))",Player[playerid][uName],params[0],vehicleid);
					foreach(new i : Player)
					{
						if(Player[i][uLeader] == Player[playerid][uMember]) SendClientMessage(i,C_GRAY,cstring);
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
					format(cstring,sizeof(cstring),""gbInfo"Сотрудник %s установил маркировку: %s (( /dellsign %d ))",Player[playerid][uName],params[0],vehicleid);
					foreach(new i : Player)
					{
						if(Player[i][uLeader] == Player[playerid][uMember]) SendClientMessage(i,C_GRAY,cstring);
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
		if(Player[playerid][uLeader] != 1 && Player[playerid][uLeader] != 2 && Player[playerid][uLeader] != 3 && Player[playerid][uLeader] != 5) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
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
		new zStr[1024];
		format(zStr, sizeof(zStr), "Название организации >> Лидер\n\n");
		foreach(new i: Player) {
			if(Player[i][uMemberGang] != 0 && !strcmp(Gang::[GetGangServer(i)][gangLeader], Player[i][uName], true))
			{
				switch(Gang::[GetGangServer(i)][gangID])
				{
					case 227, 10, 230, 236, 155, 238, 2, 39: format(zStr, sizeof(zStr), ""gbInfo"%s%s - %s\n",zStr, Gang::[GetGangServer(i)][gangName], Gang::[GetGangServer(i)][gangLeader]);
				}
			}
			if(Player[i][uLeader] != 0 && !strcmp(F::[Player[i][uLeader]][fLeader], Player[i][uName], true)) format(zStr, sizeof(zStr), ""gbInfo"%s%s - %s\n",zStr, F::[Player[i][uMember]][fName], F::[Player[i][uMember]][fLeader]);
		}
		showPlayerDialog(playerid,9999,0," ",zStr,"Закрыть","");
		return 1;
	}
	
	CMD:wanted( playerid, params[] ) {
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
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
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "dds[32]", params[0],params[1],params[2])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /su [ ID игрока ] [ кол-во ] [ текст ]");
		if(Player[params[0]][uSuspect] == 6) return SendClientMessage(playerid,C_GRAY,""gbError"У данного человека уже достаточно звёзд!");
		if(!IsPlayerConnected(params[0]) || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет в штате!");
		if(params[0] == playerid) return SendClientMessage(playerid,C_GRAY,""gbError"Вы указали свой ID!");
		SuspectPlayer(params[0],params[2],Player[playerid][uName],params[1]);
		format(cstring,sizeof(cstring),"[D] %s объявлен(-а) в розыск. Обвинитель: %s. Причина: %s. %d/6",Player[params[0]][uName],Player[playerid][uName],params[2],Player[params[0]][uSuspect]);
		foreach (new i : Player) {
			switch(Player[i][uMember]) {
				case 1,2: {
					if(Player[i][uIsPlayerJob][0] == 1) SendClientMessage(i,C_RED,cstring);
				}
				default: {}
			}
		}
		return 1;
	}
	CMD:unsu( playerid, params[] ) {
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unsu [ ID игрока ]");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет в штате!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		Player[params[0]][uSuspect] = 0;
		SetPlayerWantedLevel(params[0],Player[params[0]][uSuspect]);
		nowUpdateInfo(params[0], "d" , "gb_users" , "uName" , "uSuspect" , Player[params[0]][uSuspect]);
		format(cstring,sizeof(cstring),""gbAccess"%s снял(-а) вам уровень розыска!",Player[playerid][uName]);
		SendClientMessage(params[0],C_GRAY,cstring);
		format(cstring,sizeof(cstring),""gbAccess"Вы сняли уровень розыска - %s",Player[params[0]][uName]);
		SendClientMessage(playerid,C_GRAY,cstring);
		return 1;
	}
	//SetPlayerColor(playerid,FracColor[0]);
	CMD:clist( playerid, params[] )
	{
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
	
	CMD:arrest( playerid, params[] )
	{
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /arrest [ ID игрока ]");
		if(Player[params[0]][uSuspect] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данный человек должен быть в розыске!");
		if(Player[params[0]][uJailSettings][0] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Этот человек уже сидит в тюрьме!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(IsPlayerInRangeOfPoint(playerid,7.0,-153.4081,-1852.6887,2497.5859) || IsPlayerInRangeOfPoint(playerid,5.0,910.3047,-1898.4979,2497.5859) || IsPlayerInRangeOfPoint(playerid,5.0,1573.1285,-1659.7573,2490.7480) || IsPlayerInRangeOfPoint(playerid,5.0,1573.1285,-1659.7573,2490.7480) || IsPlayerInRangeOfPoint(playerid,5.0,604.8587,-553.6151,1990.5859)) {
			new rand;
			switch(Player[playerid][uMember])
			{
				case 1: rand = random(3);
				case 2: rand = random(2);
			}
			Player[params[0]][uJailSettings][0] = Player[playerid][uMember];
			Player[params[0]][uJailSettings][1] = Player[params[0]][uSuspect] * 600;
			Player[params[0]][uSuspect] = 0;
			SetPlayerWantedLevel(params[0],0);
			setPlayerPos(params[0],spawnJail[Player[params[0]][uJailSettings][0] - 1][rand][0],spawnJail[Player[params[0]][uJailSettings][0] - 1][rand][1],spawnJail[Player[params[0]][uJailSettings][0] - 1][rand][2]);
			format(cstring,sizeof(cstring),""gbInfo"Вы были помещены в КПЗ "cBLUE"%s %s {ffffff}на "cBLUE"%d {ffffff}секунд.",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName],Player[params[0]][uJailSettings][1]);
			SendClientMessage(params[0],C_GRAY,cstring);
			format(cstring,sizeof(cstring),""gbAccess"Вы поместили в КПЗ "cBLUE"%s {ffffff}на "cBLUE"%d {ffffff}секунд.",Player[params[0]][uName],Player[params[0]][uJailSettings][1]);
			SendClientMessage(playerid,C_GRAY,cstring);
			nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uSuspect" , Player[params[0]][uSuspect]);
			format(cstring,sizeof(cstring),"%d|%d|%d|%d|%d",Player[params[0]][uJailSettings][0],Player[params[0]][uJailSettings][1],Player[params[0]][uJailSettings][2],Player[params[0]][uJailSettings][3],Player[params[0]][uJailSettings][4]);
			nowUpdateInfo(params[0] , "s" , "gb_users" , "uName" , "uJailSettings" , cstring);
			SetPVarInt(playerid,"follow",INVALID_PLAYER_ID);
			if(GetPVarInt(params[0],"follow") != INVALID_PLAYER_ID) SetPVarInt(params[0],"follow",INVALID_PLAYER_ID);
			if(GetPVarInt(params[0],"playerCuffed") != 0) togglePlayerControllable(params[0],false);
		}
		return 1;
	}
	CMD:ram( playerid, params[] )
	{
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		new Float:pos[3], count = 0, bool:ram = false, bool:ramf = false;
		GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
		foreach(new i : Player)
		{
			if(IsPlayerInRangeOfPoint(i,5.0,pos[0],pos[1],pos[2]))
			{
				if(Player[i][uMember] == 1 || Player[i][uMember] == 2) count++;
			}
			if(count >= 2) ram = true;
		}
		if(ram == false) return SendClientMessage(playerid,C_GRAY,""gbError"Для взлома двери Вам нужен напарник!");
		for(new i; i != cHouses; i ++)
		{
			if(IsPlayerInRangeOfPoint(playerid,5.0,H::[i][hPos][0],H::[i][hPos][1],H::[i][hPos][2]))
			{
				SetPVarInt(playerid,"HouseInt", i);
				ramf = true;
				break;
			}
		}
		if(ramf == false) return SendClientMessage(playerid,C_GRAY,""gbError"Вы далеко от двери!");
		if(H::[GetPVarInt(playerid, "HouseInt")][hLock] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Двери этого дома открыты!");
		GameTextForPlayer(playerid, "~g~UNLOCK", 3000, 3);
		H::[GetPVarInt(playerid, "HouseInt")][hLock] = 0;
		return 1;
	}
	CMD:copattach( playerid, params[] )
	{
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
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
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /attach [ ID игрока ]");
		if(GetPVarInt(params[0],"playerCuffed") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок должен быть в наручниках!");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(GetPVarInt(playerid,"follow") != INVALID_PLAYER_ID) return SendClientMessage(playerid,C_GRAY,""gbError"Вы уже ведёте за собой кого-то!");
		SetPVarInt(playerid,"follow",params[0]);
		SetPVarInt(params[0],"follow",playerid);
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы заставили этого человека идти за вами! (( "cBLUE"/unattach{ffffff} - отпустить ))");
		format(cstring,sizeof(cstring),""gbInfo"%s %s заставил(-а) вас идти за ним(ней)!",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName]);
		SendClientMessage(params[0],C_GRAY,cstring);
		togglePlayerControllable(params[0],true);
		format(cstring,sizeof(cstring),"ведёт за собой %s",Player[params[0]][uName]);
		MeAction(playerid,cstring,1);
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
		if(Player[playerid][uMember] != 1 && Player[playerid][uMember] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет доступа для использования этой команды!");
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
	
	CMD:aheal( playerid, params[] )// damage death
	{
		if(Player[playerid][uAdmin] < 2 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
		if(sscanf(params, "u", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /aheal [ ID игрока ]");
		if(Player[params[0]][uJailSettings][2] != 0) Player[params[0]][uJailSettings][2] = 0;
		if(Player[params[0]][uJailSettings][3] != 0) Player[params[0]][uJailSettings][3] = 2;
		if(Player[params[0]][uJailSettings][4] != 0) Player[params[0]][uJailSettings][4] = 0;
		
		format(cstring,sizeof(cstring),"%d|%d|%d|%d|%d",Player[params[0]][uJailSettings][0],Player[params[0]][uJailSettings][1],Player[params[0]][uJailSettings][2],Player[params[0]][uJailSettings][3],Player[params[0]][uJailSettings][4]);
		nowUpdateInfo(params[0] , "s" , "gb_users" , "uName" , "uJailSettings" , cstring);
		format(cstring, sizeof(cstring), "Вы вылечили игрока %s", Player[params[0]][uName]);
		SendClientMessage(playerid, C_GRAY, cstring);
		ClearAnimations(params[0]);
		togglePlayerControllable(params[0],true);
		return true;
	}
	
	CMD:heal( playerid, params[] )
	{
		new bool:cuff = false;
		for(new i; i != 48; i++) {
			if(Inv[playerid][invSlot][i] == 434 || Inv[playerid][invSlot][i] == 451 || Inv[playerid][invSlot][i] == 457) cuff = true;
		}
		if(cuff == false) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет с собой аптечки или сумки с медикаментами!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /heal [ ID игрока ]");
		if(Player[playerid][uJailSettings][2] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данный человек и так уже проходит реабилитацию!");
		if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
		for(new i; i != 48; i++)
		{
			switch(Inv[playerid][invSlot][i])
			{
				case 434, 457:
				{
					if(Inv[playerid][invSlotKol][i] != 0) Inv[playerid][invSlotKol][i] --;
					else {
						Inv[playerid][invSlotKol][i] = 0;
						Inv[playerid][invSlot][i] = 0;
					}
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы использовали аптечку!");
					MeAction(playerid,"использовал(-а) аптечку",1);
					togglePlayerControllable(params[0],true);
					if(Player[params[0]][uJailSettings][2] != 0) Player[params[0]][uJailSettings][2] = 0;
					if(Player[params[0]][uJailSettings][3] != 0) Player[params[0]][uJailSettings][3] = 2;
					if(Player[params[0]][uJailSettings][4] != 0) Player[params[0]][uJailSettings][4] = 0;
					format(cstring,sizeof(cstring),"%d|%d|%d|%d|%d",Player[params[0]][uJailSettings][0],Player[params[0]][uJailSettings][1],Player[params[0]][uJailSettings][2],Player[params[0]][uJailSettings][3],Player[params[0]][uJailSettings][4]);
					nowUpdateInfo(params[0] , "s" , "gb_users" , "uName" , "uJailSettings" , cstring);
					break;
				}
				case 451:
				{
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы использовали сумку с медикаментами!");
					MeAction(playerid,"использовал(-а) сумку с медикаментами",1);
					togglePlayerControllable(params[0],true);
					if(Player[params[0]][uJailSettings][2] != 0) Player[params[0]][uJailSettings][2] = 0;
					if(Player[params[0]][uJailSettings][3] != 0) Player[params[0]][uJailSettings][3] = 2;
					if(Player[params[0]][uJailSettings][4] != 0) Player[params[0]][uJailSettings][4] = 0;
					format(cstring,sizeof(cstring),"%d|%d|%d|%d|%d",Player[params[0]][uJailSettings][0],Player[params[0]][uJailSettings][1],Player[params[0]][uJailSettings][2],Player[params[0]][uJailSettings][3],Player[params[0]][uJailSettings][4]);
					nowUpdateInfo(params[0] , "s" , "gb_users" , "uName" , "uJailSettings" , cstring);
					break;
				}
			}
		}
		ApplyAnimation(playerid,"MEDIC", "CPR",4.0, 0, 1, 1, 0, 0, 1);
		new Float:heal;
		GetPlayerHealth(params[0],heal);
		if(heal + 50.0 < 100.0) setPlayerHealth(params[0],heal + 50.0);
		else setPlayerHealth(params[0],100.0);
		return 1;
	}
	CMD:n( playerid, params[] ) {
		if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
		if(newsLeaderEther != playerid && newsClientEther != playerid) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не начинали эфир или вас не приглашали в него!");
		if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /n [ текст ]");
		if(GetPlayerVehicleID(playerid) >= smicars[0] && GetPlayerVehicleID(playerid) <= smicars[1]) {
			format(cstring,sizeof(cstring),"[ CNN Эфир ] %s: %s",Player[playerid][uName],params[0]);
			foreach(new i : Player) {
				if(IsPlayerInAnyVehicle(i)) SendClientMessage(i,0x42E73AAA,cstring);
				else {
					if(Player[i][uSettings][4] == 1) SendClientMessage(i,0x42E73AAA,cstring);
				}
			}
		}
		else SendClientMessage(playerid,C_GRAY,""gbError"У вас нет нужного оборудования!");
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
		
		format( cstring, sizeof cstring, "{ffffff}| Данные о человеке:\n\n" );
		format( str, sizeof str, ""cGRAY"Имя: {ffffff}%s\n", name[0] ), strcat( cstring, str );
		format( str, sizeof str, ""cGRAY"Фамилия: {ffffff}%s\n", name[1] ), strcat( cstring, str );
		format( str, sizeof str, ""cGRAY"Национальность: {ffffff}%s\n",nation ), strcat( cstring, str );
		format( str, sizeof str, ""cGRAY"Возраст: {ffffff}%d\n\n",Player[playerid][uAge] ), strcat( cstring, str );
		format( str, sizeof str, "{ffffff}| Лицензии:\n\n" ), strcat( cstring, str );
		format( str, sizeof str, ""cGRAY"Лицензия на наземное ТС: {ffffff}%s\n", Player[playerid][uLicenses][0] ? ("Есть") : ("Нет") ), strcat( cstring, str );
		format( str, sizeof str, ""cGRAY"Лицензия на водное ТС: {ffffff}%s\n", Player[playerid][uLicenses][1] ? ("Есть") : ("Нет") ), strcat( cstring, str );
		format( str, sizeof str, ""cGRAY"Лицензия на воздушное ТС: {ffffff}%s\n", Player[playerid][uLicenses][2] ? ("Есть") : ("Нет") ), strcat( cstring, str );
		format( str, sizeof str, ""cGRAY"Лицензия на оружие: {ffffff}%s\n", licensestrue ), strcat( cstring, str );
		
		if(sscanf(params, "d", params[0])) showPlayerDialog(playerid,9999,0," ",cstring,"Закрыть","");
		else {
			if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
			showPlayerDialog(params[0],9999,0," ",cstring,"Закрыть","");
		}
		return 1;
	}
	
	CMD:id( playerid, params[] )
	{
		if(sscanf(params, "s[25]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /id [ имя_фамилия ]");
		new bool:find = false, str[128];
		cstring = "";
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
		if(Player[playerid][uJailSettings][0] == 0 && Player[playerid][uMute] == 0 && Player[playerid][uDMJail] == 0)
		{
            format(cstring, sizeof(cstring), "~y~Time~w~%02d:%02d~n~~y~Date: ~w~%02d/%02d/%d~n~~w~Min to PayCheck %d", Hour, Minute, Day, Month, Year, 60 - Player[playerid][uPayTime]);
			GameTextForPlayer(playerid, cstring, 5000, 1);
		} 
		else
		{
			format(cstring,sizeof(cstring),"{ffffff}| Информация о времени и дате:\n\n"cGRAY"Время: %02d:%02d\n\
			Дата: %02d/%02d/%d\n\nВремя в тюрьме: %d сек.\nВремя в Де Моргане: %d мин.\nВремя до снятия мута: %d мин.\n\
			Время до снятия OOC мута: %d мин.\nВремени в игре: %d ",
			Hour, Minute, Day, Month, Year, Player[playerid][uJailSettings][1],Player[playerid][uDMJail],Player[playerid][uMute], 
			Player[playerid][uBMute], Player[playerid][uPayTime]);
			
            showPlayerDialog(playerid,9999,0," ",cstring,"Закрыть","");
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
        format(cstring, sizeof(cstring), "Вы установили транспорту ID: %d HP - %f", params[0], params[1]);
        SendClientMessage(playerid, C_GRAY, cstring);
		return 1;
	}
	CMD:vspawn( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
        if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /vspawn [ veh ]");
        SetVehicleToRespawn(params[0]);
		return 1;
	}
	CMD:gangexp( playerid, params[] )
	{
 		if(Player[playerid][uAdmin] < 5) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	    if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /gangexp [ params ]");
		GiveExpGang(GetGangServer(playerid),params[0],false);
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
		if(IsPlayerInAnyVehicle(playerid))
		{
	        if(V::[GetPlayerVehicleID(playerid)][vBuyingCar] != -1)
			{
	            new i = V::[GetPlayerVehicleID(playerid)][vBuyingCar];
	            if(strcmp(Car::[i][cOwner], Player[playerid][uName], true) == 0)
				{
					GetVehiclePos(GetPlayerVehicleID(playerid),Car::[i][cPos][0],Car::[i][cPos][1],Car::[i][cPos][2]);
					GetVehicleZAngle(GetPlayerVehicleID(playerid),Car::[i][cPos][3]);

					format(cstring,sizeof(cstring),"UPDATE `gb_cars` SET `cPosition` = '%f|%f|%f|%f',`cStatus` = '%d' WHERE `cID` = %d",
					Car::[i][cPos][0],Car::[i][cPos][1],Car::[i][cPos][2],Car::[i][cPos][3],Car::[i][cStatus][0],Car::[i][cID]);
					mysql_tquery(1, cstring, "", "");
					format(cstring,sizeof(cstring),"%f|%f|%f",V::[GetPlayerVehicleID(playerid)][vFuel],V::[GetPlayerVehicleID(playerid)][vMile],V::[GetPlayerVehicleID(playerid)][vHealth]);
					SetCarStr(Car::[i][cID],"cFloating",cstring);
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
	CMD:payday( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 6) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	    ghour --;
	    return 1;
	}
	CMD:fermnone( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 5) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
        _dropFerm = 0;
        SendClientMessage(playerid,C_GRAY,"Вы обнулили все мешки на фермер!");
		return 1;
	}
	CMD:create( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 6) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	    showPlayerDialog(playerid,d_create,2,"Создание","1. Создать дом\n2. Создать квартиру","Дальше","Закрыть");
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
		format(cstring,sizeof(cstring),"> %s %s",Player[playerid][uName],params[0]);
		SendClientMessage(playerid,0xE75480FF,cstring);
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
	    if(Player[playerid][uSex] == 1) format(cstring, sizeof(cstring), "\"%s\", - сказал %s,{E75480} %s",arrCoords[0], Player[playerid][uName],arrCoords[1]);
	    else format(cstring, sizeof(cstring), "\"%s\", - сказала %s,{E75480} %s",arrCoords[0], Player[playerid][uName],arrCoords[1]);
		ProxDetector(30.0, playerid, cstring, COLOR_FADE1,COLOR_FADE2,COLOR_FADE3,COLOR_FADE4,COLOR_FADE5);
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
	    format(cstring, sizeof(cstring), "%s(%d) шепчет: %s", Player[playerid][uName], playerid, params[0]);
  		ProxDetector(3.0, playerid, cstring,COLOR_FADE3,COLOR_FADE3,COLOR_FADE3,COLOR_FADE3,COLOR_FADE3);
	    return 1;
	}
	CMD:b( playerid, params[] ) {
	    if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но Вам запрещено писать что-то!");
	    if(Player[playerid][uBMute] != 0) return SendClientMessage(playerid, C_GRAY, ""gbError"Простите, но Вам запрещено писать что-то!");
	    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /b [ текст ]");
		format(cstring, sizeof(cstring), "(( %s(%d): %s ))", Player[playerid][uName], playerid, params[0]);
  		ProxDetectorTypeTwo(15.0, playerid, cstring,COLOR_FADE1,COLOR_FADE2,COLOR_FADE3,COLOR_FADE4,COLOR_FADE5);
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
	    format(cstring, sizeof(cstring), "%s(%d) кричит: %s", Player[playerid][uName], playerid, params[0]);
	    ProxDetector(35.0, playerid, cstring,COLOR_FADE1,COLOR_FADE2,COLOR_FADE3,COLOR_FADE4,COLOR_FADE5);
	    if(!IsPlayerInAnyVehicle(playerid)) ApplyAnimation(playerid,"RIOT","RIOT_shout",4.0, 0, 1, 1, 0, 0, 1);
	    return 1;
 	}
	CMD:action( playerid, params[] ) {
	    if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /action [ текст ]");
	    if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
	    if(GetPVarInt(playerid,"PlayerUseAction") != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Вы уже устанавливали действие своего персонажа. (( "cBLUE"/dellaction "cGRAY"))");
	    format(cstring,sizeof(cstring),"%s\n(( %s[%d] ))",params[0],Player[playerid][uName],playerid);
	    new Float:p[3];
	    GetPlayerPos(playerid,p[0],p[1],p[2]);
	    SetPVarInt(playerid,"playerUseAction",1);
	    SetPVarInt(playerid,"playerTextAction",_:CreateDynamic3DTextLabel(cstring,0xE75480FF,p[0],p[1],p[2],10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,-1,GetPlayerVirtualWorld(playerid)));
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы установили действие своего персонажа. (( "cBLUE"/dellaction"cGRAY" ))");
        format(cstring,sizeof(cstring),"[A] Игрок %s установил действие: %s (( /adellaction %d ))",Player[playerid][uName],params[0],playerid);
		foreach(new i : Player)
		{
		    if(Player[i][uAdmin] >= 1) SendClientMessage(i,C_LIGHTRED,cstring);
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
			format(cstring,sizeof(cstring),"%s удалил ваше действие. Причина: %s",Player[playerid][uName],params[1]);
			SendClientMessage(params[0],C_LIGHTRED,cstring);
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
            //strmid(cstring,text,64,128,128);//запишем текст для переноса в переменную
           	strdel(params[0],50,128);//удалим из переменной для записи текста половину текста
           	format(cstring, sizeof(cstring), "%s\n%s", params[0], mess);//форматнем для отправки в первое сообщение
           	SetPVarInt(playerid,"playerPameText",_:CreateDynamic3DTextLabel(cstring, 0xD0D0D0AA, 0.0, 0.0, 0.4, 10.0, playerid));
		}
		else
		{
		    format(cstring, sizeof(cstring), "%s", params[0]);
			SetPVarInt(playerid,"playerPameText",_:CreateDynamic3DTextLabel(cstring, 0xD0D0D0AA, 0.0, 0.0, 0.4, 10.0, playerid));
		}
		SendClientMessage(playerid, C_GRAY, ""gbAccess"Вы успешно установили бесконечное действие над персонажем.");
		SendClientMessage(playerid, C_GRAY, ""gbInfo"Чтобы удалить используйте повторно команду - "cBLUE"(( /dellpame ))");
        format(cstring,sizeof(cstring),"[A] Игрок %s установил описание персонажа: %s (( /adellpame %d ))",Player[playerid][uName],params[0],playerid);
		foreach(new i : Player)
		{
		    if(Player[i][uAdmin] >= 1) SendClientMessage(i,C_LIGHTRED,cstring);
		}
		return true;
	}
	CMD:dellpame( playerid, params[] )
	{
		if(GetPVarInt(playerid, "playerPame") == 0) return SendClientMessage(playerid, C_GRAY, ""gbError"Вы не устанавливали описание персонажа.");
	    SetPVarInt(playerid, "playerPame", 0);
	    
	    if (IsValidDynamic3DTextLabel(Text3D:GetPVarInt(playerid, "playerPameText")))
	    	DestroyDynamic3DTextLabel(Text3D:GetPVarInt(playerid, "playerPameText"));
	    
	    SendClientMessage(playerid, C_GRAY, ""gbAccess"Вы успешно удалили описание персонажа персонажа.");
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
   		format(cstring, sizeof(cstring), "Администратор %s удалил описание вашего персонажа. Причина: %s", Player[playerid][uName],params[1]);
		SendClientMessage(params[0], C_LIGHTRED, cstring);
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
			format(cstring, sizeof(cstring), "%s\n(( %s[%d] ))",params[0],Player[playerid][uName],playerid);
			SetPVarInt(playerid, "carAction", 1);
		    V::[GetPlayerVehicleID(playerid)][vIDAction] = playerid;
		    V::[GetPlayerVehicleID(playerid)][vAction] = true;
		    V::[GetPlayerVehicleID(playerid)][vTextAction] = CreateDynamic3DTextLabel(cstring, 0xD0D0D0AA, 0.0, 0.0, 0.4, 10.0, INVALID_PLAYER_ID, GetPlayerVehicleID(playerid));
			SendClientMessage(playerid,C_GRAY,""gbAccess"Вы установили действие на транспорт. (( "cBLUE"/dcaraction"cGRAY" ))");
	        format(cstring, sizeof(cstring), "[A] Игрок %s установил действие транспорта: %s (( /adcaraction %d ))",Player[playerid][uName],params[0],GetPlayerVehicleID(playerid));
			SendAdminMessage(C_LIGHTRED, cstring);
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
			//format(cstring,sizeof(cstring),"Администратор %s удалил ваше действие транспорта. Причина: %s",AdminInfo[Player[playerid][uAdmin]],Player[playerid][uName],params[1]);
			//SendClientMessage(V::[params[0]][vIDAction],C_LIGHTRED, cstring);
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
	CMD:gps( playerid, params[] ) {
        if(GetPVarInt(playerid,"PlayerDriverCheckpoint")) return SendClientMessage(playerid,C_GRAY,""gbError"На данный момент метку снять нельзя!");
	    if(GetPVarInt(playerid,"playerUseGPS") == 0) {
	        showPlayerDialog(playerid,d_gps,2,"GPS","{FFFFFF}- Организация\n- Работы\n- Транспортная компания\n- Транспортные узлы\n- Разное\n- Поиск своего дома\n- Поиск своего автомобиля\n- Поиск своего бизнеса\n- Поиск своей квартиры\n- Популярные бизнесы","Дальше","Закрыть");
	    }
	    else {
	        SetPVarInt(playerid,"playerUseGPS",0);
            DisablePlayerCheckpoint(playerid);
			SendClientMessage(playerid,C_GRAY,""gbAccess"Вы убрали метку GPS навигатора!");
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
						format(cstring,sizeof(cstring),"{ffffff}Введите кол-во топлива, которое хотите заправить:\n\nСтоимость 1 литра: "cGREEN"$%d{ffffff}\nМаскимальное кол-во топлива: "cGREEN"%.0f{ffffff}",
						Bizz::[b][bSettings][5],MaxVehicleFuel[GetVehicleModel(GetPlayerVehicleID(playerid)) - 400] - V::[GetPlayerVehicleID(playerid)][vFuel]);
						showPlayerDialog(playerid,d_fill,1," ",cstring,"Дальше","Закрыть");
						SetPVarInt(playerid,"PlayerBizzID",b);
						break;
					}
				}
				break;
			}
		}
		return 1;
	}
	CMD:hpanel( playerid, params[] ) {
		for(new i; i != cHouses; i ++) {
		    if(IsPlayerInRangeOfPoint(playerid,50.0,H::[i][hExPos][0],H::[i][hExPos][1],H::[i][hExPos][2]) && GetPlayerVirtualWorld(playerid) == H::[i][hID]) {
		        if(!strcmp(H::[i][hOwner],Player[playerid][uName],true)) {
		            showPlayerDialog(playerid,d_house + 10,2,"Управление домом","1. "cGRAY"Информация о доме\n{ffffff}2. "cGRAY"Управление мебелью\n{ffffff}3. "cGRAY"Управление сейфом\n{ffffff}4. "cGRAY"Оплата налогов дома\n{ffffff}5. "cGRAY"Жильцы в доме","Дальше","Закрыть");
		            SetPVarInt(playerid,"PlayerHouseID", i);
		        }
		        break;
		    }
		}
		return 1;
	}
	CMD:testpanel( playerid, params[] ) {
		//SetPlayerSpecialAction(playerid, SPECIAL_ACTION_SMOKE);
		
	}
	CMD:apanel( playerid, params[] )
	{
		for(new i; i != cApartments; i ++)
		{
		    if(IsPlayerInRangeOfPoint(playerid,50.0,A::[i][aExitPos][0],A::[i][aExitPos][1],A::[i][aExitPos][2]) && GetPlayerVirtualWorld(playerid) == A::[i][aID])
			{
		        if(!strcmp(A::[i][aOwner],Player[playerid][uName],true))
				{
		            showPlayerDialog(playerid,d_apartment + 10,2,"Управление квартирой","1. "cGRAY"Информация о квартире\n{ffffff}2. "cGRAY"Управление мебелью\n{ffffff}3. "cGRAY"Управление сейфом\n{ffffff}4. "cGRAY"Оплата налогов квартиры","Дальше","Закрыть");
		            SetPVarInt(playerid,"PlayerApartmentID", i);
		        }
		        break;
		    }
		}
		return 1;
	}
	
	//nMafia[5][NarkGuper]
	CMD:priton( playerid, params[] ) {
		new bool:message = false;
		for(new i; i < 4; i ++)
		{
		    if(IsPlayerInRangeOfPoint(playerid,50.0,nMafia[i][nPos][0],nMafia[i][nPos][1],nMafia[i][nPos][2]) && GetPlayerVirtualWorld(playerid) == nMafia[i][nV])
			{
			    if(!strcmp(nMafia[i][nOwner], Player[playerid][uName], true))
				{
                    showPlayerDialog(playerid,d_priton,2,"Управление наркопритоном","1. "cGRAY"Информация о притоне{ffffff}\n2. "cGRAY"Сейф{ffffff}\n3. "cGRAY"Настройки притона{ffffff}","Дальше","Закрыть");
                    message = true;
					SetPVarInt(playerid,"PlayerPritonID",i);
					break;
			    }
			}
		}
		if(message == false) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет притона, либо Вы не внутри него!");
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
	CMD:newspanel( playerid, params[] ) {
		if(Player[playerid][uMember] != 4) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но у вас нет доступа к данной команде!");
		new status[20];
		if(EtherStatus == false) status = ""cGREEN"Свободно";
		else status = ""cRED"Уже идёт";
		format(cstring,sizeof(cstring),"1. "cGRAY"Список объявлений - "cGREEN"%i новых\n{ffffff}2. "cGRAY"Прямой эфир - %s\n{ffffff}3. "cGRAY"Пригласить человека в эфир\n{ffffff}4. "cGRAY"Приём звонков в студию - %s\n{ffffff}5. "cGRAY"Выгнать человека с эфира\n{ffffff}6. "cGRAY"Приём СМС в студию - %s",cAdvert,status,newsCalling ? (""cGREEN"Да") : (""cRED"Нет"),newsEtherSMS ? (""cGREEN"Да") : (""cRED"Нет"));
		showPlayerDialog(playerid,d_cnn + 2,2," ",cstring,"Дальше","Закрыть");
		return 1;
	}
	CMD:mpanel( playerid, params[] ) {
	    if(Player[playerid][uMember] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данное меню вам не доступно!");
	    if(Player[playerid][uMemberGang] != 0)
		{
		    switch(Gang::[GetGangServer(playerid)][gangID])
			{
				case 10, 227, 230: showPlayerDialog(playerid,d_gang + 2,2," ","1. "cGRAY"Информация об организации{ffffff}\n2. "cGRAY"Настройки организации{ffffff}\n3. "cGRAY"Информаторы{ffffff}\n4. "cGRAY"Управление транспортом{ffffff}\n5. "cGRAY"Просмотр состава\n6. "cGRAY"Зареспавнить авто","Дальше","Закрыть"); //диалог для мафий!
		  		case 236, 155, 238, 7, 9, 39, 2: showPlayerDialog(playerid,d_gang + 27,2," ","1. "cGRAY"Информация об организации{ffffff}\n2. "cGRAY"Настройки организации{ffffff}\n3. "cGRAY"Информаторы{ffffff}\n4. "cGRAY"Просмотр состава","Дальше","Закрыть"); //диалог для байкеров и банд!
		      	//case 2: showPlayerDialog(playerid,d_gang + 2,2," ","1. "cGRAY"Информация об организации{ffffff}\n2. "cGRAY"Настройки организации{ffffff}\n3. "cGRAY"Информаторы{ffffff}\n4. "cGRAY"Управление транспортом{ffffff}\n5. "cGRAY"Просмотр состава\n6. "cGRAY"Зареспавнить авто","Дальше","Закрыть"); // Показ информации для байкеров!
				default: SendClientMessage(playerid,C_GRAY,""gbError"Данное меню вам не доступно, используйте (/gpanel)!");
			}
		}
		else return SendClientMessage(playerid,C_GRAY,""gbError"Вы не состоите в какой либо группировке!");
		return 1;
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
	CMD:gethere( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	    if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
        if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /gethere [ id ]");
        if(!IsPlayerConnected(params[0]) || Player[params[0]][uAdmin] > Player[playerid][uAdmin]  || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,"Неверный ID игрока!");
		new Float:p[3];
		GetPlayerPos(playerid,p[0],p[1],p[2]);
		SendClientMessage(playerid,C_GRAY,""gbAccess"Вы телепортировали игрока к себе!");
		format(cstring,sizeof(cstring),""gbInfo"%s - телепортировал вас к себе!",Player[playerid][uName]);
		SendClientMessage(params[0],C_GRAY,cstring);
		if(GetPlayerState(params[0]) == PLAYER_STATE_DRIVER) {
		    new Float:vp[3];
		    GetVehicleVelocity(GetPlayerVehicleID(params[0]),vp[0],vp[1],vp[2]);
		    setVehiclePos(GetPlayerVehicleID(params[0]),p[0] + 1.0,p[1] + 1.0,p[2] + 1.0);
		    SetVehicleVelocity(GetPlayerVehicleID(params[0]),vp[0],vp[1],vp[2]);
		}
		else setPlayerPos(params[0],p[0] + 1.0,p[1] + 1.0,p[2]);
		SetPlayerVirtualWorld(params[0],GetPlayerVirtualWorld(playerid));
  		SetPlayerInterior(params[0],GetPlayerInterior(playerid));
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
	    format(cstring, sizeof(cstring), "[A] Администратор %s дал пинка %s",Player[playerid][uName], Player[params[0]][uName]);
	    SendAdminMessage(C_LIGHTRED,cstring);
	    SendClientMessage(params[0], C_LIGHTRED, cstring);
		return 1;
	}
	CMD:sp( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /sp [ id ]");
		if(!IsPlayerConnected(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Игрока нет в сети!");
		if(params[0] == playerid) return SendClientMessage(playerid, C_GRAY, ""gbError"Вы не можете наблюдать за собой!");
		StartSpecPanel(playerid, params[0]);
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
	    return 1;
	}
	CMD:unmute( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	    if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
	    if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unmute [ id ]");
	    if(!IsPlayerConnected(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
	    if(Player[params[0]][uMute] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У данного игрока нет блокировки чата!");
	    format(cstring,sizeof(cstring),"Администратор %s снял молчанку с %s.",Player[playerid][uName],Player[params[0]][uName]);
		SendAdminMessageToAll(C_LIGHTRED,cstring,params[0]);
	    Player[params[0]][uMute] = 0;
	    nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uMute" , Player[params[0]][uMute]);
	    return 1;
	}
	CMD:unwarn( playerid, params[] ) {
	    if(Player[playerid][uAdmin] < 4) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	    if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
	    if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /unwarn [ id ]");
	    if(!IsPlayerConnected(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
	    if(Player[params[0]][uWarn] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У данного игрока нет предупреждений!");
	    format(cstring,sizeof(cstring),"Администратор %s снял все предупреждения с %s.",Player[playerid][uName],Player[params[0]][uName]);
		SendAdminMessageToAll(C_LIGHTRED,cstring,params[0]);
	    Player[params[0]][uWarn] = 0;
	    nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uWarn" , Player[params[0]][uWarn]);
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
		format(cstring,sizeof(cstring),"Администратор %s выдал молчанку %s на %d минут. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1],params[2]);
		SendAdminMessageToAll(C_LIGHTRED,cstring,params[0]);
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
		format(cstring,sizeof(cstring),"Администратор %s выдал молчанку OOC чата %s на %d минут. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1],params[2]);
		SendAdminMessageToAll(C_LIGHTRED,cstring,params[0]);
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
	    format(cstring,sizeof(cstring),"Администратор %s снял молчанку OOC x с %s.",Player[playerid][uName],Player[params[0]][uName]);
		SendAdminMessageToAll(C_LIGHTRED,cstring,params[0]);
	    Player[params[0]][uBMute] = 0;
	    nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uBMute" , Player[params[0]][uBMute]);
	    return 1;
	}
	CMD:warn( playerid, params[] ) {
		if(Player[playerid][uAdmin] < 2) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "ds[32]", params[0],params[1])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /warn [ id ] [ reason ]");
		if(!IsPlayerConnected(params[0]) || IsKicked(params[0]) || params[0] == playerid || Player[playerid][uAdmin] < Player[params[0]][uAdmin] || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
		new unbandate;
		if(Player[params[0]][uAdmin] > 0)
		{
		    unbandate = gettime() + 10 * 86400;
		    nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "uBanPlayer" , unbandate);
		    SendClientMessage(playerid, C_LIGHTRED, "Вы были заблокированы за блокировку администратора!");
		    SendClientMessage(playerid, C_LIGHTRED, "Чтобы снять блокировку, обратитесь к администратору!");
            //nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uRetest" , 1);
		    NewKick(playerid);
		}
		if(Player[params[0]][uWarn] == 3)
		{
      		format(cstring,sizeof(cstring),"Администратор %s забанил игрока %s навсегда. ( 3 предупреждения ) Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1]);
			SendAdminMessageToAll(C_LIGHTRED,cstring,params[0]);
			new ip[32], dates[16];
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
			    NewKick(playerid);
			}
			Player[params[0]][uBanPlayer] = unbandate;
			nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uBanPlayer" , Player[params[0]][uBanPlayer]);

			format(cstring,sizeof(cstring), "INSERT INTO gb_bans (name, ip, bandate, time, unbandate, reason, adminban) VALUES ('%s', '%s', '%s', %d, %d, '%s', '%s')", Player[params[0]][uName], ip, dates, "900", unbandate, params[2], Player[playerid][uName]);
			mysql_tquery(1, cstring, "", "");
		}
		else
		{
		    Player[params[0]][uWarn]++;
			nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uWarn" , Player[params[0]][uWarn]);
			format(cstring,sizeof(cstring),"Администратор %s выдал warn игроку %s. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[1]);
            nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uRetest" , 1);
			SendAdminMessageToAll(C_LIGHTRED,cstring,params[0]);
			NewKick(params[0]);
		}
		return 1;
	}
	CMD:afk( playerid, params[] )
	{
        if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /afk [ ID игрока ]");
        format(cstring,sizeof(cstring),"%s - %d",Player[params[0]][uName],GetPVarInt(params[0],"PlayerAFK"));
        SendClientMessage(playerid,C_GRAY,cstring);
	    return 1;
	}
	CMD:aafk( playerid, params[] )
	{
        if(Player[playerid][uAdmin] < 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
        if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /aafk [ время ]");
        new strst[500], bool: trent = false, count = 0;
        foreach(new i : Player)
        {
            if(GetPVarInt(i, "uLogin") == 0) continue;
            if(GetPVarInt(i,"PlayerAFK") < params[0]) continue;
            format(strst,sizeof(strst),"%s [%d] - %d sec\n", Player[i][uName], i, GetPVarInt(i,"PlayerAFK"));
			strcat(cstring,strst);
			count++;
			trent = true;
			if(count > 30) break;
        }
        if(trent == false) return SendClientMessage(playerid, C_GRAY, ""gbError"Не найдено игроков в AFK");
        showPlayerDialog(playerid,9999,0,"Игроки в AFK",cstring,"Закрыть","");
	    return 1;
	}
	CMD:iban( playerid, params[] )
	{
		if(Player[playerid][uAdmin] <  4) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
		if(GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для использования данной команды вы должны подтвердить свой пароль!");
		if(sscanf(params, "us[32]", params[0],params[2])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /iban [ id ] [ reason ]");
		if(!IsPlayerConnected(params[0]) || IsKicked(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID игрока!");
		new ip[32], dates[16], unbandate;
		format(cstring,sizeof(cstring),"Администратор %s забанил игрока %s навсегда. Причина: %s",Player[playerid][uName],Player[params[0]][uName],params[2]);
		SendAdminMessageToAll(C_LIGHTRED,cstring,params[0]);
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
		    NewKick(playerid);
		}
		Player[params[0]][uBanPlayer] = unbandate;
		nowUpdateInfo(params[0] , "d" , "gb_users" , "uName" , "uBanPlayer" , Player[params[0]][uBanPlayer]);

		format(cstring,sizeof(cstring), "INSERT INTO gb_bans (name, ip, bandate, time, unbandate, reason, adminban) VALUES ('%s', '%s', '%s', %d, %d, '%s', '%s')", Player[params[0]][uName], ip, dates, "900", unbandate, params[2], Player[playerid][uName]);
		mysql_tquery(1, cstring, "", "");
		NewKick(params[0]);
		return 1;
	}