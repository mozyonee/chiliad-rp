

CMD:arrest( playerid, params[] ) {
	if( Player[playerid][uMember] != 8 && Player[playerid][uMember] != 2 ) return SendMes( playerid, C_GRAY, ""gbError"У вас нет доступа для использования этой команды!");
	if( sscanf( params, "d", params[0] ) ) return SendMes( playerid, C_GRAY, ""gbInfo"Введите: /arrest [ ID игрока ]");
	if( !getData( params[0], "uLogin" ) ) return SendMes( playerid, C_GRAY, ""gbError"Данный игрок не в сети!" );
	if( GetDistanceBetweenPlayers( playerid, params[0] ) > 3.0 || GetPlayerVirtualWorld( playerid ) != GetPlayerVirtualWorld( params[0] ) ) 
		return SendMes( playerid, C_GRAY, ""gbError"Данного игрока нет рядом с вами!" );
	if( playerid == params[0] ) return SendMes( playerid, C_GRAY, ""gbError"Вы не можете посадить себя!" );
	if( IsPlayerInRangeOfPoint( playerid, 7.0, -153.4081, -1852.6887, 2497.5859 ) 
		|| IsPlayerInRangeOfPoint( playerid, 5.0, 910.3047, -1898.4979, 2497.5859 ) 
		|| IsPlayerInRangeOfPoint( playerid, 5.0, 1573.1285, -1659.7573, 2490.7480 ) 
		|| IsPlayerInRangeOfPoint( playerid, 5.0, 1573.1285, -1659.7573, 2490.7480 ) 
		|| IsPlayerInRangeOfPoint( playerid, 5.0, 604.8587, -553.6151, 1990.5859 ) ) {
		
		switch( Player[playerid][uMember] ) {
			case 2: Player[ params[0] ][uJail] = 1;
			case 8: Player[ params[0] ][uJail] = 2;
		}	
		SetPlayerPos( params[0], 
			spawnJail[ Player[ params[0] ][uJail] - 1 ][0],
			spawnJail[ Player[ params[0] ][uJail] - 1 ][1],
			spawnJail[ Player[ params[0] ][uJail] - 1 ][2] );
		Player[ params[0] ][uJailTime] = Player[ params[0] ][uSuspect] * 600;
		Player[ params[0] ][uSuspect] = 0;
		SetPlayerWantedLevel( params[0], 0 );
		SendMes( params[0], C_GRAY, ""gbInfo"Вы были помещены в КПЗ "cBLUE"%s {ffffff}на "cBLUE"%d {ffffff}секунд.",
			Player[playerid][uName], Player[ params[0] ][uJailTime] );
		SendMes( playerid, C_GRAY, ""gbAccess"Вы поместили в КПЗ "cBLUE"%s {ffffff}на "cBLUE"%d {ffffff}секунд.",
			Player[ params[0] ][uName], Player[ params[0] ][uJailTime] );
		setData( playerid, "follow", INVALID_PLAYER_ID );
		userUpdate( params[0], "uSuspect", 0 ), userUpdate( params[0], "uJail", Player[ params[0] ][uJail] ),
		userUpdate( params[0], "uJailTime", Player[ params[0] ][uJailTime] );
		
		if( getData( params[0],"follow") != INVALID_PLAYER_ID ) setData( params[0], "follow", INVALID_PLAYER_ID );
		if( getData( params[0],"playerCuffed" ) != 0 ) TogglePlayerControllable( params[0], false );	
	}		
	return true;
}