#include <YSI\y_hooks>

hook OnGameModeInit() {
	gSTO[0] = CreateDynamicRectangle(2509.4089,-1517.7965,2504.1770,-1519.5890);
	gSTO[1] = CreateDynamicRectangle(599.6761,-1507.8091,606.4438,-1504.5078);
	gSTO[2] = CreateDynamicRectangle(1367.3020,199.3536,1367.9827,192.7594);
	gSTO[3] = CreateDynamicRectangle(2297.4097,-2498.3892,2300.4531,-2492.4902);
	
	/****************************** Бокс тюнинга ******************************/
	TuneListBox = TextDrawCreate(97.000000, 115.000000, "_");
	TextDrawUseBox(TuneListBox, 1);
	TextDrawBoxColor(TuneListBox, COLOR_BOX);
	TextDrawTextSize(TuneListBox, 0.0, 150.0);
	TextDrawLetterSize(TuneListBox, 0.0, 24);
	TextDrawAlignment(TuneListBox, 2);
	/*************************** Выбора тюнинга **************************/
	TuneListButton[0] = TextDrawCreate(140, 310.000000, "LD_BEAT:right");
 	TextDrawFont(TuneListButton[0], 4);
 	TextDrawColor(TuneListButton[0], -1);
 	TextDrawTextSize(TuneListButton[0], 20.000000, 15.000000);
 	TextDrawSetSelectable(TuneListButton[0], true);

 	TuneListButton[1] = TextDrawCreate(105, 310.000000, "LD_BEAT:left");
 	TextDrawFont(TuneListButton[1], 4);
 	TextDrawColor(TuneListButton[1], -1);
 	TextDrawTextSize(TuneListButton[1], 20.000000, 15.000000);
 	TextDrawSetSelectable(TuneListButton[1], true);

 	TuneListButton[2] = TextDrawCreate(60, 320.000000, "SELECT");
 	TextDrawAlignment(TuneListButton[2], 2);
 	TextDrawBackgroundColor(TuneListButton[2], 255);
 	TextDrawFont(TuneListButton[2], 1);
 	TextDrawLetterSize(TuneListButton[2], 0.4, 0.8);
 	TextDrawColor(TuneListButton[2], -1);
 	TextDrawSetOutline(TuneListButton[2], 0);
 	TextDrawSetProportional(TuneListButton[2], 1);
 	TextDrawSetShadow(TuneListButton[2], 1);
 	TextDrawUseBox(TuneListButton[2], 1);
 	TextDrawBoxColor(TuneListButton[2], 0);
 	TextDrawTextSize(TuneListButton[2], 10.000000, 45.000000);
 	TextDrawSetSelectable(TuneListButton[2], true);

 	TuneListButton[3] = TextDrawCreate(60, 305.000000, "CLEAR");
 	TextDrawAlignment(TuneListButton[3], 2);
 	TextDrawBackgroundColor(TuneListButton[3], 255);
 	TextDrawFont(TuneListButton[3], 1);
 	TextDrawLetterSize(TuneListButton[3], 0.4, 0.8);
 	TextDrawColor(TuneListButton[3], -1);
 	TextDrawSetOutline(TuneListButton[3], 0);
 	TextDrawSetProportional(TuneListButton[3], 1);
 	TextDrawSetShadow(TuneListButton[3], 1);
 	TextDrawUseBox(TuneListButton[3], 1);
 	TextDrawBoxColor(TuneListButton[3], 0);
 	TextDrawTextSize(TuneListButton[3], 10.000000, 40.000000);
 	TextDrawSetSelectable(TuneListButton[3], true);
	return true;
}

hook OnPlayerConnect( playerid ) {
	TuneList[0][playerid] = CreatePlayerTextDraw(playerid, 30.000000, 125.000000, "_");
	PlayerTextDrawFont(playerid, TuneList[0][playerid], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawUseBox(playerid, TuneList[0][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, TuneList[0][playerid], 0x00000001);
	PlayerTextDrawBoxColor(playerid, TuneList[0][playerid], 0x00000001);
	PlayerTextDrawTextSize(playerid, TuneList[0][playerid], 60.0, 55.0);
	PlayerTextDrawSetSelectable(playerid, TuneList[0][playerid], true);

	TuneList[1][playerid] = CreatePlayerTextDraw(playerid, 102.000000, 125.000000, "_");
	PlayerTextDrawFont(playerid, TuneList[1][playerid], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawUseBox(playerid, TuneList[1][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, TuneList[1][playerid], 0x00000001);
	PlayerTextDrawBoxColor(playerid, TuneList[1][playerid], 0x00000001);
	PlayerTextDrawTextSize(playerid, TuneList[1][playerid], 60.0, 55.0);
	PlayerTextDrawSetSelectable(playerid, TuneList[1][playerid], true);

	TuneList[2][playerid] = CreatePlayerTextDraw(playerid, 30.000000, 185.000000, "_");
	PlayerTextDrawFont(playerid, TuneList[2][playerid], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawUseBox(playerid, TuneList[2][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, TuneList[2][playerid], 0x00000001);
	PlayerTextDrawBoxColor(playerid, TuneList[2][playerid], 0x00000001);
	PlayerTextDrawTextSize(playerid, TuneList[2][playerid], 60.0, 55.0);
	PlayerTextDrawSetSelectable(playerid, TuneList[2][playerid], true);

	TuneList[3][playerid] = CreatePlayerTextDraw(playerid, 102.000000, 185.000000, "_");
	PlayerTextDrawFont(playerid, TuneList[3][playerid], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawUseBox(playerid, TuneList[3][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, TuneList[3][playerid], 0x00000001);
	PlayerTextDrawBoxColor(playerid, TuneList[3][playerid], 0x00000001);
	PlayerTextDrawTextSize(playerid, TuneList[3][playerid], 60.0, 55.0);
	PlayerTextDrawSetSelectable(playerid, TuneList[3][playerid], true);

	TuneList[4][playerid] = CreatePlayerTextDraw(playerid, 30.000000, 245.000000, "_");
	PlayerTextDrawFont(playerid, TuneList[4][playerid], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawUseBox(playerid, TuneList[4][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, TuneList[4][playerid], 0x00000001);
	PlayerTextDrawBoxColor(playerid, TuneList[4][playerid], 0x00000001);
	PlayerTextDrawTextSize(playerid, TuneList[4][playerid], 60.0, 55.0);
	PlayerTextDrawSetSelectable(playerid, TuneList[4][playerid], true);

	TuneList[5][playerid] = CreatePlayerTextDraw(playerid, 102.000000, 245.000000, "_");
	PlayerTextDrawFont(playerid, TuneList[5][playerid], TEXT_DRAW_FONT_MODEL_PREVIEW);
	PlayerTextDrawUseBox(playerid, TuneList[5][playerid], 1);
 	PlayerTextDrawBackgroundColor(playerid, TuneList[5][playerid], 0x00000001);
	PlayerTextDrawBoxColor(playerid, TuneList[5][playerid], 0x00000001);
	PlayerTextDrawTextSize(playerid, TuneList[5][playerid], 60.0, 55.0);
	PlayerTextDrawSetSelectable(playerid, TuneList[5][playerid], true);
	return true;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	if( PRESSED( KEY_CROUCH ) ) {
		if(IsPlayerInAnyVehicle(playerid)) {
			if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER) {
				if( IsPlayerInDynamicArea(playerid, gSTO[0]) || IsPlayerInDynamicArea(playerid, gSTO[1]) || IsPlayerInDynamicArea(playerid, gSTO[2])) {
					//if( 
					showPlayerDialog( playerid, d_repair, 2, " ", "Перекрасить авто\nКапитальный ремонт двигателя\nУстановка дисков на автомобиль\nУстановка спойлера на автомобиль", "Дальше", "Закрыть" );
				}	
			}
		}	
	}
	return true;
}

hook OnPlayerClickTextDraw(playerid, Text:clickedid) {
	if(GetPVarInt(playerid, "EnterTuneList") == 2 || GetPVarInt(playerid, "EnterTuneList") == 6) {
		if(clickedid == TuneListButton[0]) {
		    if(GetPVarInt(playerid, "EnterTuneListNumber") != 1 && GetPVarInt(playerid, "EnterTuneList") == 2
			|| GetPVarInt(playerid, "EnterTuneListNumber") != 2 && GetPVarInt(playerid, "EnterTuneList") == 6) {
			    GivePVarInt(playerid, "EnterTuneListNumber", 1);
			    new EnterTune = GetPVarInt(playerid, "EnterTuneListNumber");
				for(new A; A != 6; A++) {
				    if(GetPVarInt(playerid, "EnterTuneList") == 6) {
					    if(TuneListWheels[EnterTune][A] != 0) {
							PlayerTextDrawSetPreviewModel(playerid, TuneList[A][playerid], TuneListWheels[EnterTune][A]);
							PlayerTextDrawFont(playerid, TuneList[A][playerid], 5);
						}
						else PlayerTextDrawFont(playerid, TuneList[A][playerid], 1);
					}
					if(GetPVarInt(playerid, "EnterTuneList") == 2) {
					    if(TuneListSpoiler[EnterTune][A] != 0) {
							PlayerTextDrawSetPreviewModel(playerid, TuneList[A][playerid], TuneListSpoiler[EnterTune][A]);
							PlayerTextDrawFont(playerid, TuneList[A][playerid], 5);
						}
						else PlayerTextDrawFont(playerid, TuneList[A][playerid], 1);
					}
					PlayerTextDrawSetPreviewRot(playerid, TuneList[A][playerid], -15.0, -10.0, 70.0, 0.8);
				}
				for(new A; A != 6; A++) PlayerTextDrawShow(playerid, TuneList[A][playerid]);
			}
		}
		if(clickedid == TuneListButton[1]) {
		    if(GetPVarInt(playerid, "EnterTuneListNumber") != 0) {
			    GivePVarInt(playerid, "EnterTuneListNumber", -1);
			    new EnterTune = GetPVarInt(playerid, "EnterTuneListNumber");
				for(new A; A != 6; A++) {
					if(GetPVarInt(playerid, "EnterTuneList") == 2) PlayerTextDrawSetPreviewModel(playerid, TuneList[A][playerid], TuneListSpoiler[EnterTune][A]);
					else PlayerTextDrawSetPreviewModel(playerid, TuneList[A][playerid], TuneListWheels[EnterTune][A]);
					PlayerTextDrawSetPreviewRot(playerid, TuneList[A][playerid], -15.0, -10.0, 70.0, 0.8);
					PlayerTextDrawFont(playerid, TuneList[A][playerid], 5);
				}
				for(new A; A != 6; A++) PlayerTextDrawShow(playerid, TuneList[A][playerid]);
			}
		}
	}
	if(clickedid == TuneListButton[2]) {
		if(Player[playerid][uMoney] < 450) return showPlayerDialog(playerid,d_repair,2," ","Перекрасить авто\nКапитальный ремонт двигателя\nУстановка дисков на автомобиль","Дальше","Закрыть");
		if(GetPVarInt(playerid, "EnterTuneList") == 2) showPlayerDialog(playerid,d_repair+4,0," ",""gbInfo"Вы уверены, что хотите приоберсти данный тип спойлера ?","Да","Нет");
		else showPlayerDialog(playerid,d_repair+4,0," ",""gbInfo"Вы уверены, что хотите приоберсти данный тип колес ?","Да","Нет");
	}
	return true;
}

stock HideTuneList( playerid ) {
	CancelSelectTextDraw(playerid);
	TextDrawHideForPlayer(playerid, TuneListBox);
	for(new A; A != 6; A++) PlayerTextDrawHide(playerid, TuneList[A][playerid]);
	for(new A; A != 4; A++) TextDrawHideForPlayer(playerid, TuneListButton[A]);
	SetPVarInt(playerid,"PlayerMenuShow",0);
	new i = V::[GetPlayerVehicleID(playerid)][vBuyingCar];
	if(strcmp(Car::[i][cOwner], Player[playerid][uName], true) == 0) {
		new vehiclecomponentid = GetPVarInt(playerid, "TuneLISTWheel");
		RemoveVehicleComponent(Car::[i][cCar], vehiclecomponentid);
		DeletePVar(playerid, "TuneLISTWheel");
	}
	return true;
}

hook OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid) {
	if(GetPVarInt(playerid, "EnterTuneList") == 6) {
	    for(new A; A != 6; A++) {
			if(playertextid == TuneList[A][playerid]) {
			    new TuneListID = GetPVarInt(playerid, "EnterTuneListNumber");
			    if(V::[GetPlayerVehicleID(playerid)][vBuyingCar] != -1) {
				    GameTextForPlayer(playerid, "COST ~g~800$", 3000, 6);
					SetPVarInt(playerid, "TuneLISTWheel", TuneListWheels[TuneListID][A]);
					SetPVarInt(playerid, "WheelCoast", TuneListWheels[TuneListID][A+6]);
				}
				AddVehicleComponent(GetPlayerVehicleID(playerid), TuneListWheels[TuneListID][A]);
			}
		}
	}
	if(GetPVarInt(playerid, "EnterTuneList") == 2) {
	    for(new A; A != 6; A++) {
			if(playertextid == TuneList[A][playerid]) {    
			    new TuneListID = GetPVarInt(playerid, "EnterTuneListNumber");
			    if(V::[GetPlayerVehicleID(playerid)][vBuyingCar] != -1) {
					GameTextForPlayer(playerid, "COST ~g~3000$", 3000, 6);
					SetPVarInt(playerid, "TuneLISTWheel", TuneListSpoiler[TuneListID][A]);
					SetPVarInt(playerid, "WheelCoast", TuneListSpoiler[TuneListID][A+6]);
				}
				AddVehicleComponent(GetPlayerVehicleID(playerid), TuneListSpoiler[TuneListID][A]);
			}
		}
	}
	return true;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	clear_massive();
	switch( dialogid ) {
		case d_repair+4: {
	        if(!response) return 1;
    	    new vehiclecomponentid = GetPVarInt(playerid, "TuneLISTWheel");

			CancelSelectTextDraw(playerid);
			TextDrawHideForPlayer(playerid, TuneListBox);

			for(new A; A != 6; A++) PlayerTextDrawHide(playerid, TuneList[A][playerid]);
			for(new A; A != 4; A++) TextDrawHideForPlayer(playerid, TuneListButton[A]);

			if(GetPVarInt(playerid, "EnterTuneList") == 2) {
				if(Player[playerid][uMoney] < 3000) return showPlayerDialog(playerid,d_repair,2," ","Перекрасить авто\nКапитальный ремонт двигателя\nУстановка дисков на автомобиль\nУстановка спойлера на автомобиль","Дальше","Закрыть");
				Player[playerid][uMoney] -= 3000;
			}
			else {
			    if(Player[playerid][uMoney] < 800) return showPlayerDialog(playerid,d_repair,2," ","Перекрасить авто\nКапитальный ремонт двигателя\nУстановка дисков на автомобиль\nУстановка спойлера на автомобиль","Дальше","Закрыть");
				Player[playerid][uMoney] -= 800;
			}


	        mysql_format( mysql, query,sizeof(query),"UPDATE gb_users SET uMoney = '%d' WHERE BINARY uName = '%s'",Player[playerid][uMoney],Player[playerid][uName]);
			mysql_tquery( mysql, query, "", "");
			new i = V::[GetPlayerVehicleID(playerid)][vBuyingCar];
	  		if(strcmp(Car::[i][cOwner], Player[playerid][uName], true) == 0) {
			    //if(GetPVarInt(playerid, "EnterTuneList") == 2) Car::[i][cTunning][0] = vehiclecomponentid;
				Car::[i][cTunning][15] = vehiclecomponentid;

				format( gb_string,sizeof(gb_string),"%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d",Car::[i][cTunning][0],Car::[i][cTunning][1],Car::[i][cTunning][2],
				Car::[i][cTunning][3],Car::[i][cTunning][4],Car::[i][cTunning][5],Car::[i][cTunning][6],Car::[i][cTunning][7],Car::[i][cTunning][8],Car::[i][cTunning][9],
				Car::[i][cTunning][10],Car::[i][cTunning][11],Car::[i][cTunning][12],Car::[i][cTunning][13],Car::[i][cTunning][14],Car::[i][cTunning][15],Car::[i][cTunning][16],
				Car::[i][cTunning][17]);
				SetCarStr(Car::[i][cID],"cTunning",gb_string);
			}
			AddVehicleComponent(GetPlayerVehicleID(playerid), vehiclecomponentid);
		    DeletePVar(playerid,"PriceVehicleMod");
		    DeletePVar(playerid,"WheelCoast");
		    DeletePVar(playerid,"TuneLISTWheel");

	    }
	    case d_repair+3: {
	        if(!response) return 1;
	        if(Player[playerid][uMoney] < 3000) return SendClientMessage(playerid,C_GRAY,""gbError"Недостаточно денег для покраски автомобиля!");
			Player[playerid][uMoney] -= 3000;
			mysql_format( mysql, gb_string,sizeof(gb_string),"UPDATE gb_users SET uMoney = '%d' WHERE BINARY uName = '%s'",Player[playerid][uMoney],Player[playerid][uName]);
			mysql_tquery( mysql, gb_string, "", "");
   			new i = V::[GetPlayerVehicleID(playerid)][vBuyingCar];
    		if(strcmp(Car::[i][cOwner], Player[playerid][uName], true) == 0) {
   				Car::[i][cStatus][0] = 100;
				new Year, Month, Day;
				getdate(Year, Month, Day);
				format( gb_string,sizeof(gb_string),"%02d/%02d/%d", Day, Month, Year);
				strmid( Car::[i][cLastTeh], gb_string, 0, strlen(gb_string), MAX_PLAYER_NAME);
				mysql_format( mysql, query, sizeof(query),"UPDATE gb_cars SET cLastTeh = '%02d/%02d/%d', cStatus = '100' WHERE cID = '%d'",Day, Month, Year, Car::[i][cID]);
				mysql_tquery( mysql, query, "", "");
				printf(query);
			}
			SendClientMessage(playerid,C_GRAY,""gbAccess"Поздравляю Вы сделали капитальный ремонт двигателя!");

	    }
	    case d_repair: {
	        if(!response) return 1;
			switch(listitem) {
			    case 0: {
			        new count;
			    	for(new color; color != sizeof(VehicleColoursTableRGBA); color ++) {
						if( color > 126 && color < 208 ) continue;
			    		if(count != 10) {
			    			format( gb_string,sizeof(gb_string),"{%06x}%d\t",VehicleColoursTableRGBA[color] >>> 8,color);
			    			strcat( vb_string, gb_string );
			    			count ++;
			    		}
			    		else {
			    			strcat(vb_string,"\n");
			    			count = 0;
			    		}
			    	}
			    	strcat(vb_string,"\n\n{ffffff}Введите 2 цвета из списка через запятую:\n"cGRAY"Пример: 1,2{FFFFFF}\n"gbInfo"Стомость покраски составит: 1000$");
			    	showPlayerDialog(playerid,d_cars + 3,1," ",vb_string,"Дальше","Закрыть");
			    }
			    case 1: showPlayerDialog(playerid,d_repair + 3,0," ",""gbAccess"Вы уверены, что хотите сделать капитальный ремонт двигателя ?\n"gbInfo"Это ремонт процентов двигателя в /cpanel\n\n"gbError"Стоимость данного ремонта: 3000$","Да","Нет");
				case 2: {
					for(new A; A != 6; A++) {
      					PlayerTextDrawSetPreviewModel(playerid, TuneList[A][playerid], TuneListWheels[0][A]);
						PlayerTextDrawSetPreviewRot(playerid, TuneList[A][playerid], -15.0, -10.0, 70.0, 0.8);
						PlayerTextDrawFont(playerid, TuneList[A][playerid], 5);
						SetPVarInt(playerid, "EnterTuneListNumber", 0);
						TextDrawShowForPlayer(playerid, TuneListBox);
						for(new AL; AL != 6; AL++) PlayerTextDrawShow(playerid, TuneList[AL][playerid]);
						for(new ALA; ALA != 4; ALA++) TextDrawShowForPlayer(playerid, TuneListButton[ALA]);
					}
					SetPVarInt(playerid, "EnterTuneList", 6);
                    SelectTextDraw(playerid, 0xd3d3d3FF);
                    SetPVarInt(playerid,"PlayerMenuShow", 7);
				}
				case 3: SendClientMessage(playerid,C_GRAY,""gbError"Извините но данный пункт не работает!");
			}
	    }
	}
	return true;
}