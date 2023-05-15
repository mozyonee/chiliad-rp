/*
	G-AC System
	- Found
	
	AntiCheat's:
	 - JetPack.
	 - Health / armour.
	 - Speedhack.
	 - DGun:
		- Invisible DGun / Damage check,
		- Forbidden guns,
		- Second check,
		
	 - Teleport in car.
	 - Warp vehicle to player.
	 - FlyHack.
	 - AirBreak.
	 
	 NOP'S:
		- NOP RemovePlayerFromVehicle
		- NOP PlayerSpectate
*/


#include <YSI\y_hooks>

#define ADMIN_LEVEL_EXCEPTION				( 1 )

enum e_VEH_POS
{
	Float: vp_x,
	Float: vp_y,
	Float: vp_z,
	Float: vp_z_angle,
	Float: vp_distance,
}

enum e_CURRENT_POS
{
	Float: cp_x,
	Float: cp_y,
	Float: cp_z,
}

new 
	ac_dialog					[ MAX_PLAYERS ],
	ac_spectate					[ MAX_PLAYERS char ],
	
	ac_enter_vehicle_id			[ MAX_PLAYERS ],
	ac_vehicle_time				[ MAX_PLAYERS ],
	ac_vehicle_pos				[ MAX_VEHICLES][ e_VEH_POS ],
	
	ac_current_pos				[ MAX_PLAYERS ][ e_CURRENT_POS ],
	
	bool: dialog_cheat_use		[ MAX_PLAYERS ] = { false, ... },
	
	weapon_exception			[ MAX_PLAYERS char ],
	air_exception				[ MAX_PLAYERS char ];
	

	
hook OnPlayerConnect( playerid )
{
	weapon_exception{ playerid } = 
	air_exception{ playerid } = 255;

	ac_spectate{ playerid } = 
	ac_vehicle_time[ playerid ] = 0;
	
	ac_enter_vehicle_id[ playerid ] = INVALID_VEHICLE_ID;
	
	ac_current_pos[ playerid ][ cp_x ] = 
	ac_current_pos[ playerid ][ cp_y ] =
	ac_current_pos[ playerid ][ cp_z ] = 0.0;
	return 1;
}

hook OnPlayerSpawn( playerid )
{
	weapon_exception{ playerid } = 2;
	air_exception{ playerid } = 4;
	
	return 1;
}

hook OnPlayerDeath( playerid, killerid, reason )
{
	weapon_exception{ playerid } = 2;
	return 1;
}

hook OnUnoccupiedVehicleUpdate( vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z, Float:vel_x, Float:vel_y, Float:vel_z )
{
	new 
		Float: ac_x,
		Float: ac_y,
		Float: ac_z,
		
		Float: distance = GetVehicleDistanceFromPoint( vehicleid, new_x, new_y, new_z );
		
	GetVehiclePos( vehicleid, ac_x, ac_y, ac_z );
	
	if( distance > 15.0 && ac_z > -70 
		&& distance > ac_vehicle_pos[ vehicleid ][ vp_distance ] + ( distance / 2 ) )
	{	
		GetVehicleZAngle( vehicleid, ac_vehicle_pos[ vehicleid ][ vp_z_angle ] );
		SetVehicleZAngle( vehicleid, ac_vehicle_pos[ vehicleid ][ vp_z_angle ] );
		SetVehiclePos( vehicleid, ac_x, ac_y, ac_z );
		
		return 0;
	}
	
	ac_vehicle_pos[ vehicleid ][ vp_distance ] = distance;
	
	return 1;
}


hook OnVehicleDeath( vehicleid, killerid )
{
	if( killerid != INVALID_PLAYER_ID && !GetAccessAdmin( killerid, 1 ) )
    {
        SetPVarInt( killerid, "AntiCheat:CarSpawn", GetPVarInt( killerid,"AntiCheat:CarSpawn" ) + 1 );
		
        if( GetPVarInt( killerid, "AntiCheat:CarSpawn") > 3 )
        {
			AntiCheatSuspect( killerid, "Car Spawn" );
        }
    }
	
	return 1;
}

hook OnPlayerEnterVehicle( playerid, vehicleid, ispassenger )
{	
	weapon_exception{ playerid } = 3;

	ac_enter_vehicle_id[ playerid ] = vehicleid;
	ac_vehicle_time[ playerid ] = GetTickCount();
	return 1; 
}

hook OnPlayerExitVehicle( playerid, vehicleid )
{
	weapon_exception{ playerid } = 3;
	air_exception{ playerid } = 2;
	
	if( IsVehicleAircraft( vehicleid ) )
	{
		ResetWeapons( playerid );
		GiveInventoryWeapon( playerid );
	}
	
	GetPlayerPos( 
		playerid, 
		ac_current_pos[playerid][cp_x], 
		ac_current_pos[playerid][cp_y], 
		ac_current_pos[playerid][cp_z] 
	);
	
	return 1; 
}

hook OnPlayerStateChange( playerid, newstate, oldstate ) 
{		
 	if( newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER ) 
	{
		switch( GetPlayerWeapon( playerid ) )
		{
			case 24, 25, 33 : 
				SetPlayerArmedWeapon( playerid, 0 );
		}
    }
	
	else if( newstate == PLAYER_STATE_SPECTATING && !ac_spectate{ playerid } ) 
	{
		return AntiCheatKick( playerid, "Spectate Hack" );
	}
	
	else if( newstate == PLAYER_STATE_ONFOOT )
	{
		ac_enter_vehicle_id[ playerid ] = INVALID_VEHICLE_ID;
	}
	
	return 1;
}

hook OnPlayerWeaponShot( playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ )
{		
	if( Inv[playerid][invSlot][50] != 0 
		&& GetWeaponToObject( _itemsInfo[ Inv[playerid][invSlot][50] ][invObject] ) == weaponid ) 
	{
		if( Inv[playerid][invSlotKol][50] > 0 )
		{
			weapon_exception{ playerid } = 2;
			Inv[playerid][invSlotKol][50]--;
		}
	}
	else if( Inv[playerid][invSlot][51] != 0 
		&& GetWeaponToObject( _itemsInfo[ Inv[playerid][invSlot][51] ][invObject] ) == weaponid ) 
	{
        if( Inv[playerid][invSlotKol][51] > 0 )
		{
			weapon_exception{ playerid } = 2;
			Inv[playerid][invSlotKol][51]--;
		}
	}
	
	return 1;
}

AntiCheatTimer( playerid )
{	
	new 
		vehicleid = GetPlayerVehicleID( playerid );
			
	if( weapon_exception{ playerid } )
	{
		weapon_exception{ playerid }--;
	}
	else 
	{
		if( !IsAfk( playerid ) )
		{
			if( !AntiCheatBaseWeapon( playerid ) )
			{
				return AntiCheatBan( playerid, "Cheat Weapon #1" );
			}
			
			if( !AntiCheatWeapon( playerid ) )
			{
				return AntiCheatKick( playerid, "Cheat Weapon #2" );
			}
		}
	}

	if( !IsAfk( playerid ) )
	{		
		if( SpeedVehicle( vehicleid ) > 160 ) 
		{
			return AntiCheatKick( playerid, "SpeedHack 160+" );
		}
		
		if( SpeedVehicle( vehicleid ) > GetMaxSpeedInVehicle( vehicleid ) + 15 ) 
		{
			format:vb_string( "SpeedHack [%d/%d] ", 
				SpeedVehicle( vehicleid ), 
				GetMaxSpeedInVehicle( vehicleid ) + 15 
			);
			
			AntiCheatSuspect( playerid, vb_string, 5 );
		}
		
		if( vehicleid )
		{
			if( ac_enter_vehicle_id[ playerid ] != vehicleid 
				|| GetTickCount() < ac_vehicle_time[ playerid ] + 600 ) 
			{
				return AntiCheatKick( playerid, "Teleport in Car #1" );
			}
		}

		if( air_exception{ playerid } )
		{
			air_exception{ playerid }--;
		}
		else 
		{	
			new 
				Float: distance = GetPlayerDistanceFromPoint( 
					playerid, 
					ac_current_pos[playerid][cp_x], 
					ac_current_pos[playerid][cp_y], 
					ac_current_pos[playerid][cp_z] 
				),
				
				Float: vel_x,
				Float: vel_y,
				Float: vel_z,
				Float: v_vel_x,
				Float: v_vel_y,
				Float: v_vel_z;
				
			GetPlayerVelocity( playerid, vel_x, vel_y, vel_z );
			GetVehicleVelocity( playerid, v_vel_x, v_vel_y, v_vel_z );
			
			switch( GetPlayerState( playerid ) )
			{
				case PLAYER_STATE_ONFOOT :
				{
					if( floatabs( vel_x ) > 2.0 || floatabs( vel_y ) > 2.0 )
					{
						return AntiCheatKick( playerid, "Velocity Cheat" );
					}

					if( GetPlayerSurfingVehicleID( playerid ) == INVALID_VEHICLE_ID 
					 && GetPlayerSurfingObjectID( playerid ) == INVALID_OBJECT_ID )
					{
						/*if( distance > 12.0 )
						{
							switch( GetPlayerAnimationIndex( playerid ) )
							{
								case 1189, 1543, 1539, 1538, 959, 1132 :
								{
									format:vb_string( "Foot FlyHack/AirBreak %0.2f", distance );
									return AntiCheatKick( playerid, vb_string );
								}
							}
							
						}*/
						if( distance > 20.0 && distance < 65.0 )
						{
							if( floatabs( vel_x ) > 0.3 
							&& floatabs( vel_y ) > 0.3 
							&& floatabs( vel_z ) < 1.80 
							&& ac_current_pos[playerid][cp_z] > -70.0 )
							{
								format:vb_string( "Foot FlyHack/AirBreak %0.2f", distance );
								AntiCheatSuspect( playerid, vb_string, 5 );
							}
						}
						else if( distance > 65.0 && ac_current_pos[playerid][cp_z] > -70.0 )
						{
							format:vb_string( "Foot FlyHack/AirBreak %0.2f", distance );
							return AntiCheatKick( playerid, vb_string );
						}
					}
				}
				
				case PLAYER_STATE_DRIVER :
				{
					if( !SpeedVehicle( vehicleid ) )
					{				
						if( distance > 65.0 && distance < 90.0 )
						{
							format:vb_string( "Car AirBreak %0.2f", distance );
							AntiCheatSuspect( playerid, vb_string, 5 );
						}
						else if( distance > 90.0 )
						{
							format:vb_string( "Car AirBreak %0.2f", distance );
							return AntiCheatKick( playerid, vb_string );
						}
					}
				}
			}
			
			
			/*printf( "Distance: %0.2f || X: %0.2f | Y: %0.2f | Z: %0.2f || Anim: %d", 
				distance,
				vel_x,
				vel_y,
				vel_z,
				GetPlayerAnimationIndex( playerid )
			);*/
			
		}
	}
	
	GetPlayerPos( 
		playerid, 
		ac_current_pos[playerid][cp_x], 
		ac_current_pos[playerid][cp_y], 
		ac_current_pos[playerid][cp_z] 
	);

	
	if( GetPlayerSpecialAction( playerid ) == SPECIAL_ACTION_USEJETPACK )
	{
		return AntiCheatBan( playerid, "JetPack" );
	}

	new 
		Float: health,
		Float: armour;
		
	GetPlayerHealth( playerid, health );
	GetPlayerArmour( playerid, armour );
	
	
	if( Player[playerid][uHP] < health) 
	{
		SetPlayerHealth( playerid, Player[playerid][uHP] );
	}
	else 
	{
		Player[playerid][uHP] = health;
	}
	
	if( Inv[playerid][invSlotKol][54] < floatround( armour ) ) 
	{
		setPlayerArmour( playerid, Inv[playerid][invSlotKol][54] );
	}
	
	return 1;
} 

AntiCheatBaseWeapon( playerid )
{
	new 
		weapon,
		ammo;
		
	for( new i; i < 13; i++ )
	{
		GetPlayerWeaponData( playerid, i, weapon, ammo );
		
		switch( weapon )
		{
			case 16, 17, 18, 26, 35, 36, 37, 38, 39, 40, 44, 45 :
				return 0;
				
			default:
				continue;
		}
	}
	
	return 1;
}

AntiCheatWeapon( playerid )
{
	new
		temp,
		weapon			[ 13 ] = { 0, ... },
		ammo			[ 13 ] = { 0, ... },
		inv_weapon		[ 13 ] = { 0, ... },
		inv_ammo		[ 13 ] = { 0, ... },
		inv_slot		[ 13 ] = { 0, ... },
		slot,
		i 				= 0;
	
	while( ++i < 13 )
	{
		GetPlayerWeaponData( playerid, i, weapon[ i ], ammo[ i ] );
	}
	
	temp = GetWeaponToObject( _itemsInfo[ Inv[ playerid ][ invSlot ][ 50 ] ][ invObject ] );
	slot = GetWeaponSlot( temp );
	inv_weapon[ slot ] = temp;
	inv_ammo[ slot ] = Inv[ playerid ][ invSlotKol ][ 50 ];
	inv_slot[ slot ] = 50;
	
	temp = GetWeaponToObject( _itemsInfo[ Inv[ playerid ][ invSlot ][ 51 ] ][ invObject ] );
	slot = GetWeaponSlot( temp );
	inv_weapon[ slot ] = temp;
	inv_ammo[ slot ] = Inv[ playerid ][ invSlotKol ][ 51 ];
	inv_slot[ slot ] = 51;
	
	i = 0;
	
	while( ++i < 13 )
	{
		if( GetPVarInt( playerid, "Tazer" ) && weapon[ i ] == 23 && ammo[ i ] <= 2 )
			return 1;
			
		if( weapon[ i ] != inv_weapon[ i ] )
		{
			/*format:gb_string( "!!!!!!! %d | %d != %d", inv_slot[ i ], weapon[ i ], inv_weapon[ i ] );
			SendClientMessage( playerid, C_WHITE, gb_string );*/
			return 0;
		}
		else 
		{
			if( ammo[ i ] != inv_ammo[ i ] )
			{
				if( ammo[ i ] < inv_ammo[ i ] )
				{
					/*format:gb_string( "%d = %d", inv_slot[ i ],  ammo[ i ] );
					SendClientMessage( playerid, C_GRAY, gb_string );*/
					
					Inv[ playerid ][ invSlotKol ][ inv_slot[ i ] ] = ammo[ i ];
				}
				else if( ammo[ i ] > inv_ammo[ i ] )
				{
					/*format:gb_string( "!!!!!!! %d | %d > %d", inv_slot[ i ],  ammo[ i ], inv_ammo[ i ] );
					SendClientMessage( playerid, C_WHITE, gb_string );*/
					
					return 0;
				}
			}
		}
	}
	
	return 1;
}

showPlayerDialog( playerid, dialogid, style, caption[], info[], button1[], button2[] ) 
{
	ac_dialog[playerid] = dialogid;
	dialog_cheat_use[playerid] = false;
    return ShowPlayerDialog( playerid, dialogid, style, caption, info, button1, button2 );
}

togglePlayerSpectating( playerid, toggle )
{
	ac_spectate{ playerid } = toggle;
	return TogglePlayerSpectating( playerid, toggle );
}

removePlayerFromVehicle( playerid ) 
{
	RemovePlayerFromVehicle( playerid );
	
	weapon_exception{ playerid } = 3;
	
	if( GetPVarInt( playerid,"playerCuffed" ) != 1 && Player[playerid][uJailSettings][4] == 0 ) 
	{
        togglePlayerControllable( playerid, false );
        SetPVarInt( playerid,"playerFreezingTime",1 );
    }

	if( GetAccessAdmin( playerid, ADMIN_LEVEL_EXCEPTION ) ) 
		return 1;
		
	SetTimerEx( "OnPlayerRemoveFromVehicle", 2800, 0, "d", playerid );
    return 1;
}

function OnPlayerRemoveFromVehicle( playerid )
{
	if( !IsAfk( playerid ) )
	{
		if( IsPlayerInAnyVehicle( playerid ) )
		{
			AntiCheatKick( playerid, "NOP RemovePlayerFromVehicle" );
		}
	}
	
	return 1;
}

stock antiDialogHider( playerid, dialogid ) 
{
	if( ac_dialog[playerid] == 0 && Player[playerid][uID] != 0 && !dialog_cheat_use[playerid] ) 
	{

		printf( "[G-AC] возможно %s использует чит на подмену диалога, диалог %d", Player[playerid][uName], dialogid );
		dialog_cheat_use[playerid] = true;
		return 1;
	}
	 
	if( ac_dialog[playerid] == dialogid && !dialog_cheat_use[playerid] ) 
	{
		ac_dialog[playerid] = 0;
	}
	
	return 1;
}

AntiCheatSuspect( playerid, const cheat[], suspect = 3, bool: permanent_suspect = false )
{
	if( GetAccessAdmin( playerid, ADMIN_LEVEL_EXCEPTION ) )
		return 1;
		
	new
	    server_tick = GetTickCount();

	if( GetPVarInt( playerid, "AntiCheat:SuspectDetected" ) > server_tick )
		return 0;
		
	SetPVarInt( playerid, "AntiCheat:SuspectDetected", server_tick + 4000 );

	if( GetPVarInt( playerid, "AntiCheat:Suspect" ) == suspect && !permanent_suspect ) 
	{
		AntiCheatKick( playerid, cheat );
		SetPVarInt( playerid, "AntiCheat:Suspect", 0 );
		return 0;
	} 
	else 
	{
		if( !permanent_suspect )
		{
			SetPVarInt( playerid, "AntiCheat:Suspect", GetPVarInt( playerid, "AntiCheat:Suspect" ) + 1 );
		}
		
		format:gb_string( "[G-AC] %s[%d] подозревается в читерстве. (%s)",
			Player[playerid][uName],
			playerid,
			cheat
		);

		SendAdminMessage( C_RED, gb_string );

	}
	
	return 1;
}

AntiCheatBan( playerid, const reason[], bool: is_anticheat = true, bool: is_show = true )
{
	if( is_anticheat && GetAccessAdmin( playerid, ADMIN_LEVEL_EXCEPTION ) )
		return 1;
		
	if( is_anticheat )
	{
		format:gb_string( "Игрок %s заблокирован навсегда за использование чит-программ.",
			Player[playerid][uName]
		);
		
		SendAdminMessageToAll( C_LIGHTRED, gb_string, playerid );
	}
	else 
	{
		format:gb_string( "Игрок %s заблокирован за многочисленные убийства навсегда.",
			Player[playerid][uName]
		);
		
		SendAdminMessageToAll( C_LIGHTRED, gb_string, playerid );
	}
	
	if( is_anticheat )
	{
		userUpdate( playerid, "uBanPlayer", 2145915100 );
	}
	else 
	{
		userUpdate( playerid, "uBanPlayer", 2145915105 );
	}
	
	return AntiCheatKick( playerid, reason, is_anticheat, is_show );
}

AntiCheatKick( playerid, const reason[], bool: is_anticheat = true, bool: is_show = true )
{
	if( is_anticheat && GetAccessAdmin( playerid, ADMIN_LEVEL_EXCEPTION ) )
		return 1;
		
	new 
		year, 
		month, 
		day, 
		hour, 
		minute, 
		second;
		
	getdate( year, month, day );
	gettime( hour, minute, second );
	
	if( is_show )
	{
		if( is_anticheat )
		{
			format:gb_string( "[G-AC] %s[%d] отсоединен от сервера. (%s)",
				Player[playerid][uName],
				playerid,
				reason 
			);
		}
		else 
		{
			format:gb_string( "[A] %s[%d] отсоединен от сервера. (%s)",
				Player[playerid][uName],
				playerid,
				reason 
			);
		}
		
		SendAdminMessage( C_RED, gb_string );
	}
	
	query[0] = EOS;
	
	strcat( query, ""gbError"Вы были отсоединены от сервера.\n\n" );
	format:gb_string( "Имя: "cBLUE"%s"cWHITE"\n",
		Player[playerid][uName]
	);
	strcat( query, gb_string );
	
	format:gb_string( "Дата: "cBLUE"%02d/%02d/%d"cWHITE"\n",
		day,
		month,
		year
	);
	strcat( query, gb_string );
	
	format:gb_string( "Время: "cBLUE"%02d:%02d:%02d"cWHITE"\n",
		hour,
		minute,
		second
	);
	strcat( query, gb_string );
	
	format:gb_string( "Причина: "cBLUE"%s"cWHITE"", reason );
	strcat( query, gb_string );
	
	ShowPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, " ", query, "Закрыть", "" );
	
	if( is_anticheat )
	{
		format:gb_string( "[G-AC] %s отсоединен. Причина: %s",
			Player[playerid][uName],
			reason
		);
		
		logs( ALOG + 3, gb_string, Player[playerid][uID] );
		
		SendClientMessage( playerid, C_LIGHTRED, "[G-AC] Вы были отсоединены от сервера за подозрение в использование читов." );
		SendClientMessage( playerid, C_LIGHTRED, "[G-AC] Если Вы считаете это ложным срабатыванием, то напишите об этом на форуме - g-rp.su/forum (Ошибки и недоработки)." );
	}
	
	return KickEx( playerid );
}

setPlayerInterior( playerid, interiorid )
{
	return SetPlayerInterior( playerid, interiorid );
}

stock setPlayerHealth( playerid, Float:amount )
{
	if( amount > 255.0 || amount < 0.0 ) 
		return 0;
	
	Player[playerid][uHP] = amount;
	
	return SetPlayerHealth( playerid, amount );
}

stock setPlayerArmour(playerid, Float: amount )
{
   if( amount > 255.0 || amount < 0.0 )
		return 0;
		
   Player[playerid][uArmor] = amount;
   
   return SetPlayerArmour( playerid, amount );
}

stock setVehicleHealth( vehicleid, Float: amount )
{
	V::[vehicleid][vHealth] = amount;
	
	return SetVehicleHealth( vehicleid, amount );
}

createVehicle( modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, respawn_delay, addsiren = 0 )
{
	new 
		vehicleid = CreateVehicle( modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, respawn_delay, addsiren );
	
	V::[vehicleid][vehicle_state_window][0] = true;
	V::[vehicleid][vehicle_state_window][1] = true;
	V::[vehicleid][vehicle_state_window][2] = true;
	V::[vehicleid][vehicle_state_window][3] = true;
	
	SetVehicleParamsCarWindows( vehicleid, 
		V::[vehicleid][vehicle_state_window][0], 
		V::[vehicleid][vehicle_state_window][1], 
		V::[vehicleid][vehicle_state_window][2], 
		V::[vehicleid][vehicle_state_window][3] 
	);	
	
	V::[vehicleid][vBuyingCar] = -1;
	
	vehicle3Dtext[vehicleid] = Text3D: INVALID_3DTEXT_ID;
	vehiclecallsign[vehicleid] = 0;
	caradmin[ vehicleid ] = false;
	V::[vehicleid][vLock] = false;
	V::[vehicleid][vHealth] = 1000.0;
	V::[vehicleid][vFuel] = MaxVehicleFuel[GetVehicleModel( vehicleid ) - 400];
	
	strobelight_timer[ vehicleid ] = -1;
	strobelight_time_out[ vehicleid ] = -1;
	strobelight_flash{ vehicleid } = 0;
	
	for( new i; i < 4; i++ )
	{
		V::[ vehicleid ][ vehicle_water ][ i ] = 0;
	}
	
	ClearCarData( vehicleid );
	return vehicleid;
}

destroyVehicle( vehicleid )
{
	if( IsBuyingCar( vehicleid ) )
	{
		ClearCarData( vehicleid );
	}
	
	ClearVehicleData( vehicleid );
	
	return DestroyVehicle( vehicleid );
}

stock setPlayerPos( playerid, Float: x, Float: y, Float: z ) 
{	
	CancelEdit( playerid );
	
	ac_current_pos[ playerid ][ cp_x ] = x;
	ac_current_pos[ playerid ][ cp_y ] = y;
	ac_current_pos[ playerid ][ cp_z ] = z;
	
	air_exception{ playerid } = 7;
	return SetPlayerPos( playerid, x, y, z );
}

stock GivePlayerCash( playerid, cash ) {
	Player[playerid][uMoney] += cash;
	return 1;
}

stock SetPlayerCash( playerid, cash ) {
	Player[playerid][uMoney] = cash;
	return 1;
}

stock givePlayerWeapon( playerid, weaponid, ammo )
{
	weapon_exception{ playerid } = 3;
	GivePlayerWeapon(playerid, weaponid, ammo);
}

stock ResetWeapons( playerid ) 
{	
	weapon_exception{ playerid } = 3;
	ResetPlayerWeapons( playerid );
}

stock setVehiclePos( vehicleid, Float: x, Float: y, Float: z ) 
{
	ac_vehicle_pos[ vehicleid ][ vp_x ] = x;
	ac_vehicle_pos[ vehicleid ][ vp_y ] = y;
	ac_vehicle_pos[ vehicleid ][ vp_z ] = z;
	
	new 
		playerid = GetVehiclePlayerID( vehicleid );
	
	if( playerid != INVALID_PLAYER_ID )
	{
		air_exception{ playerid } = 7;
	}
	
	return SetVehiclePos( vehicleid, x, y, z );
}

#define ShowPlayerDialog				showPlayerDialog
#define TogglePlayerSpectating			togglePlayerSpectating
#define CreateVehicle					createVehicle
#define DestroyVehicle					destroyVehicle
#define RemovePlayerFromVehicle			removePlayerFromVehicle
#define SetPlayerPos					setPlayerPos
#define SetPlayerInterior				setPlayerInterior
#define SetPlayerHealth 				setPlayerHealth
#define SetVehiclePos					setVehiclePos
#define SetPlayerArmour 				setPlayerArmour