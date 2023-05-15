#include <YSI\y_hooks>


hook OnGameModeInit() {
	for( new i; i < sizeof prison_cctv; i++ ) {
		format( gb_string, sizeof gb_string, "CAMERA ID: %d", i );
		//CreateDynamic3DTextLabel( gb_string, 0xFFFFFFFF, prison_cctv[i][cctv_x], prison_cctv[i][cctv_y], prison_cctv[i][cctv_z] - 0.3, 15.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 0,-1,-1);
	}
	return true;
}

hook OnPlayerConnect( playerid ) {
	TDPrisonCCTV[playerid] = CreatePlayerTextDraw( playerid, 20, 360, 
		"~y~Camera ~w~#1~n~\
		~y~Date: ~w~01.01.2016 01:55~n~\
		~y~Location: ~w~Block ~n~");
	PlayerTextDrawLetterSize( playerid, TDPrisonCCTV[playerid], 0.8, 2.2 );
    PlayerTextDrawSetShadow( playerid, TDPrisonCCTV[playerid], 0);
    PlayerTextDrawUseBox( playerid, TDPrisonCCTV[playerid], 0 );
	PlayerTextDrawBoxColor( playerid, TDPrisonCCTV[playerid],0x00000055);
	PlayerTextDrawTextSize( playerid, TDPrisonCCTV[playerid], 380, 400);
	return true;
}

stock cctvTimer( playerid ) {
	if( getData( playerid, "CCTV:Use" ) ) {
		new dates[3], time[3], i = getData( playerid, "CCTV:ID" );
		PlayerTextDrawHide( playerid, TDPrisonCCTV[playerid] );
		gettime( time[0], time[1], time[2] ), getdate( dates[0], dates[1], dates[2] );
		format( vb_string, sizeof vb_string, 
			"~y~Camera ~w~#%d~n~\
			~y~Date: ~w~%02d.%02d.%d %02d:%02d:%02d~n~\
			~y~Location: ~w~%s~n~",
			i + 1, dates[0], dates[1], dates[2], time[0], time[1], time[2],
			prison_cctv[i][cctv_name] );
		PlayerTextDrawSetString( playerid, TDPrisonCCTV[playerid], vb_string );
		PlayerTextDrawShow( playerid, TDPrisonCCTV[playerid] );
	}
	return true;
}

stock initCCTV( playerid, blockid ) {
	new Float:old_pos[3];
	GetPlayerPos( playerid, old_pos[0], old_pos[1], old_pos[2] );
	
	for( new tv; tv < sizeof prison_cctv; tv++ ) {
		if( prison_cctv[tv][cctv_block] == blockid ) {
			setDataFloat( playerid, "CCTV:oldX", old_pos[0] ),
			setDataFloat( playerid, "CCTV:oldY", old_pos[1] ),
			setDataFloat( playerid, "CCTV:oldZ", old_pos[2] );
			setData( playerid, "CCTV:Use", 1 ), setData( playerid, "CCTV:ID", tv );
			setData( playerid, "CCTV:block", blockid );
			SetPlayerPos( playerid, cctv_pos[blockid - 1][0], cctv_pos[blockid - 1][1], cctv_pos[blockid - 1][2] );
			TogglePlayerControllable( playerid, false );
			setCCTV( playerid, tv );
			break;
		}
	}
	return true;
}

stock setCCTV( playerid, tv ) {
	new dates[3], time[3];
	SetPlayerCameraPos( playerid, prison_cctv[tv][cctv_x], prison_cctv[tv][cctv_y], prison_cctv[tv][cctv_z] - 0.25 );
	SetPlayerCameraLookAt( playerid, prison_cctv[tv][cctv_rx], prison_cctv[tv][cctv_ry], prison_cctv[tv][cctv_rz], 2 );
	
	gettime( time[0], time[1], time[2] ), getdate( dates[0], dates[1], dates[2] );
	PlayerTextDrawHide( playerid, TDPrisonCCTV[playerid] );
	format( vb_string, sizeof vb_string, 
		"~y~Camera ~w~#%d~n~\
		~y~Date: ~w~%02d.%02d.%d %02d:%02d:%02d~n~\
		~y~Location: ~w~%s~n~",
		tv + 1, dates[0], dates[1], dates[2], time[0], time[1], time[2],
		prison_cctv[tv][cctv_name] );
	PlayerTextDrawSetString( playerid, TDPrisonCCTV[playerid], vb_string );
	PlayerTextDrawShow( playerid, TDPrisonCCTV[playerid] );
	setData( playerid, "CCTV:ID", tv );
	return true;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys ) {
	if( getData( playerid, "CCTV:Use" ) ) {
		new tv = getData( playerid, "CCTV:ID" ),
			blockid = getData( playerid, "CCTV:block" );
		switch( newkeys ) {
			case KEY_NO: {
				SetPlayerPos( playerid, 
					getDataFloat( playerid, "CCTV:oldX" ),
					getDataFloat( playerid, "CCTV:oldY" ),
					getDataFloat( playerid, "CCTV:oldZ" ) );
				TogglePlayerControllable( playerid, true );	
				delData( playerid, "CCTV:Use" );
				PlayerTextDrawHide( playerid, TDPrisonCCTV[playerid] );
				SetCameraBehindPlayer( playerid );
			}
			case KEY_ANALOG_LEFT: {
				if( prison_cctv[tv - 1][cctv_block] != blockid ) return true;
				if( tv - 1 < 0 ) return true;
				setCCTV( playerid, tv - 1 );
			}
			case KEY_ANALOG_RIGHT: {
				if( prison_cctv[tv + 1][cctv_block] != blockid ) return true;
				if( tv + 1 > sizeof prison_cctv ) return true;
				setCCTV( playerid, tv + 1 );
				
			}
		}
	}
	return true;
}