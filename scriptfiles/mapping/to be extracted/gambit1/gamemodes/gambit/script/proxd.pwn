#include <YSI\y_hooks>
 
/*
hook OnGameModeInit() {
   Iter_Init(StreamedPlayers);
   return true;
}
 
hook OnPlayerDisconnect( playerid ) {
   if( Iter_Count(StreamedPlayers[playerid]) != 0) Iter_Clear(StreamedPlayers[playerid]);
   return true;
}
 
hook OnPlayerStreamIn( playerid, forplayerid ) {
   Iter_Add(StreamedPlayers[forplayerid],playerid);
   return true;
}
 
hook OnPlayerStreamOut( playerid, forplayerid ) {
   Iter_Remove(StreamedPlayers[forplayerid],playerid);
   return true;
}
 
stock ProxDetector( Float:max_radius, pointplayerid, text[], colour1, colour2, colour3, colour4, colour5, type = 0 ) {
    new Float:px,Float:py,Float:pz,Float:distance;
    GetPlayerPos( pointplayerid, px, py, pz );
    SendClientMessage( pointplayerid, colour1, text );
    if( Iter_Count(StreamedPlayers[pointplayerid]) == 0) return true;
    foreach(new i : StreamedPlayers[pointplayerid]) {
        if( IsPlayerInRangeOfPoint( i, max_radius, px, py, pz ) ) {
			if( type == 1 ) {
				if( Player[i][uOOC] == 1 ) continue;
			}
			else if( type == 2 ) {
				if( i == pointplayerid ) continue;
			}
            distance = GetPlayerDistanceFromPoint( i, px, py, pz );
            if( distance >= 0.0 && distance < max_radius/3 ) SendClientMessage( i, colour1, text );
            if( distance >= max_radius/3 && distance < max_radius/3*2 ) SendClientMessage( i, colour2, text );
            if( distance >= max_radius/3*2 && distance <= max_radius ) SendClientMessage( i, colour3, text );
            if( distance >= max_radius/3*4 && distance <= max_radius ) SendClientMessage( i, colour4, text );
            if( distance >= max_radius/3*8 && distance <= max_radius ) SendClientMessage( i, colour5, text );
        }
    }
    return true;
}*/

stock ProxDetector( Float:radi, playerid, string[], col1, col2, col3, col4, col5, type = 0 ) {
    new Float: Pos[3], Float: Radius;
    GetPlayerPos(playerid, Pos[0], Pos[1], Pos[2]);
	if( GetPlayerVirtualWorld( playerid ) != 0 || GetPlayerInterior( playerid ) != 0 || 
		getData( playerid, "User:inInt" ) ) radi = radi/2;
		
	foreach(new i : Player) {
		if( type == 1 ) {
			if( Player[i][uOOC] == 1 ) continue;
		}
		else if( type == 2 ) {
			if( i == playerid ) continue;
		}
		if( GetPlayerVirtualWorld( playerid ) != GetPlayerVirtualWorld( i ) || GetPlayerInterior( playerid ) != GetPlayerInterior( i ) ) continue;
        Radius = GetPlayerDistanceFromPoint(i, Pos[0], Pos[1], Pos[2]);
        if (Radius < radi / 16) SendClientMessage(i, col1, string);
        else if(Radius < radi / 8) SendClientMessage(i, col2, string);
        else if(Radius < radi / 4) SendClientMessage(i, col3, string);
        else if(Radius < radi / 2) SendClientMessage(i, col4, string);
        else if(Radius < radi) SendClientMessage(i, col5, string);
    }
    return 1;
}