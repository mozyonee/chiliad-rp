#include <YSI\y_hooks>

hook OnGameModeInit() {
	for( new p; p < sizeof prg_close; p++ ) {
		prison_gate[p] = CreateDynamicObject( prg_close[p][prg_model], prg_close[p][prg_pos][0], prg_close[p][prg_pos][1], prg_close[p][prg_pos][2], 
			prg_close[p][prg_pos][3], prg_close[p][prg_pos][4], prg_close[p][prg_pos][5] );   
		switch( prg_close[p][prg_id] ) {
			case 5: {
				SetDynamicObjectMaterial( prison_gate[p], 0, 9514, "711_sfw", "ws_carpark2", 0);
				SetDynamicObjectMaterial( prison_gate[p], 1, 4595, "crparkgm_lan2", "sl_cparkbarrier1", 0);
				SetDynamicObjectMaterial( prison_gate[p], 2, 9514, "711_sfw", "ws_carpark2", 0);
			}
			case 6, 7: {
				SetDynamicObjectMaterial( prison_gate[p], 1, 18761, "matracing", "metalfence3", 0);
				SetDynamicObjectMaterial( prison_gate[p], 2, 1560, "7_11_door", "cj_sheetmetal2", 0);
				SetDynamicObjectMaterial( prison_gate[p], 3, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0);
			}
			case 23: {
				SetDynamicObjectMaterial( prison_gate[p], 1, 18761, "matracing", "metalfence3", 0); 
			}
		}
	}
	return true;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	switch( newkeys ) {
		case KEY_CROUCH, KEY_SECONDARY_ATTACK: {
			if( Player[playerid][uMember] != 1 ) return true;
			for( new p; p < sizeof prg_gate; p++ ) {
				if( IsPlayerInRangeOfPoint( playerid, prg_gate[p][prg][3], prg_gate[p][prg][0], prg_gate[p][prg][1], prg_gate[p][prg][2] ) ) {
					if( !prg_status[p] ) {
						for( new g; g < sizeof prg_open; g++ ) {
							if( p == prg_open[g][prg_id] - 1 ) {
								MoveDynamicObject( prison_gate[g], prg_open[g][prg_pos][0], prg_open[g][prg_pos][1], prg_open[g][prg_pos][2] + 0.005, 
									prg_open[g][prg_speed],
									prg_open[g][prg_pos][3], prg_open[g][prg_pos][4], prg_open[g][prg_pos][5] );
							}	
						}
						if( !prg_gate[p][prg_closed] ) {
							if( prison_gate_timer[p] ) KillTimer( prison_gate_timer[p] );
							prison_gate_timer[p] = SetTimerEx( "closePrisonGate", 15000, false, "d", p );
						}
						prg_status[p] = true;
						break;
					}
					else {
						for( new g; g < sizeof prg_close; g++ ) {
							if( p == prg_close[g][prg_id] - 1 ) {
								if( prison_gate_timer[p] ) KillTimer( prison_gate_timer[p] );
								MoveDynamicObject( prison_gate[g], prg_close[g][prg_pos][0], prg_close[g][prg_pos][1], prg_close[g][prg_pos][2] + 0.005, 
									prg_close[g][prg_speed],
									prg_close[g][prg_pos][3], prg_close[g][prg_pos][4], prg_close[g][prg_pos][5] );
							}	
						}
						prg_status[p] = false;
						break;
					}
				}
			}	
		}
	}
	return true;
}

function closePrisonGate( p ) {
	for( new g; g < sizeof prg_close; g++ ) {
		if( p == prg_close[g][prg_id] - 1 ) {
			MoveDynamicObject( prison_gate[g], prg_close[g][prg_pos][0], prg_close[g][prg_pos][1], prg_close[g][prg_pos][2] - 0.005, 
				prg_close[g][prg_speed],
				prg_close[g][prg_pos][3], prg_close[g][prg_pos][4], prg_close[g][prg_pos][5] );
		}
	}
	prg_status[p] = false;	
	KillTimer( prison_gate_timer[p] );
	return true;
}