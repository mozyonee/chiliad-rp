#include <YSI\y_hooks>

hook OnGameModeInit() {
	mysql_tquery( mysql, "SELECT * FROM `gb_houses` ORDER BY `hID`", "loadHouse", "" );
}

stock inHouseMessage( h, color, text[] ) {
	foreach( new i : Player) {
		if( IsPlayerInRangeOfPoint( i, 20.0, HouseInfo[h][hExitPos][0], HouseInfo[h][hExitPos][1], HouseInfo[h][hExitPos][2] )
			&& HouseInfo[h][hExitInt] == GetPlayerInterior( i ) && HouseInfo[h][hID] == GetPlayerVirtualWorld( i ) ) {
			
			SendClientMessage( i, color, text );	
		}
	}
	return true;
}

stock houseUpdate( house, params[], values ) {
	clear_massive();
	format( query, sizeof query, "UPDATE `gb_houses` SET `%s` = '%d' WHERE `hID` = '%d'", 
		params, values, house );
	mysql_query( mysql, query );	
	return true;
}

stock houseUpdateFloat( house, params[], Float:values ) {
	clear_massive();
	format( query, sizeof query, "UPDATE `gb_houses` SET `%s` = '%f' WHERE `hID` = '%d'", 
		params, values, house );
	mysql_query( mysql, query );	
	return true;
}

stock houseUpdateStr( house, params[], values[] ) {
	clear_massive();
	format( query, sizeof query, "UPDATE `gb_houses` SET `%s` = '%s' WHERE `hID` = '%d'", 
		params, values, house );
	mysql_query( mysql, query );	
	return true;
}
/*
function ath() {
	clear_massive();
	new rows, fields;
    cache_get_data( rows, fields );
	
	new Float:pos[6], aOwner[32], aPrice, aSafe, aInv[256], aInvSlot[256],
		aIntUse, aApartmentRent, aSellDate, aLock, aInt, aHostel;
	if( rows ) {
		for( new i; i < rows; i++ ) {
			pos[0] = cache_get_field_content_float( i, "aEnterPosX", mysql );
			pos[1] = cache_get_field_content_float( i, "aEnterPosY", mysql );
			pos[2] = cache_get_field_content_float( i, "aEnterPosZ", mysql );
			pos[3] = cache_get_field_content_float( i, "aExitPosX", mysql );
			pos[4] = cache_get_field_content_float( i, "aExitPosY", mysql );
			pos[5] = cache_get_field_content_float( i, "aExitPosZ", mysql );
			
			cache_get_field_content( i, "aInvSlots", aInv, mysql, 256 );
			cache_get_field_content( i, "aInvSlotsKol", aInvSlot, mysql, 256 );
			cache_get_field_content( i, "aOwner", aOwner, mysql, 32 );
			
			aPrice = cache_get_field_content_int( i, "aPrice", mysql );
			aSafe = cache_get_field_content_int( i, "aSafe", mysql );
			aIntUse = cache_get_field_content_int( i, "aIntUse", mysql );
			aApartmentRent = cache_get_field_content_int( i, "aApartmentRent", mysql );
			aSellDate = cache_get_field_content_int( i, "aSellDate", mysql );
			aLock = cache_get_field_content_int( i, "aLock", mysql );
//			aInt = cache_get_field_content_int( i, "aInt", mysql );
			aHostel = cache_get_field_content_int( i, "aHostel", mysql );
			
			format( vb_string, sizeof vb_string, "INSERT INTO `gb_houses` ( \
				`hPosX`, `hPosY`, `hPosZ`, `hExPosX`, `hExPosY`, `hExPosZ`, `hInt`, `hExWorld`, \
				`hPrice`, `hMoney`, `hLock`, `hInvSlots`, `hInvSlotsKol`,\
				`hUseInt`, `SellDate`, `hOwner`, `hHouseRent`, `hExInt` ) VALUES ( \
				'%f', '%f', '%f', '%f', '%f', '%f', '%d', '%d', \
				'%d', '%d', '%d', '%s', '%s', \
				'%d', '%d', '%s', '%d', '%d' )",
				pos[0], pos[1], pos[2], pos[3], pos[4], pos[5], 1, aHostel,
				aPrice, aSafe, aLock, aInv, aInvSlot,
				aIntUse, aSellDate, aOwner, aApartmentRent, 1 );
				
			mysql_tquery( mysql, vb_string, "inap", "" );
		}
	}
	return true;
}

function inap() {
	printf( "Запрос отправлен" );
	return true;
}*/

stock findHouse( playerid ) {
	if( !Player[playerid][uHouse] ) return SendMes( playerid, C_GRAY, ""gbInfo" У вас нет дома!" );
	for( new h; h < MAX_HOUSE; h++ ) {
		if( HouseInfo[h][hID] == Player[playerid][uHouse] ) {
			SendMes( playerid, C_GRAY, ""gbInfo"Ваш дом был отмечен на карте!" );
			SetPlayerCheckpoint( playerid, 
				HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2], 3.0 );
			break;
		}
	}
	return true;
}

/*CMD:call_house( playerid, params[] ) return callHouse();
CMD:house_tax( playerid, params[] ) {
	for( new h; h < MAX_HOUSE; h++ ) {
		if( HouseInfo[h][hID] == Player[playerid][uHouse] ) {
			HouseInfo[h][hHouseTax] = 0;
		}
	}
	return true;
}*/



function callHouse() 
{
	for( new h; h < MAX_HOUSE; h++ ) 
	{
		if( !HouseInfo[h][hID] ) continue;
		if( gettime() > HouseInfo[h][hHouseTaxTime] + ( HouseInfo[h][hHouseTax] * 86400 ) && HouseInfo[h][hOwned] ) 
		{
			new gcash, price;
			format( query, sizeof query, "UPDATE `gb_users` SET `uHouse` = '0' WHERE `uHouse` = '%d'",
				HouseInfo[h][hID] );
			mysql_tquery( mysql, query, "", "" );
				
			foreach( new i: Player) 
			{
				if( Player[i][uHouse] == HouseInfo[h][hID] 
					&& !strcmp( HouseInfo[h][hOwner], Player[i][uName], true ) ) {
						
					switch( Player[i][uPremium] ) 
					{
						case 1 : price = floatround( HouseInfo[h][hPrice] * 0.6 );
						case 2 : price = floatround( HouseInfo[h][hPrice] * 0.7 );
						case 3 : price = floatround( HouseInfo[h][hPrice] * 0.8 );
						case 4 : price = floatround( HouseInfo[h][hPrice] * 0.95 );
						default: price = floatround( HouseInfo[h][hPrice] * 0.5 );
					}	
					SendMes( i, C_GRAY, ""gbInfo"Ваш дом был продан за неуплату государству, сумма $%d перечислена на Ваш счёт.", 
						price 
					);
						
					if( HouseInfo[h][hMoney] != 0 )
					{
						SendMes( i, C_WHITE, ""gbInfo"Сумма $%d в Вашем сейфе была переведена Вам на банковский счет.",
							HouseInfo[h][hMoney]
						);
					
						Player[i][uBank] += HouseInfo[h][hMoney];// ворачиваем сумму из сейфа
					}
					
					Player[i][uBank] += price; // 70 процентов
					Player[i][uHouse] = 0;
					userUpdate( i, "uHouse", Player[i][uHouse] );
					userUpdate( i, "uBank", Player[i][uBank] );
					gcash++;
				}
				
				else if( Player[i][uHouse] == HouseInfo[h][hID] ) 
				{
					Player[i][uHouse] = 0;
					userUpdate( i, "uHouse", Player[i][uHouse] );
					SendMes( i, C_GRAY, ""gbInfo"Дом в котором Вы проживали, был продан за неуплату. Вы выселены из него." );
				}
			}
			
			if( !gcash ) 
			{
				format( query, sizeof query, "SELECT * FROM `gb_users` WHERE `uID` = '%d' LIMIT 1", HouseInfo[h][hOwned] );
				mysql_tquery( mysql, query, "updateUserBank", "ddd", HouseInfo[h][hOwned], HouseInfo[h][hPrice], HouseInfo[h][hMoney] );
			}
			
			printf( "Сняло дом за неуплату [%d]", HouseInfo[h][hID] );
			format( HouseInfo[h][hOwner], 32, "None" ); 
			
			for( new i; i < 18; i++ )
			{
				HouseInfo[h][hInvSlot][i] = 0;
				HouseInfo[h][hInvSlotKol][i] = 0;
			}
			
			saveHouseItem( h );
			
			houseUpdateStr( HouseInfo[h][hID], "hOwner", HouseInfo[h][hOwner] );
			HouseInfo[h][hOwned] = 0;
			HouseInfo[h][hMoney] = 0;
			houseUpdate( HouseInfo[h][hID], "hMoney", 0 );
			houseUpdate( HouseInfo[h][hID], "hOwned", HouseInfo[h][hOwned] );
			
			DestroyDynamicPickup( HouseInfo[h][hPickup] ); 
			DestroyDynamicMapIcon( HouseInfo[h][hIcon] );
			
			HouseInfo[h][hPickup] = CreateDynamicPickup( 1273, 23, 
				HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2], -1 );
			HouseInfo[h][hIcon] = CreateDynamicMapIcon( 	
				HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2],
				31, 0xFFFFFFFF, -1, -1, -1, 15.0 );
		}
	}
	return true;
}

function updateUserBank( id, price, money ) {
	new rows, fields;
    cache_get_data( rows, fields );
	if( rows ) {
		new premium, bank;
		premium = cache_get_field_content_int( 0, "uPremium", mysql );
		bank = cache_get_field_content_int( 0, "uBank", mysql );
		switch( premium ) {
			case 1: price = floatround( price * 0.7 );
			case 2: price = floatround( price * 0.8 ); 
			case 3: price = floatround( price * 0.9 );
			case 4: price = floatround( price * 0.95 );
			default: price = floatround( price * 0.6 );
		}
		
		format( query, sizeof query, "UPDATE `gb_users` SET `uBank` = '%d' WHERE `uID` = '%d'", bank + price + money, id );
		mysql_query( mysql, query );
		printf( "[HOUSE] Player house has been selled %d. Give money %d", id, bank + price + money);
	}
	
	return 1;
}

function loadHouse() {
	new start_house = GetTickCount(); 
	clear_massive();
	new rows, fields;
    cache_get_data( rows, fields );
	if( rows ) {
		for( new h; h < rows; h++ ) {
			if( !HouseInfo[h][hID] ) {
				HouseInfo[h][hID] = cache_get_field_content_int( h, "hID", mysql );
				cache_get_field_content( h, "hOwner", HouseInfo[h][hOwner], mysql, 32 );
				HouseInfo[h][hOwned] = cache_get_field_content_int( h, "hOwned", mysql );
				
				HouseInfo[h][hEnterPos][0] = cache_get_field_content_float( h, "hPosX", mysql );
				HouseInfo[h][hEnterPos][1] = cache_get_field_content_float( h, "hPosY", mysql );
				HouseInfo[h][hEnterPos][2] = cache_get_field_content_float( h, "hPosZ", mysql );
				HouseInfo[h][hEnterPos][3] = cache_get_field_content_float( h, "hPosA", mysql );
				HouseInfo[h][hEnterInt] = cache_get_field_content_int( h, "hExInt", mysql );
				HouseInfo[h][hEnterWorld] = cache_get_field_content_int( h, "hExWorld", mysql );
				
				HouseInfo[h][hExitPos][0] = cache_get_field_content_float( h, "hExPosX", mysql );
				HouseInfo[h][hExitPos][1] = cache_get_field_content_float( h, "hExPosY", mysql );
				HouseInfo[h][hExitPos][2] = cache_get_field_content_float( h, "hExPosZ", mysql );
				HouseInfo[h][hExitPos][3] = cache_get_field_content_float( h, "hExPosA", mysql );
				HouseInfo[h][hExitInt] = cache_get_field_content_int( h, "hInt", mysql );
				
				HouseInfo[h][hPrice] = cache_get_field_content_int( h, "hPrice", mysql );
				HouseInfo[h][hMoney] = cache_get_field_content_int( h, "hMoney", mysql );
				HouseInfo[h][hHouseTaxTime] = cache_get_field_content_int( h, "hHouseTaxTime", mysql );
				HouseInfo[h][hHouseTax] = cache_get_field_content_int( h, "hHouseTax", mysql );
				
				HouseInfo[h][hLock] = cache_get_field_content_int( h, "hLock", mysql );
				HouseInfo[h][hInterior] = cache_get_field_content_int( h, "hInterior", mysql );  
				
				HouseInfo[h][hWall] = cache_get_field_content_int( h, "hWall", mysql );  
				HouseInfo[h][hFloor] = cache_get_field_content_int( h, "hFloor", mysql );  
				HouseInfo[h][hDoor] = cache_get_field_content_int( h, "hDoor", mysql );  
				HouseInfo[h][hRoof] = cache_get_field_content_int( h, "hRoof", mysql );  
				
				cache_get_field_content( h, "hInvSlots", gb_string, mysql), sscanf( gb_string, "p<|>a<d>[18]", HouseInfo[h][hInvSlot] );
				cache_get_field_content( h, "hInvSlotsKol", gb_string, mysql), sscanf( gb_string, "p<|>a<d>[18]", HouseInfo[h][hInvSlotKol] );
				
				/*if( !strcmp( HouseInfo[h][hOwner], "None", true ) && !HouseInfo[h][hOwned] ) {
					format( query, sizeof query, "SELECT `uID` WHERE `uName` = '%s'", HouseInfo[h][hOwner] );
					mysql_tquery( mysql, query, "setOwned", "i", h );
				}*/
				
				/*if( HouseInfo[h][hOwned] )
				{
					mysql_format:query( "SELECT `uID` FROM gb_users WHERE uID = %d", HouseInfo[h][hOwned] );
					mysql_tquery( mysql, query, "CheckDisappearHouse", "i", h );
				}*/
				
				if( !HouseInfo[h][hOwned] ) {
					HouseInfo[h][hPickup] = CreateDynamicPickup( 1273, 23, 
						HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2], HouseInfo[h][hEnterWorld] );
					HouseInfo[h][hIcon] = CreateDynamicMapIcon( 	
						HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2],
						31, 0xFFFFFFFF, -1, -1, -1, 15.0 );
				}
				else {
					HouseInfo[h][hPickup] = CreateDynamicPickup( 1272, 23, 
						HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2], HouseInfo[h][hEnterWorld] );
					HouseInfo[h][hIcon] = CreateDynamicMapIcon( 	
						HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2],
						32, 0xFFFFFFFF, -1, -1, -1, 15.0 );	
				}
				if( HouseInfo[h][hEnterWorld] == 0 ) {
					format( gb_string, sizeof vb_string, "[ Дом #%d ]\n\n"cBLUE"ALT", HouseInfo[h][hID] );
					HouseInfo[h][hText][0] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFFFF, 
						HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2],
						5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, -1 );	
				}	
				else {
					format( gb_string, sizeof vb_string, "[ Квартира #%d ]\n\n"cBLUE"ALT", HouseInfo[h][hID] );
					HouseInfo[h][hText][0] = CreateDynamic3DTextLabel( gb_string, 0xFFFFFFFF, 
						HouseInfo[h][hEnterPos][0], HouseInfo[h][hEnterPos][1], HouseInfo[h][hEnterPos][2],
						5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, -1, HouseInfo[h][hEnterWorld] );
					DestroyDynamicMapIcon( HouseInfo[h][hIcon] );
				}	
				
				
				HouseInfo[h][hText][1] = CreateDynamic3DTextLabel( "[ Выход ]\n\n"cBLUE"ALT", 0xFFFFFFFF, 
					HouseInfo[h][hExitPos][0], HouseInfo[h][hExitPos][1], HouseInfo[h][hExitPos][2],
					5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, -1 );	
					
				format( query, sizeof query,"SELECT * FROM `gb_furniture` WHERE `hID` = '%d'", HouseInfo[h][hID]);
				mysql_tquery( mysql, query, "LoadFurniture", "d", h );	
				
				loadHouseInterior( h );
				if( !HouseInfo[h][hID] ) printf( "House ID: %d", HouseInfo[h][hID] );
			}
		}
	}
	printf("[SYSTEM] Дома загруженны - [%d] [time %d ms]", rows, GetTickCount() - start_house );
	return true;
}

function CheckDisappearHouse( h )
{
	clear_massive();
	
	new 
		rows = cache_get_row_count();
		
	if( !rows )
		return 1;
		
	for( new i; i < rows; i++ )
	{
		mysql_format:query( "UPDATE gb_users SET uHouse = %d WHERE uID = %d",
			HouseInfo[h][hID],
			cache_get_field_content_int( i, "uID", mysql )
		);
		
		mysql_tquery( mysql, query, "", "" );
	}
	
	return 1;
}

function setOwned( h ) {
	clear_massive();
    new rows, fields;
    cache_get_data( rows, fields );
	if( rows ) {
		for( new i; i < rows; i++ ) {
			HouseInfo[h][hOwned] = cache_get_field_content_int( i, "uID", mysql );
			houseUpdate( HouseInfo[h][hID], "hOwned", HouseInfo[h][hOwned] );
			break;
		}
	}
	return true;
}