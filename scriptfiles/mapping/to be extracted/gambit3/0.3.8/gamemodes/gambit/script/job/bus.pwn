#include <YSI\y_hooks>


hook OnPlayerDeath( playerid, killerid, reason ) 
{
	if(GetPVarInt(playerid,"BusToGo") != -1) BUS::[GetPVarInt(playerid,"BusToGo")][busPlayers] --;
	return true;
}

hook OnPlayerStateChange(playerid, newstate, oldstate) {
	new car = GetPlayerVehicleID( playerid );
	switch(newstate) {
		case PLAYER_STATE_DRIVER: {
			if(car >= buscars[0] && car <= buscars[1]) {
			    if(Player[playerid][uJob] == 2 && D::[playerid][dBusDuty] == true && D::[playerid][dBusKey] == car) {
			        if(GetPVarInt(playerid,"BusToGo") == -1) {
			        	new listitem = random(MAX_MARSH);
			        	BUS::[listitem][busPlayers] ++;
			    		SetPVarInt(playerid,"BusToGo",listitem);
		    			SetPVarInt(playerid,"BusToGoCP",0);
		    			new id = GetPVarInt(playerid,"BusToGoCP");
		    			SetPVarInt(playerid,"CheckBus",_:SetPlayerRaceCheckpoint(playerid,0,BusMarsh[listitem][id][0],BusMarsh[listitem][id][1],BusMarsh[listitem][id][2],BusMarsh[listitem][id + 1][0],BusMarsh[listitem][id + 1][1],BusMarsh[listitem][id + 1][2],5.0));
                        format( gb_string,sizeof(gb_string),"%s\n{ffffff}Стоимость проезда: "cGREEN"$%d",BUS::[listitem][busName],S::[0][sMeria][1]);
						V::[car][vBusText] = CreateDynamic3DTextLabel(gb_string, C_BLUE, 0.0,0.0,3.0, 30.0, INVALID_PLAYER_ID, car, 1);
					}
					else {
					    if(GetPVarInt(playerid,"CountBackToBus") != 0) {
					        if(V::[car][vBusDriver] == playerid && D::[playerid][dBusKey] == car) {
					            SetPVarInt(playerid,"CountBackToBus",0);
								new id = GetPVarInt(playerid,"BusToGoCP"),listitem = GetPVarInt(playerid,"BusToGo");
		    					SetPVarInt(playerid,"CheckBus",_:SetPlayerRaceCheckpoint(playerid,0,BusMarsh[listitem][id][0],BusMarsh[listitem][id][1],BusMarsh[listitem][id][2],BusMarsh[listitem][id + 1][0],BusMarsh[listitem][id + 1][1],BusMarsh[listitem][id + 1][2],5.0));
							}
					    }
					}
				}
				else {
				    GetVehicleParamsEx(car,eng,light,other1,other2,other3,other4,other5);
				    SetVehicleParamsEx(car,false,light,other1,other2,other3,other4,other5);
				    return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет ключей от данного транспорта!");
				}
			}
		}
	}	
	return true;
}

hook OnPlayerDisconnect( playerid, reason ) {
	if(D::[playerid][dBusKey] != -1 && V::[D::[playerid][dBusKey]][vBusDriver] == playerid) {
        if(D::[playerid][dBusDuty] == true) Player[playerid][uBusNoZp] = gettime();
        format(query,sizeof(query),"UPDATE gb_users SET uBusNoZp = '%d' WHERE BINARY uName = '%s'",Player[playerid][uBusNoZp],Player[playerid][uName]);
		mysql_tquery( mysql, query, "", "");
		SetVehicleToRespawn(D::[playerid][dBusKey]);
		if(GetPVarInt(playerid,"BusToGo") != -1) BUS::[GetPVarInt(playerid,"BusToGo")][busPlayers] --;
    }
	return true;
}

hook OnPlayerEnterRaceCheckpoint( playerid ) {
	if(GetPVarInt(playerid,"CheckBus") && GetPVarInt(playerid,"BusToGo") != -1) {
	    new marsh = GetPVarInt(playerid,"BusToGo");
	    new id = GetPVarInt(playerid,"BusToGoCP");
	    if(IsPlayerInRangeOfPoint(playerid,5.0,BusMarsh[marsh][id][0],BusMarsh[marsh][id][1],BusMarsh[marsh][id][2])) {
	    	SetPVarInt(playerid,"BusToGoCP",GetPVarInt(playerid,"BusToGoCP") + 1);
	    	new check = GetPVarInt(playerid,"BusToGoCP");
	    	if(BusMarsh[marsh][check][3] == 0.0) SetPVarInt(playerid,"CheckBus",_:SetPlayerRaceCheckpoint(playerid,0,BusMarsh[marsh][check][0],BusMarsh[marsh][check][1],BusMarsh[marsh][check][2],BusMarsh[marsh][check + 1][0],BusMarsh[marsh][check + 1][1],BusMarsh[marsh][check + 1][2],5.0));
	    	if(BusMarsh[marsh][check][3] == 1.0) SetPVarInt(playerid,"CheckBus",_:SetPlayerRaceCheckpoint(playerid,1,BusMarsh[marsh][check][0],BusMarsh[marsh][check][1],BusMarsh[marsh][check][2],BusMarsh[marsh][check + 1][0],BusMarsh[marsh][check + 1][1],BusMarsh[marsh][check + 1][2],5.0));
	    	if(BusMarsh[marsh][check][3] == 2.0) SetPVarInt(playerid,"CheckBus",_:SetPlayerRaceCheckpoint(playerid,1,BusMarsh[marsh][check][0],BusMarsh[marsh][check][1],BusMarsh[marsh][check][2],BusMarsh[marsh][check + 1][0],BusMarsh[marsh][check + 1][1],BusMarsh[marsh][check + 1][2],5.0));
            if(BusMarsh[marsh][check - 1][3] == 1.0) {
                togglePlayerControllable(playerid,false);
                SetPVarInt(playerid,"playerFreezingTime",MAX_TIME_UNFREEZE_J);
            }

			SetPVarInt(playerid, "BusValue", GetPVarInt(playerid, "BusValue") + 1);
			if(GetPVarInt(playerid, "BusValue") >= 5)
			{
			    if(JobValueNow(playerid, 1, 40, Player[playerid][uJob]) != 0) DeletePVar(playerid, "BusValue");
				else
				{
                    SetVehicleToRespawn(GetPlayerVehicleID(playerid));
					togglePlayerControllable(playerid,true);
				}
			}
			
			if(BusMarsh[marsh][check][0] == 0.0 && BusMarsh[marsh][check][1] == 0.0 && BusMarsh[marsh][check][2] == 0.0) 
			{
	    		DisablePlayerRaceCheckpoint(playerid);
	    		
	    		if (IsValidDynamic3DTextLabel(V::[GetPlayerVehicleID(playerid)][vBusText]))
				{
	    			DestroyDynamic3DTextLabel(V::[GetPlayerVehicleID(playerid)][vBusText]);
					V::[GetPlayerVehicleID(playerid)][vBusText] = Text3D: INVALID_3DTEXT_ID;
	    		}
				
	    		togglePlayerControllable(playerid,false);
	    		BUS::[GetPVarInt(playerid,"BusToGo")][busPlayers] --;
	    		if(Player[playerid][uBusSkill] != 150) Player[playerid][uBusSkill] ++;
	    		format(query,sizeof(query),"UPDATE gb_users SET uBusSkill = '%d' WHERE BINARY uName = '%s'",Player[playerid][uBusSkill],Player[playerid][uName]);
				mysql_tquery( mysql, query, "", "");
				SetPVarInt(playerid,"SelectNextMarsh",1);
	    		return showPlayerDialog(playerid,d_bus + 1,0,"Маршрут",""cBLUE"Вы закончили свой маршрут!\n\n{ffffff}Хотите продолжить или закончить?","Продолжить","Закончить");
	    	}
		}
	}
	return true;
}	

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	switch( dialogid ) {
		case d_bus: {
		    if(!response) return 1;
		    switch(listitem) {
		        case 0: {
		            if(Player[playerid][uMember] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вам запрещено работать на работе!");
		            if(Player[playerid][uJob] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вы уже работаете где-то!");
                    if(Player[playerid][uLicenses][0] == 0) return SendClientMessage(playerid,C_GRAY,""gbError"Для устройства на данную работу, вам необходимо водительское удостоверение!");
                    new bool:cuff = false;
			    	for(new i; i != 48; i++) {
						if(Inv[playerid][invSlot][i] == 452) cuff = true;
					}
					if(cuff == false) return SendClientMessage(playerid,C_GRAY,""gbError"Для устройства на данную работу, вам необходим документ подтверждающий личность!");
					Player[playerid][uJob] = 2;
		            mysql_format(1, query,sizeof(query),"UPDATE gb_users SET uJob = '%d' WHERE BINARY uName = '%s'",Player[playerid][uJob],Player[playerid][uName]);
					mysql_tquery(1, query, "", "");
		            MeAction(playerid,"устраивается на работу",1);
		            SendClientMessage(playerid,C_GRAY,""gbAccess"Вы устроились на работу водителя автобуса в автостанции!");
		            SendClientMessage(playerid,C_GRAY,""gbInfo"Все необходимые команды вы можете увидеть в - (( "cBLUE"Y - Игровое меню/Команды сервера{ffffff} ))");
		        }
		        case 1: {
		            if(Player[playerid][uJob] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вы не работаете водителем автобуса!");
					if(D::[playerid][dBusDuty] == true) return SendClientMessage(playerid,C_GRAY,""gbError"Сначала закончите рабочий день, а потом увольняйтесь.");
					Player[playerid][uJob] = 0;
		            mysql_format(1, query,sizeof(query),"UPDATE gb_users SET uJob = '%d',uBusNoZp = '%d' WHERE BINARY uName = '%s'",Player[playerid][uJob],Player[playerid][uBusNoZp],Player[playerid][uName]);
					mysql_tquery(1, query, "", "");
		            MeAction(playerid,"увольняется с работы",1);
		            DisablePlayerCheckpoint(playerid);
		            SendClientMessage(playerid,C_GRAY,""gbAccess"Вы уволились с работы водителя автобуса!");
		        }
		        case 2: {
		            if(Player[playerid][uJob] != 2) return SendClientMessage(playerid,C_GRAY,""gbError"Простите, но вы не работаете водителем автобуса!");
                    if(Player[playerid][uJobValue] <= 1) return SendClientMessage(playerid,C_GRAY,""gbError"У вас не достаточно очков работы");
					if(D::[playerid][dBusDuty] == false) {
						new bool:flag = false;
						for(new i = buscars[0]; i != buscars[1]; i++) {
							if(V::[i][vBusDriver] == -1) {
								switch(Player[playerid][uBusSkill]) {
								    case 0 .. 50: {
								        if(GetVehicleModel(i) == 431) {
								            D::[playerid][dBusKey] = i;
											V::[i][vBusDriver] = playerid;
											flag = true;
											break;
								        }
								    }
								    case 51 .. 9999: {
								        if(GetVehicleModel(i) == 437) {
								        	D::[playerid][dBusKey] = i;
											V::[i][vBusDriver] = playerid;
											flag = true;
											break;
								        }
								    }
								}
							}
						}
						if(flag == false) return SendClientMessage(playerid,C_GRAY,""gbError"У автостанции закончились автобусы, подходящие Вам по стажу.");
						if(flag == true) {
							new Float:p[3];
							MeAction(playerid,"получил(-а) ключи от рабочего авто",1);
							SendClientMessage(playerid,C_GRAY,""gbAccess"Вы получили ключи от одного из автобусов, он стоит на парковке.");
							GetVehiclePos(D::[playerid][dBusKey],p[0],p[1],p[2]);
							SetPlayerCheckpoint(playerid,p[0],p[1],p[2],5.0);
							D::[playerid][dBusDuty] = true;
						}
					}
					else {
					    D::[playerid][dBusDuty] = false;
				     	showPlayerDialog(playerid,9999,0," ","{ffffff}Ваш рабочий день закончен!\n\n"cGREEN"| Ваша зарплата перечислена на чековую книжку.\n"gbError"Снять деньги с чековой книжки можно в банке","Закрыть","");
					    MeAction(playerid,"закончил(-а) свой рабочий день и получает зарплату",1);
					    if(D::[playerid][dBusKey] != -1) SetVehicleToRespawn(D::[playerid][dBusKey]);
					    DisablePlayerCheckpoint(playerid);
					}
		        }
		        case 3: {
		        	gb_string = "";
		        	strcat(gb_string,"{ffffff}| Работа \"Водитель автобуса на автостанции\"."cGRAY"\n\n");
		        	strcat(gb_string,"На данной работе, Вы будете ездить по выданному Вам маршруту в Автостанции.\n");
					strcat(gb_string,"Маршрут будет постоянно меняться и Вы не будете знать, какой маршрут Вам выдадут.\n");
					strcat(gb_string,"В отличии от \"Транспортной компании\" и \"Таксопарка\" Вы не подписываете контракт,\n");
					strcat(gb_string,"но и Ваш рабочий день ограничен. Всего за Ваш рабочий день, Вы можете проехать\n");
					strcat(gb_string,"10 маршрутов, за каждый маршрут, Вам прибавляют зарплату.\n");
					strcat(gb_string,"Так же, на данной работе присутствует стаж, в зависимости от которого, Вы получите автомобиль.\n\n");
		        	strcat(gb_string,"{ffffff}| Для данной работы требуется:\n\n"cGRAY"");
					strcat(gb_string,"- Водительское удостоверение.\n- Документ подтверждающий личность.\n\n");
					strcat(gb_string,"{ffffff}| Дополнительная помощь:\n\n"cGRAY"");
					strcat(gb_string,"Все необходимые команды, Вы можете посмотерть в основном меню, в пункте \"Работа\".");
					showPlayerDialog(playerid,9999,0,"Информация о работе",gb_string,"Закрыть","");
		        }
		    }
		}
		case d_bus + 1: {
		    new car = GetPlayerVehicleID(playerid);
		    if(response) {
		        new id2 = random(MAX_MARSH);
			   	SetPVarInt(playerid,"BusToGo",id2);
    			SetPVarInt(playerid,"BusToGoCP",0);
    			BUS::[id2][busPlayers] ++;
    			new id = GetPVarInt(playerid,"BusToGoCP");
		    	SetPVarInt(playerid,"CheckBus",_:SetPlayerRaceCheckpoint(playerid,0,BusMarsh[id2][id][0],BusMarsh[id2][id][1],BusMarsh[id2][id][2],BusMarsh[id2][id + 1][0],BusMarsh[id2][id + 1][1],BusMarsh[id2][id + 1][2],5.0));
				format(gb_string,sizeof(gb_string),"%s\n{ffffff}Стоимость проезда: "cGREEN"$%d",BUS::[id2][busName],S::[0][sMeria][1]);
				V::[car][vBusText] = CreateDynamic3DTextLabel(gb_string, C_BLUE, 0.0,0.0,3.0, 30.0, INVALID_PLAYER_ID, car, 1);
		    }
		    else {
		        SetVehicleToRespawn(car);
		    }
		    DeletePVar(playerid,"SelectNextMarsh");
		    togglePlayerControllable(playerid,true);
		}
		case d_bus + 2: {
		    if(!response) return 1;
		    switch(listitem) {
		        case 0: {
		            new name[20],marsh;
					switch(Player[playerid][uBusSkill]) {
					    case 0 .. 50: name = "Начинающий работник",marsh = 50;
					    case 51 .. 100: name = "Стабильный работник",marsh = 100;
					    case 101 .. 150: name = "Опытный работник",marsh = 150;
					}
					format(gb_string,sizeof(gb_string),"{ffffff}| Личная информация о стаже работы:\n\n"cGRAY"Ваши рейсы - %d/%d\nВаш стаж - %s",Player[playerid][uBusSkill],marsh,name);
					showPlayerDialog(playerid,9999,0,"Информация о стаже работы",gb_string,"Закрыть","");
		        }
		        case 1: {
		        	strcat(vb_string,"{ffffff}| Список всех маршрутов и автобусов:\n\n"cGRAY"");
					for(new i; i != sizeof(BUS::); i++) {
					    format(gb_string,sizeof(gb_string),"%s - %d авт.\n",BUS::[i][busName],BUS::[i][busPlayers]);
					    strcat(vb_string, gb_string);
					}
			        showPlayerDialog(playerid, 9999, 0, "Кол-во автобусов на маршрутах", vb_string, "Закрыть", "");
		        }
		    }
		}
	}
	return true;
}