#include <YSI\y_hooks>

stock CreateBankomat( Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz ) {
    CreateDynamicObject( 2754, x, y, z, rx, ry, rz );
    CreateDynamic3DTextLabel( "Банкомат\n\n"cBLUE"ALT", 0xFFFFFFFF, x, y, z, 3.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0 );
    atm_zone[ atm_server ] = CreateDynamicSphere( x, y, z, 2.0 );
    atm_server++;
	return 1;
}

hook OnPlayerEnterDynamicArea( playerid, areaid ) {
	if( atm_zone[0] <= areaid <= atm_zone[ atm_server - 1 ] ) setData( playerid, "ATM:Use", 1 );
	return true;
}

hook OnPlayerLeaveDynamicArea( playerid, areaid ) {
	if( atm_zone[0] <= areaid <= atm_zone[ atm_server - 1 ] ) delData( playerid, "ATM:Use" );
	return true;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	
	if( dialog_cheat_use[playerid] == true ) return true;
	switch( dialogid ) {
		case d_bank + 1: {
		    if(!response) return 1;
		    switch(listitem) {
		        case 0: {
		            format( gb_string, sizeof gb_string,"{ffffff}| Информация о балансе на счету:\n\n"cGRAY"У Вас на банковском счету - "cGREEN"$%d",Player[playerid][uBank]);
		            showPlayerDialog( playerid, 9999, 0, " ", gb_string, "Закрыть", "");
		        }
		        case 1: showPlayerDialog( playerid, d_bank + 3, 1, "Снять деньги со счета", "{ffffff}Укажите сумму которую хотите снять со счета:\n\n"cGREEN"| Минимальная сумма $1, максимальная $100000", "Далее", "Закрыть");
		        case 2: showPlayerDialog( playerid, d_bank + 4, 1, "Положить деньги на счет", "{ffffff}Укажите сумму которую хоите положить на счет:\n\n"cGREEN"| Минимальная сумма $1, максимальная $100000", "Далее", "Закрыть");
				case 3: showPlayerDialog( playerid, d_bank + 5, 1, "Перевод денег", "{ffffff}Введите ID человека которому хотите перевести деньги:", "Далее", "Закрыть");
				case 4: showPlayerDialog( playerid, d_bank + 2, 2, "Управление рабочей чековой книжкой", "Проверить баланс на чековой книжке\nОбналичить чековую книжку", "Далее", "Закрыть");
		    }
		}
		case d_bank + 2: {
		    if(!response) return 1;
		    switch(listitem) {
		        case 0: {
		            format( gb_string,sizeof gb_string,"{ffffff}Имя владельца - "cBLUE"%s\n{ffffff}Баланс на книжке - "cBLUE"$%d", Player[playerid][uName], Player[playerid][uCheck]);
		            showPlayerDialog( playerid, 9999, 0, "Чековая книжка", gb_string, "Закрыть", "");
		        }
		        case 1: {
		            if( Player[playerid][uCheck] == 0) return SendMes( playerid, C_GRAY, "Никто не переводил вам деньги на чековую книжку.");
		        	format( gb_string, sizeof gb_string,"{ffffff}Вы обналичили свою чековую книжку на - "cGREEN"$%d",Player[playerid][uCheck]);
		            showPlayerDialog( playerid, 9999, 0, "Обналичивание чековой книжки", gb_string, "Закрыть", "");
		            Player[playerid][uMoney] += Player[playerid][uCheck];
		            Player[playerid][uCheck] = 0;
					MeAction( playerid, "обналичивает рабочую чековую книжку", 1 );
					nowUpdateInfo(playerid , "d" , "gb_users" , "uName" , "uCheck" , Player[playerid][uCheck]);
		        }
		    }
		}
		case d_bank + 3: {
		    if( !response ) return 1;
		    if( !strlen( inputtext ) ) return showPlayerDialog( playerid, d_bank + 3, 1, "Снять деньги со счета", "{ffffff}Укажите сумму которую хотите снять со счета:\n\n"cGREEN"| Минимальная сумма $1, максимальная $100000", "Далее", "Закрыть");
		    if( strval( inputtext ) < 1 || strval( inputtext ) > 100000) return showPlayerDialog( playerid, d_bank + 3, 1, "Снять деньги со счета", "{ffffff}Укажите сумму которую хотите снять со счета:\n\n"cGREEN"| Минимальная сумма $1, максимальная $100000", "Далее", "Закрыть");
			if( !isNumeric( inputtext ) ) return showPlayerDialog(playerid, d_bank + 3, 1, "Снять деньги со счета", "{ffffff}Укажите сумму которую хотите снять со счета:\n\n"cGREEN"| Минимальная сумма $1, максимальная $100000", "Далее", "Закрыть");
			if( Player[playerid][uBank] < strval( inputtext ) ) return SendMes( playerid, C_GRAY, ""gbError"На вашем банковском счету нет такой суммы!");
			Player[playerid][uBank] -= strval( inputtext );
			Player[playerid][uMoney] += strval( inputtext );
			mysql_format( mysql, query ,sizeof query,"UPDATE gb_users SET uMoney = '%d', uBank = '%d' WHERE BINARY uName = '%s'",Player[playerid][uMoney],Player[playerid][uBank],Player[playerid][uName]);
			mysql_tquery( mysql, query, "", "");
			SendMes( playerid, C_GRAY,""gbAccess"Вы сняли - "cGREEN"$%d{ffffff} со своего счета.", strval( inputtext ) );
			
			format( gb_string, sizeof gb_string, "снял%s деньги со счета", Player[playerid][uSex] == 1 ? (""):("а") );
			MeAction( playerid, gb_string, 1 );
			ApplyAnimation(playerid, "PED", "ATM",4.0, 0, 1, 1, 0, 0, 1);
		}
		case d_bank + 4: {
		    if( !response ) return 1;
		    if( !strlen( inputtext ) ) return showPlayerDialog( playerid, d_bank + 4, 1, "Положить деньги на счет", "{ffffff}Укажите сумму которую хотите положить на счет:\n\n"cGREEN"| Минимальная сумма $1, максимальная $100000", "Далее", "Закрыть");
		    if( strval( inputtext ) < 1 || strval( inputtext ) > 100000) return showPlayerDialog( playerid, d_bank + 4, 1, "Положить деньги на счет", "{ffffff}Укажите сумму которую хотите положить на счет:\n\n"cGREEN"| Минимальная сумма $1, максимальная $100000", "Далее", "Закрыть");
			if( !isNumeric(inputtext)) return showPlayerDialog( playerid, d_bank + 4, 1, "Положить деньги на счет", "{ffffff}Укажите сумму которую хотите положить на счет:\n\n"cGREEN"| Минимальная сумма $1, максимальная $100000", "Далее", "Закрыть");
			if( Player[playerid][uMoney] < strval( inputtext ) ) return SendMes( playerid, C_GRAY, ""gbError"У вас на руках нет такой суммы!");
			Player[playerid][uBank] += strval( inputtext );
			Player[playerid][uMoney] -= strval( inputtext );
			mysql_format( mysql, query, sizeof query, "UPDATE gb_users SET uMoney = '%d', uBank = '%d' WHERE BINARY uName = '%s'",Player[playerid][uMoney],Player[playerid][uBank],Player[playerid][uName]);
			mysql_tquery( mysql, query, "", "");
			SendMes( playerid, C_GRAY,""gbAccess"Вы положили - "cGREEN"$%d{ffffff} на свой счет.",strval(inputtext));
			
			format( gb_string, sizeof gb_string, "положил%s деньги на счёт", Player[playerid][uSex] == 1 ? (""):("а") );
			MeAction( playerid, gb_string, 1 );
			ApplyAnimation(playerid, "PED", "ATM",4.0, 0, 1, 1, 0, 0, 1);
		}
		case d_bank + 5: {
		    if(!response) return 1;
		    new id = strval(inputtext);
		    if(!strlen(inputtext)) return showPlayerDialog(playerid, d_bank + 5, 1, "Перевод денег", "{ffffff}Введите ID человека которому хотите перевести деньги:", "Далее", "Закрыть");
		    if(!IsPlayerConnected(id)) return SendClientMessage(playerid,C_GRAY,""gbError"Вы ввели неверный ID человека, которому хотите передать деньги!");
		    if(!isNumeric(inputtext)) return showPlayerDialog(playerid, d_bank + 5, 1, "Перевод денег", "{ffffff}Введите ID человека которому хотите перевести деньги:", "Далее", "Закрыть");
		    if(strval(inputtext) == playerid) return SendClientMessage(playerid,C_GRAY,""gbError"Вы не можете перевести деньги самому себе на счет!");
			SetPVarInt(playerid,"ATM:gID",id);
			showPlayerDialog(playerid, d_bank + 6, 1, "Перевод денег", "{ffffff}Укажите сумму которую хотите перевести на другой счет:\n\n"cGREEN"| Минимальная сумма $1, максимальная $1000000", "Далее", "Закрыть");
		}
		case d_bank + 6: {
		    if( !response ) return 1;
		    if( !strlen( inputtext ) ) return showPlayerDialog( playerid, d_bank + 6, 1, "Перевод денег", "{ffffff}Укажите сумму которую хотите перевести на другой счет:\n\n"cGREEN"| Минимальная сумма $1, максимальная $1000000", "Далее", "Закрыть");
			new id = getData( playerid, "ATM:gID" );
			if( !isNumeric( inputtext ) ) return showPlayerDialog( playerid, d_bank + 6, 1, "Перевод денег", "{ffffff}Укажите сумму которую хотите перевести на другой счет:\n\n"cGREEN"| Минимальная сумма $1, максимальная $1000000", "Далее", "Закрыть");
			if( !IsPlayerConnected( id ) && GetPVarInt( id, "uLogin" ) == 0) return SendMes( playerid, C_GRAY, ""gbError"Данный человек покинул штат, перевод невозможен!");
			if( Player[playerid][uBank] < strval( inputtext ) ) return SendMes( playerid, C_GRAY, ""gbError"На вашем банковском счету нет такой суммы!");
			if( strval( inputtext ) < 1 || strval( inputtext ) > 1000000) return showPlayerDialog( playerid, d_bank + 6, 1, "Перевод денег", "{ffffff}Укажите сумму которую хотите перевести на другой счет:\n\n"cGREEN"| Минимальная сумма $1, максимальная $1000000", "Далее", "Закрыть");
			
			SendMes( playerid, C_GRAY, ""gbAccess"Вы перевели %s - "cGREEN"$%d", Player[id][uName], strval( inputtext ) );
			SendMes( id, C_GRAY, ""gbAccess"%s перевел(-а) вам на счёт - "cGREEN"$%d",Player[playerid][uName],strval(inputtext));
			
			Player[playerid][uBank] -= strval( inputtext );
			Player[id][uBank] += strval( inputtext );
			
			userUpdate( playerid, "uBank", Player[playerid][uBank] );
			userUpdate( id, "uBank", Player[ id ][uBank] );
			
			ApplyAnimation(playerid, "PED", "ATM",4.0, 0, 1, 1, 0, 0, 1);
			delData( playerid, "ATM:gID" );
			//printf( "[TRANS MONEY] %s перевёл %s сумму $%d", Player[playerid][uName], Player[id][uName], strval( inputtext ) )
		
			format:gb_string( "%s[%s] перевёл деньги %s[%s] - $%d",
				Player[playerid][uName],
				Player[playerid][uIP],
				Player[id][uName],
				Player[id][uIP],
				strval( inputtext )
			);
			
			logs( 4, gb_string, Player[playerid][uID], Player[id][uID], strval( inputtext ) );
			
			format:gb_string( "[A] %s[%d][%s] перевёл деньги через банк %s[%d][%s] - $%d", 
				Player[playerid][uName], 
				playerid, 
				Player[playerid][uIP], 
				Player[id][uName], 
				id, 
				Player[id][uIP],
				strval( inputtext )
			);
			
			SendAdminLog( playerid, gb_string );
		}
	}
	
	return 1;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	if( PRESSED( KEY_WALK ) ) {
		if( getData( playerid, "ATM:Use" ) ) 
		{
			if( Player[playerid][uPremium] ) {
				showPlayerDialog( playerid, d_bank + 1, DIALOG_STYLE_LIST, "Управление личным счетом", 
					"1. "cGRAY"Проверить баланс на счету{ffffff}\n2. "cGRAY"Снять деньги со счета\
					\n{ffffff}3. "cGRAY"Положить деньги на счет\n{ffffff}4. "cGRAY"Перевести деньги другому человеку\
					\n{ffffff}5. "cGRAY"Управление чековой книжкой",
					"Далее", "Закрыть");
			}
			else {
				showPlayerDialog( playerid, d_bank + 1, DIALOG_STYLE_LIST, "Управление личным счетом", 
					"1. "cGRAY"Проверить баланс на счету{ffffff}\n2. "cGRAY"Снять деньги со счета\
					\n{ffffff}3. "cGRAY"Положить деньги на счет",
					"Далее", "Закрыть");
			}
			delData( playerid, "ATM:Use" );
			return true;
		}
		if( IsPlayerInRangeOfPoint( playerid, 1.0, 1463.8583, -1006.0172, 2725.8800 ) 
			|| IsPlayerInRangeOfPoint( playerid, 1.0, 1459.5745, -1006.0161, 2725.8800 )
			|| IsPlayerInRangeOfPoint( playerid, 1.0, 1455.4482, -1006.0210, 2725.8800 ) 
			|| IsPlayerInRangeOfPoint( playerid, 1.0, 1451.4005, -1006.0151, 2725.8800 ) ) {
            
			showPlayerDialog( playerid, d_bank + 1, DIALOG_STYLE_LIST, "Управление личным счетом", 
				"1. "cGRAY"Проверить баланс на счету{ffffff}\
				\n2. "cGRAY"Снять деньги со счета\n{ffffff}3. "cGRAY"Положить деньги на счет\
				\n{ffffff}4. "cGRAY"Перевести деньги другому человеку\
				\n{ffffff}5. "cGRAY"Управление чековой книжкой", "Далее", "Закрыть");
			return true;
	    }
	}
	return true;
}

hook OnGameModeInit( ) 
{
	CreateBankomat(1446.20,-1047.40,725.68,0.00,0.00,180.00); 
	CreateBankomat(1446.20,-1046.20,725.68,0.00,0.00,180.00); 
	CreateBankomat(1446.20,-1044.08,725.68,0.00,0.00,180.00); 
	CreateBankomat(1446.20,-1042.92,725.68,0.00,0.00,180.00); 
	CreateBankomat(1928.80518, -1780.13696, 13.40620, 0.00000, 0.00000, 180.00000); 
	CreateBankomat(1928.80518, -1781.63696, 13.40620, 0.00000, 0.00000, 180.00000); 
	CreateBankomat(1011.83130, -929.18774, 42.21307, 0.00000, 0.00000, 98.81998); 
	CreateBankomat(1013.13379, -928.94086, 42.21307, 0.00000, 0.00000, 98.81998); 
	CreateBankomat(-79.30775, -1171.69666, 2.00884, 0.00000, 0.00000, -22.74000); 
	CreateBankomat(1389.05823, 462.80960, 20.03407, 0.00000, 0.00000, 64.91999); 
	CreateBankomat(2122.99390, 897.01514, 10.99478, 0.00000, 0.00000, -90.00000); 
	CreateBankomat(57.36719, 1211.53870, 18.71781, 0.00000, 0.00000, 90.00000); 
	CreateBankomat(-1675.88013, 434.33679, 7.03344, 0.00000, 0.00000, -135.00000); 
	CreateBankomat(-1676.57629, 435.03854, 7.03340, 0.00000, 0.00000, -135.00000); 
	CreateBankomat(-1572.62537, -2725.10522, 48.59482, 0.00000, 0.00000, 55.50001); 
	CreateBankomat(-1571.80713, -2725.65356, 48.59482, 0.00000, 0.00000, 55.50001); 
	CreateBankomat(2138.81030, 2734.07715, 11.03143, 0.00000, 0.00000, -90.00000); 
	CreateBankomat(1441.92651, -1479.67749, 13.40142, 0.00000, 0.00000, 167.06009); 
	CreateBankomat(2323.90527, -37.67547, 26.27084, 0.00000, 0.00000, -90.00000); 
	CreateBankomat(1446.20, -1047.40, 725.68, 0.00, 0.00, 180.00); 
	CreateBankomat(1446.20, -1046.20, 725.68, 0.00, 0.00, 180.00); 
	CreateBankomat(1446.20, -1044.08, 725.68, 0.00, 0.00, 180.00); 
	CreateBankomat(1446.20, -1042.92, 725.68, 0.00, 0.00, 180.00); 
	CreateBankomat(720.65057, -1440.29956, 13.37901, 0.00000, 0.00000, -90.00000); 
	CreateBankomat(721.97058, -1440.29956, 13.37900, 0.00000, 0.00000, -90.00000); 
	CreateBankomat(-2234.37842, -2566.43579, 31.79802, 0.00000, 0.00000, 59.51999); 
	CreateBankomat(-2233.38965, -2567.00830, 31.79802, 0.00000, 0.00000, 59.51999); 
	CreateBankomat(1267.79297, -1540.77136, 13.39630, 0.00000, 0.00000, -180.00000); 
	CreateBankomat(1267.79297, -1547.50488, 13.39630, 0.00000, 0.00000, -180.00000); 
	CreateBankomat(1504.63416, -1751.83264, 13.38954, 0.00000, 0.00000, -180.00000); 
	CreateBankomat(1504.63416, -1753.84058, 13.38950, 0.00000, 0.00000, -180.00000); 
	CreateBankomat(1457.76416, -1752.09814, 13.38950, 0.00000, 0.00000, 0.00000); 
	CreateBankomat(1457.76416, -1754.03625, 13.38950, 0.00000, 0.00000, 0.00000); 
	CreateBankomat(542.73132, -1293.74402, 17.07966, 0.00000, 0.00000, -90.00000); 
	CreateBankomat(541.21008, -1293.74658, 17.07966, 0.00000, 0.00000, -90.00000); 
	CreateBankomat(2134.78052, -1152.64771, 23.83406, 0.00000, 0.00000, -164.51993); 
	CreateBankomat(2128.78394, -1152.60645, 23.84484, 0.00000, 0.00000, -376.31985);


	return 1;
}