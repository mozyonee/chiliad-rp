
CMD:invite( playerid, params[] ) {
	if( !Player[playerid][uCrimeL] && !Player[playerid][uCrimeSet][CRIME_INVITE]
		&& !getRankSettings( playerid, CRIME_INVITE ) ) 
		return SendMes( playerid, -1, ""gbInfo"У вас нет доступа к этой команде" );
	if( sscanf( params, "u", params[0] ) ) return SendMes( playerid, -1, ""gbInfo"Введите: /invite [ id ]");
	if( Player[ params[0] ][uCrimeM] ) return SendMes( playerid, -1, ""gbError"Данный игрок уже состоит в группировке!" );
	if( Player[ params[0] ][uMember] ) return SendMes( playerid, -1, ""gbError"Данный игрок уже состоит в организации!" );
	
	
	setData( params[0], "Crime:Invite", Player[playerid][uCrimeM] );
	
	format( gb_string,sizeof gb_string,
		"{ffffff}| Приглашение в организацию:"cGRAY"\n\nЛидер организации - %s\nПриглашает вас в организацию - %s",
		Player[playerid][uName], getCrimeName( Player[playerid][uCrimeM] ) );
	
	showPlayerDialog( params[0], d_crime - 1, DIALOG_STYLE_MSGBOX, "Приглашение в организацию", gb_string, "Далее", "Закрыть");
	SendMes(playerid, C_GRAY, ""gbAccess"Вы пригласили кого-то в свою организацию, ожидайте ответа!" );
	return true;
}



CMD:uninvite( playerid, params[] ) {
	if( !Player[playerid][uCrimeL] && !Player[playerid][uCrimeSet][CRIME_UNINVITE]
		&& !getRankSettings( playerid, CRIME_UNINVITE ) )
		return SendMes( playerid, -1, ""gbInfo"У вас нет доступа к этой команде" );
	if( sscanf( params, "u", params[0] ) ) return SendMes( playerid, -1, ""gbInfo"Введите: /uninvite [ id ]");
	if( playerid == params[0] ) return SendMes( playerid, -1, ""gbError"Вы не можете выгнать себя!" );
	if( Player[playerid][uCrimeM] != Player[ params[0] ][uCrimeM] ) return SendMes( playerid, -1, ""gbError"Данный игрок не в вашей организации!");
	Player[ params[0] ][uCrimeM] = 0, Player[ params[0] ][uCrimeRank] = 0;
	userUpdate( params[0], "uCrimeM", 0 ), userUpdate( params[0], "uCrimeL", 0 ),
	userUpdate( params[0], "uCrimeRank", 0 );
	SendMes( playerid, -1, ""gbInfo"Вы вышибли %s из своей организации", Player[ params[0] ][uName] );
	SendMes( params[0], -1, ""gbInfo"%s вышиб вас из своей организации", Player[ playerid ][uName] );
	
	return true;
}

CMD:giverank( playerid, params[] ) {
	if( !Player[playerid][uCrimeL] && !Player[playerid][uCrimeSet][CRIME_CHANGERANK]
		&& !getRankSettings( playerid, CRIME_CHANGERANK ) ) 
		return SendMes( playerid, -1, ""gbInfo"У вас нет доступа к этой команде" );
	if( sscanf( params, "ud", params[0], params[1] ) ) return SendMes( playerid, -1, ""gbInfo"Введите: /giverank [ id ][ ранг ]");
	if( Player[playerid][uCrimeM] != Player[ params[0] ][uCrimeM] ) return SendMes( playerid, -1, ""gbError"Данный игрок не в вашей организации!");
	if( params[1] < 1 || params[1] > 20 ) return SendMes( playerid, -1, ""gbError"Неверный аргумент!" );
	
	Player[ params[0] ][uCrimeRank] = params[1];
	userUpdate( params[0], "uCrimeRank", params[1] );
	
	SendMes( playerid, -1, ""gbInfo"Вы изменили игроку %s ранг на %s", 
		Player[ params[0] ][uName], CrimeRank[ getCrimeID( Player[playerid][uCrimeM] ) ][ params[1] - 1 ][raName] );
	SendMes( params[0], -1, ""gbInfo"%s изменил вам ранг на %s", 	
		Player[ playerid ][uName], CrimeRank[ getCrimeID( Player[playerid][uCrimeM] ) ][ params[1] - 1 ][raName] );
	return true;
}

CMD:server_crime( playerid, params[] ) {
	new list;
	for( new i; i < MAX_CRIMINAL; i++ ) {
		if( CrimeInfo[ i ][ crID ] ) {
			format( vb_string, sizeof vb_string, "%s%d. [%s] %s [ID:%d]\n", vb_string, list + 1,
				crime_type[ CrimeInfo[ i ][ crType ] ],
				CrimeInfo[ i ][ crName ], CrimeInfo[ i ][ crID ] );
			list++;	
		}
	}
	if(!list) return SendClientMessage( playerid, -1, ""gbError"На сервере нет официальных криминальных структур!" );
	showPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, "Криминальные структуры", vb_string, "Закрыть", "" );
	return true;
}