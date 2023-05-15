#include "YSI\y_hooks"

#define HBUY_LIST	40

new hbuy_list[HBUY_LIST];

hook OnPlayerConnect( playerid ) {
	setData( playerid, "HBuy:List", -1 );
	return true;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	switch( newkeys ) {
		case KEY_WALK: {
			if( IsPlayerInRangeOfPoint( playerid, 1.0, 1072.4669,-342.6463,1797.7004 ) ) {
				showPlayerDialog( playerid, d_buy_menu, DIALOG_STYLE_LIST, 
					"Центр купли-продажи", 
					"1. "cGRAY"Каталог жилья{ffffff}\n2. "cGRAY"Каталог бизнесов", 
					"Далее", "Закрыть" );
				return true;	
			}
			else if(IsPlayerInRangeOfPoint(playerid,1.0,1065.0851,-339.9360,1797.7010)) {
				showPlayerDialog( playerid, d_buy_menu + 7, DIALOG_STYLE_LIST, 
					"Центр купли-продажи",
					"1. "cGRAY"Сделать дубликат ключей бизнеса", 
					"Далее", "Закрыть" );
				return true;	
			}
		}
		case KEY_YES: 
		{
			
			if( getData( playerid, "HBuy:Accept" ) ) 
			{
				new sellid = getData( playerid, "HBuy:SellID" ),
					price = getData( playerid, "HBuy:Price" );
					
				if( !getData( sellid, "uLogin" ) ) 
				{
					SendMes( playerid, -1, ""gbError"Продавец не в сети, операция прервана." );
					delData( playerid, "HBuy:Accept" ), delData( playerid, "HBuy:SellID" ),
					delData( playerid, "HBuy:Price" );
					return true;
				}
				
				if( Player[ playerid ][uMoney] < price )
				{
					SendMes( playerid, -1, ""gbError"У Вас недостаточно денег для покупки, операция была прервана!" );
					delData( playerid, "HBuy:Accept" ), delData( playerid, "HBuy:SellID" ),
					delData( playerid, "HBuy:Price" );
					return true;
				}
				
				if( Player[ playerid ][ uHouse ] )
				{
					SendMes( playerid, -1, ""gbError"У Вас уже имеется дом." );
					SendMes( sellid, -1, ""gbError"У данного игрока уже имеется дом." );
					delData( playerid, "HBuy:Accept" ), delData( playerid, "HBuy:SellID" ),
					delData( playerid, "HBuy:Price" );
					return 1;
				}
				
				if( !Player[ sellid ][ uHouse ] )
				{
					SendMes( playerid, -1, ""gbError"Данный игрок не владеет данным домом." );
					SendMes( sellid, -1, ""gbError"У Вас нет дома для продажи." );
					delData( playerid, "HBuy:Accept" ), delData( playerid, "HBuy:SellID" ),
					delData( playerid, "HBuy:Price" );
					return 1;
				}
				
				Player[sellid][uMoney] += price;
				Player[playerid][uMoney] -= price;
				userUpdate( sellid, "uMoney", Player[sellid][uMoney] );
				userUpdate( playerid, "uMoney", Player[playerid][uMoney] );
				Player[playerid][uHouse] = Player[sellid][uHouse];
				Player[sellid][uHouse] = 0;
				userUpdate( sellid, "uHouse", Player[sellid][uHouse] );
				userUpdate( playerid, "uHouse", Player[playerid][uHouse] );
				new hid = getPlayerHouseID( playerid );
				format( HouseInfo[hid][hOwner], 32, "%s", Player[playerid][uName] );
				houseUpdateStr( HouseInfo[hid][hID], "hOwner", HouseInfo[hid][hOwner] );
				HouseInfo[hid][hOwned] = Player[playerid][uID];
				houseUpdate( HouseInfo[hid][hID], "hOwned", HouseInfo[hid][hOwned] );
				Player[sellid][uMoney] += HouseInfo[hid][hMoney];
				
				HouseInfo[hid][hMoney] = 0;
				houseUpdate( HouseInfo[hid][hID], "hMoney", 0 );
				
				for( new i; i < 18; i++ )
				{
					HouseInfo[hid][hInvSlot][i] = 0;
					HouseInfo[hid][hInvSlotKol][i] = 0;
				}
				
				saveHouseItem( hid );
				
				SendMes( playerid, -1, ""gbAccess"Вы успешно купили дом у игрока "cBLUE"%s"cWHITE".", Player[sellid][uName] );
				SendMes( sellid, -1, ""gbAccess"Игрок, %s купил у вас дом за "cGREEN"$%d"cWHITE".", Player[playerid][uName], price );
				logs( 5, "купил дом у", Player[playerid][uID], Player[sellid][uID], price );
				
				delData( playerid, "HBuy:Accept" ), delData( playerid, "HBuy:SellID" ),
				delData( playerid, "HBuy:Price" );
			}
		}
		case KEY_NO: {
			if( getData( playerid, "HBuy:Accept" ) ) {
				new sellid = getData( playerid, "HBuy:SellID" );
				if( !getData( sellid, "uLogin" ) ) {
					SendMes( playerid, -1, ""gbError"Продавец не в сети, операция прервана!" );
					delData( playerid, "HBuy:Accept" ), delData( playerid, "HBuy:SellID" ),
					delData( playerid, "HBuy:Price" );
					return true;
				}
				SendMes( playerid, -1, ""gbInfo"Вы отказались от покупки дома у игрока "cBLUE"%s"cWHITE".", Player[sellid][uName] );
				SendMes( sellid, -1, ""gbInfo"Игрок, %s отказался купить у вас дом за "cGREEN"$%d"cWHITE".", Player[playerid][uName], getData( playerid, "HBuy:Price" ) );
				delData( playerid, "HBuy:Accept" ), delData( playerid, "HBuy:SellID" ),
				delData( playerid, "HBuy:Price" );
			}
		}
	}
	return true;
}

stock showHouseList( playerid, type, page ) {
	//if( !getData( playerid, "HBuy:List" ) ) setData( playerid, "HBuy:List", 1 );
	setData( playerid, "HBuy:List", page ), setData( playerid, "HBuy:Type", type );
	format( vb_string, sizeof vb_string, "Название\tЦена\n" );
	new idx = getData( playerid, "HBuy:List" ) * HBUY_LIST,
		list;
	switch( type ) {
		case 1: {
			for( new h = idx; h < MAX_HOUSE; h++ ) {
				if( HouseInfo[h][hID] && !HouseInfo[h][hOwned] ) {
					if( HouseInfo[h][hEnterWorld] ) format( query, sizeof query, "Квартира" );
					else format( query, sizeof query, "Дом" );
					format( vb_string, sizeof vb_string, "%s%d. %s #%d \t$%d\n", 
						vb_string, ( list * ( getData( playerid, "HBuy:List" ) + 1 ) ) + 1, query, HouseInfo[h][hID], HouseInfo[h][hPrice] );
					hbuy_list[list] = h;
					list++;	
					if( list == HBUY_LIST ) {
						break;
					}	
				}
			}
			if( list >= HBUY_LIST ) strcat( vb_string, "Следующая страница >>" );
			if( getData( playerid, "HBuy:List" ) != 0 ) strcat( vb_string, "\n<< Предыдушая страница" );
			showPlayerDialog( playerid, d_buy_menu + 2, DIALOG_STYLE_TABLIST_HEADERS, 
				"{ffffff}Список жилья доступного для покупки", vb_string, "Выбор", "Назад" );
		}	
		case 2: {
			new price[2]; 
			price[0] = getData( playerid, "HBuy:PriceM" ),
			price[1] = getData( playerid, "HBuy:PriceH" );
			for( new h = getData( playerid, "HBuy:OldList" ); h < MAX_HOUSE; h++ ) {
				if( HouseInfo[h][hID] && !HouseInfo[h][hOwned] ) {
					if( HouseInfo[h][hPrice] < price[1] && HouseInfo[h][hPrice] > price[0] ) {
						if( HouseInfo[h][hEnterWorld] ) format( query, sizeof query, "Квартира" );
						else format( query, sizeof query, "Дом" );
						format( vb_string, sizeof vb_string, "%s%d. %s #%d \t$%d\n", 
							vb_string, ( list * ( getData( playerid, "HBuy:List" ) + 1 ) )+ 1, query, HouseInfo[h][hID], HouseInfo[h][hPrice] );
						hbuy_list[list] = h;
						list++;	
					}	
				}
				if( list >= HBUY_LIST ) {
					setData( playerid, "HBuy:OldList", h );
					strcat( vb_string, "Следующая страница >>" );
					break;
				}	
			}
			if( !list ) {
				SendMes( playerid, -1, ""gbInfo"По данному запросу не найдено домов" );
				showPlayerDialog( playerid, d_buy_menu + 3, DIALOG_STYLE_INPUT, 
					"Сортировка по ценовой категории", 
					"{ffffff}Укажите ценовую категорию дома которую вы хотели бы просмотреть\
					\nПример: 1000-50000", "Ввод", "Назад" );
				return true;
			}
			//if( getData( playerid, "HBuy:List" ) != 0 ) strcat( vb_string, "\n<< Предыдушая страница" );
			showPlayerDialog( playerid, d_buy_menu + 2, DIALOG_STYLE_TABLIST_HEADERS, 
				"{ffffff}Список жилья доступного для покупки", vb_string, "Выбор", "Назад" );
		}
	}	
	return true;
}

stock showHouseBuyMenu( playerid, h ) {
	if( !HouseInfo[h][hInterior] ) format( query, sizeof query, "Стандартный" );
	else format( query, sizeof query, "%s", house_int[ HouseInfo[h][hInterior] - 1 ][ht_name] );	
	format( vb_string, sizeof vb_string, 
		"{ffffff}| Информация о данном доме:\n\n"cGRAY"Номер дома - %d\nСтоимость дома - "cGREEN"$%d\
		\n\n{ffffff}| Макет дома:\n\n"cGRAY"%s",
		HouseInfo[ h ][hID], HouseInfo[ h ][hPrice], query );
	showPlayerDialog( playerid, d_buy_menu + 4, DIALOG_STYLE_MSGBOX, "Информация о доме", vb_string, "Купить", "Назад" );
	
	setData( playerid, "HBuy:House", h );
	setData( playerid, "HBuy:Camera", 1 );
	
	new Float:dist = 6.0, Float:pos[4];
	
	GetPlayerPos( playerid, pos[0], pos[1], pos[2] );
	
	setDataFloat( playerid, "HBuy:PX", pos[0] ),
	setDataFloat( playerid, "HBuy:PY", pos[1] ),
	setDataFloat( playerid, "HBuy:PZ", pos[2] );
	
	SetPlayerInterior( playerid, 0 );
	SetPlayerVirtualWorld( playerid, 1 );
	if( !HouseInfo[h][hEnterWorld] ) {
		SetPlayerPos( playerid, 
			HouseInfo[h][hEnterPos][0] + 7.0 * -floatsin( HouseInfo[h][hEnterPos][3] + 180.0, degrees ),
			HouseInfo[h][hEnterPos][1] + 7.0 * floatcos( HouseInfo[h][hEnterPos][3] + 180.0, degrees ),
			HouseInfo[h][hEnterPos][2] );
					
		InterpolateCameraPos( playerid, HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2],
			HouseInfo[h][hEnterPos][0] + dist * -floatsin( HouseInfo[h][hEnterPos][3] + 180.0, degrees ), 
			HouseInfo[h][hEnterPos][1] + dist * floatcos( HouseInfo[h][hEnterPos][3] + 180.0, degrees ), 
			HouseInfo[h][hEnterPos][2], 600, 1000 );
		InterpolateCameraLookAt( playerid, HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2],
			HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2], 600, 1000);	
	}
	else {
		for( new i; i < sizeof Hostels; i++) {
			if( Hostels[i][kVirtWorld] == HouseInfo[h][hEnterWorld] ) {
				setPlayerPos( playerid, 
					Hostels[i][kEnterPos][0] + 7.0 * -floatsin( Hostels[i][kEnterPos][2] + 180.0,degrees), 
					Hostels[i][kEnterPos][1] + 7.0 * floatcos( Hostels[i][kEnterPos][2] + 180.0,degrees), 
					Hostels[i][kEnterPos][2] );
				SetPlayerCameraPos( playerid, Hostels[i][kCamPos][0], Hostels[i][kCamPos][1], 
					Hostels[i][kCamPos][2] );
				SetPlayerCameraLookAt( playerid, Hostels[i][kEnterPos][0], Hostels[i][kEnterPos][1], 
					Hostels[i][kEnterPos][2] );
				break;
			}
		}	
	}
	return true;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	switch( dialogid ) {
		case d_buy_menu: {
			if( !response ) return true;
			switch( listitem ) {
				case 0: { // Каталог домов
					showPlayerDialog( playerid, d_buy_menu + 1, DIALOG_STYLE_LIST, " ", 
						"1. Список всех домов\n2. Сортировка по ценовой категории\
						\n3. Покупка дома по номеру\n4. Продать дом", "Выбор", "Назад" );
				}
				case 1: { // Каталог бизнесов
					showPlayerDialog( playerid, d_bizz_menu, 2, "Центр купли-продажи",
						"1. "cGRAY"Приобрести собственный бизнес{ffffff}\
						\n2. "cGRAY"Продать собственный бизнес", "Далее", "Закрыть" );
				}
			}
		}
		case d_buy_menu + 1: {
			if( !response ) {
				showPlayerDialog( playerid, d_buy_menu, DIALOG_STYLE_LIST, 
					"Центр купли-продажи", 
					"1. "cGRAY"Каталог жилья{ffffff}\n2. "cGRAY"Каталог бизнесов", 
					"Далее", "Закрыть" );
				return true;
			}
			switch( listitem ) {
				case 0: {// Список всех домов
					showHouseList( playerid, 1, 0 );
				}
				case 1: {// Сортировка по ценовой категории
					showPlayerDialog( playerid, d_buy_menu + 3, DIALOG_STYLE_INPUT, 
						"Сортировка по ценовой категории", 
						"{ffffff}Укажите ценовую категорию дома которую вы хотели бы просмотреть\
						\nПример: 1000-50000", "Ввод", "Назад" );
				}
				case 2: {
					showPlayerDialog( playerid, d_buy_menu + 9, DIALOG_STYLE_INPUT,
						"Покупка дома", "{ffffff}Укажите номер дома в окошке", "Ввод", "Назад" );
				}
				case 3: {
					showPlayerDialog( playerid, d_buy_menu + 5, DIALOG_STYLE_LIST,
						"Продажа дома", "1. "cGRAY"Продать дом государству{ffffff}\n2. "cGRAY"Продать дом игроку",
						"Выбор", "Назад" );
				}
			}
		}
		case d_buy_menu + 2: {
			if( !response ) {
				setData( playerid, "HBuy:List", -1 );
				showPlayerDialog( playerid, d_buy_menu + 1, DIALOG_STYLE_LIST, " ", 
					"1. Список всех домов\n2. Сортировка по ценовой категории\
					\n3. Покупка дома по номеру\n4. Продать дом", "Выбор", "Назад" );
				return true;
			}
			if( listitem == HBUY_LIST ) return showHouseList( playerid, getData( playerid, "HBuy:Type" ), getData( playerid, "HBuy:List" ) + 1 );
			else if( listitem == HBUY_LIST + 1 ) return showHouseList( playerid, getData( playerid, "HBuy:Type" ), getData( playerid, "HBuy:List" ) - 1 );
			
			showHouseBuyMenu( playerid, hbuy_list[ listitem ] );
		}
		case d_buy_menu + 3: {
			if( !response ) {
				showPlayerDialog( playerid, d_buy_menu + 1, DIALOG_STYLE_LIST, " ", 
					"1. Список всех домов\n2. Сортировка по ценовой категории\
					\n3. Покупка дома по номеру\n4. Продать дом", "Выбор", "Назад" );
				return true;
			}
			if( sscanf( inputtext, "p<->a<d>[2]", inputtext[0], inputtext[1] ) ) {
				SendMes( playerid, -1, ""gbError"Неверное значение!" );
				showPlayerDialog( playerid, d_buy_menu + 3, DIALOG_STYLE_INPUT, 
					"Сортировка по ценовой категории", 
					"{ffffff}Укажите ценовую категорию дома которую вы хотели бы просмотреть\
					\nПример: 1000-50000", "Ввод", "Назад" );
				return true;
			}
			if( inputtext[1] < inputtext[0] ) {
				SendMes( playerid, -1, ""gbError"Неверное значение!" );
				showPlayerDialog( playerid, d_buy_menu + 3, DIALOG_STYLE_INPUT, 
					"Сортировка по ценовой категории", 
					"{ffffff}Укажите ценовую категорию дома которую вы хотели бы просмотреть\
					\nПример: 1000-50000", "Ввод", "Назад" );
				return true;
			}
			setData( playerid, "HBuy:PriceM", inputtext[0] ), 
			setData( playerid, "HBuy:PriceH", inputtext[1] );
			showHouseList( playerid, 2, 0 );
		}
		case d_buy_menu + 4: 
		{
			SetPlayerPos( playerid,
				getDataFloat( playerid, "HBuy:PX" ),
				getDataFloat( playerid, "HBuy:PY" ),
				getDataFloat( playerid, "HBuy:PZ") );
				
			SetCameraBehindPlayer( playerid );
			SetPlayerVirtualWorld( playerid, 0 ), SetPlayerInterior( playerid, 1 );
				
			delData( playerid, "HBuy:PX" ), delData( playerid, "HBuy:PY" ),
			delData( playerid, "HBuy:PZ" ),
			delData( playerid, "HBuy:Camera" );
			
			if( response ) 
			{
				new h = getData( playerid, "HBuy:House" );
				if( Player[playerid][uHouse] ) 
					return SendMes( playerid, C_WHITE, ""gbError"У Вас уже есть дом." );
					
				if( HouseInfo[h][hPrice] > Player[playerid][uMoney] ) 
					return SendMes( playerid, C_WHITE, ""gbError"У вас недостаточно средств для покупки этого дома." );
			
				if( HouseInfo[h][hOwned] )
					return SendMes( playerid, C_WHITE, ""gbError"Данный дом уже был куплен." );
				
				Player[playerid][uHouse] = HouseInfo[h][hID];
				userUpdate( playerid, "uHouse", Player[playerid][uHouse] );
				
				format( gb_string, sizeof vb_string, "купил%sсобственный дом", Player[playerid][uSex] == 1 ? (" "):("а ") );
				MeAction( playerid, vb_string, 1 );
				
				GivePlayerCash( playerid, -HouseInfo[h][hPrice] );
				strmid( HouseInfo[h][hOwner], Player[playerid][uName], 0, strlen( Player[playerid][uName] ), 24 );
				houseUpdateStr( HouseInfo[h][hID], "hOwner", HouseInfo[h][hOwner] );
				HouseInfo[h][hOwned] = Player[playerid][uID], houseUpdate( HouseInfo[h][hID], "hOwned", HouseInfo[h][hOwned] );
				HouseInfo[h][hSellDate] = getdate(), houseUpdate( HouseInfo[h][hID], "hSellDate", HouseInfo[h][hSellDate] );
				HouseInfo[h][hHouseTaxTime] = gettime(), houseUpdate( HouseInfo[h][hID], "hHouseTaxTime", HouseInfo[h][hHouseTaxTime] );
				HouseInfo[h][hHouseTax] = 2, houseUpdate( HouseInfo[h][hID], "hHouseTax", HouseInfo[h][hHouseTax] );
					
				HouseInfo[h][hMoney] = 0;
				houseUpdate( HouseInfo[h][hID], "hMoney", 0 );
				
				for( new i; i < 18; i++ )
				{
					HouseInfo[h][hInvSlot][i] = 0;
					HouseInfo[h][hInvSlotKol][i] = 0;
				}
				
				saveHouseItem( h );
				
				SendMes( playerid, C_GRAY, ""gbAccess"Вы купили собственный дом. Дом автоматически оплачен на "cBLUE"2{ffffff} дня.");
				DestroyDynamicPickup( HouseInfo[h][hPickup] );
				DestroyDynamicMapIcon( HouseInfo[h][hIcon] );
				
				HouseInfo[h][hPickup] = CreateDynamicPickup( 1272, 23, 
					HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2], -1 );
				HouseInfo[h][hIcon] = CreateDynamicMapIcon( 	
					HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2],
					32, 0xFFFFFFFF, -1, -1, -1, 15.0 );
					
				logs( 2, "купил дом", Player[playerid][uID], HouseInfo[h][hID] );
			}
			delData( playerid, "HBuy:House" );
		}
		case d_buy_menu + 5: {
			if(!response) {
				showPlayerDialog( playerid, d_buy_menu + 1, DIALOG_STYLE_LIST, " ", 
					"1. Список всех домов\n2. Сортировка по ценовой категории\
					\n3. Покупка дома по номеру\n4. Продать дом", "Выбор", "Назад" );
				return true;
			}
			switch( listitem ) {
				case 0: {
					if( Player[playerid][uHouse] ) {
						for( new h; h < MAX_HOUSE; h++ ) {
							if( Player[playerid][uID] == HouseInfo[h][hOwned] ) {
								new cash;
								switch( Player[playerid][uPremium] ) {
									case 1 : cash = floatround( HouseInfo[h][hPrice] * 0.7 );
									case 2 : cash = floatround( HouseInfo[h][hPrice] * 0.8 );
									case 3 : cash = floatround( HouseInfo[h][hPrice] * 0.9 );
									case 4 : cash = floatround( HouseInfo[h][hPrice] * 0.95 );
									default: cash = floatround( HouseInfo[h][hPrice] * 0.6 );
								}
								setData( playerid, "HBuy:Cash", cash );
								setData( playerid, "HBuy:SellID", h );
								format( gb_string, sizeof gb_string, 
									"{ffffff}Вы собираетесь продать дом государству, за $%d. Вы согласны?", cash );
								showPlayerDialog( playerid, d_buy_menu + 6, DIALOG_STYLE_MSGBOX, "Продажа дома", gb_string, "Продать", "Отмена" );
								return true;
							}
						}
					}
					SendMes( playerid, C_GRAY, ""gbInfo"У вас нет дома!" );
					showPlayerDialog( playerid, d_buy_menu + 5, DIALOG_STYLE_LIST,
						"Продажа дома", "1. "cGRAY"Продать дом государству{ffffff}\n2. "cGRAY"Продать дом игроку",
						"Выбор", "Назад" );
				}
				case 1: {
					if( !Player[playerid][uHouse] ) {
						SendMes( playerid, -1, ""gbError"У вас нет дома!" );
						showPlayerDialog( playerid, d_buy_menu + 5, DIALOG_STYLE_LIST,
							"Продажа дома", "1. "cGRAY"Продать дом государству{ffffff}\n2. "cGRAY"Продать дом игроку",
							"Выбор", "Назад" );
						return true;
					}
					showPlayerDialog( playerid, d_buy_menu + 10, DIALOG_STYLE_INPUT, "Продать дом игроку",
						"{ffffff}Для продажи дома игроку, введите его ID в окошко", "Ввод", "Назад" );
					/*SendMes( playerid, C_GRAY, ""gbInfo"Извините, данная функция пока не работает!" );
					showPlayerDialog( playerid, d_buy_menu + 5, DIALOG_STYLE_LIST,
						"Продажа дома", "1. "cGRAY"Продать дом государству{ffffff}\n2. "cGRAY"Продать дом игроку",
						"Выбор", "Назад" );*/
				}
			}	
		}
		case d_buy_menu + 6: 
		{
			if( !response ) 
			{
				showPlayerDialog( playerid, d_buy_menu + 5, DIALOG_STYLE_LIST,
					"Продажа дома", "1. "cGRAY"Продать дом государству{ffffff}\n2. "cGRAY"Продать дом игроку",
					"Выбор", "Назад" );
				delData( playerid, "HBuy:Cash" );	
				return true;
			}
			new h = getData( playerid, "HBuy:SellID" );

			if( !Player[ playerid ][ uHouse ] )
				return SendMes( playerid, -1, ""gbError"У Вас нет дома." );
				
				
			Player[playerid][uMoney] += getData( playerid, "HBuy:Cash" ) + HouseInfo[h][hMoney];
			userUpdate( playerid, "uMoney", Player[playerid][uMoney] );
			
			foreach( new i : Player) 
			{
				if( Player[i][uHouse] == HouseInfo[h][hID] && Player[i][uID] != Player[playerid][uID] ) {
					SendMes( playerid, C_GRAY, ""gbInfo"Дом в котором вы проживали был продан владельцем. Вы выселены." );
					Player[i][uHouse] = 0;
				}
			}
			SendMes( playerid, C_GRAY, ""gbInfo"Вы успешно продали дом за "cGREEN"$%d"cWHITE".", getData( playerid, "HBuy:Cash" ) );
			Player[playerid][uHouse] = 0;
			format( query, sizeof query, "UPDATE `gb_users` SET `uHouse` = '0' WHERE `uHouse` = '%d'",
				HouseInfo[h][hID] );
			mysql_tquery( mysql, query );
			
			HouseInfo[h][hMoney] = 0;
			houseUpdate( HouseInfo[h][hID], "hMoney", 0 );
			
			for( new i; i < 18; i++ )
			{
				HouseInfo[h][hInvSlot][i] = 0;
				HouseInfo[h][hInvSlotKol][i] = 0;
			}
			
			saveHouseItem( HouseInfo[h][hID] );
			
			format( HouseInfo[h][hOwner], 32, "None" ); 
			houseUpdateStr( HouseInfo[h][hID], "hOwner", HouseInfo[h][hOwner] );
			HouseInfo[h][hOwned] = 0;
			houseUpdate( HouseInfo[h][hID], "hOwned", HouseInfo[h][hOwned] );
			
			DestroyDynamicPickup( HouseInfo[h][hPickup] ), DestroyDynamicMapIcon( HouseInfo[h][hIcon] );
			
			HouseInfo[h][hPickup] = CreateDynamicPickup( 1273, 23, 
				HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2], -1 );
			HouseInfo[h][hIcon] = CreateDynamicMapIcon( 	
				HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2],
				31, 0xFFFFFFFF, -1, -1, -1, 15.0 );
				
			delData( playerid, "HBuy:Cash" ), delData( playerid, "HBuy:SellID" );
			
			logs( 3, "продал дом", Player[playerid][uID], HouseInfo[h][hID] );
		}
		
		case d_buy_menu + 9: {
			if( !response ) {
				showPlayerDialog( playerid, d_buy_menu + 1, DIALOG_STYLE_LIST, " ", 
					"1. Список всех домов\n2. Сортировка по ценовой категории\
					\n3. Покупка дома по номеру\n4. Продать дом", "Выбор", "Назад" );
				return true;
			}
			if( sscanf( inputtext, "d", inputtext[0] ) ) {
				showPlayerDialog( playerid, d_buy_menu + 9, DIALOG_STYLE_INPUT,
					"Покупка дома", "{ffffff}Укажите номер дома в окошке", "Ввод", "Назад" );
				return true;
			}
			for( new h; h < sizeof HouseInfo; h++ ) {
				if( HouseInfo[h][hID] == inputtext[0] ) {
					if( HouseInfo[h][hOwned] ) {
						showPlayerDialog( playerid, d_buy_menu + 9, DIALOG_STYLE_INPUT,
							"Покупка дома", "{ffffff}Укажите номер дома в окошке", "Ввод", "Назад" );
						return SendMes( playerid, -1, ""gbError"Этот дом уже имеет владельца, выберите другой!" );
					}
					showHouseBuyMenu( playerid, h );
					return true;
				}
			}
		}
		case d_buy_menu + 10: {
			new bool:status = false;
			if( !response ) {
				showPlayerDialog( playerid, d_buy_menu + 1, DIALOG_STYLE_LIST, " ", 
					"1. Список всех домов\n2. Сортировка по ценовой категории\
					\n3. Покупка дома по номеру\n4. Продать дом", "Выбор", "Назад" );
				return true;
			}
			if( sscanf( inputtext, "d", inputtext[0] ) ) status = true;	
			if( !getData( inputtext[0], "uLogin" ) ) {
				SendMes( playerid, -1, ""gbError"Данный игрок не в сети!" );
				status = true;
			}
			if( Player[ inputtext[0] ][uHouse] ) {
				SendMes( playerid, -1, ""gbError"У игрока уже имеется дом или он снимает комнату." );
				status = true;
			}
			if( status ) {
				showPlayerDialog( playerid, d_buy_menu + 10, DIALOG_STYLE_INPUT, "Продать дом игроку",
					"{ffffff}Для продажи дома игроку, введите его ID в окошко", "Ввод", "Назад" );
				return true;	
			}		
			setData( playerid, "HBuy:PlayerID", inputtext[0] );
			showPlayerDialog( playerid, d_buy_menu + 11, DIALOG_STYLE_INPUT, "Продать дом игроку", 
				"{ffffff}Укажите цену дома в окошко.\nМинимальная цена продажи $1000", "Ввод", "Назад" );
		}
		case d_buy_menu + 11: {
			if( !response ) {
				showPlayerDialog( playerid, d_buy_menu + 10, DIALOG_STYLE_INPUT, "Продать дом игроку",
					"{ffffff}Для продажи дома игроку, введите его ID в окошко", "Ввод", "Назад" );
				return true;
			}
			if( sscanf( inputtext, "d", inputtext[0] ) ) {
				showPlayerDialog( playerid, d_buy_menu + 11, DIALOG_STYLE_INPUT, "Продать дом игроку", 
					"{ffffff}Укажите цену дома в окошко.\nМинимальная цена продажи $1000", "Ввод", "Назад" );
				return true;
			}
			if( inputtext[0] < 1000 ) {
				showPlayerDialog( playerid, d_buy_menu + 11, DIALOG_STYLE_INPUT, "Продать дом игроку", 
					"{ffffff}Укажите цену дома в окошко.\nМинимальная цена продажи $1000", "Ввод", "Назад" );
				return true;
			}
			new sellid = getData( playerid, "HBuy:PlayerID" );
			if( Player[sellid][uMoney] < inputtext[0] ) {
				SendMes( playerid, -1, ""gbError"У игрока нет столько денег!" );
				showPlayerDialog( playerid, d_buy_menu + 11, DIALOG_STYLE_INPUT, "Продать дом игроку", 
					"{ffffff}Укажите цену дома в окошко.\nМинимальная цена продажи $1000", "Ввод", "Назад" );
				return true;
			}
			
			SendMes( playerid, -1, ""gbInfo"Вы предложили купить свой дом игроку, %s за $%d",
				Player[ sellid ][uName], inputtext[0] );
			SendMes( sellid, -1, ""gbInfo"Игрок %s предложил вам купить его дом, за $%d. ( "cGREEN"Y{ffffff} | "cRED"N{ffffff} )",
				Player[playerid][uName], inputtext[0] );
			setData( sellid, "HBuy:SellID", playerid ), setData( sellid, "HBuy:Price", inputtext[0] );
			setData( sellid, "HBuy:Accept", 1 );
			delData( playerid, "HBuy:PlayerID" );
		}
	}
	return true;
}