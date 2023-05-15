#include <YSI\y_hooks>


hook OnGameModeInit() {
	for( new b; b < 14; b++ ) {
		block_object[0][b] = CreateDynamicObject( 19303, block[0][b][0], block[0][b][1], block[0][b][2], 
			block[0][b][3], block[0][b][4], block[0][b][5] );
	}
	for( new b; b < 13; b++ ) {
		block_object[1][b] = CreateDynamicObject( 19303, block[1][b][0], block[1][b][1], block[1][b][2], 
			block[1][b][3], block[1][b][4], block[1][b][5] );
	}
	return true;
}	

stock movePrisonBlock( mblock, bool:status ) {
	if( status ) {// Открыть
		for( new b; b < 14; b++ ) {
			if( !block_status[mblock][b] ) {
				MoveDynamicObject( block_object[mblock][b], block[mblock][b][0] + BLOCK_MOVE, block[mblock][b][1], block[mblock][b][2],
					1.0, block[mblock][b][3], block[mblock][b][4], block[mblock][b][5] );
				block_status[mblock][b] = true;
				all_block[mblock] = true;
			}	
			
		}	
	}
	else {// Закрыть
		for( new b; b < 14; b++ ) {
			if( block_status[mblock][b] ) {
				MoveDynamicObject( block_object[mblock][b], block[mblock][b][0], block[mblock][b][1], block[mblock][b][2],
					1.0, block[mblock][b][3], block[mblock][b][4], block[mblock][b][5] );
				block_status[mblock][b] = false;
				all_block[mblock] = false;
			}	
		}
	}
	return true;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	switch( newkeys ) {
		case KEY_SECONDARY_ATTACK: {
			if( Player[playerid][uMember] != 1 ) return true;
			for( new bl; bl < 2; bl++ ) {
				for( new b; b < 14; b++ ) {
					if( IsPlayerInRangeOfPoint( playerid, 1.5, block[bl][b][0], block[bl][b][1], block[bl][b][2] ) ) {
						if( !block_status[bl][b] ) {
							MoveDynamicObject( block_object[bl][b], block[bl][b][0] + BLOCK_MOVE, block[bl][b][1], block[bl][b][2],
								1.0, block[bl][b][3], block[bl][b][4], block[bl][b][5] );
							block_status[bl][b] = true;
							break;
						}	
						else {
							MoveDynamicObject( block_object[bl][b], block[bl][b][0], block[bl][b][1], block[bl][b][2],
								1.0, block[bl][b][3], block[bl][b][4], block[bl][b][5] );
							block_status[bl][b] = false;
							break;
						}
					}
				}
			}
		}
	}
	return true;
}	
			