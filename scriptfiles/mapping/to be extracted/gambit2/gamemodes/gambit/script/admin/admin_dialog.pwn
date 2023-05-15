#include <YSI\y_hooks>

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	clear_massive();
	if( dialog_cheat_use[playerid] == true ) return true;
	switch( dialogid ) {
		case d_admins: {
			if(!response) return 1;
			switch(listitem) {
			    case 0: 
				{
					new 
						full = 0,
						spectate[ 32 ];
						
					vb_string[0] = EOS;
					strcat( vb_string, ""gbInfo"Администраторы в сети:\n\n" );
					foreach( new i: Player) 
					{
					    if( Player[i][uAdmin] > 0 && Player[i][uAdmin] < 6 ) 
						{
							if( GetPVarInt( i, "SpecID" ) != -1 )
							{
								format( spectate, sizeof spectate, " "cGREEN"/sp %d",
									GetPVarInt( i, "SpecID" )
								);
							}
							
							format:gb_string( ""cWHITE"%s[%d] - %d уровень%s%s\n", 
								Player[i][uName],
								i, 
								Player[i][uAdmin],
								( GetPVarInt( i, "playerAdmin") == 0 ) ? ( " "cRED"Не авторизован"cWHITE"" ) : (""), 
								( GetPVarInt( i, "SpecID" ) != -1 ) ? (spectate) : ("")
							);
							
							strcat( vb_string, gb_string );
					        full++;
	    				}
					}
					
					if( !full ) 
					{
						strcat( vb_string, "Администраторов нет в сети." );
					}
					
					full = 0;
			        strcat( vb_string, "\n\n"gbInfo"Операторы поддержки:\n\n" );
			        foreach( new i : Player) 
					{
			            if( Player[i][uSupport] == 1 ) 
						{
			                format:gb_string( "%s[%d]%s\n", 
								Player[i][uName], 
								i,
								( GetPVarInt( i, "SDuty") == 0 ) ? ( " "cRED"Не на дежурстве"cWHITE"" ) : ("") 
							);
							
							strcat( vb_string, gb_string );
							full++;
			            }
			        }
					
					if( !full ) 
					{
						strcat( vb_string, "Операторов поддержки нет в сети." );
					}
					
					return ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", vb_string, "Закрыть", "" );
			    }
			    case 1: cmd_tp( playerid );
				case 2: showAdminCommand( playerid );
				case 3 :
				 return ShowDisconnectLog( playerid );
			}
		}
		case d_admins + 2 :
		{
			if( !response )
				return cmd_adm( playerid );
				
			switch( listitem )
			{
				case 0 :
				{
					ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", 
					""gbInfo"Уровень: 1\n\n\
					{4a86b6}/aspawn {ffffff}- респавнит игрока\n\
					{4a86b6}/goto {ffffff}- телепорт к игроку\n\
					{4a86b6}/gethere {ffffff}- телепорт игрока к себе\n\
					{4a86b6}/sp {ffffff}- войти в наблюдение\n\
					{4a86b6}/unfreeze {ffffff}- разморозить игрокa\n\
					{4a86b6}/mute {ffffff}- выдать блокировку чата\n\
					{4a86b6}/unmute {ffffff}- снять блокировку чата\n\
					{4a86b6}/stats {ffffff}- статистика игрока\n\ 
					{4a86b6}/h{ffffff} - чат операторов поддержки\n\
					{4a86b6}/kick {ffffff}- кикнуть игрока\n\ 
					{4a86b6}/a {ffffff}- админ-чат\n\ 
					{4a86b6}/ans {ffffff}- ответ в репорт\n\
					{4a86b6}/tp {ffffff}- список телепортов\n\ 
					{4a86b6}/adm {ffffff}- панель администратора\n\
					{4a86b6}/hp {ffffff}- пополнить здоровье на 255 единиц\n\
					{4a86b6}/adellaction {ffffff}- удалить действие\n\
					{4a86b6}/unjail {ffffff}- выпустить игрока из деморгана\n\
					{4a86b6}/jail {ffffff}- отправить игрока в деморган\n\
					{4a86b6}/afrisk {ffffff}- обыскать игрока\n\ 
					{4a86b6}/aheal {ffffff}- поднять игрока с земли\n\
					{4a86b6}/slap {ffffff}- подбросить игрока вверх\n\ 
					{4a86b6}/dpame {ffffff}- удалить описание\n\
					{4a86b6}/weapons{ffffff} - оружие у игрока\n\
					{4a86b6}/sameip{ffffff} - одинаковые ip адреса в игре", 
					"Закрыть", "" );
				}
				
				case 1 :
				{
					ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", 
					""gbInfo"Уровень: 2\n\n\
					{4a86b6}/getcar {ffffff}- телепорт авто к себе\n\
					{4a86b6}/warn {ffffff}- выдать предупреждение\n\
					{4a86b6}/vrepair {ffffff}- установить HP авто\n\
					{4a86b6}/vspawn {ffffff}- заспавнить авто\n\
					{4a86b6}/sethp {ffffff}- установить здоровье {4a86b6}\n\
					{4a86b6}/getbuycar {ffffff}- телепорт личного авто к себе\n\
					{4a86b6}/gfmenu {ffffff}- управление граффити\n\
					{4a86b6}/gfids {ffffff}- список граффити рядом\n\
					{4a86b6}/gfdell {ffffff}- удаление граффити по MySQL_ID\n\
					{4a86b6}/setint {ffffff}- установить интерьер\n\
					{4a86b6}/setworld {ffffff}- установить вирт.мир\n\
					{4a86b6}/house {ffffff}- телепорт к дому", 
					"Закрыть", "" );
				}
				
				case 2 :
				{
					ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", 
					""gbInfo"Уровень: 3\n\n\
					"cBLUE"/ck"cWHITE" - утвердить персонажа на <Character Kill>\n\
					"cBLUE"/unck"cWHITE" - снять с персонажа <Character Kill>\n\
					{4a86b6}/setfrac {ffffff}- временно установить себе фракцию\n\
					{4a86b6}/ban {ffffff}- забанить игрока\n\
					{4a86b6}/leave {ffffff}- уволить игрока из организации\n\
					{4a86b6}/vfuel {ffffff}- установить уровень бензина\n\
					{4a86b6}/iban {ffffff}- блокировка игрока навсегда\n\
					{4a86b6}/o {ffffff}- общий чат\n\ 
					{4a86b6}/vspawnr {ffffff}- заспавнить транспорт в радиусе\n\
					"cBLUE"/makemic "cWHITE"- выдать возможность игроку использовать /mic", 
					"Закрыть", "" );
				}
				
				case 3 :
				{
					ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", 
					""gbInfo"Уровень: 4\n\n\
					{4a86b6}/banip {ffffff}- заблокировать IP\n\
					{4a86b6}/dvehid {ffffff} - удалить транспорт по ID\n\
					{4a86b6}/dveh {ffffff}- удалить транспорт\n\
					{4a86b6}/veh {ffffff}- создать транспорт", 
					"Закрыть", "" );
				}
				
				case 4 :
				{
					ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", 
					""gbInfo"Уровень: 5\n\n\
					{4a86b6}/settime {ffffff}- сменить время\n\
					{4a86b6}/fleader {ffffff}- смена лидера\n\
					{4a86b6}/makeleader {ffffff}- назначить лидера\n\
					{4a86b6}/binfo {ffffff}- информация о бизнесе\n\
					{4a86b6}/biz {ffffff}- телепорт к бизнесу\n\
					{4a86b6}/setprod {ffffff}- установить продукты в бизнес\n\
					{4a86b6}/unretest {ffffff}- отменить ретест игроку\n\
					{4a86b6}/unwarn {ffffff}- снять предупреждения \n\
					{4a86b6}/unbanip {ffffff}- разблокировать IP\n\
					{4a86b6}/unban {ffffff}- разблокировать аккаунт\n\
					{4a86b6}/unprison {ffffff}- выпустить игрока из тюрьмы\n\
					{4a86b6}/crimepark {ffffff}- припарковать машину криминала\n\
					{4a86b6}/crimedelcar {ffffff}- удалить машину криминала\n\
					{4a86b6}/crimecar {ffffff}- создать машину криминала\n\
					{4a86b6}/createcrime {ffffff}- создать крим. структуру\n\
					{4a86b6}/deletecrime {ffffff}- создать крим. структуру\n\
					{4a86b6}/crimeenter {ffffff}- установить вход в интерьер крим. структуры\n\
					{4a86b6}/crimeleader {ffffff}- выдать лидерку крим. структуры", 
					"Закрыть", "" );
				}
				
				case 5 :
				{
					ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", 
					""gbInfo"Уровень: 6\n\n\
					{4a86b6}/setpaytime {ffffff}- установить отыгранное время игрокy\n\
					{4a86b6}/giveitem {ffffff}- выдать предмет себе в инвентарь\n\ 
					{4a86b6}/givemoney {ffffff}- выдать деньги\n\
					{4a86b6}/setmoney {ffffff}- установить деньги\n\
					{4a86b6}/restart{ffffff} - рестарт сервера\n\
					{4a86b6}/kickall{ffffff} - кикнуть всех", 
					"Закрыть", "" );
				}
				
				case 6 :
				{
					ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", 
					""gbInfo"Уровень: 7\n\n\
					{4a86b6}/payday {ffffff}- сменить время\n\
					{4a86b6}/sellbiz {ffffff}- слить бизнес в гос\n\
					{4a86b6}/create {ffffff}- создать дом\n\
					{4a86b6}/resethouse{ffffff} - снять дом\n\
					{4a86b6}/setweather{ffffff} - изменить погоду\n\
					{4a86b6}/removeadmin{ffffff} - снять администратора\n\
					{4a86b6}/skick{ffffff} - тихо кикнуть\n\
					"cBLUE"/sethouseint"cWHITE" - сменить интерьер дома\n\
					"cBLUE"/addhouse"cWHITE" - добавить новый дом\n\
					"cBLUE"/gotocar"cWHITE" - телепортироваться к транспорту", 
					"Закрыть", "" );
				}
			}
		}
		
		case d_admins + 8:
		{
            if( !response ) 
				return 1;
				
			if( !strcmp( inputtext, "qwerty", true ) ) 
				return showPlayerDialog( playerid, d_admins + 8, DIALOG_STYLE_PASSWORD, " ", 
				""gbInfo"Авторизация\n\nВведите пароль ниже, чтобы авторизоваться:", "Далее", "Отмена" );
				
			if( strlen(inputtext) < 6 || strlen(inputtext) > 32 ) 
				return showPlayerDialog( playerid, d_admins + 8, DIALOG_STYLE_PASSWORD, " ", 
					""gbInfo"Авторизация\n\nВведите пароль ниже, чтобы авторизоваться:", "Далее", "Отмена" );
			
			mysql_format:query( "SELECT * FROM gb_admins WHERE BINARY `Name` = '%s'", Player[playerid][uName]);
			mysql_tquery( mysql, query, "OnAdminLogin","is", playerid, inputtext);
			
		}
	}
	
	return 1;
}