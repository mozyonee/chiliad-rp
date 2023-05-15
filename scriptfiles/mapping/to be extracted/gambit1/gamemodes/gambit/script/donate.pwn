#include <YSI\y_hooks>

new const 
	donate_random_weapon[] = 
	{
		323, 
		329, 
		330, 
		331, 
		332, 
		333, 
		334, 
		335, 
		336, 
		337, 
		338, 
		326,
		527
	};
	
hook OnPlayerConnect( playerid )
{
	SetPVarInt( playerid, "selectItemId", -1 );
	SetPVarInt( playerid, "selectItemCount", -1 );
	
	return 1;
}

hook OnPlayerClickTextDraw( playerid, Text:clickedid )
{
	clear_massive();
	if( clickedid == invPlayer[16] ) 
	{
		new 
			select = GetPVarInt( playerid, "selectSlot" );
			
        if( select != -1 && Inv[playerid][invSlot][select] != 0 && Inv[playerid][invSlotKol][select] != 0 ) 
		{
            new 
				id = Inv[playerid][invSlot][select],
				Float: kg = GetPlayerMass( playerid );
			
			SetCorrectSlot( playerid, Inv[playerid][invSlot][select], Inv[playerid][invSlotKol][select] );
			
			switch( _itemsInfo[id][invID] ) 
			{
				case GIFT_SMALL : 
				{
				    if( kg + 10 > MAX_PLAYER_KG + Player[playerid][uJobDouble][6] ) 
						return SendClientMessage(playerid,C_GRAY,""gbError"Для открытия подарка, очистите инвентарь на 10 kg.");
				  
					switch( random( 6 ) ) 
					{
				        case 0 : GivePlayerItem( playerid,RandomEx( 300 , 320 ), 1 );
				        case 1 : GivePlayerItem( playerid,RandomEx( 342 , 351 ), 1 );
				        case 2 : GivePlayerItem( playerid,RandomEx( 352 , 361 ), 1 );
				        case 3 : GivePlayerItem( playerid,RandomEx( 362 , 365 ), 1 );
				        case 4 : GivePlayerItem( playerid,RandomEx( 366 , 373 ), 1 );
						case 5 : 
						{
							new 
								rand = RandomEx( 10, 80 );
								
							Player[playerid][uGMoney] += rand;
							userUpdate( playerid, "uGMoney", Player[playerid][uGMoney] );
							
							SendMes( playerid, -1, ""gbAccess"Вам начислено: "cBLUE"+%d"cWHITE" GMoney. Всего: "cBLUE"%d"cWHITE" GMoney.", 
								rand,
								Player[playerid][uGMoney] 
							);
						}
				    }
					
				    Inv[playerid][invSlotKol][select] = 0;
				}
				
				case GIFT_MEDIUM : 
				{
				    if( kg + 10 > MAX_PLAYER_KG + Player[playerid][uJobDouble][6] ) 
						return SendClientMessage(playerid,C_GRAY,""gbError"Для открытия подарка, очистите инвентарь на 10 kg.");
                    
					switch( random( 4 ) )
					{
						case 0 :
						{
							new 
								rand = RandomEx( 20, 200 );
								
							Player[playerid][uGMoney] += rand;
							userUpdate( playerid, "uGMoney", Player[playerid][uGMoney] );
							SendMes( playerid, -1, ""gbAccess"Вам начислено: "cBLUE"+%d"cWHITE" GMoney. Всего: "cBLUE"%d"cWHITE" GMoney.", 
								rand,
								Player[playerid][uGMoney] 
							);
						}
						default: 
						{
							new 
								rand = donate_random_weapon[ random( sizeof donate_random_weapon ) ];

							GivePlayerItem( playerid, rand, ( rand == 326 ? 100 : RandomEx( 15, 30 ) ) );
						}
					}
					
				    Inv[playerid][invSlotKol][select] = 0;
				}
				
				case GIFT_BIG : 
				{
				    if(kg + 10 > MAX_PLAYER_KG + Player[playerid][uJobDouble][6]) 
						return SendClientMessage(playerid,C_GRAY,""gbError"Для открытия подарка, очистите инвентарь на 10 kg.");
					
					switch( random( 12 ) ) 
					{
				        case 0 .. 8: 
						{
							GivePlayerItem( playerid, donate_random_weapon[ random( sizeof donate_random_weapon ) ], RandomEx( 15, 30 ) );
						}
						
						case 9 :
						{
							new 
								rand = RandomEx( 20, 300 );
							Player[playerid][uGMoney] += rand;
							
							userUpdate( playerid, "uGMoney", Player[playerid][uGMoney] );
							SendMes( playerid, -1, ""gbAccess"Вам начислено: "cBLUE"+%d"cWHITE" GMoney. Всего: "cBLUE"%d"cWHITE" GMoney.", 
								rand,
								Player[playerid][uGMoney] 
							);
						}
						
						case 10 : 
						{
						    Player[playerid][uMoney] += RandomEx( 1000, 10000 );
						    nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "uMoney" , Player[playerid][uMoney] );
						}
				        case 11: 
						{
				            switch(random(8)) 
							{
								case 0: GivePlayerItem(playerid,RandomEx(454,456),1);
					        	case 1: GivePlayerItem(playerid,381,1);
			        			case 2: GivePlayerItem(playerid,RandomEx(454,456),1);
								case 3: GivePlayerItem(playerid,382,1);
							    case 4: GivePlayerItem(playerid,383,1);
							    case 5: GivePlayerItem(playerid,384,1);
							    case 6: GivePlayerItem(playerid,385,1);
							    case 7: GivePlayerItem(playerid,386,1);
							}
						}
				    }
					
				    Inv[playerid][invSlotKol][select] = 0;
				}
				
				case GIFT_JOB :
				{
					clear_massive();
					
					if( kg + 10 > MAX_PLAYER_KG + Player[playerid][uJobDouble][6] ) 
						return SendClientMessage(playerid,C_GRAY,""gbError"Для открытия подарка, очистите инвентарь на 10 kg.");
				  
					switch( random( 6 ) ) 
					{
				        case 0 : GivePlayerItem( playerid, 382, 1 );
				        case 1 : GivePlayerItem( playerid, 383, 1 );
				        case 2 : GivePlayerItem( playerid, 384, 1 );
				        case 3 : GivePlayerItem( playerid, 386, 1 );
				        case 4 : GivePlayerItem( playerid, 453, 1 );
						case 5 : 
						{
							new 
								rand = RandomEx( 10, 300 );
								
							Player[playerid][uGMoney] += rand;
							
							userUpdate( playerid, "uGMoney", Player[playerid][uGMoney] );
							
							SendMes( playerid, -1, ""gbAccess"Вам начислено: "cBLUE"+%d"cWHITE" GMoney. Всего: "cBLUE"%d"cWHITE" GMoney.", 
								rand,
								Player[playerid][uGMoney] 
							);
						}
				    }
					
				    Inv[playerid][invSlotKol][select] = 0;
				}
				
				case COUPON_CHANGE_NUMBER :
				{
				    if( !Player[playerid][uNumber] ) 
						return SendClientMessage( playerid,C_GRAY,""gbError"У вас нет сим-карты в вашем телефоне." );
				    
					showPlayerDialog( playerid, d_donate + 7 , 1," ","{ffffff}Укажите желаемый номер телефона:","Далее","Закрыть");
				}
				
				case COUPON_CHANGE_CAR_NUMBER :
				{
                    ShowPlayerDialog( playerid, d_donate + 8,1 ," ","{ffffff}Укажите своей номер машины:", "Далее","Закрыть");
				}
				
				case COUPON_STYLE_FIGHTS :
				{
				    ShowPlayerDialog( playerid, d_donate + 17, 2," ","1. "cGRAY"Бокс{ffffff}\n2. "cGRAY"Кунг-фу{ffffff}\n3. "cGRAY"Кик-бокс{ffffff}","Далее","Закрыть");
				}
				
				case COUPON_CHANGE_AGE : 
				{
					ShowPlayerDialog( playerid, d_donate, 1," ","{ffffff}Укажите возраст Вашего персонажа:","Далее","Закрыть");
				}
				
				case COUPON_CHANGE_ROLE :
				{
					format:gb_string( ""cGRAY"— Текущая роль: "cBLUE"%s\n{ffffff}1. "cGRAY"Обычный житель{ffffff}\n2. "cGRAY"Бездомный{ffffff}\n3. "cGRAY"Прилетевший{ffffff}\n4. "cGRAY"Приплывший{ffffff}\n5. "cGRAY"Сельский житель{ffffff}\n6. "cGRAY"Осужденный", 
						users_roles[ Player[playerid][uRole] ]
					);
				    
					ShowPlayerDialog( playerid, d_donate + 10, 2, " ", gb_string, "Далее", "Закрыть" );
				}
			
				case COUPON_UNWARNS :
				{
				    if( !Player[playerid][uWarn] ) 
						return SendClientMessage( playerid, C_WHITE, ""gbError"У Вас нет активных предупреждений." );
					
					Player[playerid][uWarn] = 0;
					nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "uWarn" , Player[playerid][uWarn]);
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно сняли с себя все предупреждения!");
					Inv[playerid][invSlotKol][select] = 0;
				}
				
				case COUPON_CHANGE_NAME : 
				{
					ShowPlayerDialog( playerid, d_donate + 2, 1, " ","\ 
						"gbInfo"Введите в поле ниже, Ваше новое игровое имя\n\n\
						"gbInfo"Имя должно быть не более 20 символов.\n\
						"gbInfo"Имя должно содержать латинские буквы и нижнее подчёркивание.\n\n\
						"gbError"Если же Вы решили оставить имя тем же, то просто ничего не вводите.\
						",
						"Далее", "Закрыть"
					);
				}

				case COUPON_DOUBLE_TAXI :
				{
					if( Player[playerid][uJobDouble][ JOB_TAXI ] != 0 )
						return SendClientMessage( playerid, C_WHITE, ""gbError"Вы уже использовали данный купон." );
						
					Player[playerid][uJobDouble][ JOB_TAXI ] = gettime();
					
				    UpdateJobDouble( playerid );
					
				    Inv[playerid][invSlotKol][select] = 0;
				}
				
				case COUPON_DOUBLE_BUS :
				{
					if( Player[playerid][uJobDouble][ JOB_BUS ] != 0 )
						return SendClientMessage( playerid, C_WHITE, ""gbError"Вы уже использовали данный купон." );
						
					Player[playerid][uJobDouble][ JOB_BUS ] = gettime();
					
				    UpdateJobDouble( playerid );
					
				    Inv[playerid][invSlotKol][select] = 0;
				}
				
				case COUPON_DOUBLE_VEHCOMPANY :
				{
					if( Player[playerid][uJobDouble][ JOB_VEHCOMPANY ] != 0 )
						return SendClientMessage( playerid, C_WHITE, ""gbError"Вы уже использовали данный купон." );
						
					Player[playerid][uJobDouble][ JOB_VEHCOMPANY ] = gettime();
					
				    UpdateJobDouble( playerid );
					
				    Inv[playerid][invSlotKol][select] = 0;
				}
				
				case COUPON_DOUBLE_WOOD :
				{
					if( Player[playerid][uJobDouble][ JOB_WOOD ] != 0 )
						return SendClientMessage( playerid, C_WHITE, ""gbError"Вы уже использовали данный купон." );
						
					Player[playerid][uJobDouble][ JOB_WOOD ] = gettime();
					
				    UpdateJobDouble( playerid );
					
				    Inv[playerid][invSlotKol][select] = 0;
				}
				case COUPON_UP_MASS : 
				{
				    if( Player[playerid][uJobDouble][ UP_MASS ] != 0 ) 
						return SendClientMessage( playerid, C_WHITE, ""gbError"Вы уже использовали данный купон." );
						
                    Player[playerid][uJobDouble][ UP_MASS ] = 10;
				
					UpdateJobDouble( playerid );
					
					SendClientMessage( playerid, C_WHITE, ""gbAccess"Вы увеличили переносимый вес на - 10 килограмм." );
					
				    Inv[playerid][invSlotKol][select] = 0;
				}

				case COUPON_LICENSES : 
				{
				    if( Player[playerid][uLicenses][0] == 1 
						&& Player[playerid][uLicenses][1] == 1 
						&& Player[playerid][uLicenses][2] == 1 
						&& Player[playerid][uLicenses][3] == 1
					  ) 
						return SendClientMessage( playerid, C_WHITE, ""gbError"У Вас имеются в наличии данные лицензии." );
				    
					Player[playerid][uLicenses][0] = 1;
				    Player[playerid][uLicenses][1] = 1;
				    Player[playerid][uLicenses][2] = 1;
				    
					format:gb_string( "%d|%d|%d|%d",
						Player[playerid][uLicenses][0],
						Player[playerid][uLicenses][1],
						Player[playerid][uLicenses][2],
						Player[playerid][uLicenses][3] 
					);
					
					userUpdateStr( playerid, "uLicenses", gb_string );	
					
                    SendClientMessage( playerid, C_WHITE, ""gbAccess"Вы получили все доступные в данном купоне лицензии." );
				    Inv[playerid][invSlotKol][select] = 0;
				}
				
				// Премиум аккаунты
				case PREMIUM_LIGHT : 
				{
					Player[playerid][uPremium] = 1;
					Player[playerid][uPremiumDate] = gettime();
					
					userUpdate( playerid, "uPremium", 1 ); 
					userUpdate( playerid, "uPremiumDate", gettime() );
					
					SendMes( playerid, C_WHITE, ""gbAccess"Вы активировали премиум аккаунт - Light. Срок действия 1 месяц." );
					Inv[playerid][invSlotKol][select] = 0;
				}
				
				case PREMIUM_MEDIUM : 
				{
					Player[playerid][uPremium] = 2;
					Player[playerid][uPremiumDate] = gettime();
					SendMes( playerid, C_WHITE, ""gbAccess"Вы активировали премиум аккаунт - Medium. Срок действия 1 месяц." );
					
					userUpdate( playerid, "uPremium", 2 ); 
					userUpdate( playerid, "uPremiumDate", gettime() );
					
					GivePlayerItem( playerid, 510, 1 ); 
					GivePlayerItem( playerid, 511, 1 );
					
					Inv[playerid][invSlotKol][select] = 0;
				}
				
				case PREMIUM_HARD : 
				{
					Player[playerid][uPremium] = 3;
					Player[playerid][uPremiumDate] = gettime();
					
					userUpdate( playerid, "uPremium", 3 ); 
					userUpdate( playerid, "uPremiumDate", gettime() );
					
					SendMes( playerid, C_WHITE, ""gbAccess"Вы активировали премиум аккаунт - Hard. Срок действия 1 месяц." );
					
					GivePlayerItem( playerid, 510, 1 ); 
					GivePlayerItem( playerid, 511, 1 );
					GivePlayerItem( playerid, 512, 1 ); 
					GivePlayerItem( playerid, 463, 1 );
					
					Inv[playerid][invSlotKol][select] = 0;
				}
				
				case PREMIUM_PLATINUM :
				{
					Player[playerid][uPremium] = 4;
					Player[playerid][uPremiumDate] = gettime();
					
					userUpdate( playerid, "uPremium", 4 ); 
					userUpdate( playerid, "uPremiumDate", gettime() );
					
					SendMes( playerid, C_WHITE, ""gbAccess"Вы активировали премиум аккаунт - Platinum. Срок действия безграничен." );
					
					GivePlayerItem( playerid, 510, 1 );
					GivePlayerItem( playerid, 511, 1 );
					GivePlayerItem( playerid, 463, 1 );
					GivePlayerItem( playerid, 512, 1 );
					GivePlayerItem( playerid, 461, 1 );
					GivePlayerItem( playerid, 460, 1 ); 
					GivePlayerItem( playerid, 455, 1 );
					
					
					Inv[playerid][invSlotKol][select] = 0;
				}
				
				case 128:
				{
					if( Player[playerid][uStyleDate][0] >= getdate() ) 
						return SendClientMessage( playerid, C_WHITE, ""gbError"Вы уже использовали данный купон." );
					
					Player[playerid][uStyleDate][0] = getdate();
					nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "StyleDate" , Player[playerid][uStyleDate][0]);
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно активировали абонемент спорзала "cBLUE"Гетто {ffffff}- на "cGREEN"1 день!");
					Inv[playerid][invSlotKol][select] = 0;
				}
				
				case 129:
				{
				    if(Player[playerid][uStyleDate][1] >= getdate()) return SendClientMessage(playerid, -1, ""gbError"Вы уже активировали один из купонов");
					Player[playerid][uStyleDate][1] = getdate();
					nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "StyleDateTwo" , Player[playerid][uStyleDate][1]);
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно активировали абонемент спорзала "cBLUE"Лос-Сантос {ffffff}- на "cGREEN"1 день!");
					Inv[playerid][invSlotKol][select] = 0;
				}
				
				case 130:
				{
				    if(Player[playerid][uStyleDate][0] >= getdate()) return SendClientMessage(playerid, -1, ""gbError"Вы уже активировали один из купонов");
					Player[playerid][uStyleDate][0] = getdate() + 6;
					nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "StyleDate" , Player[playerid][uStyleDate][0]);
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно активировали абонемент спорзала "cBLUE"Гетто {ffffff}- на "cGREEN"7 дней!");
					Inv[playerid][invSlotKol][select] = 0;
				}
				case 131:
				{
				    if(Player[playerid][uStyleDate][1] >= getdate()) return SendClientMessage(playerid, -1, ""gbError"Вы уже активировали один из купонов");
					Player[playerid][uStyleDate][1] = getdate() + 6;
					nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "StyleDateTwo" , Player[playerid][uStyleDate][1]);
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно активировали абонемент спорзала "cBLUE"Лос-Сантос {ffffff}- на "cGREEN"7 дней!");
					Inv[playerid][invSlotKol][select] = 0;
				}
				
				case 132:
				{
				    if(Player[playerid][uStyleDate][2] >= getdate()) return SendClientMessage(playerid, -1, ""gbError"Вы уже активировали один из купонов");
					Player[playerid][uStyleDate][2] = getdate();
					nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "StyleDateThree" , Player[playerid][uStyleDate][2]);
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно активировали абонемент спорзала "cBLUE"Округ-Рэд {ffffff}- на "cGREEN"1 день!");
					Inv[playerid][invSlotKol][select] = 0;
				}
				case 133:
				{
				    if(Player[playerid][uStyleDate][2] >= getdate()) return SendClientMessage(playerid, -1, ""gbError"Вы уже активировали один из купонов");
					Player[playerid][uStyleDate][2] = getdate() + 6;
					nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "StyleDateThree" , Player[playerid][uStyleDate][2]);
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно активировали абонемент спорзала "cBLUE"Округ-Рэд {ffffff}- на "cGREEN"7 дней!");
					Inv[playerid][invSlotKol][GetPVarInt(playerid,"selectSlot")] = 0;
				}
				case 125: 
				{
					if( Player[playerid][uPremium] == 1 ) Player[playerid][uJobValue] = 300;
					else if( Player[playerid][uPremium] == 2 ) Player[playerid][uJobValue] = 400;
					else if( Player[playerid][uPremium] == 3 ) Player[playerid][uJobValue] = 450;
					else if( Player[playerid][uPremium] == 4 ) Player[playerid][uJobValue] = 500;
	 				else Player[playerid][uJobValue] = 200;
	    			JobValueNow(playerid, 0, 0, -1);
					Inv[playerid][invSlotKol][select] = 0;
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно добавили заполнили свои очки!");
				}
				case 92:
				{
					new 
						maximum = 0;
					
					switch( Player[playerid][uPremium] ) 
					{
						case 1: maximum = 300;
						case 2: maximum = 400;
						case 3: maximum = 450;
						case 4: maximum = 500;
					}
					
				    if(Player[playerid][uJobValue] + 50 <= maximum) Player[playerid][uJobValue] += 200;
				    else return SendClientMessage(playerid,C_GRAY,""gbError"У вас уже достаточно очков работы, подарите купон другу!");
	    			JobValueNow(playerid, 0, 0, -1);
					Inv[playerid][invSlotKol][select] = 0;
					SendClientMessage(playerid,C_GRAY,""gbAccess"Вы успешно добавили 200 очков!");
				}
			}
			
			if( Inv[playerid][invSlotKol][select] <= 0 ) 
			{
			    SendMes( playerid, C_WHITE, ""gbAccess"Вы использовали - "cBLUE"%s"cWHITE".", _itemsInfo[Inv[playerid][invSlot][select]][invName] );
                
				format:gb_string( "%s использовал %s", Player[playerid][uName], _itemsInfo[Inv[playerid][invSlot][select]][invName] );
				logs( DLOG, gb_string, Player[playerid][uID], _itemsInfo[Inv[playerid][invSlot][select]][invID] );
				
				Inv[playerid][invSlotKol][select] = 0;
                Inv[playerid][invSlot][select] = 0;
                PlayerTextDrawSetPreviewModel(playerid, invSPlayer[playerid][select], 19464);
				PlayerTextDrawSetPreviewRot(playerid, invSPlayer[playerid][select], 0.000000, 0.000000, 90.000000, 0.100000);
				PlayerTextDrawShow(playerid,invSPlayer[playerid][select]);
				SaveInventory(playerid);
                SetPVarInt(playerid,"selectSlot",-1);
				SetPVarInt(playerid,"changeSlot",-1);
				ClearCorrectSlot( playerid );
			}
		}
	}
	
	return 1;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) 
{
	clear_massive();
	if( dialog_cheat_use[playerid] == true ) return true;
	switch( dialogid )
	{
		case d_donate + 7:
		{
			if( !response ) 
			{
				ClearCorrectSlot( playerid );
				ResetSelectSlot( playerid );
				return 1;
			}
			
			if( !IsCorrectSlot( playerid ) )
			{
				ClearCorrectSlot( playerid );
				return 1;
			}
				
			if( inputtext[0] == EOS )
			{
				return 
					showPlayerDialog(playerid,d_donate+7,1," ",
					"{ffffff}Укажите желаемый номер телефона:\n\n\
					"gbError"Вы ничего не ввели.",
					"Далее","Закрыть"
					); 
			}
			
			if( !isNumeric( inputtext ) ) 
			{
				return 
					showPlayerDialog(playerid,d_donate+7,1," ",
					"{ffffff}Укажите желаемый номер телефона:\n\n\
					"gbError"Вы ввели некорректный номер.",
					"Далее","Закрыть"
					); 
			}
			if( strlen( inputtext ) < 6 || strlen( inputtext ) >= 7 ) 
			{
				return 
					showPlayerDialog(playerid,d_donate+7,1," ",
					"{ffffff}Укажите желаемый номер телефона:\n\n\
					"gbError"Номер должен состоять из 6 символов.",
					"Далее","Закрыть"
					); 
			}
			
			if(inputtext[0] == '0')
			{
				return 
					showPlayerDialog(playerid,d_donate+7,1," ",
					"{ffffff}Укажите желаемый номер телефона:\n\n\
					"gbError"Номер не должен начинаться с нуля.",
					"Далее","Закрыть"
					); 
			}

			SetPVarInt( playerid,"Player:NewNumber", strval( inputtext ) );
			
			query[0] = EOS;
			format(query, sizeof(query),"SELECT `uID` FROM `gb_users` WHERE `uNumber` = '%d'", strval(inputtext));
			mysql_tquery(1, query, "OnDonateCheckNumber", "d", playerid );
		}
		
		case d_donate + 8 :
		{
			if( !response ) 
			{
				ClearCorrectSlot( playerid );
				ResetSelectSlot( playerid );
				return 1;
			}
			
			if( !IsCorrectSlot( playerid ) )
			{
				ClearCorrectSlot( playerid );
				return 1;
			}
			
			if( inputtext[0] == EOS ) 
				return showPlayerDialog(playerid,d_donate + 8,1," ","{ffffff}Укажите своей номер машины:","Далее","Закрыть");
			
			new 
				_: number = strval( inputtext ), 
				bool: status = false;
				
			for(new i; i != MAX_CARS_BUY; i ++)
			{
				if( Car::[i][cModel] == 0 || Car::[i][cID] == 0) 
					continue;
					
				if( Car::[i][cID] == number )
				{
					if( !strcmp(Car::[i][cOwner],Player[playerid][uName],true ) )
					{
						SetPVarInt( playerid, "Car:SelectId", i );
						status = true;
						break;
					}
				}
			}
			if( !status )
			{
				return ShowPlayerDialog(playerid,d_donate + 8,1," ",
					"{ffffff}Укажите своей номер машины:\n\n\
					"gbError"Данный транспорт не приадлежит Вам.",
					"Далее","Закрыть"
				);
				
			}
			
			ShowPlayerDialog( playerid, d_donate + 9, 1, " ","{ffffff}Укажите желаемый номер автомобиля:", "Далее", "Закрыть" );
		}
		
		case d_donate + 9 :
		{
			if( !response )
			{
				DeletePVar( playerid, "Car:SelectId" );
				ShowPlayerDialog( playerid, d_donate + 9, 1, " ","{ffffff}Укажите желаемый номер автомобиля:", "Далее", "Закрыть" );
				return 1;
			}
		
			if( !IsCorrectSlot( playerid ) )
			{
				DeletePVar(playerid, "Car:SelectId");
				return 1;
			}
			
			if( inputtext[0] == EOS ) 
			{
				return showPlayerDialog( playerid,d_donate+9,1," ",
					"{ffffff}Укажите желаемый номер автомобиля:\n\n\
					"gbError"Вы ничего не ввели.",
					"Далее","Закрыть"
				);
			}
		
			if( strlen( inputtext ) > 8 || strlen( inputtext ) < 0 ) 
			{
				return ShowPlayerDialog(playerid, d_donate + 9, 1, " ",
					"{ffffff}Укажите желаемый номер автомобиля:\n\n\
					"gbError"Номер автомобиля не может быть более 8 символов.",
					"Далее","Закрыть"
				);
			}

			mysql_format:vb_string( "SELECT `cID` FROM `gb_cars` WHERE `cNumber` = '%s'", inputtext );
			mysql_tquery(1, vb_string, "OnDonateCheckCarNumber", "d", playerid );
			
			SetPVarString( playerid, "Player:NewCarNumber", inputtext );
		}
		
		case d_donate + 17 : 
		{
			if( !response ) 
			{
				ClearCorrectSlot( playerid );
				ResetSelectSlot( playerid );
				return 1;
			}
				
			if( !IsCorrectSlot( playerid ) )
			{
				ClearCorrectSlot( playerid );
				return 1;
			}
			
			switch( listitem )
			{
				case 0:
				{
					Player[playerid][uStyle][0] = 1000;
					nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "StyleOne" , Player[playerid][uStyle][0]);
				}
				case 1:
				{
					Player[playerid][uStyle][1] = 1000;
					nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "StyleTwo" , Player[playerid][uStyle][1]);
				}
				case 2:
				{
					Player[playerid][uStyle][4] = 1000;
					nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "StyleFive" , Player[playerid][uStyle][4]);
				}
			}
			
			SendClientMessage( playerid, C_WHITE, ""gbAccess"Вы успешно изучили стиль боя." );
			
			ClearSlot( playerid, GetPVarInt(playerid,"selectSlot") );
			ClearCorrectSlot( playerid );
			ResetSelectSlot( playerid );
			SaveInventory( playerid );
		}
		case d_donate : 
		{
			if( !response ) 
			{
				ClearCorrectSlot( playerid );
				ResetSelectSlot( playerid );
				return 1;
			}
				
			if( !IsCorrectSlot( playerid ) )
			{
				ClearCorrectSlot( playerid );
				return 1;
			}
		
			if( inputtext[0] == EOS )
			{
				ShowPlayerDialog( playerid, d_donate, 1, " ", 
					"{ffffff}Укажите возраст Вашего персонажа:\n\n\
					"gbError"Вы ничего не ввели.",
					"Далее","Закрыть"
				);
				
				return 1;
			}
			if( !isNumeric( inputtext ) ) 
			{
				ShowPlayerDialog( playerid, d_donate, 1, " ", 
					"{ffffff}Укажите возраст Вашего персонажа:\n\n\
					"gbError"Вы ввели некорректные символы.",
					"Далее","Закрыть"
				);
				
				return 1;
			}
		
			if( strval( inputtext ) < 18 || strval(inputtext) > 60 ) 
			{
				ShowPlayerDialog( playerid, d_donate, 1, " ", 
					"{ffffff}Укажите возраст Вашего персонажа:\n\n\
					"gbError"Вы ввели некорректный возраст.",
					"Далее","Закрыть"
				);
				
				return 1;
			}
			
			Player[playerid][uAge] = strval( inputtext );
			
			mysql_format:query( "UPDATE gb_users SET uAge = '%d' WHERE BINARY uID = %d",
				Player[playerid][uAge],
				Player[playerid][uID]
			);
			
			mysql_tquery( 1, query, "", "" );
			
			SendMes( playerid, C_WHITE, ""gbAccess"Вы изменили возраст Вашего игрового персонажа на: "cBLUE"%d", Player[playerid][uAge] );
			
			ClearSlot( playerid, GetPVarInt(playerid,"selectSlot") );
			ClearCorrectSlot( playerid );
			ResetSelectSlot( playerid );
			SaveInventory( playerid );
		}
		
		case d_donate + 10 :
		{
			if( !response ) 
			{
				ClearCorrectSlot( playerid );
				ResetSelectSlot( playerid );
				return 1;
			}
				
			if( !IsCorrectSlot( playerid ) )
			{
				ClearCorrectSlot( playerid );
				return 1;
			}
			
			if( listitem == 0 )
			{
				format:gb_string( ""cGRAY"— Текущая роль: "cBLUE"%s\n{ffffff}1. "cGRAY"Обычный житель{ffffff}\n2. "cGRAY"Бездомный{ffffff}\n3. "cGRAY"Прилетевший{ffffff}\n4. "cGRAY"Приплывший\n4. "cGRAY"Сельский житель", 
						users_roles[ Player[playerid][uRole] ]
				);
				    
				ShowPlayerDialog( playerid, d_donate + 10, 2, " ", gb_string, "Далее", "Закрыть" );
				
				return 1;
			}
			
			
			SetPVarInt( playerid, "Player:NewRole", listitem );

			ShowPlayerDialog( playerid,d_donate + 11, 1, " ","\ 
				"gbInfo"Введите в поле ниже, Ваше новое игровое имя\n\n\
				"gbInfo"Имя должно быть не более 20 символов.\n\
				"gbInfo"Имя должно содержать латинские буквы и нижнее подчёркивание.\n\n\
				"gbError"Если же Вы решили оставить имя тем же, то просто ничего не вводите.\
				",
			"Далее", "Закрыть");  
		}
		case d_donate + 11:
		{
			if( !response )
			{
				DeletePVar( playerid, "Player:NewRole" );
				format:gb_string( ""cGRAY"— Текущая роль: "cBLUE"%s\n{ffffff}1. "cGRAY"Обычный житель{ffffff}\n2. "cGRAY"Бездомный{ffffff}\n3. "cGRAY"Прилетевший{ffffff}\n4. "cGRAY"Приплывший\n4. "cGRAY"Сельский житель", 
					users_roles[ Player[playerid][uRole] ]
				);
				    
				ShowPlayerDialog( playerid, d_donate + 10, 2, " ", gb_string, "Далее", "Закрыть" );
				
				return 1;
			}
			
			if( !IsCorrectSlot( playerid ) )
			{
				ClearCorrectSlot( playerid );
				DeletePVar( playerid, "Player:NewRole" );
				return 1;
			}
			
			if( inputtext[0] == EOS )
			{
				SetPVarString( playerid, "Player:NewName", Player[playerid][uName] );
				SendClientMessage( playerid, -1, ""gbInfo"Вы решили оставить своё текущее игровое имя." );
				
				return ShowPlayerDialog(playerid, d_donate + 12, DIALOG_STYLE_LIST," ",
					""cGRAY"— Выберите пол персонажа:\n\
					{ffffff}1. "cGRAY"Мужской\n\
					{ffffff}2. "cGRAY"Женский",
					"Выбрать", "Назад"
				);
			}
			
			if( !IsCorrectName( inputtext ) )
			{
				return ShowPlayerDialog( playerid, d_donate + 11,1, " ","\ 
				"gbInfo"Введите в поле ниже, Ваше новое игровое имя\n\n\
				"gbInfo"Имя должно быть не более 20 символов.\n\
				"gbInfo"Имя должно содержать латинские буквы и нижнее подчёркивание.\n\n\
				"gbError"Если же Вы решили оставить имя тем же, то просто ничего не вводите.\n\
				"gbError"Вы ввели некорректное имя.\
				",
				"Далее", "Закрыть");
			}
			
			SetPVarString( playerid, "Player:NewName", inputtext );
		
			mysql_format:query( "SELECT `uID` FROM `gb_users` WHERE BINARY `uName` = '%s'", inputtext );
			mysql_tquery(1, query, "OnDonateCheckName", "dd", playerid, 1 );
		}
		
		case d_donate + 12:
		{
			if( !response )
			{
				DeletePVar( playerid, "Player:NewName" );
				return ShowPlayerDialog( playerid, d_donate + 11, 1, " ","\ 
					"gbInfo"Введите в поле ниже, Ваше новое игровое имя\n\n\
					"gbInfo"Имя должно быть не более 20 символов.\n\
					"gbInfo"Имя должно содержать латинские буквы и нижнее подчёркивание.\n\n\
					"gbError"Если же Вы решили оставить имя тем же, то просто ничего не вводите.\
					",
					"Далее", "Закрыть"
				);
			}
			
			if( !IsCorrectSlot( playerid ) )
			{
				ClearCorrectSlot( playerid );
				DeletePVar( playerid, "Player:NewName" );
				return 1;
			}
			
			if( !listitem )
			{
				return ShowPlayerDialog(playerid, d_donate + 12, DIALOG_STYLE_LIST," ",
					""cGRAY"— Выберите пол персонажа:\n\
					{ffffff}1. "cGRAY"Мужской\n\
					{ffffff}2. "cGRAY"Женский",
					"Выбрать", "Назад"
				);
			}
			
			SetPVarInt( playerid, "Player:NewSex", listitem );
			ShowPlayerDialog( playerid, d_donate + 20, DIALOG_STYLE_LIST, " ",
				""cGRAY"— Выберите цвет кожи персонажа:\n\
					{ffffff}1. "cGRAY"Светлый\n\
					{ffffff}2. "cGRAY"Тёмный",
				"Выбрать", "Назад"
			);
		}
		
		case d_donate + 20 :
		{
			if( !response )
			{
				DeletePVar( playerid, "Player:NewSex" );
				return ShowPlayerDialog(playerid, d_donate + 12, DIALOG_STYLE_LIST," ",
					""cGRAY"— Выберите пол персонажа:\n\
					{ffffff}1. "cGRAY"Мужской\n\
					{ffffff}2. "cGRAY"Женский",
					"Выбрать", "Назад"
				);
			}
			
			if( !IsCorrectSlot( playerid ) )
			{
				ClearCorrectSlot( playerid );
				DeletePVar( playerid, "Player:NewSex" );
				return 1;
			}
			
			if( !listitem )
			{
				return ShowPlayerDialog( playerid, d_donate + 20, DIALOG_STYLE_LIST, " ",
					""cGRAY"— Выберите цвет кожи персонажа:\n\
						{ffffff}1. "cGRAY"Светлый\n\
						{ffffff}2. "cGRAY"Тёмный",
					"Выбрать", "Назад"
				);
			}
			
			else if( listitem == 1 )
			{
				SetPVarInt( playerid, "Player:NewColor", 2 );
			}
			else if( listitem == 2 )
			{
				SetPVarInt( playerid, "Player:NewColor", 1 );
			}
			
			ShowSwitchNationDialog( playerid, d_donate + 13 );
		}
		
		case d_donate + 13 :
		{
			if( !response )
			{
				DeletePVar( playerid, "Player:NewColor" );
				return ShowPlayerDialog( playerid, d_donate + 20, DIALOG_STYLE_LIST, " ",
					""cGRAY"— Выберите цвет кожи персонажа:\n\
						{ffffff}1. "cGRAY"Светлый\n\
						{ffffff}2. "cGRAY"Тёмный",
					"Выбрать", "Назад"
				);
			}
			
			if( !IsCorrectSlot( playerid ) )
			{
				ClearCorrectSlot( playerid );
				DeletePVar( playerid, "Player:NewColor" );
				return 1;
			}
			
			if( listitem == 0 )
			{
				ShowSwitchNationDialog( playerid );
				return 1;
			}
			
			SetPVarInt( playerid, "Player:NewNation", listitem );
			ShowPlayerDialog(playerid, d_donate + 14, 1, " ",
				""gbInfo"Введите новый возраст Вашего персонажа:\n\n\
				 "gbInfo"Возраст должен быть не менее 15 и не более 90 лет.",
				"Далее","Назад"
			);
		}
		
		case d_donate + 14 :
		{
			if( !response )
			{
				DeletePVar( playerid, "Player:NewNation" );
				
				return ShowSwitchNationDialog( playerid );	
			}
			
			if( !IsCorrectSlot( playerid ) )
			{
				ClearCorrectSlot( playerid );
				DeletePVar( playerid, "Player:NewNation" );
				return 1;
			}
			
			if( !isNumeric( inputtext ) )
			{
				return ShowPlayerDialog(playerid, d_donate + 14, 1, " ",
					""gbInfo"Введите новый возраст Вашего персонажа:\n\n\
					 "gbInfo"Возраст должен быть не менее 15 и не более 90 лет.",
					"Далее","Назад"
				);
			}
			
			if( !IsCorrectAge( strval( inputtext ) ) )
			{
				return ShowPlayerDialog(playerid, d_donate + 14, 1, " ",
					""gbInfo"Введите новый возраст Вашего персонажа:\n\n\
					 "gbInfo"Возраст должен быть не менее 15 и не более 90 лет.",
					"Далее","Назад"
				);
			}
			
			SetPVarInt( playerid, "Player:NewAge", strval( inputtext ) );
			
			format:vb_string( "\
				"gbInfo"Введите новый скин Вашего персонажа:\n\
				Текущий скин: "cBLUE"%d"cWHITE"\n\n\
				"gbError"Скин должен соответствовать Вашей роли.",
				Inv[playerid][invSlot][52]
			);
			
			ShowPlayerDialog( playerid,d_donate + 15, DIALOG_STYLE_INPUT, " ", vb_string, "Далее", "Назад" );
		}
		
		case d_donate+15:
		{
			if( !response )
			{
				DeletePVar( playerid, "Player:NewAge" );
				return ShowPlayerDialog(playerid, d_donate + 14, 1, " ",
					""gbInfo"Введите новый возраст Вашего персонажа:\n\n\
					 "gbInfo"Возраст должен быть не менее 15 и не более 90 лет.",
					"Далее","Назад"
				);
			}
			
			if( !IsCorrectSlot( playerid ) )
			{
				ClearCorrectSlot( playerid );
				DeletePVar( playerid, "Player:NewColor" );
				return 1;
			}
			
			if( !isNumeric( inputtext ) ) 
			{
				format:vb_string( "\
					"gbInfo"Введите новый скин Вашего персонажа:\n\
					Текущий скин: "cBLUE"%d"cWHITE"\n\n\
					"gbError"Скин должен соответствовать Вашей роли.\n\
					"gbError"Вы ввели некорректный скин.",
					Inv[playerid][invSlot][52]
				);
				
				return ShowPlayerDialog( playerid,d_donate + 15, DIALOG_STYLE_INPUT, " ", vb_string, "Далее", "Назад" );
			}
			
			new 
				skinid = strval( inputtext ),
				name [ MAX_PLAYER_NAME ];
				
			GetPVarString( playerid, "Player:NewName", name, sizeof( name ) );
			
			if( skinid <= 0 || skinid > 299 || !IsAvaibleSkin( skinid) ) 
			{
				format:vb_string( "\
					"gbInfo"Введите новый скин Вашего персонажа:\n\
					Текущий скин: "cBLUE"%d"cWHITE"\n\n\
					"gbError"Скин должен соответствовать Вашей роли.\n\
					"gbError"Вы ввели некорректный скин.",
					Inv[playerid][invSlot][52]
				);
				
				return ShowPlayerDialog( playerid,d_donate + 15, DIALOG_STYLE_INPUT, " ", vb_string, "Далее", "Назад" );
			}
			
			SetPVarInt( playerid, "Player:NewSkin", skinid );
			
			format:vb_string( "\
				"gbInfo"Информация:\n\n\
				Имя: "cBLUE"%s"cWHITE"\n\
				Роль: "cBLUE"%s"cWHITE"\n\
				Пол: "cBLUE"%s"cWHITE"\n\
				Национальность: "cBLUE"%s"cWHITE"\n\
				Цвет кожи: "cBLUE"%s"cWHITE"\n\
				Возраст: "cBLUE"%d"cWHITE" лет\n\
				Одежда(Скин): "cBLUE"%d"cWHITE"\n\n\
				"gbInfo"Вы действительно желаете изменить роль персонажа?", 
				name,
				users_roles[ GetPVarInt( playerid, "Player:NewRole" ) ],
				users_sex[ GetPVarInt( playerid, "Player:NewSex" ) ],
				users_nation[ GetPVarInt( playerid, "Player:NewNation" ) ],
				users_color[ GetPVarInt( playerid, "Player:NewColor" ) ],
				GetPVarInt( playerid, "Player:NewAge" ),
				GetPVarInt( playerid, "Player:NewSkin" )
			);
			
			ShowPlayerDialog( playerid, d_donate + 16, 0, " ", vb_string,
				"Далее","Закрыть"
			);
		}
		
		case d_donate+16:
		{
			if( !response )
			{
				SendClientMessage( playerid, C_WHITE, ""gbInfo"Вы отказались от изменений Вашего персонажа." );
				
				ClearCorrectSlot( playerid );
				ResetSelectSlot( playerid );
			}
			else
			{
				if( !IsCorrectSlot( playerid ) )
				{
					ClearCorrectSlot( playerid );
					return 1;
				}
		
				new 
					name	[MAX_PLAYER_NAME],
					i = 0;
					
				Player[playerid][uRole] = GetPVarInt( playerid, "Player:NewRole" );
				Player[playerid][uSex] = GetPVarInt( playerid, "Player:NewSex" );
				Player[playerid][uColor] = GetPVarInt( playerid, "Player:NewColor" );
				Player[playerid][uAge] = GetPVarInt( playerid, "Player:NewAge" );
				Player[playerid][uNation] = GetPVarInt( playerid, "Player:NewNation" );
				Inv[playerid][invSlot][52] = GetPVarInt( playerid, "Player:NewSkin" );
				
				SetPlayerSkin( playerid, Inv[playerid][invSlot][52] );
				
				GetPVarString( playerid, "Player:NewName", name, sizeof( name ) );
				
				mysql_format:query( "INSERT INTO `gb_nickchange` (aID,aName_One,aName_Two,Date) VALUES ('%d','%s','%s', '%d')", Player[playerid][uID], Player[playerid][uName], name, gettime() );
				mysql_tquery( mysql, query, "", "");
				
				mysql_format:query( "UPDATE gb_users SET \
					uRole = %d, \
					uSex = %d, \
					uAge = %d, \
					uColor = %d, \
					uNation = %d, \
					uName = '%s' \
					WHERE uID = %d \
					LIMIT 1\
					", 
					Player[playerid][uRole], 
					Player[playerid][uSex], 
					Player[playerid][uAge], 
					Player[playerid][uColor],
					Player[playerid][uNation],
					name,
					Player[playerid][uID] 
				);
				
				mysql_tquery( mysql, query, "", "" );
			
				for( i = 0; i != cBizz; i++ )
				{
					if( !strcmp( Bizz::[i][bOwner], Player[playerid][uName], true ) )
					{
						strmid( Bizz::[i][bOwner], name, 0, strlen(name), MAX_PLAYER_NAME );
						SetBizzStr( Bizz::[i][bID], "bOwner", Bizz::[i][bOwner] );
						break;
					}
				}
				
				for( i = 0; i != MAX_CARS_BUY; i++ ) 
				{
					if( !Car::[i][cID] ) 
						continue;
						
					if( !strcmp( Car::[i][cOwner], Player[playerid][uName], true ) ) 
					{
						format( Car::[i][cOwner], MAX_PLAYER_NAME, "%s", name );
						SetCarsStr( Car::[i][cID], "cOwner", Car::[i][cOwner] );
					}
				}
				
				SetPlayerName( playerid, name );
				strmid( Player[playerid][uName], name, 0, strlen( name ), MAX_PLAYER_NAME );

				ClearSlot( playerid, GetPVarInt( playerid,"selectSlot" ) );
				ClearCorrectSlot( playerid );
				ResetSelectSlot( playerid );
				SaveInventory( playerid );

				SendClientMessage( playerid, C_WHITE, ""gbAccess"Вы успешно изменили своего персонажа." );
			}
			
			DeletePVar( playerid, "Player:NewName" );
			DeletePVar( playerid, "Player:NewRole" );
			DeletePVar( playerid, "Player:NewSkin" );
			DeletePVar( playerid, "Player:NewColor" );
			DeletePVar( playerid, "Player:NewSex" );
			DeletePVar( playerid, "Player:NewAge" );
			DeletePVar( playerid, "Player:NewNation" );
		}
		
		case d_donate + 2 :
		{
			if( !response )
			{
				ClearCorrectSlot( playerid );
				ResetSelectSlot( playerid );
				
				return 1;
			}
			
			if( inputtext[0] == EOS ) 
			{
				return ShowPlayerDialog( playerid, d_donate + 2, 1, " ","\ 
						"gbInfo"Введите в поле ниже, Ваше новое игровое имя\n\n\
						"gbInfo"Имя должно быть не более 20 символов.\n\
						"gbInfo"Имя должно содержать латинские буквы и нижнее подчёркивание.\n\n\
						"gbError"Если же Вы решили оставить имя тем же, то просто ничего не вводите.\
						",
						"Далее", "Закрыть"
				); 	
			}
			
			if( !IsCorrectName( inputtext ) )
			{ 
				ShowPlayerDialog( playerid, d_donate + 2, 1, " ","\ 
						"gbInfo"Введите в поле ниже, Ваше новое игровое имя\n\n\
						"gbInfo"Имя должно быть не более 20 символов.\n\
						"gbInfo"Имя должно содержать латинские буквы и нижнее подчёркивание.\n\n\
						"gbError"Если же Вы решили оставить имя тем же, то просто ничего не вводите.\
						",
						"Далее", "Закрыть"
				); 	
				
				return 1;
			}
			
			SetPVarString( playerid, "Player:NewName", inputtext );
			
			mysql_format:vb_string( "SELECT `uID` FROM `gb_users` WHERE BINARY `uName` = '%s'", inputtext );
			mysql_tquery( mysql, vb_string, "OnDonateCheckName", "dd", playerid, 2 );
		}
		
		case d_donate + 3 :
		{
			if( !response )
			{
				ClearCorrectSlot( playerid );
				ResetSelectSlot( playerid );
				
				return 1;
			}
			
			if( !IsCorrectSlot( playerid ) )
			{
				ClearCorrectSlot( playerid );
				DeletePVar( playerid, "Player:NewName" );
				return 1;
			}
			
			new 	
				name	[MAX_PLAYER_NAME];
			
			GetPVarString( playerid, "Player:NewName", name, sizeof( name ) );

			mysql_format:query( "INSERT INTO `gb_nickchange` (aID,aName_One,aName_Two,Date) VALUES ('%d','%s','%s', '%d')", Player[playerid][uID], Player[playerid][uName], name, gettime() );
			mysql_tquery( mysql, query, "", "");
			
			for(new b; b != cBizz; b ++)
			{
				if( !strcmp( Bizz::[b][bOwner], Player[playerid][uName], true )) 
				{
					strmid( Bizz::[b][bOwner], name, 0, strlen(name), MAX_PLAYER_NAME );
					SetBizzStr( Bizz::[b][bID],"bOwner",Bizz::[b][bOwner] );
					break;
				}
			}
			for( new c; c != MAX_CARS_BUY; c++ ) 
			{
				if( !Car::[c][cID] ) 
					continue;
					
				if( !strcmp( Car::[c][cOwner], Player[playerid][uName], true ) ) 
				{
					format( Car::[c][cOwner], MAX_PLAYER_NAME, "%s", name );
					SetCarsStr( Car::[c][cID], "cOwner", Car::[c][cOwner] );
				}
			}
			SetPlayerName( playerid, name );
			strmid( Player[playerid][uName], name, 0, strlen( name ), MAX_PLAYER_NAME );
			
			mysql_format:query( "UPDATE gb_users SET uName = '%s' WHERE uID = %d LIMIT 1",\
				Player[playerid][uName],
				Player[playerid][uID]
			);
			
			mysql_tquery( mysql, query, "", "" );
			
			SendClientMessage(playerid, C_WHITE, ""gbAccess"Вы успешно изменили имя вашего персонажа.");

			ClearSlot( playerid, GetPVarInt( playerid,"selectSlot" ) );
			ClearCorrectSlot( playerid );
			ResetSelectSlot( playerid );
			SaveInventory( playerid );
		}
	}
	
	return 1;
}

function OnDonateCheckName( playerid, type )
{
	new 
		rows = cache_get_row_count(),
		bool: status = true;

	if( !IsCorrectSlot( playerid ) )
	{
		ClearCorrectSlot( playerid );
		return 1;
	}
	
	if( rows != 0 )
	{
		status = false;
	}
	
	if( type == 1 )
	{
		if( !status )
		{
			DeletePVar( playerid, "Player:NewName" );
			
			ShowPlayerDialog( playerid,d_donate + 11,1, " ","\ 
			"gbInfo"Введите в поле ниже, Ваше новое игровое имя\n\n\
			"gbInfo"Имя должно быть не более 20 символов.\n\
			"gbInfo"Имя должно содержать латинские буквы и нижнее подчёркивание.\n\n\
			"gbError"Если же Вы решили оставить имя тем же, то просто ничего не вводите.\n\
			"gbError"Данное имя уже используется.\
			",
			"Далее", "Закрыть");
			
			return 1;
			
		}
		
		ShowPlayerDialog(playerid, d_donate + 12, DIALOG_STYLE_LIST," ",
			""cGRAY"— Выберите пол персонажа:\n\
			{ffffff}1. "cGRAY"Мужской\n\
			{ffffff}2. "cGRAY"Женский",
			"Выбрать","Назад"
		);
	}
	
	else if( type == 2 )
	{
		if( !status )
		{
			DeletePVar(playerid, "Player:NewName");
			SendClientMessage(playerid,C_GRAY,""gbError"Данное имя уже где-то используется.");
			return 1;
		}

		if( !IsCorrectSlot( playerid ) )
		{
			ClearCorrectSlot( playerid );
			DeletePVar( playerid, "Player:NewName" );
			return 1;
		}
			
		new 
			name	[MAX_PLAYER_NAME];
			
		GetPVarString( playerid, "Player:NewName", name, sizeof( name ) );
		
		format:vb_string( "\
			"gbInfo"Вы указали новое имя: "cBLUE"%s"cWHITE"\n\n\
			Вы уверенны, что хотите изменить имя?", 
			name 
		);
		
		ShowPlayerDialog( playerid, d_donate + 3, 0, " ",vb_string, "Далее", "Закрыть" );
	}
	
	return 1;
}

function OnDonateCheckNumber( playerid )
{
	new 
		rows = cache_get_row_count();

	if( !IsCorrectSlot( playerid ) )
	{
		ClearCorrectSlot( playerid );
		DeletePVar( playerid, "Player:NewNumber" );
		return 1;
	}
	
	if( rows != 0 )
	{		
		ShowPlayerDialog( playerid, d_donate + 7, 1, " ",
			"{ffffff}Укажите желаемый номер телефона:\n\n\
			"gbError"Данный номер уже используется.",
			"Далее","Закрыть"
		);
		
		return 1;
	}
	
	Player[playerid][uNumber] = GetPVarInt(playerid, "Player:NewNumber" );
	userUpdate( playerid, "uNumber", Player[playerid][uNumber] );
	SendMes( playerid, C_WHITE, ""gbAccess"Вы успешно изменили номер телефона на: %d", Player[playerid][uNumber] );
	DeletePVar( playerid, "Player:NewNumber" );
	
	ClearSlot( playerid, GetPVarInt(playerid,"selectSlot") );
	ClearCorrectSlot( playerid );
	ResetSelectSlot( playerid );
	SaveInventory( playerid );

	return 1;
}


function OnDonateCheckCarNumber( playerid )
{
	new 
		rows = cache_get_row_count();
		
	if( rows != 0 )
	{
		ShowPlayerDialog( playerid,d_donate+9,1," ",
			"{ffffff}Укажите желаемый номер автомобиля:\n\n\
			"gbError"Номер автомобиля не может быть более 8 символов.",
			"Далее","Закрыть"
		);
		
		return 1; 
	}
	
	new 
		id = GetPVarInt(playerid, "Car:SelectId");
		
	switch( GetVehicleModel( Car::[id][cCar] ) )
	{
		case 510, 509, 481:
		{
			SendClientMessage(playerid, C_GRAY, ""gbError"Данный транспорт не может иметь номеров.");
			return 1;
		}
		
		default:
		{
			new 
				number[ 16 ];
				
			GetPVarString( playerid, "Player:NewCarNumber", number, sizeof( number ) );
			format:gb_string( "[%s]", number );
			strmid( Car::[id][cNumber], gb_string, 0, strlen( gb_string ), 255 );
			UpdateDynamic3DTextLabelText( Car::[id][cNumberLabel], 0xFFFFFF60, Car::[id][cNumber] );
			SetCarStr( Car::[id][cID], "cNumber", Car::[id][cNumber]);
		}
	}
	
	SendMes( playerid, C_WHITE, ""gbAccess"Вы успешно номер транспорта на: "cBLUE"%s", Car::[id][cNumber]);

	DeletePVar( playerid, "Car:SelectId" );
	DeletePVar( playerid, "Player:NewCarNumber" );
	
	ClearSlot( playerid, GetPVarInt(playerid,"selectSlot") );
	ClearCorrectSlot( playerid );
	ResetSelectSlot( playerid );
	SaveInventory( playerid );

	return 1;
}
	
ShowSwitchNationDialog( playerid, dialogid = d_donate + 13 )
{
	vb_string[0] = EOS;
	
	strcat( vb_string, ""cGRAY"— Выберите национальность персонажа:\n" );
	for( new i = 1; i < sizeof users_nation; i++ )
	{
		format:gb_string( "{ffffff}%d. "cGRAY"%s", i, users_nation[i] );
		strcat( vb_string, gb_string );
		
		if( sizeof users_nation != i )
		{
			strcat( vb_string, "\n" );
		}
	}
	
	return ShowPlayerDialog( playerid, dialogid, DIALOG_STYLE_LIST, " ", vb_string, "Далее", "Назад" );
}

GiveDoubleMoney( playerid, job, money )
{
	if( Player[playerid][uJobDouble][ job ] )
	{
		if( gettime() > Player[playerid][uJobDouble][ job ] + ( 86400 ) )
		{
			Player[playerid][uJobDouble][ job ] = 0;
			UpdateJobDouble( playerid );
		}
		
		money = floatround( money * 0.50 );
		
		return money;
	}
	
	return 0;
}

UpdateJobDouble( playerid )
{
	format:gb_string( "%d|%d|%d|%d|%d|%d|%d",
		Player[playerid][uJobDouble][ JOB_TAXI ],
		Player[playerid][uJobDouble][ JOB_BUS ],
		Player[playerid][uJobDouble][ JOB_VEHCOMPANY ],
		Player[playerid][uJobDouble][3],
		Player[playerid][uJobDouble][4],
		Player[playerid][uJobDouble][5],
		Player[playerid][uJobDouble][6]
	);
	
	userUpdateStr( playerid , "uJobDouble" , gb_string );
}