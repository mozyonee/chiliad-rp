#include <YSI\y_hooks>

	
hook OnGameModeInit() {
	server_weather = server_weather_list[ random( sizeof server_weather_list ) ];
	return true;
}	
	
stock updateWeather( playerid ) {
	if( !getData( playerid, "User:inInt" ) ) {
		SetPlayerWeather( playerid, server_weather_list[ server_weather ] );
		SetPlayerTime( playerid, ghour + 3, 0 );
	}	
	return true;
}

stock callWeather() {
	server_update_weather++;
	if( server_update_weather >= 2100 ) {
		server_update_weather = 0;
		server_weather++;
		if( server_weather > 47 ) server_weather = 0;
	}
	return true;
}