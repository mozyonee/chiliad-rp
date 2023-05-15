
stock showMenu( playerid ) {
	clear_massive();
	new Float:X, Float:Y, Float:Z, Float:R, Float:X2, Float:Y2,
		bool:idx = false;
	if( getData( playerid, "PlayerMenuShow" ) ) return true;
	if( getData( playerid, "PlayerCameraHouse") ) return true;
	if( !IsPlayerInAnyVehicle( playerid ) ) {
		GetPlayerPos( playerid, X, Y, Z );
		GetPlayerFacingAngle( playerid, R );
		X2 = X - 3.5 * floatsin( R, degrees );
		Y2 = Y + 3.5 * floatcos( R, degrees );
		InterpolateCameraPos( playerid, X, Y, Z, X2, Y2, Z, 600, 1000 );
		InterpolateCameraLookAt( playerid, X, Y, Z, X, Y, Z, 600, 1000 );
	}
	for( new i; i != 21; i++ ) TextDrawShowForPlayer( playerid, MenuPlayer[i] );
	for( new i; i != 3; i++ ) PlayerTextDrawShow( playerid, menuPlayer[i][playerid] );
	
	//format( gb_string, sizeof gb_string, "~n~%s",  ), strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "%s", JobInfo[ Player[playerid][uJob] ] ), strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "~n~$%09d", Player[playerid][uMoney] ), strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "~n~%s", F::[ Player[playerid][uMember] ][fName] ), strcat( vb_string, gb_string );
	
	format( gb_string, sizeof gb_string, "~n~%s", Player[playerid][uRank] != 0 ? ( FRank[ Player[playerid][uMember] ][ Player[playerid][uRank] - 1 ] ):("Нет") ), strcat( vb_string, gb_string );
	format( query, sizeof query, "%d", Player[playerid][uHouse] );
	format( gb_string, sizeof gb_string, "~n~%s", Player[playerid][uHouse] ? ( query ):("Нет") ), strcat( vb_string, gb_string );
	
	for( new i; i != MAX_BUSINESS; i++ ) {
		if( !strcmp( Bizz::[i][bOwner], Player[playerid][uName], true ) && Bizz::[i][bID] != 0) {
		    if( idx == false ) format( query, sizeof query, "%d", Bizz::[i][bID] );
			else format( query, sizeof query, "%s,%d", query, Bizz::[i][bID] );
		    idx = true;
		}
	}
	format( gb_string, sizeof gb_string, "~n~%s", idx == true ? ( query ):("Нет") ), strcat( vb_string, gb_string ), idx = false;
	query[0] = 0;
	
	for( new i; i != MAX_CARS_BUY; i++ ) {
		if( Car::[i][cID] == 0 || Car::[i][cModel] == 0 ) continue;
		if( !strcmp( Car::[i][cOwner], Player[playerid][uName], true ) && Car::[i][cID] != 0) {
			if( idx == false ) format( query, sizeof query, "%d", Car::[i][cID] );
			else format( query, sizeof query, "%s,%d", query, Car::[i][cID] );
		    idx = true;
		}
	}
	format( gb_string, sizeof gb_string, "~n~%s", idx == true ? ( query ):("Нет") ), strcat( vb_string, gb_string ), idx = false;
	query[0] = 0;
	
	format( query, sizeof query, "%d", Player[playerid][uNumber] );
	format( gb_string, sizeof gb_string, "~n~%s", Player[playerid][uNumber] ? ( query ):("Нет") ), strcat( vb_string, gb_string );
	format( query, sizeof query, "%d", Player[playerid][uWarn] );
	format( gb_string, sizeof gb_string, "~n~%s", Player[playerid][uWarn] ? ( query ):("Нет") ), strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "~n~%s", date( "%dd.%mm.%yyyy", Player[playerid][uRegDate] ) ), strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "~n~%d" ,Player[playerid][uValueSt] ), strcat( vb_string, gb_string );
	format( gb_string, sizeof gb_string, "~n~%d мин.", 60 - Player[playerid][uPayTime] ), strcat( vb_string, gb_string );
	format:gb_string( "~n~%s", user_premium[ Player[playerid][uPremium] ] );
	strcat( vb_string, gb_string );
	format:gb_string( "~n~%d", Player[playerid][uGMoney] );
	strcat( vb_string, gb_string );
	format:gb_string( "~n~%d", Player[playerid][uJobValue] );
	strcat( vb_string, gb_string );
	
	PlayerTextDrawSetString( playerid, menuPlayer[1][playerid], vb_string );
	PlayerTextDrawSetString( playerid, menuPlayer[0][playerid], 
		"Работа:~n~\
		Наличные:~n~\
		Фракция:~n~\
		Должность:~n~\
		Дом:~n~\
		Бизнесы:~n~\
		Автомобили:~n~\
		Номер мобильного:~n~\
		Предупреждения:~n~\
		Дата регистрации:~n~\
		Очки усталости:~n~\
		Время до зарплаты:~n~\
		Премиум аккаунт:~n~\
		GMoney:~n~\
		Очки работы:" );
	PlayerTextDrawSetString( playerid, menuPlayer[2][playerid], Player[playerid][uName] );
	setData( playerid, "PlayerMenuShow", 1 );
	SelectTextDraw( playerid, 0xd3d3d3FF );
	return true;
}