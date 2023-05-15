#include "YSI\y_hooks"

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	switch( newkeys ) {
		case KEY_WALK: {
			for( new h; h < MAX_HOUSE; h++ ) {
				if( HouseInfo[h][hID] ) {
					if( IsPlayerInRangeOfPoint( playerid, 1.5, 
						HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2] ) 
						&& HouseInfo[h][hEnterWorld] == GetPlayerVirtualWorld( playerid ) ) {
						if( !HouseInfo[h][hOwned] ) {
							if( !HouseInfo[h][hInterior] ) format( query, sizeof query, "Стандартный" );
							else format( query, sizeof query, "%s", house_int[ HouseInfo[h][hInterior] - 1 ][ht_name] );
							format( gb_string, sizeof gb_string, 
								"\t{ffffff}Информация о доме #%d\
								\n\nСтоимость: $%d\
								\nИнтерьер: %s", HouseInfo[h][hID], HouseInfo[h][hPrice], 
								query );
							showPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, "Информация о доме", gb_string, "Выход", "" );
							return true;
						}						
						if( HouseInfo[h][hLock] ) return GameTextForPlayer( playerid, "~r~LOCKED", 3000, 3 );
						SetPlayerInterior( playerid, HouseInfo[h][hExitInt] );
						SetPlayerVirtualWorld( playerid, HouseInfo[h][hID] );
						SetPlayerPos( playerid, HouseInfo[h][hExitPos][0], HouseInfo[h][hExitPos][1], HouseInfo[h][hExitPos][2] );
						setHouseWeather( playerid );
						stopPlayer( playerid, 3 );
						//loadHouseInterior( h );
						break;
					}
					else if( IsPlayerInRangeOfPoint( playerid, 1.5, 
						HouseInfo[h][hExitPos][0], HouseInfo[h][hExitPos][1], HouseInfo[h][hExitPos][2] ) 
						&& HouseInfo[h][hID] == GetPlayerVirtualWorld( playerid ) ) {
							
						if( HouseInfo[h][hLock] ) return GameTextForPlayer( playerid, "~r~LOCKED", 3000, 3 );
						SetPlayerPos( playerid, HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2] );
						SetPlayerInterior( playerid, HouseInfo[h][hEnterInt] );
						SetPlayerVirtualWorld( playerid, HouseInfo[h][hEnterWorld] );
						delData( playerid, "User:inInt" ), updateWeather( playerid );
						stopPlayer( playerid, 1 );
						break;
					}		
				}
			}	
		}
	}
	return true;
}

stock setHouseWeather( playerid ) {
	setData( playerid, "User:inInt", 1 );
	SetPlayerTime( playerid, 11, 0 );
	SetPlayerWeather( playerid, 10 );
	//stopPlayer( playerid, 2 );
	return true;
}