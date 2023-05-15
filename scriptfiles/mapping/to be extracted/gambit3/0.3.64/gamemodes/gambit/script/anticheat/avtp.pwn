new Float:OldVehiclePos[MAX_VEHICLES][4];
new LastCar[MAX_PLAYERS];
#include <a_samp>
#include <YSI\y_hooks>

stock Float:GetDistanceBetweenPoints2D(Float:x, Float:y, Float:xx, Float:yy) {
	new Float:newx = (xx - x);
	new Float:newy = (yy - y);
	return floatsqroot( (newx * newx) + (newy * newy) );
}

hook OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z, Float:vel_x, Float:vel_y, Float:vel_z) {
    new Float:vpos_x, Float:vpos_y, Float:vpos_z, Float:vpos_a,
		model = GetVehicleModel( vehicleid );
    GetVehiclePos( vehicleid, vpos_x, vpos_y, vpos_z ); GetVehicleZAngle( vehicleid, vpos_a );
	switch( model ) {
		case 435, 450, 569, 570, 584, 590, 591, 606, 607, 608, 610, 611: return false;
		case 417, 425, 447, 460, 469, 476, 487, 488, 497, 511, 512, 513, 519, 520, 548, 553, 563, 577, 592, 593: {
			if( GetPlayerWeapon( playerid ) == 46 ) return false;
		}
	}
    if( OldVehiclePos[vehicleid][0] != 0.0 && OldVehiclePos[vehicleid][1] != 0.0
		&& OldVehiclePos[vehicleid][2] != 0.0 && OldVehiclePos[vehicleid][3] != 0.0 ) {
		new Float:vehicledistance = GetDistanceBetweenPoints2D( vpos_x, vpos_y, new_x, new_y );
      	if( vehicledistance > 20.0 ) {
			clear_massive();
			//logs( 12, "попытался телепортировать машину", Player[playerid][uID] );
			format( gb_string, sizeof gb_string, 
				"<AntiCheat> %s[%d] возможно попытался телепортировать к себе авто %s", 
				Player[playerid][uName], playerid, CarNames[ model - 400 ] );
			SendAdminMessage( C_RED, gb_string );
        	SetVehiclePos( vehicleid, vpos_x, vpos_y, vpos_z );
        	SetVehicleZAngle( vehicleid, vpos_a );
        	return false;
        }
    }
    OldVehiclePos[vehicleid][0] = vpos_x, OldVehiclePos[vehicleid][1] = vpos_y,
    OldVehiclePos[vehicleid][2] = vpos_z, OldVehiclePos[vehicleid][3] = vpos_a;
	return true;
}
	
hook OnPlayerStateChange( playerid, newstate, oldstate ) {
    if( newstate == PLAYER_STATE_DRIVER ) LastCar[playerid]=GetPlayerVehicleID(playerid);
    else if( oldstate == PLAYER_STATE_DRIVER ) {
        new lastveh = LastCar[playerid];
        GetVehiclePos( lastveh, OldVehiclePos[lastveh][0], OldVehiclePos[lastveh][1], OldVehiclePos[lastveh][2] );
        GetVehicleZAngle( lastveh, OldVehiclePos[lastveh][3] );
    }
    return true;
}