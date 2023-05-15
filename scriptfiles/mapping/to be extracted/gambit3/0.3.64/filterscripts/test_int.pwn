#include <a_samp>
#include <streamer>
#include <sscanf2>
#include <zcmd>

new PlayerText:get_limit[MAX_PLAYERS],
	bool:get_limit_use[MAX_PLAYERS] = false,
	get_timer[MAX_PLAYERS],
	Float:other_object_stream = 30.0;
	

public OnFilterScriptInit() {
	//other_object_stream = GetSVarFloat( "OTHER_OBJECT_STREAMER" );
	printf( "[SCRIPT] Test object limit" );
	printf( "[SCRIPT] Loaded" );
	printf( "[SCRIPT] Author: Vovanm93" );
	printf( "[SCRIPT] Version: 0.5.1" );
	printf( "[SCRIPT] Special for g-rp.su" );
	return true;
}	
	
public OnFilterScriptExit() {
	for( new i = GetMaxPlayers() - 1; i != -1; i-- ) {
		if( !IsPlayerConnected( i ) ) continue;
		if( get_limit_use[i] ) {
			get_limit_use[i] = false;
			PlayerTextDrawHide( i, get_limit[i] );
			PlayerTextDrawDestroy( i, get_limit[i] );
			KillTimer( get_timer[i] );
		}
	} 
	return true;
}	
	
public OnPlayerDisconnect( playerid, reason ) {
	if( get_limit_use[playerid] ) {
		get_limit_use[playerid] = false;
		PlayerTextDrawHide( playerid, get_limit[playerid] );
		PlayerTextDrawDestroy( playerid, get_limit[playerid] );
		KillTimer( get_timer[playerid] );
	}	
	return true;
}	

public OnPlayerConnect( playerid ) {
	get_limit_use[playerid] = false;
	return true;
}
	
CMD:get_server_object( playerid, params[] ) {
	if( !get_limit_use[playerid] ) {
		get_limit[playerid] = CreatePlayerTextDraw( playerid, 320, 250, "Stream object:" );
		PlayerTextDrawFont( playerid, get_limit[playerid], 2 );
		PlayerTextDrawSetShadow( playerid, get_limit[playerid], 0 );
		PlayerTextDrawSetOutline( playerid, get_limit[playerid], 1 );
		PlayerTextDrawColor( playerid, get_limit[playerid], 0x35D59DFF );
		PlayerTextDrawShow( playerid, get_limit[playerid] );
		SendClientMessage( playerid, -1, "[TEST INT SCRIPT] Вы включили отображение стриминга объектов" );
		get_timer[playerid] = SetTimerEx( "getServerObjectTimer", 100, 1, "d", playerid );
		Streamer_SetVisibleItems( STREAMER_TYPE_OBJECT, 700, -1 );
		get_limit_use[playerid] = true;
	}
	else {
		PlayerTextDrawHide( playerid, get_limit[playerid] );
		PlayerTextDrawDestroy( playerid, get_limit[playerid] );
		SendClientMessage( playerid, -1, "[TEST INT SCRIPT] Вы отключили отображение стриминга объектов" );
		KillTimer( get_timer[playerid] );
		get_limit_use[playerid] = false;
	}
	return true;
}

forward getServerObjectTimer( playerid );
public getServerObjectTimer( playerid ) {
	new string[128];
	format( string, sizeof string, "Stream object: %d~n~Stream distance: %.1f~n~Other obj distance: %.1f",
		Streamer_CountVisibleItems( playerid, STREAMER_TYPE_OBJECT, 1 ), 
		STREAMER_OBJECT_SD,
		other_object_stream );
	PlayerTextDrawSetString( playerid, get_limit[playerid], string );
	return true;
}