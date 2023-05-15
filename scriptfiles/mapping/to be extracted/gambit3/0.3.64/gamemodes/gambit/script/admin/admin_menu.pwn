#include <YSI\y_hooks>

hook OnGameModeInit() {
	Admin = CreateMenu( "LOL", 0, -5.0, 100.0, 50.0 );
 	SetMenuColumnHeader( Admin, 0, "RMenu" );
	AddMenuItem( Admin, 0, "Switch" );
	AddMenuItem( Admin, 0, "Mute" );
	AddMenuItem( Admin, 0, "Kick" );
	AddMenuItem( Admin, 0, "Warn" );
	AddMenuItem( Admin, 0, "Ban" );
	AddMenuItem( Admin, 0, "Slap" );
	AddMenuItem( Admin, 0, "Stats" );
	AddMenuItem( Admin, 0, "GetIP" );
	AddMenuItem( Admin, 0, "Retest" );
	AddMenuItem( Admin, 0, "Frisk" );
	AddMenuItem( Admin, 0, "OFF" );
	return true;
}

hook OnPlayerSelectedMenuRow( playerid, row ) {
    if( GetPlayerMenu( playerid ) == Admin ){
        new specid = GetPVarInt(playerid, "SpecID");
		ShowMenuForPlayer(Admin,playerid);
        switch( row ) {
			case 0: {
			    TogglePlayerSpectating( playerid, true );
				SetPlayerInterior( playerid, GetPlayerInterior( specid ) );
				SetPlayerVirtualWorld( playerid, GetPlayerVirtualWorld( specid ) );
				if(!IsPlayerInAnyVehicle( specid ) ) return PlayerSpectatePlayer( playerid, specid );
				else return PlayerSpectateVehicle( playerid, GetPlayerVehicleID( specid ) );
			}
			case 1: {
			    if( !Player[specid][uMute] ) {
			    	if(Player[playerid][uAdmin] < 1) return SendMes( playerid,C_GRAY,""gbError"У вас недостаточно прав!");
			    	showPlayerDialog( playerid, 3004,1, "Причина", "Введите причину блокировки чата:", "Дальше", "Выход" );
			    }
			    else {
                    format( gb_string, sizeof gb_string,"Администратор %s снял молчанку с %s.",Player[playerid][uName],Player[specid][uName]);
					SendAdminMessageToAll( C_LIGHTRED, gb_string, specid );
				    Player[specid][uMute] = 0;
					userUpdate( specid, "uMute", Player[specid][uMute] );
			    }
			}
			case 2: {
			    if( Player[playerid][uAdmin] < 1 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав!");
			    showPlayerDialog(playerid,3005,1,"Причина","Введите причину кика:","Дальше","Выход");
			}
			case 3: {
			    if( Player[playerid][uAdmin] < 2 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав!");
			    showPlayerDialog(playerid,3006,1,"Причина","Введите причину варна:","Дальше","Выход");
			}
			case 4: {
			    if( Player[playerid][uAdmin] < 3 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав!");
			    showPlayerDialog(playerid,3007,1,"Причина","Введите причину блокировки аккаунта:","Дальше","Выход");
			}
			case 5: {
			    if( Player[playerid][uAdmin] < 2 ) return SendMes( playerid, C_GRAY, ""gbError"У вас недостаточно прав!");
                new Float:slx, Float:sly, Float:slz, Float:shealth;
				GetPlayerHealth( specid, shealth);
			    SetPlayerHealth( specid, shealth-5);
			    GetPlayerPos( specid, slx, sly, slz);
			    SetPlayerPos( specid, slx, sly, slz+5);
			    PlayerPlaySound( specid, 1130, slx, sly, slz+5);
			    format( gb_string, sizeof gb_string, "[A] Администратор %s дал пинка %s[%d]",Player[playerid][uName], Player[specid][uName], specid);
			    SendAdminMessage( C_LIGHTRED, gb_string );
			    SendMes( specid, C_LIGHTRED, gb_string );
			}
			case 6: {
			    showStats( playerid, specid );
			}
			case 7: {
			    format( query, sizeof query,"SELECT * FROM `gb_sessions` WHERE BINARY `uName` = '%s' ORDER BY ID DESC LIMIT 10", Player[specid][uName]);
	    		mysql_tquery( mysql, query, "MySQLQuery", "dd", playerid, 66);
			}
			case 8: {
			    if(Player[playerid][uAdmin] < 3 || !GetPVarInt(playerid,"playerAdmin") ) return SendMes( playerid, C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
			    showPlayerDialog( playerid, 3011, 1, "Причина", "Введите причину ретеста:", "Дальше", "Выход" );
			}
			case 9: adminFrisk( playerid, specid );
			case 10: StopRecon(playerid, "~r~SPEC: PANEL IS OFF");
        }
    }
    return true;
}

hook OnPlayerExitedMenu(playerid) {
    ShowMenuForPlayer(GetPlayerMenu(playerid),playerid);
	return true;
}