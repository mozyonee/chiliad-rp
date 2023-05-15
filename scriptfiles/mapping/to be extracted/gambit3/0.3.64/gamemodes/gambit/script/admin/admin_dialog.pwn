#include <YSI\y_hooks>



hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	clear_massive();
	if( dialog_cheat_use[playerid] == true ) return true;
	switch( dialogid ) {
		case d_admins: {
			if(!response) return 1;
			switch(listitem) {
			    case 0: {
			        new full = 0;
			        SendMes( playerid, C_LIGHTGREEN, "Администраторы в сети:");
					foreach(new i: Player) {
					    if( Player[i][uAdmin] > 0 && Player[i][uAdmin] < 6) {
					        SendMes( playerid, C_GREY2, "%s[%d] - %d уровень", Player[i][uName],i, Player[i][uAdmin] );
					        full++;
	    				}
					}
					if( !full ) SendMes( playerid, C_GRAY, ""gbError"Нет администраторов в сети" );
					full = 0;
			        SendMes( playerid, C_LIGHTGREEN, "Supports в сети:");
			        foreach( new i : Player) {
			            if(Player[i][uSupport] == 1 && getData(i, "SDuty") == 1) {
			                SendMes(playerid, C_GREY2, "%s[%d]", Player[i][uName], i );
					        full++;
			            }
			        }
			        if( !full ) SendMes( playerid, C_GRAY, ""gbError"Нет Supports в сети" );
			    }
			    case 1: showPlayerDialog( playerid, d_teleport, DIALOG_STYLE_LIST, "Телепорт", "1. "cGRAY"Организации{ffffff}\n2. "cGRAY"Работы{ffffff}\n3. "cGRAY"Транспортные узлы{ffffff}\n4. "cGRAY"Округ Рэд{ffffff}\n5. "cGRAY"Разное\n6. "cGRAY"Интерьеры", "Дальше", "Закрыть");
				case 2: showAdminCommand( playerid );
				case 3: {
                    format( gb_string, sizeof gb_string, 
						"{ffffff}Прослушка %s\n- SADoC\n- LSPD\n- Medic\n- Taxi\n- Meria\
						\n- News\n- Транспортная компания\nВыключить", 
						getData( playerid, "RadioAdmin" ) ? (""cGREEN"Включена{ffffff}") : (""cRED"Выключена{ffffff}") );
					showPlayerDialog( playerid, d_admins + 9, 2, " ", gb_string, "Дальше", "Закрыть" );
				}
				case 4:
				{
                    format( gb_string, sizeof gb_string, "\n{ffffff}Введите номер аккаунта в диалог:\n\
						Так же посмотреть mysql id любого игрока можно - /getmysqlid [ имя ]");
					showPlayerDialog( playerid, d_admins + 10, 1, " ", gb_string, "Дальше", "Закрыть" );
				}
			}
		}
		//
        case d_admins + 10:
		{
			if(!response) return 1;
			if(!strlen(inputtext)) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID аккаунта!");
			if(!isNumeric(inputtext)) return SendClientMessage(playerid,C_GRAY,""gbError"Неверный ID аккаунта!");
			new bool:search = false;
			foreach(new i : Player)
			{
				if(Player[i][uID] == strval(inputtext))
				{
					SetPVarInt(playerid,"SelectSupport",i);
					showPlayerDialog(playerid,d_admins + 11,2," ","1. "cGRAY"Назначить/Снять Support","Дальше","Закрыть");
					search = true;
					break;
				}
			}
			if(search == false)
			{
			    format(query, sizeof(query), "SELECT * FROM `gb_users` WHERE `uID` = '%d'",strval(inputtext));
	            mysql_tquery(1, query, "SupportSellect", "ds", playerid, inputtext);
			}
		}
		case d_admins + 11:
		{
			if(!response) return 1;
			new id = getData(playerid,"SelectSupport");
			if(!IsPlayerConnected(id)) return SendClientMessage(playerid,C_GRAY,""gbError"Данный игрок вышел с сервера!");
			switch(listitem)
			{
				case 0:
				{
					if(Player[id][uSupport] == 1)
					{
					    Player[id][uSupport] = 0;
					    SendClientMessage(id, C_GRAY, "Вы были сняты с поста Support.");
					}
					else
					{
					    Player[id][uSupport] = 1;
					    strcat(gb_string,""gbAccess"/sduty - выйти на дежурство\n");
					    strcat(gb_string,""gbAccess"/ans - ответить на вопрос\n");
					    strcat(gb_string,""gbAccess"/h - чат Support's");
				    	showPlayerDialog(id,9999,0," ",gb_string,"Закрыть","");
					    SendClientMessage(id, C_GRAY, ""gbAccess"Вы были назначены на пост Support.");
					}
					nowUpdateInfo(id , "d" , "gb_users" , "uName" , "uSupport" , Player[id][uSupport]);
				}
			}
		}
		case d_admins + 12:
		{
			if(!response) return 1;
			new id = getData(playerid,"SelectSupport");
			switch(listitem)
			{
				case 0:
				{
					foreach(new i : Player) if(Player[i][uID] == id) return SendClientMessage(playerid,C_GRAY,""gbError"Игрок с этим ID зашёл на сервер, повторите попытку!");
					if(getData(playerid, "SupportCurent") == 1)
					{
					    mysql_format(1, query,sizeof(query),"UPDATE gb_users SET uSupport = 0 WHERE BINARY uID = '%d'", id);
						mysql_tquery(1, query, "", "");
						SendClientMessage(playerid, C_GRAY, ""gbAccess"Вы сняли с игрока права Support!");
					}
					else
					{
					    mysql_format(1, query,sizeof(query),"UPDATE gb_users SET uSupport = 1 WHERE BINARY uID = '%d'", id);
						mysql_tquery(1, query, "", "");
						SendClientMessage(playerid, C_GRAY, ""gbAccess"Вы назначили игрока на пост Support!");
					}

				}
			}
		}
		case d_admins + 9: {
		    if(!response) return 1;
		    switch(listitem)
		    {
		        case 1: SetPVarInt(playerid, "RadioAdmin", 1);
		        case 2: SetPVarInt(playerid, "RadioAdmin", 2);
		        case 3: SetPVarInt(playerid, "RadioAdmin", 3);
		        case 4: SetPVarInt(playerid, "RadioAdmin", 4);
		        case 5: SetPVarInt(playerid, "RadioAdmin", 5);
		        case 6: SetPVarInt(playerid, "RadioAdmin", 6);
		        case 7: SetPVarInt(playerid, "RadioAdmin", 7);
		        case 8: SetPVarInt(playerid, "RadioAdmin", 0);
		    }
		    format(gb_string, sizeof(gb_string), "{ffffff}Прослушка %s | %s\n\n- Sheriff\n- LSPD\n- Medic\n- Taxi\n- Meria\n- News\n- Транспортная компания\nВыключить", getData(playerid, "RadioAdmin") ? (""cGREEN"Включена{ffffff}") : (""cRED"Выключена{ffffff}"));
			showPlayerDialog(playerid,d_admins + 9, 2," ",gb_string,"Дальше","Закрыть");
		}
		case d_admins + 4:
		{
			if(!response) return 1;
			new id = getData(playerid,"playerSelectAdmin");
			switch(listitem) {
				case 0: {
					foreach(new i : Player) if(Player[i][uID] == id) return SendClientMessage(playerid,C_GRAY,""gbError"Игрок с этим ID зашёл на сервер, повторите попытку!");
					showPlayerDialog(playerid,d_admins + 5,1," ","{ffffff}Введите новый ранг администратора:","Дальше","Закрыть");
				}
			}
		}
		case d_admins + 6: {
			if(!response) return 1;
			SetPVarInt(playerid,"selectSlotAdminPanel",listitem);
			showPlayerDialog(playerid,d_admins + 7,1," ","{ffffff}Введите новый ранг для этой команды:","Дальше","Закрыть");
		}
		case d_admins + 7: {
			if(!response) return 1;
			new id  = getData(playerid,"selectSlotAdminPanel");
			if(!strlen(inputtext)) return showPlayerDialog(playerid,d_admins + 7,1," ","{ffffff}Введите новый ранг для этой команды:","Дальше","Закрыть");
			if(strval(inputtext) < 1 || strval(inputtext) > 5) return showPlayerDialog(playerid,d_admins + 7,1," ","{ffffff}Введите новый ранг для этой команды:","Дальше","Закрыть");
			format(query,sizeof(query),"UPDATE gb_others SET adminsPanel%d = '%d'",id,strval(inputtext));
			mysql_tquery(1, query, "", "");
			adminsPanel[id] = strval(inputtext);
			SendClientMessage(playerid,C_GRAY,""gbAccess"Вы установили новый доступ к данной команде!");
		}
		case d_admins + 8:
		{
            if(!response) return true;
			if(!strcmp(inputtext, "qwerty", true)) return showPlayerDialog(playerid, d_admins + 8, DIALOG_STYLE_PASSWORD, "Админцентр", "{B4B5B7}Введите пароль для доступа к админцентру:", "Далее", "Отмена");
			if(strlen(inputtext) < 6 || strlen(inputtext) > 32) return showPlayerDialog(playerid, d_admins + 8, DIALOG_STYLE_PASSWORD, "Админцентр", "{B4B5B7}Введите пароль для доступа к админцентру:", "Далее", "Отмена");
			mysql_format( 1, query, 512, "SELECT * FROM gb_admins WHERE BINARY `Name` = '%s'", Player[playerid][uName]);
			mysql_function_query( 1, query, true, "AdminLoginCallback","is", playerid, inputtext);
			
		}
	}
	return true;
}