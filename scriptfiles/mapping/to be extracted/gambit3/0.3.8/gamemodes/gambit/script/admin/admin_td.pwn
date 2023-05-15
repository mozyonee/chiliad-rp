stock AdminUpdateSpectatePanel( playerid, spectateid, bool: timer = true )
{	
	clear_massive();
	
	new 
		Float: health;
	
	SetPVarInt( playerid, "Admin:Recon", 1 );
	
	format:gb_string("%s ~y~(%d)", 
		Player[ spectateid ][ uName ],
		spectateid
	);
	
	PlayerTextDrawSetString( playerid, admin_player_name[playerid], gb_string );
	
	GetWeaponName( GetPlayerWeapon( spectateid ), gb_string, MAX_PLAYER_NAME + 10 );
	
	if( IsPlayerInAnyVehicle( spectateid ) ) 
	{
		GetVehicleHealth( GetPlayerVehicleID( spectateid ), health );
	}
	else 
	{
		GetPlayerHealth( spectateid, health );
	}
	
	format:vb_string(
		"\
			ID Аккаунта: %d~n~\
			Наличные: %d~n~\
			Скорость: %d / %d~n~\
			Оружие: %s~n~\
			Ping: %d ms~n~\
			HP: %0.2f\
		", 
		Player[ spectateid ][uID],
		Player[ spectateid ][uMoney],
		Player[ spectateid ][tVehicleSpeed],
		Player[ spectateid ][tSpeed],
		isnull( gb_string ) ? ("Нет") : gb_string,
		Player[spectateid][ tPing ],
		health
	);
	
	PlayerTextDrawSetString( playerid, admin_player_info[playerid], vb_string );

	if( timer )
	{
		KillTimer( admin_spectate_timer[ playerid ] );

		admin_spectate_timer[ playerid ] = SetTimerEx( "OnAdminSpectateUpdate", 1000, true, "dd", playerid, spectateid );
	}
	return 1;
}

stock ShowAdminSpectatePanel( playerid, states, spectateid = INVALID_PLAYER_ID )
{
	clear_massive();
	
	if( states && spectateid != INVALID_PLAYER_ID )
	{
		new 
			Float: health;
			
		SetPVarInt( playerid, "Admin:Recon", 1 );

		format:gb_string("%s ~y~(%d)", 
			Player[ spectateid ][ uName ],
			spectateid
		);
		
		PlayerTextDrawSetString( playerid, admin_player_name[playerid], gb_string );
		
		GetWeaponName( GetPlayerWeapon( spectateid ), gb_string, MAX_PLAYER_NAME + 10 );
			
		if( IsPlayerInAnyVehicle( spectateid ) ) 
		{
			GetVehicleHealth( GetPlayerVehicleID( spectateid ), health );
		}
		else 
		{
			GetPlayerHealth( spectateid, health );
		}
		
		format:vb_string(
			"\
				ID Аккаунта: %d~n~\
				Наличные: %d~n~\
				Скорость: %d / %d~n~\
				Оружие: %s~n~\
				Ping: %d ms~n~\
				HP: %0.2f\
			", 
			Player[spectateid][uID],
			Player[spectateid][uMoney],
			Player[spectateid][tVehicleSpeed],
			Player[spectateid][tSpeed],
			isnull( gb_string ) ? ("Нет") : gb_string,
			Player[spectateid][tPing],
			health
		);
		
		PlayerTextDrawSetString( playerid, admin_player_info[playerid], vb_string );
		
		PlayerTextDrawShow( playerid, admin_player_name[playerid] );
		PlayerTextDrawShow( playerid, admin_player_info[playerid] );
		
		if( admin_spectate_timer[ playerid ] != -1 )
		{
			KillTimer( admin_spectate_timer[ playerid ] );
			admin_spectate_timer[ playerid ] = -1;
		}
		else 
		{
			admin_spectate_timer[ playerid ] = SetTimerEx( "OnAdminSpectateUpdate", 1000, true, "dd", playerid, spectateid );
		}
	}
	else
	{
		SetPVarInt( playerid, "Admin:Recon", 0 );

		PlayerTextDrawHide( playerid, admin_player_name[playerid] );
		PlayerTextDrawHide( playerid, admin_player_info[playerid] );
		
		KillTimer( admin_spectate_timer[ playerid ] );
		admin_spectate_timer[ playerid ] = -1;
	}
}

function OnAdminSpectateUpdate( playerid, spectateid )
{
	new 
		vehicleid = GetPlayerVehicleID( spectateid );
	
	if( vehicleid )
	{
		Player[spectateid][tVehicleSpeed] = SpeedVehicle( vehicleid );
		Player[spectateid][tSpeed] = 0;
	}
	else
	{
		Player[spectateid][tVehicleSpeed] = 0;
		Player[spectateid][tSpeed] = SpeedPed( spectateid );
	}
	
	Player[spectateid][tPing] = GetPlayerPing( spectateid );
	
	AdminUpdateSpectatePanel( playerid, spectateid, false );
	return 1;
}

hook OnPlayerConnect( playerid )
{
	Admin_PlayerTextDraws( playerid );
	return 1;
}

Admin_PlayerTextDraws( playerid )
{
	admin_player_name[playerid] = CreatePlayerTextDraw( playerid, 566.259521, 267.666595, "Adadadad_Dfghsadersasd(111)" );
	PlayerTextDrawLetterSize( playerid, admin_player_name[playerid], 0.177882, 1.197501 );
	PlayerTextDrawTextSize( playerid, admin_player_name[playerid], 0.000000, 116.000000 );
	PlayerTextDrawAlignment( playerid, admin_player_name[playerid], 2 );
	PlayerTextDrawColor( playerid, admin_player_name[playerid], -1 );
	PlayerTextDrawUseBox( playerid, admin_player_name[playerid], 1 );
	PlayerTextDrawBoxColor( playerid, admin_player_name[playerid], 63 );
	PlayerTextDrawSetShadow( playerid, admin_player_name[playerid], 0 );
	PlayerTextDrawSetOutline( playerid, admin_player_name[playerid], 0 );
	PlayerTextDrawBackgroundColor( playerid, admin_player_name[playerid], 60 );
	PlayerTextDrawFont( playerid, admin_player_name[playerid], 2 );
	PlayerTextDrawSetProportional( playerid, admin_player_name[playerid], 1 );
	PlayerTextDrawSetShadow( playerid, admin_player_name[playerid], 0 );

	admin_player_info[playerid] = CreatePlayerTextDraw( playerid, 509.123229, 283.916595, "2282282~n~$400000~n~90 MP/H~n~100/20~n~M4A1/Pustinniy Orel~n~999 ms~n~127.23.42.123" );
	PlayerTextDrawLetterSize( playerid, admin_player_info[playerid], 0.175058, 1.034166 );
	PlayerTextDrawAlignment( playerid, admin_player_info[playerid], 1 );
	PlayerTextDrawColor( playerid, admin_player_info[playerid], -1 );
	PlayerTextDrawSetShadow( playerid, admin_player_info[playerid], 0 );
	PlayerTextDrawSetOutline( playerid, admin_player_info[playerid], 0 );
	PlayerTextDrawBackgroundColor( playerid, admin_player_info[playerid], 60 );
	PlayerTextDrawFont( playerid, admin_player_info[playerid], 2 );
	PlayerTextDrawSetProportional( playerid, admin_player_info[playerid], 1 );
	PlayerTextDrawSetShadow( playerid, admin_player_info[playerid], 0 );
	
	return 1;
}

Admin_TextDrawsHide( playerid )
{
	PlayerTextDrawHide( playerid, admin_player_name[playerid] );
	PlayerTextDrawDestroy( playerid, admin_player_name[playerid] );
	
	PlayerTextDrawHide( playerid, admin_player_info[playerid] );
	PlayerTextDrawDestroy( playerid, admin_player_info[playerid] );
	
	return 1;
}