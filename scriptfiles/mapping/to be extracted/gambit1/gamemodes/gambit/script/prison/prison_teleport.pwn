#include <YSI\y_hooks>

hook OnGameModeInit() {
	for( new p; p < sizeof pr_teleport; p++ ) {
		prt_zones[ p ] = CreateDynamicSphere( pr_teleport[p][prt_zone][0], pr_teleport[p][prt_zone][1],
			pr_teleport[p][prt_zone][2], 2.0 );
	}		
	return true;
}

hook OnPlayerEnterDynamicArea( playerid, areaid ) {
	for( new p; p < sizeof pr_teleport; p++ ) {
		if( areaid == prt_zones[ p ] ) {
			SetPlayerFacingAngle( playerid, pr_teleport[p][prt_pos][3] );
			SetPlayerPos( playerid, pr_teleport[p][prt_pos][0], pr_teleport[p][prt_pos][1], pr_teleport[p][prt_pos][2] );
			break;
		}
	}
	return true;
}