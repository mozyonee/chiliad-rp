#include <YSI\y_hooks>

CMD:n( playerid, params[] ) {
	if(Player[playerid][uMute] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено писать что-то!");
	if(newsLeaderEther != playerid && newsClientEther != playerid) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не начинали эфир или вас не приглашали в него!");
	if(sscanf(params, "s[128]", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /n [ текст ]");
	if(
		( GetPlayerVehicleID(playerid) >= smicars[0] && GetPlayerVehicleID(playerid) <= smicars[1] ) 
		|| ( IsPlayerInRangeOfPoint( playerid, 7.0, 1652.4156, -1628.4600, 4698.9738 ) ) ) {
		format( gb_string, sizeof gb_string,"[SAN Эфир] %s: %s", GetCharacterName( playerid ), params[0]);
		foreach(new i : Player) 
		{
			if( !Player[ i ][uEther] )
				continue;
				
			SendClientMessage( i, 0x42E73AAA, gb_string );
		}
	}
	else SendMes( playerid, C_GRAY, ""gbError"У вас нет нужного оборудования!");
	return true;
}

CMD:newspanel( playerid, params[] ) {
	if( Player[playerid][uMember] != 4) return SendMes( playerid, C_GRAY, ""gbError"Простите, но у вас нет доступа к данной команде!" );
	format( vb_string, sizeof vb_string, 
		"1. "cGRAY"Список объявлений - "cGREEN"%i новыx\
		\n{ffffff}2. "cGRAY"Прямой эфир - %s\
		\n{ffffff}3. "cGRAY"Пригласить человека в эфир\
		\n{ffffff}4. "cGRAY"Приём звонков в студию - %s\
		\n{ffffff}5. "cGRAY"Выгнать человека с эфира\
		\n{ffffff}6. "cGRAY"Приём СМС в студию - %s", 
		cAdvert, EtherStatus ? (""cRED"Уже идёт"):(""cGREEN"Свободно"),
		newsCalling ? (""cGREEN"Да") : (""cRED"Нет"), newsEtherSMS ? (""cGREEN"Да") : (""cRED"Нет"));
	showPlayerDialog(playerid,d_cnn + 2,2," ",vb_string,"Далее","Закрыть");
	return true;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	switch( dialogid ) {
		case d_cnn: {
			if(!response) return 1;
			showPlayerDialog(playerid,d_cnn + 1,1," ","{ffffff}Введите в окошечко текст для подачи объявления:\n\n"cGREEN"| Стоимость объявления - $30","Далее","Закрыть");
		}
		case d_cnn + 1: {
			if(!response) return 1;
			if(!strlen(inputtext)) return showPlayerDialog(playerid,d_cnn + 1,1," ","{ffffff}Введите в окошечко текст для подачи объявления:\n\n"cGREEN"| Стоимость объявления - $30","Далее","Закрыть");
			if(Player[playerid][uMoney] < 30) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно средств для подачи объявления!");
			if(strlen(inputtext) > 100) return SendClientMessage(playerid,C_GRAY,""gbError"Максимальная длина сообщения 100 символов!");
			new bool:countAdvert = false;
			for(new i; i != MAX_ADVERT_INFO; i ++) {
				if(AD::[i][adPhone] == 0) {
					AD::[i][adPhone] = Player[playerid][uNumber];
					strmid(AD::[i][adText],inputtext,0,strlen(inputtext),128);
					strmid(AD::[i][adName],Player[playerid][uName],0,strlen(Player[playerid][uName]),MAX_PLAYER_NAME);
					AD::[i][adUsed] = false;
					countAdvert = true;
					cAdvert ++;
					break;
				}
			}
			if(countAdvert == false) 
				return SendClientMessage(playerid,C_GRAY,""gbError"В SAN слишком много объявлений, приходите попозже.");
			Player[playerid][uMoney] -= 30;
			format(query,sizeof(query),"UPDATE gb_users SET uMoney = '%d' WHERE BINARY uName = '%s'",Player[playerid][uMoney],Player[playerid][uName]);
			mysql_tquery(1, query, "", "");
			SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно подали заявку на объявление!");
		}
		case d_cnn + 2: {
			if(!response) return 1;
			switch(listitem) {
				case 0: {
					for(new i; i != MAX_ADVERT_INFO; i ++) {
						if(AD::[i][adPhone] != 0) {
							format( gb_string, sizeof gb_string,"{ffffff}%i. "cGRAY"Прислал "cBLUE"%s"cGRAY" \
								( "cBLUE"%d"cGRAY" ) %s\n",i + 1, AD::[i][adName], AD::[i][adPhone], 
								AD::[i][adUsed] ? (""cGREEN"Проверяется"):(" ") );
							strcat( vb_string, gb_string );
						}
						else {
							format( gb_string, sizeof gb_string,"{ffffff}%i. "cGRAY"-\n",i + 1);
							strcat( vb_string, gb_string );
						}
					}
					showPlayerDialog( playerid, d_cnn + 3, 2, " ", vb_string, "Далее", "Закрыть" );
				}
				case 1: {
					if( newsLeaderEther == playerid ) {
						if( GetPlayerVehicleID(playerid) >= smicars[0] && GetPlayerVehicleID(playerid) <= smicars[1]
							|| ( IsPlayerInRangeOfPoint( playerid, 7.0, 1652.4156, -1628.4600, 4698.9738 ) ) ) {
							if(EtherStatus == true) {
								EtherStatus = false;
								newsLeaderEther = INVALID_PLAYER_ID;
								if( newsClientEther != INVALID_PLAYER_ID ) {
									D::[newsClientEther][dPhone] = false;
									PhoneStatus(newsClientEther,false);
									newsClientEther = INVALID_PLAYER_ID;
								}	
			    				SendMes( playerid, C_GRAY, ""gbAccess"Вы вышли и закончили эфир!" );
							}
						}
						else SendClientMessage(playerid,C_GRAY,""gbError"У вас нет нужного оборудования для проведения эфира!");
					}
					else if( newsLeaderEther != playerid && newsLeaderEther == INVALID_PLAYER_ID ) {
						if( GetPlayerVehicleID(playerid) >= smicars[0] && GetPlayerVehicleID(playerid) <= smicars[1] 
							|| ( IsPlayerInRangeOfPoint( playerid, 7.0, 1652.4156, -1628.4600, 4698.9738 ) ) ) {
							if(EtherStatus == false) {
								newsLeaderEther = playerid;
								EtherStatus = true;
								SendClientMessage(playerid,C_GRAY,""gbAccess"Вы начали эфир, что бы закончить его сделайте ту же операцию с эфиром! (( "cBLUE"/n [ текст ] {ffffff}))");
							}
						}
						else SendClientMessage(playerid,C_GRAY,""gbError"У вас нет нужного оборудования для проведения эфира!");
					}
					else if(newsLeaderEther != playerid && newsLeaderEther != INVALID_PLAYER_ID) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но эфир ведёте не вы!");
				}
				case 2: {
					if(newsClientEther != INVALID_PLAYER_ID) return SendClientMessage(playerid,C_GRAY,""gbError"В эфире уже кто-то сидит, нельзя пригласить другого!");
					showPlayerDialog(playerid,d_cnn + 7,1," ","{ffffff}Введите ID человека которого хотите пригласить в эфир:","Далее","Закрыть");
				}
				case 3: {
					if(newsCalling == false) {
						newsCalling = true;
						SendClientMessage(playerid,C_GRAY,""gbAccess"Вы включили приём звонков в эфир!");
					}
					else {
						newsCalling = false;
						SendClientMessage(playerid,C_GRAY,""gbAccess"Вы выключили приём звонков в эфир!");
					}
				}
				case 4: {
					if(newsClientEther == INVALID_PLAYER_ID) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но нет никого кто бы сидел в эфире!");
					if(D::[newsClientEther][dPhone] == true) PhoneStatus(newsClientEther,false);
					SendClientMessage(newsClientEther,C_GRAY,""gbInfo"Вас выгнали с прямого эфира!");
					newsClientEther = INVALID_PLAYER_ID;
				}
				case 5: {
					if(newsEtherSMS == false) {
						newsEtherSMS = true;
						SendClientMessage(playerid,C_GRAY,""gbAccess"Вы включили приём СМС в эфир!");
						SendClientMessage(playerid,C_GRAY,""gbInfo"Номер студии - "cBLUE"777");
					}
					else {
						newsEtherSMS = false;
						SendClientMessage(playerid,C_GRAY,""gbAccess"Вы выключили приём СМС в эфир!");
					}
				}
			}
		}
		case d_cnn + 3: {
			if(!response) return 1;
			if(AD::[listitem][adPhone] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Это место под заявку пустое!");
			if(AD::[listitem][adUsed] == true) return SendClientMessage(playerid,C_GRAY,""gbError"Это объявление уже кто-то просматривает!");
			SetPVarInt(playerid, "AdvertID", listitem);
			AD::[GetPVarInt(playerid,"AdvertID")][adUsed] = true;
			showPlayerDialog(playerid,d_cnn + 4,2," ","{ffffff}1. "cGRAY"Прочитать объявление\n{ffffff}2. "cGRAY"Редактировать объявление\n{ffffff}3. "cGRAY"Удалить объявление\n{ffffff}4. "cGRAY"Отправить объявление","Далее","Закрыть");
		}
		case d_cnn + 4: {
			if(!response) {
				AD::[GetPVarInt(playerid,"AdvertID")][adUsed] = false;
				SetPVarInt(playerid, "AdvertID", -1);
				return 1;
			}
			switch(listitem) {
				case 0: {
					format(gb_string,sizeof(gb_string),""cBLUE"Текст:\n\n{ffffff}%s\n\n"cGRAY"Прислал: "cBLUE"%s"cGRAY" ( "cBLUE"%d "cGRAY")",AD::[GetPVarInt(playerid,"AdvertID")][adText],AD::[GetPVarInt(playerid,"AdvertID")][adName],AD::[GetPVarInt(playerid,"AdvertID")][adPhone]);
					showPlayerDialog(playerid,d_cnn + 5,0," ",gb_string,"Назад","");
				}
				case 1: {
					format(gb_string,sizeof(gb_string),""cBLUE"Текст:\n\n{ffffff}%s\n\n"cGRAY"Прислал: "cBLUE"%s"cGRAY" ( "cBLUE"%d "cGRAY")",AD::[GetPVarInt(playerid,"AdvertID")][adText],AD::[GetPVarInt(playerid,"AdvertID")][adName],AD::[GetPVarInt(playerid,"AdvertID")][adPhone]);
					showPlayerDialog(playerid,d_cnn + 6,1," ",gb_string,"Да","Закрыть");
				}
				case 2: {
					new id = GetPVarInt(playerid, "AdvertID");
					DeletePVar(playerid, "AdvertID");
					AD::[id][adUsed] = false;
					AD::[id][adPhone] = 0;
					cAdvert --;
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно удалили это объявление!");
				}
				case 3: {
					foreach(new i : Player) {
						if(IsPlayerInAnyVehicle(i)) {
						    //Player[playerid][uEther]
							format(gb_string,sizeof(gb_string),"Объявление: %s. Тел: %d.",AD::[GetPVarInt(playerid, "AdvertID")][adText],AD::[GetPVarInt(playerid, "AdvertID")][adPhone]);
							SendClientMessage(i,C_GREEN,gb_string);
							format(gb_string,sizeof(gb_string),"Отредактировал %s %s",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName]);
							SendClientMessage(i,C_GREEN,gb_string);
						}
						else {
							if(Player[i][uSettings][4] == 1 && _itemsInfo[Inv[i][invSlot][55]][invObject] != 0) {
								format(gb_string,sizeof(gb_string),"Объявление: %s. Тел: %d.",AD::[GetPVarInt(playerid, "AdvertID")][adText],AD::[GetPVarInt(playerid, "AdvertID")][adPhone]);
								SendClientMessage(i,C_GREEN,gb_string);
								format(gb_string,sizeof(gb_string),"Отредактировал %s %s",FRank[Player[playerid][uMember]][Player[playerid][uRank] - 1],Player[playerid][uName]);
								SendClientMessage(i,C_GREEN,gb_string);
							}
						}
					}
					new id = GetPVarInt(playerid, "AdvertID");
					DeletePVar(playerid, "AdvertID");
					AD::[id][adUsed] = false;
					AD::[id][adPhone] = 0;
					cAdvert --;
				}
			}
		}
		case d_cnn + 5: showPlayerDialog(playerid,d_cnn + 4,2," ","{ffffff}1. "cGRAY"Прочитать объявление\n{ffffff}2. "cGRAY"Редактировать объявление\n{ffffff}3. "cGRAY"Удалить объявление\n{ffffff}4. "cGRAY"Отправить объявление","Далее","Закрыть");
		case d_cnn + 6: {
			if(!response) return showPlayerDialog(playerid,d_cnn + 4,2," ","{ffffff}1. "cGRAY"Прочитать объявление\n{ffffff}2. "cGRAY"Редактировать объявление\n{ffffff}3. "cGRAY"Удалить объявление\n{ffffff}4. "cGRAY"Отправить объявление","Далее","Закрыть");
			new text[100];
			if(sscanf(inputtext, "s[100]",text)) {
				format(gb_string,sizeof(gb_string),""cBLUE"Текст:\n\n{ffffff}%s\n\n"cGRAY"Прислал: "cBLUE"%s"cGRAY" ( "cBLUE"%d "cGRAY")",AD::[GetPVarInt(playerid,"AdvertID")][adText],AD::[GetPVarInt(playerid,"AdvertID")][adName],AD::[GetPVarInt(playerid,"AdvertID")][adPhone]);
				return showPlayerDialog(playerid,d_cnn + 6,1," ",gb_string,"Далее","Закрыть");
			}
			strmid(AD::[GetPVarInt(playerid, "AdvertID")][adText],text,0,strlen(text),sizeof(text));
			SendClientMessage(playerid,C_GRAY,""gbAccess"Сообщение было отредактировано и сохранено!");
			showPlayerDialog(playerid,d_cnn + 4,2," ","{ffffff}1. "cGRAY"Прочитать объявление\n{ffffff}2. "cGRAY"Редактировать объявление\n{ffffff}3. "cGRAY"Удалить объявление\n{ffffff}4. "cGRAY"Отправить объявление","Далее","Закрыть");
		}
		case d_cnn + 7: {
			if(!response) return 1;
			if(!strlen(inputtext)) return showPlayerDialog(playerid,d_cnn + 7,1," ","{ffffff}Введите ID человека которого хотите пригласить в эфир:","Далее","Закрыть");
			if(!isNumeric(inputtext)) return showPlayerDialog(playerid,d_cnn + 7,1," ","{ffffff}Введите ID человека которого хотите пригласить в эфир:","Далее","Закрыть");
			if(strval(inputtext) == playerid) return showPlayerDialog(playerid,d_cnn + 7,1," ","{ffffff}Введите ID человека которого хотите пригласить в эфир:","Далее","Закрыть");
			if(GetDistanceBetweenPlayers(playerid,strval(inputtext)) > 3.0) return SendClientMessage(playerid,C_GRAY,""gbError"Данный человек слишком далеко от вас!");
            if(!IsPlayerConnected(strval(inputtext))) return SendClientMessage(playerid,C_GRAY,""gbError"Данный человек слишком далеко от вас!");
			showPlayerDialog(strval(inputtext),d_cnn + 8,0," ","{ffffff}Вас приглашают в эфир, вы согласны?","Да","Нет");
			SendClientMessage(playerid,C_GRAY,""gbAccess"Вы пригласили кого-то в эфир, ждите ответа!");
		}
		case d_cnn + 8: {
			if(response) {
				if(D::[playerid][dPhone] == true) return SendClientMessage(playerid,C_GRAY,""gbError"Сначала закончите разговаривать по телефону!");
				if(newsClientEther != INVALID_PLAYER_ID) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но кто-то уже принял предложение на эфир!");
				SendClientMessage(newsLeaderEther,C_GRAY,""gbInfo"Человек которого вы позвали присоеденился к эфиру!");
				newsClientEther = playerid;
				SendClientMessage(playerid,C_GRAY,""gbInfo"Чтобы писать в эфир, Вы должны находится в транспорте SAN. Используйте "cBLUE"/n");
			}
			else SendClientMessage(newsLeaderEther,C_GRAY,""gbError"Человек отказался присодиняться к эфиру!");
		}
	}	
	return true;
}