

stock checkHouseInventory( playerid ) {
	if( !GetPlayerVirtualWorld( playerid ) ) return true;
	if( !Player[playerid][uHouse] ) return true;
	for( new h; h < sizeof HouseInfo; h++ ) {
		if( IsPlayerInRangeOfPoint( playerid, 50.0,
			HouseInfo[h][hExitPos][0], HouseInfo[h][hExitPos][1], HouseInfo[h][hExitPos][2] ) 
			&& GetPlayerVirtualWorld( playerid ) == HouseInfo[h][hID] ) {
            
			if( Player[playerid][uHouse] == HouseInfo[h][hID] ) {
				setData( playerid, "HInv:ID", h );
				houseInventoryUse( playerid, h );
				return false;
			}
		}	
	}
	return true;
}

stock houseInventoryUse( playerid, h ) {
	clear_massive();
	setData( playerid, "UseSlots", 0 );
	PlayerTextDrawSetPreviewModel( playerid, iconUse[1][playerid], 1272 );
	for(new i = 48; i != 56; i++) PlayerTextDrawSetSelectable( playerid, invSPlayer[playerid][i], 0 );
	for(new i; i != 18; i ++) {
		if( HouseInfo[h][hInvSlot][i] == 0) {
			PlayerTextDrawSetPreviewModel( playerid, slotUse[i][playerid], 19464 ),
			PlayerTextDrawSetPreviewRot( playerid, slotUse[i][playerid], 0.000000, 0.000000, 90.000000, 0.100000 ),
			PlayerTextDrawBackgroundColor( playerid, slotUse[i][playerid], 255 );
		}	
		else {
			PlayerTextDrawSetPreviewModel( playerid, slotUse[i][playerid], _itemsInfo[ HouseInfo[h][hInvSlot][i] ][invObject] ),
			PlayerTextDrawSetPreviewRot( playerid, slotUse[i][playerid], 
				_itemsInfo[ HouseInfo[h][hInvSlot][i] ][invP][0], _itemsInfo[ HouseInfo[h][hInvSlot][i] ][invP][1], 
				_itemsInfo[ HouseInfo[h][hInvSlot][i] ][invP][2], _itemsInfo[ HouseInfo[h][hInvSlot][i] ][invP][3] ),
			
			PlayerTextDrawBackgroundColor( playerid, slotUse[i][playerid], 0xd3d3d3FF );
		}
		PlayerTextDrawShow( playerid, slotUse[i][playerid] );
    }
	format( gb_string, sizeof gb_string, "открыл%s инвентарь дома", Player[playerid][uSex] == 1 ? (""):("a") );
    MeAction( playerid, gb_string, 1 );
    for(new i; i != 3; i ++) PlayerTextDrawShow( playerid, iconUse[i][playerid] );
	return true;
}

stock saveHouseItem( h ) {
	clear_massive();
	format( query, sizeof query, "UPDATE `gb_houses` SET `hInvSlots` = '");
    for( new i; i < 18; i++ ) {
		format( gb_string, sizeof gb_string, "%d|", HouseInfo[h][hInvSlot][i]),
		strcat( query, gb_string );
	}	
    format( gb_string, sizeof gb_string, "%d' WHERE `hID` = '%d'", HouseInfo[h][hInvSlot][17], HouseInfo[h][hID]),
	strcat( query, gb_string );
	mysql_query( mysql, query );

	format( query, sizeof query,"UPDATE `gb_houses` SET `hInvSlotsKol` = '");
    for(new i; i < 18; i ++) {
		format( gb_string, sizeof gb_string,"%d|", HouseInfo[h][hInvSlotKol][i] ),
		strcat( query, gb_string );
	}	
    format( gb_string, sizeof gb_string, "%d' WHERE hID = '%d'", HouseInfo[h][hInvSlotKol][17], HouseInfo[h][hID] ),
	strcat( query, gb_string );
	mysql_query( mysql, query );
	
	return true;
}

stock giveHouseInvTD( playerid ) {
	new h = getData( playerid, "HInv:ID" ),
		slot_use = getData( playerid, "selectSlotUse" ),
		slot_change = getData( playerid, "changeSlot" );
	if( HouseInfo[h][hInvSlot][slot_use] == 0 ) {

		if( slot_change != -1 && Inv[playerid][invSlot][slot_change] != 0 ) {
			switch( _itemsInfo[ Inv[playerid][invSlot][slot_change] ][invID] ) {
				case 65 .. 80,90,91,97,145: 
					return SendMes( playerid, C_GRAY, ""gbError"ƒанный предмет нельз€ выкидывать/передавать/складывать!" );							
			}
			PlayerTextDrawSetPreviewModel( playerid, invSPlayer[playerid][slot_change], 19464 );
			PlayerTextDrawSetPreviewRot( playerid, invSPlayer[playerid][slot_change], 0.000000, 0.000000, 90.000000, 0.100000);
			PlayerTextDrawBackgroundColor( playerid, invSPlayer[playerid][slot_change], 255 );
			PlayerTextDrawSetPreviewModel( playerid, slotUse[slot_use][playerid], 
				_itemsInfo[ Inv[playerid][invSlot][slot_change]][invObject] );
			PlayerTextDrawSetPreviewRot( playerid, slotUse[slot_use][playerid],
				_itemsInfo[ Inv[playerid][invSlot][slot_change] ][invP][0], 
				_itemsInfo[ Inv[playerid][invSlot][slot_change] ][invP][1], 
				_itemsInfo[ Inv[playerid][invSlot][slot_change] ][invP][2], 
				_itemsInfo[ Inv[playerid][invSlot][slot_change] ][invP][3] );
			PlayerTextDrawBackgroundColor( playerid, slotUse[slot_use][playerid], 0xd3d3d3FF );
			PlayerTextDrawShow( playerid, slotUse[slot_use][playerid]);
			PlayerTextDrawShow( playerid, invSPlayer[playerid][slot_change] );
				
			HouseInfo[h][hInvSlot][slot_use] = Inv[playerid][invSlot][slot_change];
			HouseInfo[h][hInvSlotKol][slot_use] = Inv[playerid][invSlotKol][slot_change];
			Inv[playerid][invSlot][slot_change] = 0;
            Inv[playerid][invSlotKol][slot_change] = 0;
            SaveInventory( playerid ), saveHouseItem( h );
			format( gb_string, sizeof gb_string, "положил%s что-то в дом", Player[playerid][uSex] == 1 ? (""):("а") );
            MeAction( playerid, gb_string, 1 );
			
			setData( playerid, "changeSlot", -1 ), setData( playerid, "selectSlot", -1 );
			setData( playerid, "selectSlotUse", -1 ), setData( playerid, "changeSlotUse", -1 );
		}
	}
	else {
		setData( playerid, "changeSlotUse", slot_use );
		PlayerTextDrawBackgroundColor( playerid, slotUse[ getData( playerid, "changeSlotUse" ) ][playerid], 0xFFFFFFFF);
        PlayerTextDrawShow( playerid, slotUse[ getData( playerid, "changeSlotUse" ) ][playerid]);
		if( getData( playerid,"changeSlot") != -1) return setData( playerid, "changeSlot", -1 );

	}
	return true;
}

stock moveHouseItemTD( playerid ) {
	new h = getData( playerid, "HInv:ID" ),
		slot_use = getData( playerid, "selectSlotUse" ),
		slot_change_use = getData( playerid, "changeSlotUse" );
		
	if( HouseInfo[h][hInvSlot][ slot_use ] != 0 && 
		HouseInfo[h][hInvSlot][ slot_use ] != HouseInfo[h][hInvSlot][ slot_change_use ] ||  
		HouseInfo[h][hInvSlot][ slot_use ] == HouseInfo[h][hInvSlot][ slot_change_use ] ) 
			return setData( playerid, "changeSlotUse", -1 );
	if( HouseInfo[h][hInvSlot][ slot_change_use ] != 0) {
		PlayerTextDrawSetPreviewModel( playerid, slotUse[slot_change_use][playerid], 19464 );
		PlayerTextDrawSetPreviewRot( playerid, slotUse[slot_change_use][playerid], 0.000000, 0.000000, 90.000000, 0.100000 );
		PlayerTextDrawBackgroundColor( playerid, slotUse[slot_change_use][playerid], 255 );
		PlayerTextDrawSetPreviewModel( playerid, slotUse[slot_use][playerid],
			_itemsInfo[ HouseInfo[h][hInvSlot][slot_change_use]][invObject]);
		PlayerTextDrawSetPreviewRot( playerid, slotUse[slot_use][playerid], 
			_itemsInfo[ HouseInfo[h][hInvSlot][slot_change_use] ][invP][0], 
			_itemsInfo[ HouseInfo[h][hInvSlot][slot_change_use] ][invP][1], 
			_itemsInfo[ HouseInfo[h][hInvSlot][slot_change_use] ][invP][2], 
			_itemsInfo[ HouseInfo[h][hInvSlot][slot_change_use] ][invP][3] );
		PlayerTextDrawBackgroundColor( playerid, slotUse[slot_use][playerid], 0xd3d3d3FF );
		PlayerTextDrawShow( playerid, slotUse[slot_use][playerid] );
		PlayerTextDrawShow( playerid, slotUse[slot_change_use][playerid] );
	}	
	if(HouseInfo[h][hInvSlot][slot_use] == 0) {
		HouseInfo[h][hInvSlot][slot_use] = HouseInfo[h][hInvSlot][slot_change_use];
		HouseInfo[h][hInvSlotKol][slot_use] = HouseInfo[h][hInvSlotKol][slot_change_use];
		HouseInfo[h][hInvSlot][slot_change_use] = 0;
		HouseInfo[h][hInvSlotKol][slot_change_use] = 0;
		format( gb_string, sizeof gb_string, "переложил%s что-то в дом", Player[playerid][uSex] == 1 ? (""):("а") );
        MeAction( playerid, gb_string, 1 );
		saveHouseItem( h );
	}
    setData( playerid, "selectSlotUse", -1 );
	setData( playerid, "changeSlotUse", -1 );
	return true;
}


stock takeHouseItemTD( playerid ) {
	new h = getData( playerid, "HInv:ID" ),
		slot_select = getData( playerid, "selectSlot" ),
		slot_change_use = getData( playerid, "changeSlotUse" );	
	if( HouseInfo[h][hInvSlot][slot_change_use] != 0) {
		
		PlayerTextDrawSetPreviewModel(playerid, slotUse[slot_change_use][playerid], 19464 );
		PlayerTextDrawSetPreviewRot(playerid, slotUse[slot_change_use][playerid], 0.000000, 0.000000, 90.000000, 0.100000 );
		PlayerTextDrawBackgroundColor(playerid, slotUse[slot_change_use][playerid], 255 );
		PlayerTextDrawSetPreviewModel(playerid,invSPlayer[playerid][slot_select], 
			_itemsInfo[ HouseInfo[h][hInvSlot][slot_change_use]][invObject]);
		PlayerTextDrawSetPreviewRot(playerid, invSPlayer[playerid][slot_select], 
			_itemsInfo[ HouseInfo[h][hInvSlot][slot_change_use] ][invP][0], 
			_itemsInfo[ HouseInfo[h][hInvSlot][slot_change_use] ][invP][1], 
			_itemsInfo[ HouseInfo[h][hInvSlot][slot_change_use] ][invP][2],
			_itemsInfo[ HouseInfo[h][hInvSlot][slot_change_use] ][invP][3]);
		PlayerTextDrawBackgroundColor(playerid,invSPlayer[playerid][slot_select], 0xd3d3d3FF );
		PlayerTextDrawShow(playerid,invSPlayer[playerid][slot_select]);
		PlayerTextDrawShow(playerid,slotUse[slot_change_use][playerid]);
		Inv[playerid][invSlot][slot_select] =  HouseInfo[h][hInvSlot][slot_change_use];
		Inv[playerid][invSlotKol][slot_select] =  HouseInfo[h][hInvSlotKol][slot_change_use];
		HouseInfo[h][hInvSlot][slot_change_use] = 0;
		HouseInfo[h][hInvSlotKol][slot_change_use] = 0;
		 
		format( gb_string, sizeof gb_string, "вз€л%s что-то в дом", Player[playerid][uSex] == 1 ? (""):("а") );
        MeAction( playerid, gb_string, 1 );
		saveHouseItem( h );
	}	
	return true;
}