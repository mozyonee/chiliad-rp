#include <YSI\y_hooks>

#define d_prison		3500	

enum pr_panel_info {
	pr_p_id,
	Float:pr_p_pos[3],
	Float:pr_p_rad
}

new pr_panel[][pr_panel_info] = {
	{ 1, { 47.9895,-318.3657,1601.0859 }, 2.0 },
	{ 1, { 47.9889,-315.9482,1601.0859 }, 2.0 },
	{ 2, { 65.6185,-343.0119,2601.0859 }, 3.5 },
	{ 2, { 68.2432,-343.0111,2601.0859 }, 2.0 },
	{ 2, { 63.2142,-343.0118,2601.0859 }, 2.0 },
	{ 3, { 42.7741,-337.7581,5.9580 }, 2.0 }
};

hook OnGameModeInit() {
	for( new p; p < sizeof pr_panel; p++ ) {
		CreateDynamic3DTextLabel( "ALT", C_BLUE, 
			pr_panel[p][pr_p_pos][0], pr_panel[p][pr_p_pos][1], pr_panel[p][pr_p_pos][2],
			2.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1 );
	}
	return true;
}

stock openPrisonPanel( playerid, type ) {
	if( Player[playerid][uMember] != 1 ) return true;
	switch( type ) {
		case 1: {
			showPlayerDialog( playerid, d_prison, DIALOG_STYLE_LIST, "Пост управления | Блок D/E",
				"1. Управление блоком D\
				\n2. Управление блоком E\
				\n3. Управление камерами видеонаблюдения\
				\n4. Активировать тревогу", "Выбор", "Назад" );
		}
		case 2: {
			showPlayerDialog( playerid, d_prison + 10, DIALOG_STYLE_LIST, "Администраивный центр", 
				"1. Управление камерами видеонаблюдения", "Выбор", "Назад" );
		}
		case 3: {
			showPlayerDialog( playerid, d_prison + 12, DIALOG_STYLE_LIST, "Пост управления | Улица",
				"1. Управление камерами видеонаблюдения\n2. Активировать тревогу", "Выбор", "Отмена" );
		}
	}
	return true;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	switch( newkeys ) {
		case KEY_WALK: {
			for( new p; p < sizeof pr_panel; p++ ) {
				if( IsPlayerInRangeOfPoint( playerid, 1.3, pr_panel[p][pr_p_pos][0], pr_panel[p][pr_p_pos][1], pr_panel[p][pr_p_pos][2] ) ) {
					openPrisonPanel( playerid, pr_panel[p][pr_p_id] );
					break;
				}
			}
		}
	}
	return true;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	switch( dialogid ) {
		case d_prison: {
			if( !response ) return true;
			switch( listitem ) {
				case 0: {
					format( gb_string, sizeof gb_string, "1. %s все камеры", all_block[BLOCK_A] ? ("Закрыть"):("Открыть") );
					showPlayerDialog( playerid, d_prison + 1, DIALOG_STYLE_LIST, "Управление блоком D", gb_string, "Выбор", "Назад" );
				}
				case 1: {
					format( gb_string, sizeof gb_string, "1. %s все камеры", all_block[BLOCK_B] ? ("Закрыть"):("Открыть") );
					showPlayerDialog( playerid, d_prison + 2, DIALOG_STYLE_LIST, "Управление блоком E", gb_string, "Выбор", "Назад" );
				}
				case 2: initCCTV( playerid, 1 );
			}
		}
		case d_prison + 1: {
			if( !response ) return openPrisonPanel( playerid, 1 );
			switch( listitem ) {
				case 0: {
					if( all_block[BLOCK_A] ) {
						SendMes( playerid, C_GRAY, ""gbAccess"Вы закрыли все камеры блока D" );
						movePrisonBlock( BLOCK_A, false );
					}	
					else {
						SendMes( playerid, C_GRAY, ""gbAccess"Вы открыли все камеры блока D" );
						movePrisonBlock( BLOCK_A, true );
					}	
				}
			}	
		}
		case d_prison + 2: {
			if( !response ) return openPrisonPanel( playerid, 1 );
			switch( listitem ) {
				case 0: {
					if( all_block[BLOCK_B] ) {
						SendMes( playerid, C_GRAY, ""gbAccess"Вы закрыли все камеры блока E" );
						movePrisonBlock( BLOCK_B, false );
					}	
					else {
						SendMes( playerid, C_GRAY, ""gbAccess"Вы открыли все камеры блока E" );
						movePrisonBlock( BLOCK_B, true );
					}	
				}
				case 1: {
					SendMes( playerid, -1, ""gbInfo"Извините данная функция пока не работает!" );
					openPrisonPanel( playerid, 1 );
				}
			}	
		}
		
		case d_prison + 10: {
			if( !response ) return true;
			switch( listitem ) {
				case 0: {
					showPlayerDialog( playerid, d_prison + 11, DIALOG_STYLE_LIST, "Административный центр | Видеонаблюдение", 
						"1. Видеонаблюдение за улицей\
						\n2. Видеонаблюдение за блоком А\
						\n3. Видеонаблюдение за блоком B\
						\n4. Видеонаблюдение за блоком C\
						\n5. Видеонаблюдение за блоками D,E\
						\n6. Видеонаблюдение за блоком F\
						\n7. Видеонаблюдение за подвалом", "Выбор", "Закрыть" );
				}
				case 1: {
					
				}
			}
		}
		case d_prison + 11: {
			if( !response ) return openPrisonPanel( playerid, 2 );
			switch( listitem ) {
				case 0: initCCTV( playerid, 6 );
				case 1: initCCTV( playerid, 4 );
				case 2: initCCTV( playerid, 3 );
				case 3: initCCTV( playerid, 2 );
				case 4: initCCTV( playerid, 1 );
				case 5: initCCTV( playerid, 7 );
				case 6: initCCTV( playerid, 5 );
			}
		}
		case d_prison + 12: {
			if( !response ) return true;
			switch( listitem ) {
				case 0: initCCTV( playerid, 6 );
				case 1: {
					SendMes( playerid, -1, ""gbInfo"Извините данная функция пока не работает!" );
					openPrisonPanel( playerid, 3 );
				}
			}
		}
	}
	return true;
}