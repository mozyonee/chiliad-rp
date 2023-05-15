
#define BYTES_PER_CELL 		(cellbits / 8)

stock GivePlayerCriminal( playerid, value ) {
	Player[playerid][uCriminal] += value;
	userUpdate( playerid, "uCriminal", Player[playerid][uCriminal] );
	SendMes( playerid, -1, ""gbAccess"¬ашему персонажу было начислено %d очков криминала.", value );
	return true;
}

stock userUpdate( playerid, name[], value ) {
	query[0] = 0;
	format( query, sizeof query, "UPDATE `gb_users` SET `%s` = '%d' WHERE BINARY `uName` = '%s'",
		name, value, Player[playerid][uName] );
	mysql_tquery( mysql, query, "", "");
	return true;
}

stock userUpdateStr( playerid, name[], value[] ) {
	query[0] = 0;
	format( query, sizeof query, "UPDATE `gb_users` SET `%s` = '%s' WHERE BINARY `uName` = '%s'",
		name, value, Player[playerid][uName] );
	mysql_tquery( mysql, query, "", "");
	return true;
}

stock KickEx(playerid) {
    SetTimerEx("new_kick", 300, false, "d", playerid);
    setData( playerid, "Player:Kick", 1 );
    return 1;
}

publics: new_kick( playerid ) {
	if(IsPlayerConnected(playerid)) {
		delData( playerid, "Player:Kick" );
	 	Kick(playerid);
	}
}

publics: Float:GetDistanceBetweenPlayers(p1,p2) {
	new Float:x1,Float:y1,Float:z1,Float:x2,Float:y2,Float:z2;
	GetPlayerPos(p1,x1,y1,z1);
	GetPlayerPos(p2,x2,y2,z2);
	return floatsqroot(floatpower(floatabs(floatsub(x2,x1)),2)+floatpower(floatabs(floatsub(y2,y1)),2)+floatpower(floatabs(floatsub(z2,z1)),2));
}

stock PlayerPlaySoundEx(playerid, sound) {
	static Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);
	foreach (new i : Player) {
		if (IsPlayerInRangeOfPoint(i, 30.0, x, y, z)) PlayerPlaySound(i, sound, x, y, z);
	}
	return 1;
}

CheckNormalPassword(pass[]) {
	for(new i = 0; i < strlen(pass); i ++) {
	    if(!((pass[i] >= 'a' && pass[i] <= 'z') || (pass[i] >= 'A' && pass[i] <= 'Z') || (pass[i] >= '0' && pass[i] <= '9'))) {
	        return 0;
	    }
	}
	return 1;
}

stock stopPlayer( playerid, time ) { 
	stop_time[playerid] = time;
	TogglePlayerControllable( playerid, false );
	return true;
}

stock SendMes(playerid, color, fstring[], {Float, _}:...) {
    static const
        STATIC_ARGS = 3;
    new
        n = (numargs() - STATIC_ARGS) * BYTES_PER_CELL;
    if (n)
    {
        new
            message[128],
            arg_start,
            arg_end;
        #emit CONST.alt        fstring
        #emit LCTRL          5
        #emit ADD
        #emit STOR.S.pri        arg_start

        #emit LOAD.S.alt        n
        #emit ADD
        #emit STOR.S.pri        arg_end
        do
        {
            #emit LOAD.I
            #emit PUSH.pri
            arg_end -= BYTES_PER_CELL;
            #emit LOAD.S.pri      arg_end
        }
        while (arg_end > arg_start);

        // Push the static format parameters.
        #emit PUSH.S          fstring
        #emit PUSH.C          128
        #emit PUSH.ADR         message

        n += BYTES_PER_CELL * 3;
        #emit PUSH.S          n
        #emit SYSREQ.C         format

        n += BYTES_PER_CELL;
        #emit LCTRL          4
        #emit LOAD.S.alt        n
        #emit ADD
        #emit SCTRL          4

        return SendClientMessage(playerid, color, message);
    }
    else {
        return SendClientMessage(playerid, color, fstring);
    }
}

stock getCarPrice( model ) {
	for( new i; i < sizeof CarsPrice; i++ ) {
		if( CarsPrice[i][0] == model ) return CarsPrice[i][1];
	}
	return 0;
}