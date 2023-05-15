
#include <YSI\y_hooks>


hook OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ) {
	new car = GetPlayerVehicleID( playerid );
	if( car >= ataxils[0] && car <= ataxils[1] ) {
		if( GetPlayerVehicleSeat( playerid ) ) {
	        if( V::[car][vTaxiDriver] != -1 && IsPlayerInAnyVehicle(V::[car][vTaxiDriver])
				&& !GetPlayerVehicleSeat( V::[car][vTaxiDriver] ) ) {
			    if( !getData( V::[car][vTaxiDriver], "Player:TaxiMarsh" ) ) {
					 DisablePlayerCheckpoint( V::[car][vTaxiDriver] );
			   		 SetPlayerCheckpoint( V::[car][vTaxiDriver], Float:fX, Float:fY, Float:fZ, 5.0 );
			   		 //SetPlayerCheckpoint( V::[car][vTaxiDriver], Float:fX, Float:fY, Float:fZ, 5.0 );
	   		         SendMes( playerid, C_GRAY, ""gbInfo"Вы указали маршрут до точки водителю такси." );
	   		         setData( V::[car][vTaxiDriver], "Player:TaxiMarsh", 1 );
					 
					 format( gb_string, sizeof gb_string, "показал%s дорогу таксисту", Player[playerid][uSex] ? (""):("a") );
	   		         MeAction( playerid, gb_string, 1 );
			    }
			    else {
					DisablePlayerCheckpoint( V::[car][vTaxiDriver] );
					SetPlayerCheckpoint( V::[car][vTaxiDriver], Float:fX, Float:fY, Float:fZ, 5.0 );
	   		        SendMes( playerid, C_GRAY, ""gbInfo"Вы указали новый маршрут до точки водителю такси." );
					SendMes( V::[car][vTaxiDriver], C_GRAY, ""gbInfo"Пассажир %s, указал вам новою точку маршрута", Player[playerid][uName] );
	   		        setData( V::[car][vTaxiDriver], "Player:TaxiMarsh", 1 );
					 
					format( gb_string, sizeof gb_string, "показал%s дорогу таксисту", Player[playerid][uSex] ? (""):("a") );
	   		        MeAction( playerid, gb_string, 1 );
				}
			}
	    }
	}
    return true;
}

hook OnPlayerEnterCheckpoint( playerid ) {
	if( getData( playerid, "Player:TaxiMarsh") ) {
	    DisablePlayerCheckpoint( playerid );
		DeletePVar( playerid, "Player:TaxiMarsh" );
	}
	return true;
}

CMD:radiojob( playerid, params[] ) return CallLocalFunction( "cmd_rj", "ds", playerid, params );
CMD:rj( playerid, params[] ) {
	if( !Player[playerid][uJob] ) return SendMes( playerid, -1, ""gbAccess"Данная команда вам недоступна!" );
	if( sscanf( params, "s[256]", params ) ) return SendMes( playerid, -1, ""gbInfo"Введите: /rj [текст сообщения]" );
	switch( Player[playerid][uJob] ) {
		case 1: {
			if( !D::[playerid][dTaxiDuty] ) return SendMes( playerid, C_GRAY, ""gbError"Вы не начали свой рабочий день водителя такси." );
			if( !IsPlayerInAnyVehicle( playerid ) ) return SendMes( playerid, -1, ""gbError"Вы должны находиться в машине!" );
			new car = GetPlayerVehicleID( playerid ), car_i;
			if( car >= ataxils[0] && car <= ataxils[1]) {
				
				format( gb_string, sizeof gb_string, "[В рацию] %s: %s", Player[playerid][uName], params );
				SendMes( playerid, COLOR_FADE1, "%s", gb_string );
				ProxDetector( 10.0, playerid, gb_string, COLOR_FADE1, COLOR_FADE1, COLOR_FADE1, COLOR_FADE1, COLOR_FADE1, 2 );
				format( gb_string, sizeof gb_string, "[Рация в такси] %s: %s", Player[playerid][uName], params );
				
				foreach( new i: Player) {
					if( playerid == i ) continue;
					if( Player[i][uJob] == 1 && IsPlayerInAnyVehicle( playerid ) ) {
						car_i = GetPlayerVehicleID( i );
						if( car_i >= ataxils[0] && car_i <= ataxils[1]) {
							SendMes( i, COLOR_FADE1, "%s", gb_string );
							ProxDetector( 5.0, i, gb_string, COLOR_FADE1, COLOR_FADE1, COLOR_FADE1, COLOR_FADE1, COLOR_FADE1, 2 );
						}
					}
				}
				if( getTaxiAccept( params ) ) callsTaxi( playerid );
			}
		}
	}
	return true;
}

stock acceptTaxi( playerid ) {
	new car = GetPlayerVehicleID( playerid );
	if( !D::[playerid][dTaxiDuty] ) return SendMes( playerid, C_GRAY, ""gbError"Вы не начали свой рабочий день водителя такси.");
	if( !( ataxils[0] <= car <= ataxils[1] ) ) return SendMes( playerid, C_GRAY, ""gbError"Вы должны находиться в автомобиле, который выдали вам.");
	callsTaxi( playerid );
	return true;
}

stock getTaxiAccept( text[] ) {
	if(!strcmp(text, "я приму", true) || !strcmp(text, "я возьму", true) || !strcmp(text, "принял", true) || !strcmp(text, "взял", true) ||
	!strcmp(text, "взяла", true) || !strcmp(text, "приняла", true) || !strcmp(text, "Я приму", true) || !strcmp(text, "Я возьму", true) ||
	!strcmp(text, "Принял", true) || !strcmp(text, "Взял", true) || !strcmp(text, "Взяла", true) || !strcmp(text, "Приняла", true)) return 1;
	return 0;
}

stock callsTaxi( playerid ) {
	if( taxicall != -1 ) {
		if( !IsPlayerConnected( taxicall ) ) {
			taxicall = -1;
			return SendMes( playerid, C_GRAY, ""gbInfo"Связь с данным человеком была разорвана." );
		}
		new Float:p[3];
		GetPlayerPos( taxicall, p[0], p[1], p[2] );
		DisablePlayerCheckpoint( playerid );
		//SetPlayerCheckpoint( playerid, p[0], p[1], p[2], 5.0 );
		SetPlayerCheckpoint( playerid, p[0], p[1], p[2], 5.0 );
		SendMes( taxicall, C_GRAY, ""gbInfo"Один из таксистов принял ваш вызов, ждите на месте." );
		SendMes( playerid, C_GRAY, ""gbAccess"Вы приняли вызов, езжайте на красный чекпоинт." );
		
		foreach( new i : Player) {
			if( D::[i][dTaxiDuty] ) {
				if( GetPlayerVehicleID(i) >= ataxils[0] && GetPlayerVehicleID(i) <= ataxils[1] ) {
					SendMes( i, C_GRAY, "[Рация в такси] Диспетчер: Хорошо %s, вас поняла, координаты высланы вам на GPS.",
						Player[playerid][uName] );
				}
			}
		}
		taxicall = -1;
	}
	return true;
}	