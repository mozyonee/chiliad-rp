
#define BYTES_PER_CELL 		(cellbits / 8)

stock AdminUpdate( playerid, name[], value ) 
{
	query[0] = 0;
	format( query, sizeof query, "UPDATE `gb_admins` SET `%s` = '%d' WHERE `Name` = '%s' LIMIT 1",
		name, 
		value, 
		Player[playerid][uName] 
	);
	
	mysql_tquery( mysql, query, "", "");
	
	return true;
}

stock userUpdate( playerid, name[], value ) {
	query[0] = 0;
	format( query, sizeof query, "UPDATE `gb_users` SET `%s` = '%d' WHERE `uName` = '%s' LIMIT 1",
		name, value, Player[playerid][uName] );
	mysql_tquery( mysql, query, "", "");
	
	return true;
}

stock userUpdateStr( playerid, name[], value[] ) {
	query[0] = 0;
	format( query, sizeof query, "UPDATE `gb_users` SET `%s` = '%s' WHERE BINARY `uName` = '%s' LIMIT 1",
		name, value, Player[playerid][uName] );
	mysql_tquery( mysql, query, "", "");
	return true;
}

stock KickEx(playerid) {
    SetTimerEx("new_kick", 300, false, "d", playerid);
    setData( playerid, "Player:Kick", 1 );
    return 1;
}

function new_kick( playerid ) {
	if(IsPlayerConnected(playerid)) {
		delData( playerid, "Player:Kick" );
	 	Kick(playerid);
	}
}

function Float:GetDistanceBetweenPlayers(p1,p2) {
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
	togglePlayerControllable( playerid, false );
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

stock getCarPrice( model ) 
{
	for( new i; i < sizeof CarsPrice; i++ ) 
	{
		if( CarsPrice[i][0] == model ) 
			return CarsPrice[i][1];
	}
	
	return 0;
}

IsCorrectName( name[] )
{
	if( strfind( name, "_", true ) == -1 || IsTextRussian( name ) )
		return 0;
	
	new
		len = strlen( name );
		
	if( len < 5 || len > MAX_PLAYER_NAME )
		return 0;
		
	while( --len != 0 )
	{
		switch( name[len] )
		{	
			case '0' .. '9', ' ', '/', '\n', '`', '~', '%', '^', '&', '[', ']', '{', '}', '|', ''' :
				return 0;
			
			default: 
				continue;
		}
	}
	
	return 1;
}

GetInventorySkinId( playerid ) 
{		
	if( Player[playerid][uJobSkin] && ( Player[playerid][uIsPlayerJob][0] == 1 
		|| Player[playerid][uIsPlayerJob][1] == 1 || Player[playerid][uIsPlayerJob][2] == 1 ) )
	{
		switch( Player[playerid][uMember ] )
		{
			case 1 .. 3, 5, 8 :
			{
				return Player[playerid][uJobSkin];
			}
		}
	}
	else 
	{
		Player[playerid][uJobSkin] = 0;
		userUpdate( playerid, "uJobSkin", 0 );
	}
	
	if( Inv[ playerid ][ invSlot ][ 52 ] ) 
		return _itemsInfo[ Inv[playerid][invSlot][52] ][invObject];
	
	if(Player[playerid][uSex] == 1) 
	{
		if( Player[playerid][uColor] == 1 ) 
			return 18;
			
		else if( Player[playerid][uColor] == 2 ) 
			return 154;
	}
	else if( Player[playerid][uSex] == 2 ) 
	{
		if( Player[playerid][uColor] == 1 ) 
			return 139;
			
		else if( Player[playerid][uColor] == 2 ) 
			return 138;
	}
	
	return 1;
}

SetCorrectSlot( playerid, item, count )
{
	SetPVarInt( playerid, "selectItemId", item );
	SetPVarInt( playerid, "selectItemCount", count );
}

IsCorrectSlot( playerid )
{
	if( GetPVarInt( playerid, "selectSlot") == -1 )
		return 0;
		
	new
		select = GetPVarInt( playerid, "selectSlot");
		
	if( Inv[playerid][invSlot][select] != GetPVarInt( playerid, "selectItemId" ) 
	    && Inv[playerid][invSlotKol][select] != GetPVarInt( playerid, "selectItemCount" )
	  )
		return 0;
		
	return 1;
}

IsCorrectAge( age )
{
	if( age < 15 || age > 90 )
		return 0;
		
	return 1;
}

IsAvaibleSkin( skinid )
{
	switch( skinid )
	{
		case 70, 71, 74, 80, 81, 163, 164, 165, 203, 204, 265, 266, 267, 
			277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288 : 
				return 0;
	}
	
	return 1;
}

ClearCorrectSlot( playerid )
{
	SetPVarInt( playerid, "selectItemId", -1 );
	SetPVarInt( playerid, "selectItemCount", -1 );
}

ClearSlot( playerid, select )
{
	Inv[playerid][invSlotKol][select] = 0;
	Inv[playerid][invSlot][select] = 0;
	PlayerTextDrawSetPreviewModel(playerid, invSPlayer[playerid][select], 19464);
	PlayerTextDrawSetPreviewRot(playerid, invSPlayer[playerid][select], 0.000000, 0.000000, 90.000000, 0.100000);
	PlayerTextDrawShow(playerid,invSPlayer[playerid][select]);
}

ResetSelectSlot( playerid )
{
	SetPVarInt( playerid, "selectSlot", -1 );
	SetPVarInt( playerid, "changeSlot", -1 );
}

stock IsAfk( playerid )
{
	return GetPVarInt( playerid, "PlayerAFK") > 3 ? true : false;
}

stock IsMute( playerid, _: type )
{
	if( type == TYPE_IC )
	{
		return Player[playerid][uMute] != 0 ? true : false;
	}
	else if( type == TYPE_OOC )
	{
		return Player[playerid][uBMute] != 0 ? true : false;
	}
	
	return true;
}

stock IsDuty( playerid )
{
	for( new i; i < 3; i++ )
	{
		if( Player[playerid][uIsPlayerJob][i] )
			return Player[playerid][uIsPlayerJob][i];
	}
	
	return 0;
}

stock SendAdminLog( playerid, const message[], color = C_GRAY ) 
{
	new 
		server_tick = GetTickCount();
		
	if( GetPVarInt( playerid, "Log:Time" ) > server_tick )
		return 0;
		
	SetPVarInt( playerid, "Log:Time", server_tick + 4000 );
	
	SendAdminMessage( color, message );
	
	return 1;
}

SendAdminMessage( color, const message[] ) 
{
	foreach( new i : Player) 
	{
		if( !GetPVarInt( i, "uLogin" ) )
			continue;
			
		if( Player[i][uAdmin] > 0 && GetPVarInt( i, "playerAdmin" ) )
		{
			SendClientMessage( i, color, message );
		}
	}
}

SendSupportsMessage( color, const message[], bool: to_admins = true )
{
	foreach( new i: Player)
	{
		if( !GetPVarInt( i, "uLogin" ) )
			continue;
			
		if( to_admins )
		{
			if( Player[i][uSupport] && GetPVarInt( i, "SDuty" ) || Player[i][uAdmin] > 1 )
			{
				SendClientMessage( i, color, message );
			}
		}
		else 
		{
			if( Player[i][uSupport] && GetPVarInt( i, "SDuty" ) )
			{
				SendClientMessage( i, color, message );
			}
		}
	}
}

SendVehicleMessage( vehicleid, text[] )
{
	foreach( new playerid : Player)
	{
		if( !GetPVarInt( playerid, "uLogin" ) )
			continue;
			
		if( IsPlayerInVehicle( playerid, vehicleid ) || GetPVarInt( playerid, "Admin:ShowVehicleMessage" ) == vehicleid )
		{
			SendLongNoRadius( playerid, COLOR_FADE1, text );
		}
	}
}

SkipVehicleMessage( vehicleid )
{
	switch( GetVehicleModel( vehicleid ) )
	{
		case 424, 430, 441, 446, 448, 449, 452, 453, 454, 457, 461, 462, 463, 464, 465, 
			 468, 471, 472, 473, 481, 484, 485, 486, 493, 501, 509, 510, 521, 522, 523, 
			 530, 531, 532, 537, 538, 539, 564, 568, 570, 571, 572, 581, 586, 594, 595 : return 1;
	}
	
	return 0;
}

IsVehicleWindowOpen( vehicleid )
{	
	for( new i; i < 4; i++ )
	{
		if( V::[vehicleid][vehicle_state_window][i] != 1 )
			return 0;
	}
	
	return 1;
}

SendLongNoRadius( playerid, color, message[] )
{
	new 
		len = strlen( message ),
		i_len = len / MAX_CHARS_PER_LINE;
		
	if( len % MAX_CHARS_PER_LINE )
		i_len++;
	
	new
		line[MAX_CHARS_PER_LINE + 5],
		_:index;
		
	while( index < i_len )
	{
		strmid( 
			line, 
			message, 
			( index * MAX_CHARS_PER_LINE ), 
			( index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE 
		);
		
		if( i_len > 1 )
		{
			if( !index )
				format( line, sizeof line, "%s ...", line );
			else if( index > 0 && ( index + 1 ) < i_len )
				format( line, sizeof line, "... %s ...", line );
			else 
				format( line, sizeof line, "... %s", line );
		}	

		SendClientMessage( playerid, color, line );
		
		index++;
	}
	
	return 1;
}

stock IsVehicleAircraft( vehicleid )
{
	switch( GetVehicleModel( vehicleid ) )
	{
	    case 417, 428, 447, 460, 469, 476, 487, 488, 497, 
		511 .. 513, 519, 520, 548, 553, 563, 577, 592, 593: return 1;
	}
	
	return 0;
}

stock Float: GetDistanceBeetwenPoints( Float: x1, Float: y1, Float: z1, Float: x2, Float: y2, Float: z2 )
{
	return VectorSize( x1 - x2, y1 - y2, z1 - z2 );
}

stock GetWithoutUnderscore( string[], dest[] )
{
	for( new i, j = strlen( string ); i < j; i++ )
	{
		switch( string[i] )
		{
			case '_' :
			{
				dest[i] = ' ';
			}
			
			default :
			{
				dest[i] = string[i];
			}
		}
	}
}

stock GetVehiclePlayerID( vehicleid ) 
{
	foreach(new i : Player) 
		if( IsPlayerInVehicle( i, vehicleid ) ) 
			return i;
	
	return INVALID_PLAYER_ID;
}

SendMessageToEmergency( playerid, const reason[], zone[] )
{
	clear_massive();
	
	new 
		bool: sended = false;
			
	foreach(new i : Player)
	{
		sended = false;
		
		switch( Player[ i ][uMember] )
		{
			case 8, 2 :
			{
				if( Player[ i ][uIsPlayerJob][0] )
				{
					sended = true;
				}
			}
			
			case 3 :
			{
				if( Player[ i ][uIsPlayerJob][1] )
				{
					sended = true;
				}
			}
			
			case 5 :
			{
				if( Player[ i ][uIsPlayerJob][2] )
				{
					sended = true;
				}
			}
		
		}
		
		if( sended )
		{
			SendClientMessage( i, 0xB00000FF, "===============CALL 911===============" );
			
			format:gb_string( "{B00000}Звонок от: %s", Player[ playerid ][uName]  );
			SendClientMessage( i, 0xB00000FF, gb_string);
			
			format:gb_string( "{B00000}Ситуация: %s", reason );
			SendClientMessage( i, 0xB00000FF, gb_string );
			
			format:gb_string( "{B00000}Исходощий звонок поступил из: %s", zone );
			SendClientMessage( i, 0xB00000FF, gb_string );
			
			SendClientMessage( i, 0xB00000FF, "======================================" );
		}
	}
}

stock GetCoordVehicleOut( vehicleid, &Float: x, &Float: y, &Float: z, test ) 
{
	new
		Float: distance,
		Float: temp,
		Float: angle;
		
	GetVehicleModelInfo( 
		GetVehicleModel( vehicleid ), 
		VEHICLE_MODEL_INFO_REARSEAT,
		distance,
		temp,
		temp
	);
	
	distance /= distance + float( test );
	
	
	GetVehiclePos( vehicleid, x, y, z );
	
	x += ( distance * floatsin( -angle + 90, degrees ) );
	y += ( distance * floatcos( -angle + 90, degrees ) ); 
	
    return 1;
}