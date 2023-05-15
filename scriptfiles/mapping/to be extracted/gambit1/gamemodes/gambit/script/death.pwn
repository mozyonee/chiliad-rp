#include <YSI\y_hooks>

hook OnPlayerConnect( playerid )
{
	ClearDeathData( playerid );
	
	return 1;
}

hook OnPlayerDisconnect( playerid, reason )
{
	if( IsValidDynamic3DTextLabel( death_text[ playerid ] ) )
	{
		DestroyDynamic3DTextLabel( death_text[ playerid ] );
		death_text[ playerid ] = Text3D: INVALID_3DTEXT_ID;
	}
	
	return 1;
}

hook OnPlayerSpawn( playerid )
{
	if( GetPlayerSkin( playerid ) == 0 )
	{
		SetPlayerSkin( playerid, GetInventorySkinId( playerid ) );
	}
	
	if( GetPVarInt( playerid, "Death:Save" ) )
	{
		Player[ playerid ][ uDeath ] += 1;
		
		if( Player[ playerid ][ uDeath ] > 2 )
		{
			Player[ playerid ][ uDeath ] = 2;
		}
		
		userUpdate( playerid, "uDeath", Player[ playerid ][ uDeath ] );
		SetPVarInt( playerid, "Death:Save", 0 );
	}
	
	SetPlayerHealth( playerid, 100.0 );
	
	new 
		player_death = Player[ playerid ][ uDeath ];
		
	if( !player_death )
		return 1;
	
	stopPlayer( playerid, 3 );

	ApplyDeathAnimation( playerid, player_death );
	SetPlayerDeathStage( playerid, player_death );
	SetPlayerVirtualWorld( playerid, death_pos[ playerid ][ d_world ] );
	SetPlayerInterior( playerid, death_pos[ playerid ][ d_int ] );
	
	if( !HidePlayerInventoryWeapon( playerid ) )
	{
		SendClientMessage( playerid, C_WHITE, ""gbInfo"Ваше оружие было убрано из используемых слотов." );
	}
	
	new 
		count = GetPlayerDamagesCount( playerid );
	
	printf( "Playerid: %d | Death: %d", playerid, player_death );
	
	switch( player_death )
	{
		case PLAYER_INJURED :
		{
			if( count )
			{
				format:gb_string( ""gbInfo"Ваш персонаж был ранен "cBLUE"%d раз(-а)"cWHITE". Для проверки повреждений, используйте - "cBLUE"/dm"cWHITE".",
					count
				);
			}
			else 
			{
				format:gb_string( ""gbInfo"Ваш персонаж был ранен, Вы не можете двигаться." );
			}
			
			SendClientMessage( playerid, C_WHITE, gb_string );
		}
		
		case PLAYER_DIED :
		{
			if( count )
			{
				format:gb_string( ""gbInfo"Ваш персонаж был убит. Для проверки повреждений, используйте - "cBLUE"/dm"cWHITE"." );
			}
			else 
			{
				format:gb_string( ""gbInfo"Ваш персонаж был убит, Вы не можете двигаться." );
			}
			
			SendClientMessage( playerid, C_WHITE, gb_string );
		}
	}
	
	return 1;
}

hook OnPlayerDeath( playerid, killerid, reason )
{	
	if( Player[ playerid ][ uDeath ] != PLAYER_DIED )
	{
		GetPlayerPos( 
			playerid, 
			death_pos[ playerid ][ d_pos_x ], 
			death_pos[ playerid ][ d_pos_y ], 
			death_pos[ playerid ][ d_pos_z ] 
		);
			
		GetPlayerFacingAngle( playerid, death_pos[ playerid ][ d_angle ] );
		death_pos[ playerid ][ d_world ] = GetPlayerVirtualWorld( playerid );
		death_pos[ playerid ][ d_int ] = GetPlayerInterior( playerid );
		
		SetSpawnInfo( 
			playerid, 
			264, 
			GetInventorySkinId( playerid ), 
			death_pos[ playerid ][ d_pos_x ], 
			death_pos[ playerid ][ d_pos_y ], 
			death_pos[ playerid ][ d_pos_z ], 
			death_pos[ playerid ][ d_angle ], 
			0, 0, 0, 0, 0, 0 
		);
	
		SetPVarInt( playerid, "Death:Save", 1 );
	}
	
	return 1;
}


hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) 
{
	if( dialog_cheat_use[ playerid ] ) 
		return 1;
		
	switch( dialogid ) 
	{
		case d_death : 
		{
			if( response ) 
			{
				new 
					rand = random( 8 );
				
				Player[playerid][uJailSettings][2] = 1; 
				Player[playerid][uJailSettings][3] = 300;
				
				SetPlayerPos( playerid, spawnHospital[rand][0], spawnHospital[rand][1], spawnHospital[rand][2] );
				SetPlayerInterior( playerid, 15 );
				SetPlayerVirtualWorld( playerid, 26 );
				
				SetPlayerDeathStage( playerid, PLAYER_HEALTHY );
				
				Player[playerid][uDeath] = 0;
				userUpdate( playerid, "uDeath", Player[playerid][uDeath] );
				
				Inv[ playerid ][invSlot][ 50 ] = 
				Inv[ playerid ][invSlotKol][ 50 ] = 0;
				
				Inv[ playerid ][invSlot][ 51 ] = 
				Inv[ playerid ][invSlotKol][ 51] = 0;
				
				RemovePlayerInventoryWeapon( playerid, true, true );
				
				SaveInventory( playerid );
			}
			else 
			{
				death_timer[ playerid ] = 150;
				SendClientMessage( playerid, C_WHITE, ""gbInfo"Вы остались на месте. Повторный выбор появится через 2.5 минуты." );
			}
		}
	}
	
	return 1;
}

hook OnPlayerGiveDamage( playerid, damagedid, Float: amount, weaponid, bodypart ) 
{
	if( Player[ damagedid ][ uDeath ] == PLAYER_DIED )
	{
		SetPlayerHealth( damagedid, 100.0 );
	}
	else if( Player[ damagedid ][ uDeath ] == PLAYER_INJURED && playerid != INVALID_PLAYER_ID ) 
	{
		Player[ damagedid ][ uDeath ] = PLAYER_DIED;
		userUpdate( damagedid, "uDeath", Player[ damagedid ][uDeath] );
		SetPlayerHealth( damagedid, 100.0 );
		ApplyDeathAnimation( damagedid, PLAYER_DIED );
		SetPlayerDeathStage( damagedid, PLAYER_DIED );
	}
	
	return 1;
}

hook OnPlayerTakeDamage( playerid, issuerid, Float: amount, weaponid, bodypart ) 
{
	if( Player[playerid][uDeath] == PLAYER_INJURED ) 
		return 1;
		
	switch( weaponid )
	{
		case 22 : GivePlayerDamage( playerid, 40.0, bodypart, weaponid );
		case 23 : 
		{
			if( !GetPVarInt( playerid, "Tazer" ) )
			{
				GivePlayerDamage( playerid, 35.0, bodypart, weaponid );
			}
		}
		case 24 : GivePlayerDamage( playerid, 50.0, bodypart, weaponid );
		case 25 : GivePlayerDamage( playerid, 60.0, bodypart, weaponid );
		case 26 : GivePlayerDamage( playerid, 50.0, bodypart, weaponid );
		case 27 : GivePlayerDamage( playerid, 65.0, bodypart, weaponid );
		case 28 : GivePlayerDamage( playerid, 35.0, bodypart, weaponid );
		case 29 : GivePlayerDamage( playerid, 42.0, bodypart, weaponid );
		case 30 : GivePlayerDamage( playerid, 65.0, bodypart, weaponid );
		case 31 : GivePlayerDamage( playerid, 65.0, bodypart, weaponid );
		case 32 : GivePlayerDamage( playerid, 35.0, bodypart, weaponid );
		case 33 : GivePlayerDamage( playerid, 50.0, bodypart, weaponid );
		case 34 : GivePlayerDamage( playerid, 90.0, bodypart, weaponid );
		default : GivePlayerDamage( playerid, 0.0 , bodypart, weaponid );
	}

    if( issuerid != INVALID_PLAYER_ID && GetPVarInt( playerid,"PlayerMenuShow" ) == 4 )  
	{
		format:gb_string( "%.0f%", Player[ playerid ][ uHP ] );
		PlayerTextDrawSetString( playerid, invSPlayer[playerid][59], gb_string );
		
		format:gb_string( "%.0f%", Player[ playerid ][ uArmor ] );
		PlayerTextDrawSetString( playerid, invSPlayer[playerid][60], gb_string );
		
        PlayerTextDrawTextSize( playerid,invSPlayer[playerid][56], 224.4 + Player[ playerid ][ uHP ] / 100.0 * 190.0, -31.000000 );
        PlayerTextDrawTextSize( playerid,invSPlayer[playerid][57], 224.4 + Player[ playerid ][ uArmor ] / 100.0 *190.0, -31.000000 );
       
    	PlayerTextDrawShow( playerid,invSPlayer[playerid][56] );
        PlayerTextDrawShow( playerid,invSPlayer[playerid][57] );
    }
	
    if( Inv[playerid][invSlot][54] ) 
	{
		Inv[playerid][invSlotKol][54] = floatround( Player[ playerid ][ uArmor ] );
    }
	else 
	{
		Inv[playerid][invSlot][54] =
		Inv[playerid][invSlotKol][54] = 0;
		
		SetPlayerArmour( playerid, 0.0 );
		
		SaveInventory( playerid );
	}
	
    return 1;
}

DeathTimer( playerid )
{
	if( Player[ playerid ][ uDeath ] == PLAYER_HEALTHY )
		return 1;
	
	if( Player[ playerid ][ uDeath ] == PLAYER_INJURED )
	{
		if( GetPlayerAnimationIndex( playerid ) != 1701 )
		{
			ApplyDeathAnimation( playerid, Player[playerid][uDeath] );
		}
	}
	else if( Player[playerid][uDeath] == PLAYER_DIED )
	{	
		if( GetPlayerAnimationIndex( playerid ) != 1151 )
		{
			ApplyDeathAnimation( playerid, Player[playerid][uDeath] );
		}
		
		if( death_timer[ playerid ] )
		{
			death_timer[ playerid ]--;
			
			format:gb_string( "%d", death_timer[ playerid ] );
			GameTextForPlayer( playerid, gb_string, 3000, 3 );
			
			if( Player[ playerid ][ uHP ] < 100.0 )
			{
				SetPlayerHealth( playerid, 100.0 );
			}
		}
		else 
		{
			ShowPlayerDialog( playerid, d_death, DIALOG_STYLE_MSGBOX, "",
				""gbInfo"Ваш персонаж умер.\n\n\
				Остаться на месте смерти или отправиться в госпиталь?\n\
				Выбирая госпиталь, Вы будете обязаны забыть как проходило Ваше убийство.",
				"Госпиталь", "Остаться"
			);
		}
	}
	
	
	return 1;
}

function GivePlayerDamage( playerid, Float: amount, body, weaponid )
{
	if( floatround( amount ) )
	{
		if( Player[ playerid ][ uArmor ] )
		{
			if( floatsub( Player[ playerid ][ uArmor ], amount ) <= 0 )
			{
				DamageForPlayer( 0, playerid, floatsub( Player[ playerid ][ uArmor ], amount ) );
				SetPlayerArmour( playerid, 0.0 );
			}
			else 
			{
				DamageForPlayer( 1, playerid, amount );
			}
		}
		else 
		{
			DamageForPlayer( 0, playerid, amount );
		}
	}
	
	for( new i; i < MAX_DAMAGES; i++ )
	{
		if( Damage[ playerid ][ i ][ dm_unix ] )
			continue;
			
		Damage[ playerid ][ i ][ dm_amount] = amount;
		Damage[ playerid ][ i ][ dm_unix ] = gettime();
		Damage[ playerid ][ i ][ dm_body ] = body;
		Damage[ playerid ][ i ][ dm_weapon ] = weaponid;
		
		break;
	}
	
	return 1;
}

DamageForPlayer( type, playerid, Float: amount )
{
	if( type == 0 ) // Health
	{
		if( Player[ playerid ][ uHP ] <= 0 )
			return 0;
			
		if( floatsub( Player[ playerid ][ uHP ], amount ) <= 0 && !Player[ playerid ][ uDeath ] )
		{
			ApplyAnimation( playerid, "PED", "null", 4.0, 0, 0, 0, 1, 0, 1 );
			ApplyAnimation( playerid, "PED", "KO_shot_stom", 4.0, 0, 0, 0, 1, 0, 1 );
			SetPlayerHealth( playerid, 0 );
		}
		else 
		{
			SetPlayerHealth( playerid, floatsub( Player[ playerid ][ uHP ], amount ) );
		}
	}
	else if( type == 1 ) // Armor
	{
		if( Player[ playerid ][ uArmor ] <= 0 )
			return 0;
		
		if( floatsub( Player[ playerid ][ uArmor ], amount ) <= 0 )
		{
			SetPlayerArmour( playerid, 0.0 );
		}
		else 
		{
			SetPlayerArmour( playerid, floatsub( Player[ playerid ][ uArmor ], amount ) );
		}
	}
	
	return 1;
}

ApplyDeathAnimation( playerid, stage )
{
	switch( stage )
	{
		case 1 :
		{
			ApplyAnimation( playerid, "SWEET", "null", 4.0, 0, 0, 0, 1, 0, 1 );
			ApplyAnimation( playerid, "WUZI", "CS_Dead_Guy", 4.1, 0, 1, 1, 1, 0 );
		}
		
		case 2 :
		{
			ApplyAnimation( playerid, "SWEET", "null", 4.0, 0, 0, 0, 1, 0, 1 );
			ApplyAnimation( playerid, "PED", "FLOOR_hit_f", 4.1, 0, 1, 1, 1, 0 );
		}
	}	
}

SetPlayerDeathStage( playerid, stage )
{
	switch( stage )
	{
		case PLAYER_INJURED :
		{
			format:gb_string( "(( Данный персонаж ранен %d раз(-а) - /dm %d ))", 
				GetPlayerDamagesCount( playerid ), 
				playerid 
			);
		}
		
		case PLAYER_DIED :
		{
			gb_string[0] = EOS;
			strcat( gb_string, "(( ДАННЫЙ ПЕРСОНАЖ МЁРТВ ))" );
			
			death_timer[ playerid ] = 300;
		}
	}
	
	if( stage != PLAYER_HEALTHY )
	{
		if( IsValidDynamic3DTextLabel( death_text[ playerid ] ) )
		{
			UpdateDynamic3DTextLabelText( 
				death_text[ playerid ], 
				C_LIGHTRED, 
				gb_string 
			);
		}
		else 
		{
			death_text[ playerid ] = CreateDynamic3DTextLabel( 
				gb_string, 
				C_LIGHTRED, 
				0.0, 
				0.0, 
				0.0, 
				10.0, 
				playerid, 
				INVALID_VEHICLE_ID 
			);
		}
	}
	else 
	{
		if( IsValidDynamic3DTextLabel( death_text[ playerid ] ) )
		{
			DestroyDynamic3DTextLabel( death_text[ playerid ] );
			death_text[ playerid ] = Text3D: INVALID_3DTEXT_ID;
		}
		
		for( new i; i < MAX_DAMAGES; i++ )
		{	
			Damage[ playerid ][ i ][ dm_amount ] = 0.0;
			
			Damage[ playerid ][ i ][ dm_body ] = 
			Damage[ playerid ][ i ][ dm_weapon ] =
			Damage[ playerid ][ i ][ dm_unix ] = 0;
		}
		
		death_timer[ playerid ] = 0;
	}
	
	return 1;
}

GetPlayerDamagesCount( playerid )
{
	new 
		count = 0,
		i = 0;

	for( ; i < MAX_DAMAGES; i++ )
	{
		if( !Damage[ playerid ][ i ][ dm_unix ] )
			continue;
			
		count++;
	}
	
	return count;
}

ClearDeathData( playerid )
{
	death_text[ playerid ] = Text3D: INVALID_3DTEXT_ID;
	death_timer[ playerid ] = 0;
	
	death_pos[ playerid ][ d_pos_x ] =
	death_pos[ playerid ][ d_pos_y ] =
	death_pos[ playerid ][ d_pos_z ] = 
	death_pos[ playerid ][ d_angle ] = 0.0;
	death_pos[ playerid ][ d_world ] =
	death_pos[ playerid ][ d_int ] = 0;
	
	for( new i; i < MAX_DAMAGES; i++ )
	{	
		Damage[ playerid ][ i ][ dm_amount ] = 0.0;
		
		Damage[ playerid ][ i ][ dm_body ] = 
		Damage[ playerid ][ i ][ dm_weapon ] =
		Damage[ playerid ][ i ][ dm_unix ] = 0;
	}
	
	SetPVarInt( playerid, "Death:Save", 0 );
}

stock GetDeathBodyPart( part, dest[] )
{
	dest[ 0 ] = EOS;
	switch( part )
	{
		case 3 : strcat( dest, "Торс", 32 );
		case 4 : strcat( dest, "Пах", 32 );
		case 5 : strcat( dest, "Левая рука", 32 );
		case 6 : strcat( dest, "Правая рука", 32 );
		case 7 : strcat( dest, "Левая нога", 32 );
		case 8 : strcat( dest, "Правая нога", 32 );
		case 9 : strcat( dest, "Голоса", 32 );
		default : strcat( dest, "Неизвестно", 32 );
	}
}

stock GetDeathDuration( time, dest[] )
{
	if( time < 0 || time == gettime( ) || time > 2592000 ) 
	{
	    strcat( dest, "Никогда", 32 );
	    return 1;
	}
	else if( time < 60 )
	{
		format( dest, 256, "%d секунд(-у, -а)", time );
	}
	else if( time >= 0 && time < 60 )
	{
		format( dest, 256, "%d секунда", time );
	}
	else if( time >= 60 && time < 3600 )
	{
		format( dest, 256, ( time >= 120 ) ? ( "%d минут(-ы)" ) : ( "%d минуту" ), time / 60 );
	}
	else if( time >= 3600 && time < 86400)
	{
		format( dest, 256, ( time >= 7200 ) ? ("%d часа(-ов)" ) : ( "%d час" ), time / 3600 );
	}
	else if( time >= 86400 && time < 2592000 )
	{	
		format( dest, 256, ( time >= 172800 ) ? ( "%d дня(-ей)" ) : ( "%d день" ), time / 86400 );
	}

	return 1;
}

GetPlayerDamagesInfo( playerid, damageid )
{
	clear_massive();
	
	if( !GetPlayerDamagesCount( damageid ) )
		return 0;
		
	new 
		weapon_name[ 32 ],
		body_part[ 32 ],
		duration[ 32 ];
		
	for( new i; i < MAX_DAMAGES; i++ ) 
	{
  	    if( !Damage[ damageid ][ i ][ dm_unix ] ) 
			continue;
		
		GetWeaponName( Damage[ damageid ][ i ][ dm_weapon ], weapon_name, sizeof weapon_name );
		GetDeathDuration( gettime( ) - Damage[ damageid ][ i ][ dm_unix ], duration );
		GetDeathBodyPart( Damage[ damageid ][ i ][ dm_body ], body_part );
		
		format:gb_string( "{696969}%d.{ffffff} %s, %s, %.1f DMG, %s\n", 
			i + 1, 
			duration, 
			weapon_name, 
			Damage[ damageid ][ i ][ dm_amount ],
			body_part
		);
		
		strcat( vb_string, gb_string );
  	}
	
    return showPlayerDialog( playerid, 9999, DIALOG_STYLE_MSGBOX, Player[ damageid ][uName], vb_string, "Закрыть", "" );
}

HealthPlayer( playerid )
{
	if( Player[ playerid ][uJailSettings][2] != 0 ) 
	{
		Player[ playerid ][uJailSettings][2] = 0;
	}
	
	else if( Player[ playerid ][uJailSettings][3] != 0 ) 
	{
		Player[ playerid ][uJailSettings][3] = 2;
	}
	
	else if( Player[ playerid ][uJailSettings][4] != 0 ) 
	{
		Player[ playerid ][uJailSettings][4] = 0;
	}
	
	format:gb_string( "%d|%d|%d|%d|%d",
		Player[ playerid ][uJailSettings][0],
		Player[ playerid ][uJailSettings][1],
		Player[ playerid ][uJailSettings][2],
		Player[ playerid ][uJailSettings][3],
		Player[ playerid ][uJailSettings][4]
	);
	
	Player[ playerid ][uDeath] = 0; 
	
	userUpdateStr( playerid, "uJailSettings", gb_string );
	userUpdate( playerid, "uDeath", 0 );
	

	ClearAnimations( playerid );
	
	SetPlayerDeathStage( playerid, 0 );
	
	SetPlayerHealth( playerid, 100.0 );
	
	return 1;
}

CMD:damages( playerid, params[] ) 
	return cmd_dm( playerid, params );
	
CMD:dm( playerid, params[] ) 
{
	if( sscanf( params, "u", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, ""gbInfo"Введите: /dm [ id игрока ]" );
		
	if( GetDistanceBetweenPlayers( playerid, params[0] ) > 10.0 
		|| GetPlayerVirtualWorld( playerid ) != GetPlayerVirtualWorld( params[0] ) 
		&& !GetAccessAdmin( playerid, 1 ) 
	) 
		return SendClientMessage( playerid, C_WHITE,""gbError"Данный игрок не находится рядом с Вами.");
	if( !GetPlayerDamagesInfo( playerid, params[0] ) )
	{
		SendClientMessage( playerid, C_WHITE, ""gbInfo"У данного игрока отсутствуют повреждения." );
	}
	
	return 1;
}