#include <YSI\y_hooks>

hook OnPlayerText( playerid, text[] )
{
	clear_massive();
	
	if( !GetPVarInt(playerid,"uLogin") )
	{
		SendClientMessage( playerid, C_WHITE, !""gbError"Для использования чата, Вам необходимо авторизоваться." );
		return 0;
	}	
	
	else if( IsMute( playerid, TYPE_IC ) ) 
	{
		SendClientMessage( playerid, C_WHITE, !PLAYER_MUTED );
		return 0;
	}
	
	else if( GetPVarInt( playerid,"playerAdmin" ) )
	{
		if( ac_spectate{ playerid } )
			return SendClientMessage( playerid, -1, !NO_ACCESS );
		
		format:gb_string( "(( Администратор %s[%d]: %s ))", Player[playerid][uName], playerid, text);
		sendLongMessage( playerid, gb_string, COLOR_FADE1, COLOR_FADE1, COLOR_FADE1, COLOR_FADE1, COLOR_FADE2 );
		return 0;
	}
	
	else if(Player[playerid][uJailSettings][2] != 0 || Player[playerid][uJailSettings][4] != 0)
	{
		SendClientMessage(playerid,C_GRAY,""gbError"Ваш персонаж не в состоянии разговаривать." );
		return 0;
	}

	else if( newsClientEther == playerid && D::[playerid][dPhone] == true ) 
	{
		format:gb_string( "[SAN Эфир] %s: %s", GetCharacterName( playerid ), text );
		foreach(new i : Player) 
		{
			if( !Player[ i ][uEther] )
				continue;
				
			SendClientMessage( i, 0x42E73AAA, gb_string );
		}
		
		if( IsPlayerInAnyVehicle( playerid ) && !SkipVehicleMessage( GetPlayerVehicleID( playerid ) ) )
		{
			new 
				vehicleid = GetPlayerVehicleID( playerid );
				
			if( IsVehicleWindowOpen( vehicleid ) )
			{
				format:gb_string( "(Телефон) %s говорит: %s", GetCharacterName( playerid ), text );
				SendVehicleMessage( vehicleid, gb_string );
				MeAction( playerid, "что-то говорит", 1 );
			}
		}
		else
		{
			format:gb_string( "(Телефон) %s говорит: %s",GetCharacterName( playerid ), text);
			sendLongMessage( playerid, gb_string, COLOR_FADE1, COLOR_FADE2, COLOR_FADE3, COLOR_FADE4, COLOR_FADE5 );
		}
		
		return 0;
	}
	
	else if( GetPVarInt(playerid,"phoneCaller") != INVALID_PLAYER_ID 
		&& GetPVarInt(playerid,"phoneCalled") != INVALID_PLAYER_ID 
		&& D::[playerid][dPhone] == true
	  ) 
	{
		new 
			id;
		
		if( GetPVarInt(playerid,"phoneCaller") == playerid ) 
		{
			id = GetPVarInt(playerid,"phoneCalled");
		}
		else if( GetPVarInt(playerid,"phoneCalled") == playerid ) 
		{
			id = GetPVarInt(playerid,"phoneCaller");
		}
		
		if( IsPlayerInAnyVehicle( playerid ) && !SkipVehicleMessage( GetPlayerVehicleID( playerid ) ) )
		{
			new 
				vehicleid = GetPlayerVehicleID( playerid );
				
			if( IsVehicleWindowOpen( vehicleid ) )
			{
				format:gb_string( "(Телефон) %s говорит: %s", GetCharacterName( playerid ), text );
				SendVehicleMessage( vehicleid, gb_string );
				MeAction( playerid, "что-то говорит", 1 );
			}
		}
		else 
		{
			format:gb_string( "(Телефон) %s говорит: %s", GetCharacterName( playerid ), text );
			sendLongMessage( playerid, gb_string, COLOR_FADE1, COLOR_FADE2, COLOR_FADE3, COLOR_FADE4, COLOR_FADE5 );
		}
		
		if( D::[id][dPhone] == true ) 
		{
			format:gb_string( "(Телефон) %d: %s",Player[playerid][uNumber], text );
			SendClientMessage( id, 0xFFFFFFAA, gb_string );
		}
		
		return 0;
	}
	
	else if( IsPlayerInAnyVehicle( playerid ) && !SkipVehicleMessage( GetPlayerVehicleID( playerid ) ) )
	{
		new 
			vehicleid = GetPlayerVehicleID( playerid );
			
		if( IsVehicleWindowOpen( vehicleid ) )
		{
			format:gb_string( "(Транспорт) %s говорит: %s", GetCharacterName( playerid ), text );
			SendVehicleMessage( vehicleid, gb_string );
			MeAction( playerid, "что-то говорит", 1 );
			return 0;
		}
	}
	
	if( !GetPVarInt( playerid, "UsingAnimation" ) && !Player[ playerid ][ uDeath ] ) 
	{
		
		if( Player[playerid][uSettings][7] != 7 )
		{
			if( Player[playerid][uSettings][7] == 0 ) 
			{
				ApplyAnimation(playerid,"ped",Talk[Player[playerid][uSettings][7]],4.1,1,1,1,1,1,1);
			}
			else if( Player[playerid][uSettings][7] != 0 ) 
			{
				ApplyAnimation(playerid,"GANGS",Talk[Player[playerid][uSettings][7]],4.1,1,1,1,1,1,1);
			}

			SetTimerEx( "ClearAnimationsDelay", strlen( text ) * 200 + 1000, false, "i", playerid );
		}
	}
		
	format:gb_string( "%s говорит: %s", GetCharacterName( playerid ), text);
	SetPlayerChatBubble( playerid, text, 0xFFFFFFFF, 15.0, 5000 );
	sendLongMessage( playerid, gb_string, COLOR_FADE1, COLOR_FADE2, COLOR_FADE3, COLOR_FADE4, COLOR_FADE5 );
	return 0;
}