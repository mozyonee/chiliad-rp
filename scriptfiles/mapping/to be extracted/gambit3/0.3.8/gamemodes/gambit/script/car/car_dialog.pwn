#include <YSI\y_hooks>

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) 
{
	if( dialog_cheat_use[playerid] == true ) 
		return 1;
		
	clear_massive();
	
	switch( dialogid )
	{
		case d_cars + 1 : 
		{
			if( !response ) 
				return 1;
				
			new
				vehicleid = GetPlayerVehicleID( playerid );
				
			if( !vehicleid )
				return 1;
			
			switch( listitem ) 
			{
				case 0: 
				{
					vb_string[0] = EOS;
					format:gb_string( ""gbInfo"Информация о транспорте:"cGRAY"\n\n");
					strcat( vb_string, gb_string );
					
					format:gb_string( "Название - %s\n", 
						CarNames[ Car::[ vehicleid ][cModel] - 400 ] 
					);
					
					strcat( vb_string, gb_string );
					
					format:gb_string( "Стоимость - "cGREEN"$%d"cGRAY"\n\n",
						CarsPrice[ GetVehicleInfo( vehicleid ) ][1] 
					);
				
					strcat( vb_string, gb_string );
					
					format:gb_string( "Ёмкость багажника - %d ( мест )\n", 
						GetVehicleBag( vehicleid )
					);
					
					strcat( vb_string, gb_string );
					
					format:gb_string( "Ёмкость топливного бака - %.0f ( л )\n\n", 
						MaxVehicleFuel[ GetVehicleModel( vehicleid  ) - 400 ] 
					);
					
					strcat( vb_string, gb_string );
					
					strcat( vb_string, ""gbInfo"Состояние транспорта:"cGRAY"\n\n" );
					format:gb_string( "Двигатель - "cGREEN"%d ( проц. )"cGRAY"\n\n",
						Car::[ vehicleid ][cStatus][0] 
					);
					
					strcat( vb_string, gb_string );
					
					format:gb_string( "Дата последнего Т/О - "cGREEN"%s",
						Car::[ vehicleid ][cLastTeh] 
					);
					
					strcat(vb_string, gb_string );
					
					showPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", vb_string, "Закрыть", "" );

				}
				case 1 : 
				{
					GetVehicleParamsEx( vehicleid, eng, light, other1, other2, other3, other4, other5 );
					
					format:gb_string( "1. "cGRAY"Багажник автомобиля - %s\n{ffffff}2. "cGRAY"Капот автомобиля - %s",
						V::[ vehicleid ][vNoBag] ? (""cRED"Закрыт{ffffff}") : (""cGREEN"Открыт{ffffff}"),
						other3 ? (""cGREEN"Открыт{ffffff}") : (""cRED"Закрыт{ffffff}")
					);
					showPlayerDialog( playerid, d_cars + 2, DIALOG_STYLE_LIST," ", gb_string, "Далее", "Закрыть" );
				}
				
				case 2 : 
				{
					if( !getCarPrice( Car::[ vehicleid ][cModel] )  )
						return SendClientMessage( playerid, C_WHITE, ""gbError"Вы не можете продать данный транспорт игроку." );
				    
					showPlayerDialog( playerid, d_cars + 4,1," ","{ffffff}Введите id игрока которому вы хотите продать авто:\n\n"cGREEN"| Данный игрок должен находиться рядом с вами.","Далее","Закрыть");
				}
			}
		}
		
		case d_cars + 2: 
		{
			if( !response ) 
				return 1;
				
			new
				vehicleid = GetPlayerVehicleID( playerid );
				
			if( !vehicleid )
				return 1;
				
			switch(listitem) 
			{
				case 0: 
				{
					if( V::[ vehicleid ][vNoBag] == false ) 
					{
						V::[ vehicleid ][vNoBag] = true;
						Car::[ vehicleid ][cSettings][6] = 1;
					}
					else 
					{
						V::[ vehicleid ][vNoBag] = false;
						Car::[vehicleid][cSettings][6] = 0;
					}
					
					format:gb_string( "%d|%d|%d|%d|%d|%d|%d",
						Car::[ vehicleid ][cSettings][0],
						Car::[ vehicleid ][cSettings][1],
						Car::[ vehicleid ][cSettings][2],
						Car::[ vehicleid ][cSettings][3],
						Car::[ vehicleid ][cSettings][4],
						Car::[ vehicleid ][cSettings][5],
						Car::[ vehicleid ][cSettings][6]
					);
					
					SetCarStr( Car::[ vehicleid ][cID], "cSettings", gb_string );
				}
				case 1: 
				{
					GetVehicleParamsEx( vehicleid,eng,light,other1,other2,other3,other4,other5);
					if(other3 == 0) SetVehicleParamsEx( vehicleid,eng,light,other1,other2,true,other4,other5);
					else SetVehicleParamsEx( vehicleid,eng,light,other1,other2,false,other4,other5);
				}
			}
			
			GameTextForPlayer(playerid, "~g~Updated", 5000, 1);
		}
		
		case d_cars + 3: 
		{
			if( !response ) 
				return 1;
				
			new 
				params[3],
				vehicleid = GetPlayerVehicleID( playerid );
				
			if( !vehicleid )
				return 1;
				
			if(sscanf(inputtext, "p<,>dd", params[0],params[1]))
			{
				new count;
				vb_string = "";
			    for(new i; i != sizeof(VehicleColoursTableRGBA); i ++) 
				{
					if( i > 126 && i < 208 ) continue;
			    	if(count != 10) {
			    		format:gb_string( "{%06x}%d\t",VehicleColoursTableRGBA[i] >>> 8,i);
			    		strcat(vb_string,gb_string);
			    		count ++;
			    	}
			    	else {
			    		strcat(vb_string,"\n");
			    		count = 0;
			    	}
			    }
			    strcat(vb_string,"\n\n{ffffff}Введите 2 цвета из списка через запятую:\n"cGRAY"Пример: 1,2{FFFFFF}\n"gbInfo"Стомость покраски составит: 1000$");
			    return showPlayerDialog(playerid,d_cars + 3,1," ",vb_string,"Далее","Закрыть");
			}
			
			if(params[0] < 0 || params[1] > sizeof(VehicleColoursTableRGBA)) 
			{
				new count;
				vb_string = "";
				
			    for(new i; i != sizeof(VehicleColoursTableRGBA); i ++) {
					if( i > 126 && i < 208 ) continue;
			    	if(count != 10) {
			    		format:gb_string( "{%06x}%d\t",VehicleColoursTableRGBA[i] >>> 8,i);
			    		strcat(vb_string, gb_string);
			    		count ++;
			    	}
			    	else {
			    		strcat(vb_string,"\n");
			    		count = 0;
			    	}
			    }
			    strcat(vb_string,"\n\n{ffffff}Введите 2 цвета из списка через запятую:\n"cGRAY"Пример: 1,2{FFFFFF}\n"gbInfo"Стомость покраски составит: 1000$");
			    return showPlayerDialog(playerid,d_cars + 3,1," ",vb_string,"Далее","Закрыть");
			}

			if(Player[playerid][uMoney] < 1000) 
				return SendClientMessage( playerid,C_GRAY, !NO_MONEY );
				
			Player[playerid][uMoney] -= 1000;
			
			mysql_format:query( "UPDATE gb_users SET uMoney = '%d' WHERE uID = %d LIMIT 1",
				Player[playerid][uMoney],
				Player[playerid][uID] 
			);
			
			mysql_tquery( mysql, query, "", "");

		    if( IsOwnerCar( vehicleid, playerid ) )
			{
				Car::[ vehicleid ][cSettings][1] = params[0];
				Car::[ vehicleid ][cSettings][2] = params[1];
				ChangeVehicleColor( vehicleid , params[0], params[1] );
				
				format:gb_string( "%d|%d|%d|%d|%d|%d|%d",
					Car::[ vehicleid ][cSettings][0],
					Car::[ vehicleid ][cSettings][1],
					Car::[ vehicleid ][cSettings][2],
					Car::[ vehicleid ][cSettings][3],
					Car::[ vehicleid ][cSettings][4],
					Car::[ vehicleid ][cSettings][5],
					Car::[ vehicleid ][cSettings][6]
				);
				
    			SetCarStr( Car::[ vehicleid ][cID], "cSettings", gb_string );
			}
			
			SendClientMessage(playerid,C_GRAY,""gbAccess"Поздравляем с новым оформлением Вашего транспорта.");
		}
		
		case d_cars + 4: 
		{
		    if( !response ) 
				return 1;
			
			if( inputtext[0] == EOS ) 
				return showPlayerDialog(playerid,d_cars + 4,1," ","{ffffff}Введите id игрока которому вы хотите продать авто:\n\n"cGREEN"| Данный игрок должен находиться рядом с вами.","Далее","Закрыть");
			
			new 
				id = strval(inputtext);
	
			if( !isNumeric( inputtext ) ) 
				return showPlayerDialog(playerid,d_cars + 4,1," ","{ffffff}Введите id игрока которому вы хотите продать авто:\n\n"cGREEN"| Данный игрок должен находиться рядом с вами.","Далее","Закрыть");
			
			if(!IsPlayerLogged( id ) ) 
				return showPlayerDialog(playerid,d_cars + 4,1," ","{ffffff}Введите id игрока которому вы хотите продать авто:\n\n"cGREEN"| Данный игрок должен находиться рядом с вами.","Далее","Закрыть");
			
			if( id == playerid ) 
				return showPlayerDialog(playerid,d_cars + 4,1," ","{ffffff}Введите id игрока которому вы хотите продать авто:\n\n"cGREEN"| Данный игрок должен находиться рядом с вами.","Далее","Закрыть");
			
			if(GetDistanceBetweenPlayers( playerid,id ) > 10.0) 
				return SendClientMessage(playerid,C_GRAY,""gbError"Данного человека нет рядом с Вами, простите.");
				
			if( GetPVarInt( playerid, "Player:InUtil" ) || GetPVarInt( id, "Player:InUtil" ) )
			{
				SendClientMessage( playerid, C_WHITE, ""gbError"Вы не можете продать транспорт, находясь в утилизации" );
				SendClientMessage( id, C_WHITE, ""gbError"Вы не можете купить транспорт, находясь в утилизации" );
				
				return 1;
			}
			
			SetPVarInt( playerid, "Car:SellPlayerID", id );
			SetPVarInt( playerid, "Car:ID", GetPlayerVehicleID( playerid ) );
            showPlayerDialog( playerid, d_cars + 5,1," ","{ffffff}Введите цену за которую вы хотите продать автомобиль:\n\n"cGREEN"| Минимальная стоимость $1, а максимальная $1.000.000 .","Далее","Закрыть");
		}
		
		case d_cars + 5: 
		{
		    if( !response ) 
				return 1;
				
			new 
				vehicleid = GetPlayerVehicleID( playerid );
				
			if( !vehicleid )
				return 1;
				
			if( inputtext[0] == EOS ) 
				return showPlayerDialog(playerid,d_cars + 5,1," ","{ffffff}Введите цену за которую вы хотите продать автомобиль:\n\n"cGREEN"| Минимальная стоимость $1, а максимальная $1.000.000 .","Далее","Закрыть");	
		    
			new 
				id = strval( inputtext );
		   
     		if( !isNumeric( inputtext ) ) 
				return showPlayerDialog(playerid,d_cars + 5,1," ","{ffffff}Введите цену за которую вы хотите продать автомобиль:\n\n"cGREEN"| Минимальная стоимость $1, а максимальная $1.000.000 .","Далее","Закрыть");
		    
			if( id < 1 || id > 1000000 ) 
				return showPlayerDialog(playerid,d_cars + 5,1," ","{ffffff}Введите цену за которую вы хотите продать автомобиль:\n\n"cGREEN"| Минимальная стоимость $1, а максимальная $1.000.000 .","Далее","Закрыть");
     		
			if( id < CarsPrice[ GetVehicleInfo( GetPVarInt( playerid, "Car:ID") ) ][1] / 2 ) 
				return showPlayerDialog(playerid,d_cars + 5,1," ","{ffffff}Введите цену за которую вы хотите продать автомобиль:\n\n"cRED"| Вы указали стоимость меньше гос.цены авто!.","Далее","Закрыть");

			if( GetPVarInt( playerid, "Player:InUtil" ) || GetPVarInt( GetPVarInt(playerid,"Car:SellPlayerID"), "Player:InUtil" ) )
			{
				SendClientMessage( playerid, C_WHITE, ""gbError"Вы не можете продать транспорт, находясь в утилизации" );
				SendClientMessage( GetPVarInt(playerid,"Car:SellPlayerID"), C_WHITE, ""gbError"Вы не можете купить транспорт, находясь в утилизации" );
				
				return 1;
			}
				
			format:vb_string( "{ffffff}| Информация о покупке автомобиля:"cGRAY"\n\nВладелец автомобиля - %s\nСтоимость автомобиля - "cGREEN"$%d",
				Car::[GetPVarInt(playerid,"SelectedSlotBuyingCar")][cOwner],
				id
			);
			
            showPlayerDialog( GetPVarInt(playerid,"Car:SellPlayerID"), d_cars + 6,0,"Покупка автомобиля", vb_string,"Далее","Закрыть");

			SetPVarInt( GetPVarInt( playerid,"Car:SellPlayerID" ), "SellCarID", vehicleid );
			SetPVarInt( GetPVarInt( playerid,"Car:SellPlayerID" ), "Car:SellPlayerID", playerid );
			SetPVarInt( GetPVarInt( playerid,"Car:SellPlayerID" ), "SellCarIDPrice", id );
			DeletePVar( playerid, "Car:SellPlayerID" );
			DeletePVar( playerid, "Car:ID" );
		}
		
		case d_cars + 6 : 
		{
		    if(!response) 
			{
				DeletePVar(playerid,"Car:SellPlayerID");
				DeletePVar(playerid,"SellCarID");
				DeletePVar(playerid,"SellCarIDPrice");
		        return 1;
		    }
			
			if( !IsPlayerLogged( GetPVarInt( playerid,"Car:SellPlayerID" ) ) ) 
				return SendClientMessage(playerid,C_GRAY,""gbError"Данного человека нет рядом с Вами.");
			
			if( GetPVarInt( playerid, "Player:InUtil" ) || GetPVarInt( GetPVarInt( playerid,"Car:SellPlayerID" ), "Player:InUtil" ) )
			{
				SendClientMessage( playerid, C_WHITE, ""gbError"Вы не можете продать транспорт, находясь в утилизации" );
				SendClientMessage( GetPVarInt( playerid,"Car:SellPlayerID" ), C_WHITE, ""gbError"Вы не можете купить транспорт, находясь в утилизации" );
				
				return 1;
			}
			
		    new 
				id = GetPVarInt(playerid,"Car:SellPlayerID"),
				price = GetPVarInt(playerid,"SellCarIDPrice"),
				idhouse = GetPVarInt(playerid,"SellCarID"),
				count;
				
		    DeletePVar(playerid,"Car:SellPlayerID");
			DeletePVar(playerid,"SellCarID");
			DeletePVar(playerid,"SellCarIDPrice");

			count = IsOwnerCountCars( playerid );
			if( Player[playerid][uPremium] ) 
			{
				switch( Player[playerid][uPremium] ) 
				{
					case 1, 2: 
					{
						if( count >= 2) 
							return SendMes( playerid, C_GRAY, ""gbError"У Вас уже достаточно машин и купить ещё одну невозможно!");
					}
					case 3, 4: 
					{
						if( count >= 3) 
							return SendMes( playerid, C_GRAY, ""gbError"У Вас уже достаточно машин и купить ещё одну невозможно!");
					}
				}
			}
			else 
			{
			    if( count >= 1 ) 
				{
			    	return SendMes( playerid, C_GRAY, ""gbError"У Вас уже достаточно машин и купить ещё одну невозможно!");
			    }
			}

			if(Player[playerid][uMoney] < price) 
			{
			    SendClientMessage(playerid,C_GRAY,""gbError"У Вас недостаточно средств для покупки этого автомобиля.");
				SendClientMessage(id,C_GRAY,""gbError"Простите, но у покупателя нет денег!");
				return 1;
			}
			
			if(!strcmp(Car::[idhouse][cOwner],Player[id][uName],true)) 
			{
			    SendClientMessage(playerid,C_GRAY,""gbAccess"Вы выкупили автомобиль, ключи добавлены вам в инвентарь.");
		        SendClientMessage(id,C_GREEN,""gbAccess"Покупатель купил Ваш автомобиль, деньги за автомобиль выданы Вам на руки.");
		        for(new i; i != MAX_SLOTS; i ++) {
				    if(Inv[id][invSlot][i] == 375 && Inv[id][invSlotKol][i] == Car::[idhouse][cID]) {
                        Inv[id][invSlot][i] = 0;
                        Inv[id][invSlotKol][i] = 0;
				    }
				}
				
				format:gb_string( "купил%s автомобиль у %s",
					Player[playerid][uSex] == 2 ? ("а") : (""),
					Player[id][uName]
				);
				
				MeAction( playerid, gb_string, 1 );
				
				format:gb_string( "продал%s автомобиль %s'y",
					Player[playerid][uSex] == 2 ? ("а") : (""),
					Player[playerid][uName]
				);
				
				MeAction( id, gb_string, 1 );

				Player[id][uMoney] += price;
				Player[playerid][uMoney] -= price;
				
				format:query( "UPDATE gb_users SET uMoney = '%d' WHERE uID = %d LIMIT 1",
					Player[playerid][uMoney],
					Player[playerid][uID]
				);
				
				mysql_tquery( mysql, query, "", "");
				
				format:query( "UPDATE gb_users SET uMoney = '%d' WHERE uID = %d LIMIT 1",
					Player[id][uMoney],
					Player[id][uID]
				);
				
				mysql_tquery( mysql, query, "", "");

				switch(Car::[idhouse][cID])
				{
				    case 510, 509, 481 : { }
				    default:
				    {
				        strmid(Car::[idhouse][cNumber], "None", 0, strlen("None"), 255);
						UpdateDynamic3DTextLabelText(Car::[idhouse][cNumberLabel], 0xFFFFFF60, "[БЕЗ НОМЕРА]");
						SetCarStr(Car::[idhouse][cID], "cNumber", "None");
						SetVehicleNumberPlate( Car::[idhouse][cCar], "" );
				    }
				}
				GivePlayerItem(playerid, 375, Car::[idhouse][cID] );
				strmid(Car::[idhouse][cOwner], Player[playerid][uName], 0, strlen(Player[playerid][uName]), MAX_PLAYER_NAME);
			    SetCarStr(Car::[idhouse][cID],"cOwner",Car::[idhouse][cOwner]);
			}
			else SendClientMessage(playerid,C_GRAY,""gbError"Данный автомобиль уже кто-то выкупил и он не может быть продан.");
		}
		
		case d_cars + 7 : 
		{
		    if( !response ) 
				return 1;
				
			if( !IsPlayerInDynamicArea( playerid, strZones[11] ) )
				return SendClientMessage( playerid, C_WHITE, ""gbError"Вы должны находится на территории утилизации." );
			
		    new i = getData( playerid, "Player:UtilCarSlot" ), 
				sum = getData( playerid, "Player:UtilCarPrice" );
			
			if( !IsOwnerCar( i, playerid ) )
				return 1;
			
			SendMes( playerid, C_GRAY, ""gbAccess"Вы утилизировали свой транспорт за - "cGREEN"$%d"cWHITE".", sum );

			logs( 7, "утилизировал транспорт",
				Player[playerid][uID], Car::[i][cModel], sum );
			Player[playerid][uMoney] += sum;
			
			for( new h; h != MAX_SLOTS; h ++) 
			{
				if( Inv[playerid][invSlot][h] == 375 && Inv[playerid][invSlotKol][h] == Car::[i][cID] ) 
				{
					Inv[playerid][invSlot][h] = 0;
					Inv[playerid][invSlotKol][h] = 0;
				}
			}
			
			switch( Car::[i][cModel] )
			{
			    case 510, 509, 481 : {}
			    default:
			    {
			        strmid( Car::[i][cNumber], "None", 0, strlen("None"), 255);
					
					if( IsValidDynamic3DTextLabel( Car::[i][cNumberLabel] ) )
					{
					    DestroyDynamic3DTextLabel( Car::[i][cNumberLabel] );
						Car::[ i ][cNumberLabel] = Text3D: INVALID_3DTEXT_ID;
					}
					
					SetVehicleNumberPlate( i, "" );
			    }
			}

			strmid( Car::[i][cOwner], "None", 0, strlen("None"), MAX_PLAYER_NAME );
			
			mysql_format:query( "DELETE FROM gb_cars WHERE cID = '%d' LIMIT 1", 
				Car::[i][cID]
			);
			
			mysql_tquery( mysql, query, "", "" );
			
			mysql_format:query( "UPDATE gb_users SET uMoney = '%d' WHERE uID = %d LIMIT 1",
				Player[playerid][uMoney],
				Player[playerid][uID]
			);
			
			mysql_tquery( mysql, query, "", "");
			
			DestroyVehicle( i );
		    return 1;
		}
		
		case d_salon :  
		{
		    if( !response ) 
				return 1;
				
			gCarInfoBuy = CreatePlayerTextDraw(playerid, 155.000000, 182.000000, "");
			PlayerTextDrawBackgroundColor(playerid,gCarInfoBuy, 51);
			PlayerTextDrawFont(playerid,gCarInfoBuy, 5);
			PlayerTextDrawLetterSize(playerid,gCarInfoBuy, 0.500000, 1.000000);
			PlayerTextDrawColor(playerid,gCarInfoBuy, -1);
			PlayerTextDrawSetOutline(playerid,gCarInfoBuy, 1);
			PlayerTextDrawSetProportional(playerid,gCarInfoBuy, 1);
			PlayerTextDrawSetShadow(playerid,gCarInfoBuy, 1);
			PlayerTextDrawUseBox(playerid,gCarInfoBuy, 1);
			PlayerTextDrawBoxColor(playerid,gCarInfoBuy, 0);
			PlayerTextDrawTextSize(playerid,gCarInfoBuy, 90.000000, 90.000000);
			PlayerTextDrawSetSelectable(playerid,gCarInfoBuy, 0);


		    switch(GetPVarInt(playerid, "SALONID"))
		    {
      			case 1:
      			{
     			    PlayerTextDrawSetPreviewModel(playerid,gCarInfoBuy, Salon1[listitem][0]);
				   	format:vb_string( "{ffffff}Вы уверены, что хотите приобрести данное т/c:\n\n"gbInfo"Название автомобиля: [ %s ]\n"gbInfo"Ёмкость багажника [ %d ] мест\n"gbInfo"Емкость топливного бака [ %.0f ]\n"gbInfo"Сумма вашего заказа: [ %d$ ]", CarNames[Salon1[listitem][0] - 400], GetVehicleBagg(Salon1[listitem][0]), MaxVehicleFuel[Salon1[listitem][0] - 400], Salon1[listitem][1]);
				}
		  		case 2:
		  		{
		  		    PlayerTextDrawSetPreviewModel(playerid, gCarInfoBuy, Salon2[listitem][0]);
				   	format:vb_string( "{ffffff}Вы уверены, что хотите приобрести данный т/c:\n\n"gbInfo"Название автомобиля: [ %s ]\n"gbInfo"Ёмкость багажника [ %d ] мест\n"gbInfo"Емкость топливного бака [ %.0f ]\n"gbInfo"Сумма вашего заказа: [ %d$ ]", CarNames[Salon2[listitem][0] - 400], GetVehicleBagg(Salon2[listitem][0]), MaxVehicleFuel[Salon2[listitem][0] - 400], Salon2[listitem][1]);
				}
		  		case 3:
				{
				    PlayerTextDrawSetPreviewModel(playerid,gCarInfoBuy, Salon3[listitem][0]);
					format:vb_string( "{ffffff}Вы уверены, что хотите приобрести данный т/c:\n\n"gbInfo"Название автомобиля: [ %s ]\n"gbInfo"Ёмкость багажника [ %d ] мест\n"gbInfo"Емкость топливного бака [ %.0f ]\n"gbInfo"Сумма вашего заказа: [ %d$ ]", CarNames[Salon3[listitem][0] - 400], GetVehicleBagg(Salon3[listitem][0]), MaxVehicleFuel[Salon3[listitem][0] - 400], Salon3[listitem][1]);
				}
			}
			PlayerTextDrawSetPreviewRot(playerid, gCarInfoBuy, -16.000000, 0.000000, 60.000000, 1.000000);
			//PlayerTextDrawSetPreviewRot(playerid, gCarInfoBuy, 0.000000, 0.000000, 50.000000, 1.000000);
			PlayerTextDrawShow(playerid, gCarInfoBuy);

			showPlayerDialog(playerid, d_salon + 1, 0, " ", vb_string, "Далее","Отмена");
		    DeletePVar(playerid, "SALONID");
			SetPVarInt(playerid, "BuyCarsZZ", listitem);
		}
		
		case d_salon+1:
		{
		    if(!response)
			{
			    PlayerTextDrawHide(playerid, gCarInfoBuy);
		    	PlayerTextDrawDestroy(playerid, gCarInfoBuy);
				return 1;
			}
			PlayerTextDrawHide(playerid, gCarInfoBuy);
		    PlayerTextDrawDestroy(playerid, gCarInfoBuy);

		    new 
				j = GetPVarInt(playerid, "BuyCarsZZ"),
				count = IsOwnerCountCars( playerid );
				
			if( Player[playerid][uPremium] ) 
			{
				switch( Player[playerid][uPremium] ) 
				{
					case 1,2: 
					{
						if( count >= 2) return SendMes( playerid, C_WHITE, ""gbError"У Вас уже достаточно машин и купить ещё одну невозможно!");
					}
					case 3,4: 
					{
						if( count >= 3) return SendMes( playerid, C_WHITE, ""gbError"У Вас уже достаточно машин и купить ещё одну невозможно!");
					}
				}
			}
			else 
			{
			    if( count >= 1) 
				{
			    	return SendMes( playerid, C_WHITE, ""gbError"У Вас уже достаточно машин и купить ещё одну невозможно!");
			    }
			}
			
            if( Player[playerid][uTicket] ) 
				return SendClientMessage(playerid,C_GRAY,""gbError"У Вас есть неоплаченный штраф, оплатите его в участке полиции.");

			new bizz = GetPVarInt(playerid,"PlayerBizzID"),salon;

			switch(Bizz::[bizz][bID])
			{
			    case 35: {
			        if(Player[playerid][uMoney] < Salon1[j][1]) return SendClientMessage( playerid, C_WHITE, !NO_MONEY );
					//if(Bizz::[bizz][bSettings][3] < Salon1[j][2]) return SendClientMessage(playerid,C_GRAY,""gbError"В бизнесе недостаточно продуктов для покупки этого ТС!");
					SetPVarInt(playerid,"salonModelCar",Salon1[j][0]);
					SetPVarInt(playerid,"salonPriceCar",Salon1[j][1]);
					SetPVarInt(playerid,"salonProdCar",Salon1[j][2]);
					salon = 1;
				}
			    case 36: {
			        if(Player[playerid][uMoney] < Salon2[j][1]) return SendClientMessage( playerid, C_WHITE, !NO_MONEY );
                    //if(Bizz::[bizz][bSettings][3] < Salon2[j][2]) return SendClientMessage(playerid,C_GRAY,""gbError"В бизнесе недостаточно продуктов для покупки этого ТС!");
                    SetPVarInt(playerid,"salonModelCar",Salon2[j][0]);
					SetPVarInt(playerid,"salonPriceCar",Salon2[j][1]);
					SetPVarInt(playerid,"salonProdCar",Salon2[j][2]);
					salon = 2;
				}
			    case 75: {
			        if(Player[playerid][uMoney] < Salon3[j][1]) return SendClientMessage( playerid, C_WHITE, !NO_MONEY );
                    //if(Bizz::[bizz][bSettings][3] < Salon3[j][2]) return SendClientMessage(playerid,C_GRAY,""gbError"В бизнесе недостаточно продуктов для покупки этого ТС!");
                    SetPVarInt(playerid,"salonModelCar",Salon3[j][0]);
					SetPVarInt(playerid,"salonPriceCar",Salon3[j][1]);
					SetPVarInt(playerid,"salonProdCar",Salon3[j][2]);
					salon = 3;
				}
			}

			new 
				carid;
			
			switch(salon)
			{
				case 1: carid = CreateVehicle( GetPVarInt( playerid,"salonModelCar" ),563.1270,-1288.2494,17.2527,356.4879,1,1,99999);
				case 2: carid = CreateVehicle( GetPVarInt( playerid,"salonModelCar" ),2119.6211,-1151.7699,24.1200,354.0866,1,1,99999);
				case 3: carid = CreateVehicle( GetPVarInt( playerid,"salonModelCar" ),844.8745,-600.2874,18.4240,0.3068,1,1,99999);
			}
			
			Car::[ carid ][cCar] = carid;
			Car::[ carid ][cModel] = GetPVarInt(playerid,"salonModelCar");
			
			Player[playerid][uMoney] -= GetPVarInt(playerid,"salonPriceCar");
			mysql_format:query( "UPDATE gb_users SET uMoney = '%d' WHERE uID = %d LIMIT 1",
				Player[playerid][uMoney],
				Player[playerid][uID]
			);
			
			mysql_tquery( mysql, query, "", "");
			
			if(!strcmp(Bizz::[bizz][bOwner],"None",true)) {}
			else Bizz::[bizz][bSettings][6] += (GetPVarInt(playerid,"salonPriceCar") / 100) * 10;
			
			if( Bizz::[bizz][bRating] < 5000 ) Bizz::[bizz][bRating]++;
			
			Bizz::[bizz][bSettings][3] -= GetPVarInt(playerid,"salonProdCar");
			
			format:gb_string( "%d|%d|%d|%d|%d|%d|%d|%d",
				Bizz::[bizz][bSettings][0],
				Bizz::[bizz][bSettings][1],
				Bizz::[bizz][bSettings][2],
				Bizz::[bizz][bSettings][3],
				Bizz::[bizz][bSettings][4],
				Bizz::[bizz][bSettings][5],
				Bizz::[bizz][bSettings][6],
				Bizz::[bizz][bSettings][7]
			);
			
			SetBizzStr( Bizz::[bizz][bID], "bSettings", gb_string );

			strmid( Car::[ carid ][cOwner], Player[playerid][uName], 0, strlen(Player[playerid][uName]), MAX_PLAYER_NAME);
			
			for(new is; is != 18; is ++) 
			{
				V::[ carid ][vInvSlot][is] = 0;
				V::[ carid ][vInvSlotKol][is] = 0;
			}
			
			GetVehiclePos( carid, Car::[ carid ][cPos][0],Car::[ carid ][cPos][1], Car::[ carid ][cPos][2] );
			GetVehicleZAngle( carid, Car::[ carid ][cPos][3] );
			
			V::[ carid ][vBuyingCar] = carid;
			V::[ carid ][vHealth] = 1000.0;
			Car::[ carid ][cSettings][0] = GetPVarInt(playerid,"salonPriceCar");
			Car::[ carid ][cSettings][1] = 1;
			Car::[ carid ][cSettings][2] = 1;
			Car::[ carid ][cSettings][3] = 0;
			Car::[ carid ][cSettings][4] = 0;
			Car::[ carid ][cStatus][0] = 100;
			
			new 
				year, 
				month, 
				day;
				
			getdate( year, month, day );
			
			format:gb_string( "%02d/%02d/%d", day, month, year );
			strmid( Car::[ carid ][cLastTeh], gb_string, 0, strlen( gb_string ), MAX_PLAYER_NAME);
			
			
			V::[ carid ][vFuel] = MaxVehicleFuel[ Car::[ carid ][cModel] - 400 ];
			
			GetVehicleParamsEx( carid, eng, light, other1, other2, other3, other4, other5 );
			SetVehicleParamsEx( carid, eng, light, other1, other2, false, other4, other5 );

			mysql_format:query( "INSERT INTO `gb_cars` \
				(`cOwner`,`cModel`,`cPosition`,`cSettings`,`cLastTeh`) \
					VALUES \
				('%s',%d,'%f|%f|%f|%f','0|%d|%d|%d|%d|0|0','%02d/%02d/%d')",
				Car::[ carid ][cOwner],
				Car::[ carid ][cModel],
				Car::[ carid ][cPos][0],
				Car::[ carid ][cPos][1],
				Car::[ carid ][cPos][2],
				Car::[ carid ][cPos][3],
				Car::[ carid ][cSettings][1],
				Car::[ carid ][cSettings][2],
				Car::[ carid ][cSettings][3],
				Car::[ carid ][cSettings][4], 
				day, 
				month, 
				year
			);
			
			mysql_tquery( mysql, query, "OnPlayerBuyCar", "dd", carid, playerid );

			gb_string[0] = EOS;
			if( !strcmp( Car::[ carid ][cNumber], "None", true ) ) 
			{
				strcat( gb_string, "[БЕЗ НОМЕРА]" );
			}
			else 
			{
				strcat( gb_string, Car::[ carid ][cNumber], 16 );
			}
			
			SetVehicleNumberPlate( Car::[ carid ][cCar], Car::[ carid ][cNumber] );
			logs( 8, "купил машину", Player[playerid][uID], Car::[ carid ][cModel] );

			switch( Car::[ carid ][cModel] )
			{
				case 448: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.0, 0.0, 10.0, INVALID_PLAYER_ID, carid );
				case 461: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.3, 0.4, 10.0, INVALID_PLAYER_ID, carid );
				case 462: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.0, 0.0, 10.0, INVALID_PLAYER_ID, carid );
				case 463: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.1, 0.3, 10.0, INVALID_PLAYER_ID, carid );
				case 468: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.1, 0.3, 10.0, INVALID_PLAYER_ID, carid );
				case 521: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.1, 0.3, 10.0, INVALID_PLAYER_ID, carid );
				case 522: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.1, 0.4, 10.0, INVALID_PLAYER_ID, carid );
				case 581: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.1, 0.3, 10.0, INVALID_PLAYER_ID, carid );
				case 586: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -1.3, 0.17, 10.0, INVALID_PLAYER_ID, carid );
				case 510: print("На этот транспорт нельзя прикрепить текст! 510");
				case 509: print("На этот транспорт нельзя прикрепить текст! 509");
				case 481: print("На этот транспорт нельзя прикрепить текст! 481");
				default: Car::[ carid ][cNumberLabel] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFF60, 0.0, -2.8, 0.0, 10.0, INVALID_PLAYER_ID, carid );
			}
		}
	}

	return 1;
}