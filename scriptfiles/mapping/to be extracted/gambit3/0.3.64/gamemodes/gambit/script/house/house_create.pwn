
CMD:addhouse( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 7 ) return SendMes( playerid, -1, ""gbError"У вас нет доступа к данной команде!" );
	if( sscanf( params, "dd", params[0], params[1] ) ) return SendMes( playerid, -1, ""gbInfo"Введите: /addhouse [интерьер][цена]" );
	if( params[0] < 0 && params[0] > sizeof( house_int ) - 1 ) return SendMes( playerid, -1, ""gbInfo"Недопустимное значение интерьера" );
	if( params[1] < 1000 && params[1] > 10000000 ) return SendMes( playerid, -1, ""gbInfo"Недопустимое значение цены!");
	
	for( new h; h < sizeof HouseInfo; h++ ) {
		if( !HouseInfo[h][hID] ) {
			new Float:pos[4]; 
			GetPlayerPos( playerid, pos[0], pos[1], pos[2] ), GetPlayerFacingAngle( playerid, pos[3] );
			format( HouseInfo[h][hOwner], 32, "None" );
			
			for( new i; i < 4; i++ ) HouseInfo[h][hEnterPos][i] = pos[i], HouseInfo[h][hExitPos][i] = house_int[ params[0] ][ht_p][i];
			
			HouseInfo[h][hEnterInt] = GetPlayerInterior( playerid );
			HouseInfo[h][hEnterWorld] = GetPlayerVirtualWorld( playerid );
			HouseInfo[h][hExitInt] = house_int[ params[0] ][ht_int];
			HouseInfo[h][hPrice] = params[1];
			HouseInfo[h][hInterior] = params[0] + 1;
			
			format( query, sizeof query, "INSERT INTO `gb_houses` \
				( `hOwner`, `hPosX`, `hPosY`, `hPosZ`, `hPosA`, `hExInt`, `hExWorld`, \
				`hExPosX`, `hExPosY`, `hExPosZ`, `hExPosA`, `hInt`, `hPrice`, `hInterior` ) VALUES \
				( '%s', '%f', '%f', '%f', '%f', '%d', '%d', '%f', '%f', '%f', '%f', '%d', '%d', '%d' )",
				HouseInfo[h][hOwner], HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2],
				HouseInfo[h][hEnterPos][3], HouseInfo[h][hEnterInt], HouseInfo[h][hEnterWorld],
				HouseInfo[h][hExitPos][0], HouseInfo[h][hExitPos][1], HouseInfo[h][hExitPos][2],
				HouseInfo[h][hExitPos][3], HouseInfo[h][hExitInt], HouseInfo[h][hPrice],
				HouseInfo[h][hInterior] );
			mysql_tquery( mysql, query, "insertHouseCreate", "dd", playerid, h );
			break;	
		}
	}
	return true;
}

publics: insertHouseCreate( playerid, h ) {
	HouseInfo[h][hID] = cache_insert_id();
	HouseInfo[h][hPickup] = CreateDynamicPickup( 1273, 23, 
	
	HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2], HouseInfo[h][hEnterWorld] );
	if( !HouseInfo[h][hEnterWorld] ) {
		HouseInfo[h][hIcon] = CreateDynamicMapIcon( 	
			HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2], 31, 0xFFFFFFFF, -1, -1, -1, 15.0 );
		format( gb_string, sizeof vb_string, "[ Дом #%d ]\n\n"cBLUE"ALT", HouseInfo[h][hID] );
	}
	else format( gb_string, sizeof vb_string, "[ Квартира #%d ]\n\n"cBLUE"ALT", HouseInfo[h][hID] );
	HouseInfo[h][hText][0] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFFFF, 
		HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2],
		5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, HouseInfo[h][hEnterWorld] );	
	loadHouseInterior( h );	
	SendMes( playerid, -1, ""gbAccess"Вы успешно создали дом с ID %d", HouseInfo[h][hID] );
	return true;
}