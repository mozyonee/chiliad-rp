#include <YSI\y_hooks>

#define d_gps 				890

#define MAX_GPS_CATEGORIES	5

#define static_gps "- Поиск своего дома\n- Поиск своего автомобиля\n- Поиск своего бизнеса"

new gps_cat[MAX_GPS_CATEGORIES][32] = {
	{ "Организации" },
	{ "Работы" },
	{ "Транспортные компании" },
	{ "Транспортные узлы" },
	{ "Разное" }
};

enum gps_info 
{ 
	gps_category,
	gps_text[64],
	Float:gps_pos[3]
}

new gps_cat_check[][gps_info] = {
	{ 0, "Мэрия Лос-Сантос", { 1481.8105,-1737.2632,13.3828 } },//
	{ 0, "Полицейский участок Лос-Сантос", { 1536.9436,-1674.1461,13.3828 } },
	{ 0, "Больница Лос-Сантос", { 1191.7841,-1324.7185,13.3984 } },
	{ 0, "Новостная сеть Лос-Сантос", { 1684.9919,-1634.9209,13.3828 } },
	{ 0, "Автошкола Лос-Сантос", { 708.0083,-1410.2526,13.3913 } },
	{ 0, "Адвокатская контора \"LFW\"", { 2300.1453,-42.1836,26.4844 } },
	{ 0, "Шерифы Округа Ред", { 638.3360,-570.8814,16.1875 } },
	{ 0, "Суд Лос-Сантос", { 1384.2402,-1795.3458,13.3828 } },
	{ 0, "Полицейский участок в Гетто", { 2321.1255,-1376.4082,24.0258 } },
	{ 0, "Полицейский участок в аэропорту", { 2008.9414,-2118.3098,13.5469 } },
	{ 0, "Полицейский участок на Санта-Мария", { 426.8109,-1782.6337,5.5469 } },
	{ 0, "Федеральная тюрьма", { 78.5881,-216.2557,1.5925 } },
	{ 0, "LSFD FIRE STATION 505", { 1316.4294,-918.8466,37.9005 } },
	{ 0, "LSFD EMS STATION 707", { 2741.9810,-1459.7938,30.2813 } },
	{ 0, "Государственный суд", { 1397.4264,-1586.0249,13.3543 } },
	{ 1, "Лесопилка Округ Рэд", { -509.4691,-82.9949,62.1382 } },
	{ 1, "Таксопарк Лос-Сантос", { 1151.1597,-1223.0328,17.6233 } },
	{ 1, "Автобусный парк Лос-Сантос", { 1235.9476,-1826.7441,13.4104 } },
	{ 1, "Транспортная компания Лос-Сантос", { 2236.3145,-2213.7837,13.5469 } },
	{ 2, "Мебельный завод Округа Рэд", { 1232.2205,192.6768,19.4063 } },
	{ 2, "Нефтезавод Лас-Вентураса", { 288.3755,1412.0061,10.3791} },
	{ 2, "Сдача прицепов", { 1060.9506,-323.2469,73.9851 } },
	{ 2, "Загрузка товара", { 1075.2706,-340.4169,73.9922 } },
	{ 2, "Центральный склад", { 1025.7075,-442.0553,53.2059 } },
	{ 3, "Автосалон в Лос-Сантос", { 556.0466,-1250.5190,16.9314 } },
	{ 3, "Автосалон в Гетто", { 2128.3896,-1116.8464,25.1917 } },
	{ 3, "Мотосалон в Округе Рэд", { 844.4324,-571.1530,16.4934 } },
	{ 3, "СТО Лос-Сантос", { 622.4834,-1506.8678,14.7790 } },
	{ 3, "СТО Гетто", { 2528.2449,-1509.1635,23.8300 } },
	{ 3, "СТО в Округе Рэд", { 1366.1798,209.9495,19.4063 } },
	{ 3, "Утилизация в Округе Рэд", { 228.0174,-263.4871,1.4297 } },
	{ 3, "Аренда автомобилей гетто", { 2074.6316,-1913.6085,13.5469 } },
	{ 3, "Аренда автомобилей в ЛС", { 333.6148,-1814.8760,4.3486 } },
	{ 3, "Аренда воздушного тс", { 1962.2009,-2190.0515,13.5469 } },
	{ 3, "Аренда водного тс", { 2293.9653,-2538.3601,1.6400 } },
	{ 4, "Банк Лос-Сантоса", { 1458.1752,-1029.6096,23.6563 } },
	{ 4, "Центр купли-продажи Лос-Сантоса", { 1458.1746,-1470.0586,13.3516 } },
	{ 4, "Мотель Лос-Сантос", { 1295.7080,-1541.2190,13.3828 } },
	{ 4, "Пирс Лос-Сантоса", { 2222.1914,-2650.4929,13.3919 } },
	{ 4, "Пирс Округа Рэд", { 2155.9961,-66.9565,5.1026 } },
	{ 4, "Церковь Лос-Сантоса", { 2235.7781,-1305.6826,23.8498 } },
	{ 4, "Церковь Округа Рэд", { 2235.7781,-1305.6826,23.8498 } },
	{ 4, "Спортзал Лос-Сантос", { 817.2243,-1762.0969,13.5469 } },
	{ 4, "Спортзал Гетто", { 2222.4856,-1724.7850,13.5625 } },
	{ 4, "Спортзал Округ Рэд", { 2273.2031,86.1600,26.4844 } }
};

new 
	gps_select			[ MAX_PLAYERS ][ sizeof gps_cat_check ],
	gps_use				[ MAX_PLAYERS char ];

CMD:gps( playerid, params[] ) {
    if( getData( playerid, "PlayerDriverCheckpoint" ) ) return SendMes( playerid, C_WHITE, ""gbError"На данный момент метку снять нельзя!");
	if( !gps_use{ playerid } ) {
		for( new i; i < sizeof gps_cat; i++ ) {
			format( vb_string, sizeof vb_string, "%s- %s\n", vb_string, gps_cat[i] );
		}
		format( vb_string, sizeof vb_string, "%s%s", vb_string, static_gps );
		showPlayerDialog( playerid, d_gps, DIALOG_STYLE_LIST, "GPS", vb_string, "Выбор", "Назад" );
	}
	else 
	{
	    DisableGPSCheckPoint( playerid );
		SendMes( playerid, C_WHITE, ""gbAccess"Вы убрали отмеченную метку на Вашей карте." );
	}
	
	return 1;
}

hook OnPlayerConnect( playerid )
{
	gps_use{ playerid } = 0;
	
	return 1;
}

hook OnPlayerEnterCheckpoint( playerid )
{
	if( gps_use{ playerid } )
	{
		DisableGPSCheckPoint( playerid );
		SendClientMessage( playerid, C_WHITE, ""gbAccess"Вы успешно достигли места назначения." );
	}
}

SetGPSCheckPoint( playerid, Float: x, Float: y, Float: z )
{
	DisableGPSCheckPoint( playerid );
	
	gps_use{ playerid } = 1;
	SetPlayerCheckpoint( playerid, x, y, z, 3.0 );
	
	return 1;
}

DisableGPSCheckPoint( playerid )
{
	if( gps_use{ playerid } )
	{
		DisablePlayerCheckpoint( playerid );
		gps_use{ playerid } = 0;
	}
	
	return 1;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) 
{
	if( dialog_cheat_use[playerid]  ) 
		return 1;
		
	switch( dialogid ) 
	{
		case d_gps: 
		{
			if( !response ) 
				return 1;
			
			new gps_dialog = sizeof gps_cat;
			
			if( listitem == gps_dialog ) findHouse( playerid );
			else if( listitem == gps_dialog + 1 ) showPlayerDialog(playerid,d_gps + 7,1,"GPS","{ffffff}Введите номер автомобиля который хотите найти:\n\n"cRED"| Автомобиль который вы ищите должен принадлежать вам.","Далее","Закрыть");
			else if( listitem == gps_dialog + 2 ) showPlayerDialog(playerid,d_gps + 8,1,"GPS","{ffffff}Введите номер бизнеса который хотите найти:\n\n"cRED"| Бизнес который вы ищите должен принадлежать вам.","Далее","Закрыть");
			else {
				new slot;
				for( new i; i < sizeof gps_cat_check; i++ ) {
					if( gps_cat_check[i][gps_category] != listitem ) continue; 
					format( vb_string, sizeof vb_string, "%s- %s\n", vb_string, gps_cat_check[i][gps_text] );
					gps_select[playerid][slot] = i;
					slot++;
				}
				showPlayerDialog( playerid, d_gps + 1, DIALOG_STYLE_LIST, "GPS", vb_string, "Выбор", "Назад" );
			}
		}
		case d_gps + 1: {
			if( !response ) return CallLocalFunction( "cmd_gps", "d", playerid ), delData( playerid, "Player:GPSCat" );
			
			new 
				i = gps_select[playerid][listitem];
		
			SetGPSCheckPoint( playerid, 
				gps_cat_check[i][gps_pos][0],
				gps_cat_check[i][gps_pos][1], 
				gps_cat_check[i][gps_pos][2] 
			);
			
			SendClientMessage( playerid, C_WHITE, ""gbInfo"Вы установили метку на карте." );
	
		}
		case d_gps + 7: 
		{
		    if(!response) 
				return 1;
		    
			if(!strlen(inputtext)) 
				return showPlayerDialog(playerid,d_gps + 7,1,"GPS","{ffffff}Введите номер автомобиля который хотите найти:\n\n"cRED"| Автомобиль который вы ищите должен принадлежать вам.","Далее","Закрыть");
		    
			if(!isNumeric(inputtext)) 
				return showPlayerDialog(playerid,d_gps + 7,1,"GPS","{ffffff}Введите номер автомобиля который хотите найти:\n\n"cRED"| Автомобиль который вы ищите должен принадлежать вам.","Далее","Закрыть");
			
			if(strval(inputtext) < 1) 
				return showPlayerDialog(playerid,d_gps + 7,1,"GPS","{ffffff}Введите номер автомобиля который хотите найти:\n\n"cRED"| Автомобиль который вы ищите должен принадлежать вам.","Далее","Закрыть");
			
			new 
				bool: countcar = false;
				
			for( new i; i != MAX_CARS_BUY; i++ ) 
			{
			    if( !IsBuyingCar( i ) ) 
					continue;
		    	
				if( Car::[i][cID] == strval(inputtext) && IsOwnerCar( i, playerid ) ) 
				{
					new 
						Float: v_x,
						Float: v_y,
						Float: v_z;
						
		    	    GetVehiclePos( i, v_x, v_y, v_z );
					
					SetGPSCheckPoint( playerid, 
						v_x,
						v_y, 
						v_z 
					);
					
		    	    SendMes( playerid, C_WHITE, ""gbInfo"Вы установили метку на личный транспорт: "cBLUE"%s[%d]"cWHITE".",
						CarNames[ GetVehicleModel( i ) - 400 ],
						Car::[ i ][cID]
					);
					
                    countcar = true;
					
                    break;
		    	}
		    }
			
		    if( !countcar ) 
			{
				SendClientMessage( playerid, C_WHITE, ""gbError"Указанный вами автомобиль должен принадлежать Вам.");
			}
		}
		case d_gps + 8: 
		{
		    if(!response) return 1;
		    if(!strlen(inputtext)) return showPlayerDialog(playerid,d_gps + 8,1,"GPS","{ffffff}Введите номер бизнеса который хотите найти:\n\n"cRED"| Бизнес который вы ищите должен принадлежать вам.","Далее","Закрыть");
		    if(!isNumeric(inputtext)) return showPlayerDialog(playerid,d_gps + 8,1,"GPS","{ffffff}Введите номер бизнеса который хотите найти:\n\n"cRED"| Бизнес который вы ищите должен принадлежать вам.","Далее","Закрыть");
			
			new 
				value = strval( inputtext );
				
			if( value < 1 || value > cBizz + 1 ) 
				return showPlayerDialog(playerid,d_gps + 8,1,"GPS","{ffffff}Введите номер бизнеса который хотите найти:\n\n"cRED"| Бизнес который вы ищите должен принадлежать вам.","Далее","Закрыть");
		  
     		if( Bizz::[ value - 1][bID] != 0 && !strcmp( Bizz::[ value - 1][bOwner], Player[playerid][uName], true ) ) 
			{
				SetGPSCheckPoint( playerid, 
					Bizz::[ value - 1][bEnter][0],
					Bizz::[ value - 1][bEnter][1], 
					Bizz::[ value - 1][bEnter][2]
				);
				
		        SendClientMessage( playerid, C_WHITE,""gbAccess"Вы установили метку на свой собственный бизнес.");
		    }
		    else SendClientMessage( playerid,C_WHITE,""gbError"Указанный вами бизнес должен принадлежать вам!");
		}
	}
	
	return 1;
}