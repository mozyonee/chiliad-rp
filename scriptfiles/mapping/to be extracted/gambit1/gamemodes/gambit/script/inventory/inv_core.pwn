#include <YSI\y_hooks>

new 
	g_inv_attach	[MAX_PLAYERS];

hook OnPlayerSpawn( playerid )
{
	new 
		skinid = GetPlayerSkin( playerid );
			
	if( Inv[playerid][invSlot][48] != 0 ) 
	{		
		switch( _itemsInfo[Inv[playerid][invSlot][48]][invObject] ) 
		{
			case 18926 .. 18935: 
			{
				g_inv_attach[playerid] = SetTimerEx( "AttachItem", 500, 0, "iiiiffffff", 
					playerid, 
					0,
					_itemsInfo[Inv[playerid][invSlot][48]][invObject], 
					2, 
					SkinCaps[skinid][0], 
					SkinCaps[skinid][1], 
					SkinCaps[skinid][2], 
					SkinCaps[skinid][3],
					SkinCaps[skinid][4], 
					SkinCaps[skinid][5]
				);
        	}
			
			case 18944 .. 18951: 
			{
				g_inv_attach[playerid] = SetTimerEx( "AttachItem", 500, 0, "iiiiffffff", 
					playerid, 
					0, 
					_itemsInfo[Inv[playerid][invSlot][48]][invObject], 
					2, 
					SkinHead[skinid][0], 
					SkinHead[skinid][1], 
					SkinHead[skinid][2], 
					SkinHead[skinid][3],
					SkinHead[skinid][4], 
					SkinHead[skinid][5]
				);
			}
			
			case 19528: 
			{
				g_inv_attach[playerid] = SetTimerEx( "AttachItem", 500, 0, "iiiiffffff", 
					playerid, 
					0, 
					_itemsInfo[Inv[playerid][invSlot][48]][invObject], 
					2,
					SkinHead[skinid][0], 
					SkinHead[skinid][1], 
					SkinHead[skinid][2],
					SkinHead[skinid][3],
					SkinHead[skinid][4], 
					SkinHead[skinid][5]
				);
			}
		}
	}
	
	if( Inv[playerid][invSlot][49] != 0 ) 
	{
		g_inv_attach[playerid] = SetTimerEx( "AttachItem", 500, 0, "iiiiffffff", 
			playerid,
			1,
			_itemsInfo[Inv[playerid][invSlot][49]][invObject],
			2,
			_skinGlasses[skinid][0], 
			_skinGlasses[skinid][1], 
			_skinGlasses[skinid][2], 
			_skinGlasses[skinid][3], 
			_skinGlasses[skinid][4], 
			_skinGlasses[skinid][5]
		);
	}
	
	if( Inv[playerid][invSlot][53] != 0 ) 
	{
		switch( _itemsInfo[ Inv[playerid][invSlot][53] ][invObject] ) 
		{
	    	case 18911 .. 18920: 
			{
				g_inv_attach[playerid] = SetTimerEx( "AttachItemWithSize", 500, 0, "iiiifffffffff", 
					playerid, 
					2, 
					_itemsInfo[Inv[playerid][invSlot][53]][invObject], 
					2, 
					BandSkin[GetPlayerSkin(playerid)][0], 
					BandSkin[GetPlayerSkin(playerid)][1], 
					BandSkin[GetPlayerSkin(playerid)][2], 
					BandSkin[GetPlayerSkin(playerid)][3],
					BandSkin[GetPlayerSkin(playerid)][4], 
					BandSkin[GetPlayerSkin(playerid)][5], 
					1.000000, 
					1.000000, 
					1.000000
				);
			}
			case 19421 .. 19424:
			{
				g_inv_attach[playerid] = SetTimerEx( "AttachItemWithSize", 500, 0, "iiiifffffffff",
					playerid, 
					2, 
					_itemsInfo[Inv[playerid][invSlot][53]][invObject], 
					1, 
					Beats[GetPlayerSkin(playerid)][0], 
					Beats[GetPlayerSkin(playerid)][1], 
					Beats[GetPlayerSkin(playerid)][2], 
					Beats[GetPlayerSkin(playerid)][3],
					Beats[GetPlayerSkin(playerid)][4], 
					Beats[GetPlayerSkin(playerid)][5], 
					1.000000, 
					1.000000, 
					1.000000
				);
			}
			case 18637:
			{
				g_inv_attach[playerid] = SetTimerEx( "AttachItem", 500, 0, "iiiiffffff",
					playerid, 
					2, 
					_itemsInfo[Inv[playerid][invSlot][53]][invObject], 
					14, 
					0.0, 
					0.0, 
					0.0, 
					0.0, 
					180.0, 
					180.0
				);
			}
		}
	}
	
	if( Inv[playerid][invSlot][54] != 0 ) 
	{
		setPlayerArmour( playerid, Inv[playerid][invSlotKol][54] );
	}
	
	GiveInventoryWeapon( playerid );
	
	return 1;
}

function Float: GetPlayerMass( playerid )
{
	new
		Float: mass,
		id;
		
	for( new i; i < MAX_SLOTS; i++ ) 
	{
		id = Inv[playerid][invSlot][i];
		mass += _itemsInfo[id][invKg];
	}
	
	return mass;
}

GivePlayerItem( playerid, item, amount )
{
    new 
		Float: mass = GetPlayerMass( playerid );
		
	if( mass + _itemsInfo[item][invKg] > MAX_PLAYER_KG + Player[playerid][uJobDouble][6] ) 
		return SendClientMessage( playerid, C_WHITE,""gbError"Вы уже достаточно несёте с собой предметов." );
		
	for( new i; i != 48; i++ ) 
	{
		if( Inv[playerid][invSlot][i] )
			continue;
			
		Inv[ playerid ][ invSlot ][ i ] = item;
		Inv[ playerid ][ invSlotKol ][ i ] = amount;
		
		if(GetPVarInt(playerid,"PlayerMenuShow") == 4) 
		{
			PlayerTextDrawSetPreviewModel( playerid,
				invSPlayer[playerid][i], 
				_itemsInfo[Inv[playerid][invSlot][i]][invObject]
			);
			
			PlayerTextDrawSetPreviewRot( playerid, invSPlayer[playerid][i], 
				_itemsInfo[Inv[playerid][invSlot][i]][invP][0], 
				_itemsInfo[Inv[playerid][invSlot][i]][invP][1], 
				_itemsInfo[Inv[playerid][invSlot][i]][invP][2], 
				_itemsInfo[Inv[playerid][invSlot][i]][invP][3] 
			);
			
			PlayerTextDrawBackgroundColor( playerid, invSPlayer[playerid][i], 0xd3d3d3FF );
			format:gb_string( "~y~%s~n~~w~%.1f/25.0kg", Player[playerid][uName], mass );
			PlayerTextDrawSetString( playerid,invSPlayer[playerid][58], gb_string );
			PlayerTextDrawShow( playerid,invSPlayer[playerid][i] );
		}
		
		SaveInventory( playerid );
	
		return 1;
	}
	
	SendClientMessage( playerid, C_WHITE,""gbError"У Вас недостаточно места для этого предмета." );
	
	return 0;
}

function AttachItem( playerid, i, model, bone, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz ) 
{
	if( IsPlayerAttachedObjectSlotUsed( playerid, i ) )
	{
		RemovePlayerAttachedObject( playerid, i );  
	}
	
	SetPlayerAttachedObject( playerid, i, model, bone, x, y, z, rx, ry, rz );
	
	KillTimer( g_inv_attach[playerid] );
	
	return 1;
}

function AttachItemWithSize( playerid, i, model, bone, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz, Float:sx, Float:sy, Float:sz ) 
{
	if( IsPlayerAttachedObjectSlotUsed( playerid, i ) )
	{
		RemovePlayerAttachedObject( playerid, i );  
	}
	
	SetPlayerAttachedObject( playerid, i, model, bone, x, y, z, rx, ry, rz, sx, sy, sz );
	
	KillTimer( g_inv_attach[playerid] );
	
	return 1;
}


SaveCarInventory( carid )
{
	new
		i = 0;
		
	vb_string[0] = EOS;
											
	strcat( vb_string, "UPDATE gb_cars SET cInvSlots = '" );
	
	for( i = 0; i != 17; i++ )
	{
		format:gb_string( "%d|",Car::[carid][cInvSlot][i] );
		strcat( vb_string, gb_string );
	}
	
	format:gb_string( "%d' WHERE cID = %d LIMIT 1",Car::[carid][cInvSlot][17],Car::[carid][cID] );
	strcat( vb_string, gb_string );
	
	mysql_tquery( mysql, vb_string, "", "" );

	// Count
	vb_string[0] = EOS;
	
	strcat( vb_string, "UPDATE gb_cars SET cInvSlotsKol = '");
	for( i = 0; i != 17; i++ ) 
	{
		format:gb_string( "%d|",Car::[carid][cInvSlotKol][i] );
		strcat( vb_string, gb_string );
	}
	
	format:gb_string( "%d' WHERE cID = %d LIMIT 1",Car::[carid][cInvSlotKol][17],Car::[carid][cID]);
	strcat( vb_string, gb_string );
	
	mysql_tquery( mysql, vb_string, "", "" );
	
	printf( "[INVENTORY] Saved for car %d.", Car::[carid][cID] );
}

SaveInventory( playerid ) 
{
	new 
		i = 0;
		
	vb_string[0] = EOS;
	strcat( vb_string, "UPDATE gb_users SET uInvSlots = '" );
	
	for( i = 0; i < 55; i++ )
	{
		format:gb_string( "%d|", Inv[playerid][invSlot][i] );
		strcat( vb_string, gb_string );
	}
	
	format:gb_string( "%d' WHERE uID = %d LIMIT 1",
		Inv[playerid][invSlot][55],
		Player[playerid][uID]
	);
	
	strcat( vb_string, gb_string );
	
	mysql_tquery( mysql, vb_string, "", "" );
	
	// Count
	
	vb_string[0] = EOS;
	strcat( vb_string, "UPDATE gb_users SET uInvSlotsKol = '" );
	
	for( i = 0; i < 55; i++ )
	{
		format:gb_string( "%d|", Inv[playerid][invSlotKol][i] );
		strcat( vb_string, gb_string );
	}
	
	format:gb_string( "%d' WHERE uID = %d LIMIT 1",
		Inv[playerid][invSlotKol][55],
		Player[playerid][uID]
	);
	
	strcat( vb_string, gb_string );
	
	mysql_tquery( mysql, vb_string, "", "" );
	
	printf( "[INVENTORY] Saved for player %s.", Player[playerid][uName] );
}

RemoveStateItems( playerid )
{
	new 
		bool: slot[ 2 ] = { false, ... };
		
	weapon_exception{ playerid } = 2;
	
	switch( Inv[ playerid ][invSlot][ 50 ] )
	{
		case 426, 429, 340, 523, 524 : 
		{
			RemovePlayerInventoryWeapon( playerid, true, false );
			slot[ 0 ] = true;
		}
	}
	
	switch( Inv[ playerid ][invSlot][ 51 ] )
	{
		case 458, 428, 430, 523, 524 :
		{
			RemovePlayerInventoryWeapon( playerid, false, true );
			slot[ 1 ] = true;
		}
	}
	
	if( slot[ 0 ] && slot[ 1 ] )
	{
		RemovePlayerInventoryWeapon( playerid, true, true );
	}
	
	for( new i; i < MAX_SLOTS; i++ )
	{
		switch( Inv[ playerid ][invSlot][ i ] )
		{
			case 426 .. 441, 451, 458, 340, 523, 524 :
			{
				Inv[ playerid ][invSlot][ i ] = 
				Inv[ playerid ][invSlotKol][ i ] = 0;
			}
		}
	}
	
	if( Inv[ playerid ][invSlot][ 54 ] == 431 )
	{
		setPlayerArmour( playerid, 0 );
	}
	
	return 1;
}

HidePlayerInventoryWeapon( playerid )
{
	new 
		temp[ 2 ],
		bool: done = false;
	
	if( Inv[ playerid ][ invSlot ][ 50 ] )
	{
		temp[ 0 ] = Inv[ playerid ][ invSlot ][ 50 ];
		temp[ 1 ] = Inv[ playerid ][ invSlotKol ][ 50 ];
		
		Inv[ playerid ][ invSlot ][ 50 ] = 
		Inv[ playerid ][ invSlotKol ][ 50 ] = 0;
		
		GivePlayerItem( playerid, temp[ 0 ], temp[ 1 ] );
		
		RemovePlayerInventoryWeapon( playerid, true, false );
		
		done = true;
	}
	
	if( Inv[ playerid ][ invSlot ][ 51 ] )
	{
		temp[ 0 ] = Inv[ playerid ][ invSlot ][ 51 ];
		temp[ 1 ] = Inv[ playerid ][ invSlotKol ][ 51 ];
		
		Inv[ playerid ][ invSlot ][ 51 ] = 
		Inv[ playerid ][ invSlotKol ][ 51 ] = 0;
		
		GivePlayerItem( playerid, temp[ 0 ], temp[ 1 ] );
		
		RemovePlayerInventoryWeapon( playerid, false, true );
		
		done = true;
	}
	
	return ( done ) ? 1 : 0;
}

RemovePlayerInventoryWeapon( playerid, bool: weapon_slot_1 = true, bool: weapon_slot_2 = true )
{
	ResetWeapons( playerid );
	
	if( weapon_slot_1 && weapon_slot_2 )
		return;
	
	if( weapon_slot_1 && Inv[ playerid ][invSlot][ 51 ] )
	{
		givePlayerWeapon(
			playerid,
			GetWeaponToObject(_itemsInfo[Inv[playerid][invSlot][51]][invObject]),
			Inv[playerid][invSlotKol][51]
		);
	}
	
	if( weapon_slot_2 && Inv[ playerid ][invSlot][ 50 ] )
	{
		givePlayerWeapon(
			playerid,
			GetWeaponToObject(_itemsInfo[Inv[playerid][invSlot][50]][invObject]),
			Inv[playerid][invSlotKol][50]
		);
	}
}

GiveInventoryWeapon( playerid )
{
	if( Inv[ playerid ][invSlot][ 51 ] )
	{
		givePlayerWeapon(
			playerid,
			GetWeaponToObject(_itemsInfo[Inv[playerid][invSlot][51]][invObject]),
			Inv[playerid][invSlotKol][51]
		);
	}
	
	if( Inv[ playerid ][invSlot][ 50 ] )
	{
		givePlayerWeapon(
			playerid,
			GetWeaponToObject(_itemsInfo[Inv[playerid][invSlot][50]][invObject]),
			Inv[playerid][invSlotKol][50]
		);
	}
	
	return 1;
}

RemovePlayerWeapon( playerid, weaponid ) 
{
    if( weaponid < 0 || weaponid > 50) 
		return 1;
		
    new 
		saveweapon[ 13 ], 
		saveammo[ 13 ];
	
    for( new slot; slot < 13; slot++ ) 
	{
		GetPlayerWeaponData( playerid, slot, saveweapon[ slot ], saveammo[ slot ] );
    }
	
	ResetWeapons(playerid);
	
    for(new slot; slot < 13; slot++) 
	{
        if( saveweapon[ slot ] == weaponid || saveammo[ slot ] == 0 ) 
			continue;
			
        givePlayerWeapon( playerid, saveweapon[slot], saveammo[slot] );
    }
	
    givePlayerWeapon( playerid, 0, 1 );
	
	return 1;
}