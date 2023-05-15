#include <YSI\y_hooks>

hook OnGameModeInit() 
{
	Admin = CreateMenu( "Admin", 0, 5.0, 160.0, 50.0 );
 	SetMenuColumnHeader( Admin, 0, "Menu" );
	AddMenuItem( Admin, 0, "Next" );
	AddMenuItem( Admin, 0, "Switch" );
	AddMenuItem( Admin, 0, "Back" );
	AddMenuItem( Admin, 0, "Stats" );
	AddMenuItem( Admin, 0, "Sessions" );
	AddMenuItem( Admin, 0, "Frisk" );
	AddMenuItem( Admin, 0, "Exit" );
	return 1;
}


hook OnPlayerSelectedMenuRow( playerid, row ) 
{
    if( GetPlayerMenu( playerid ) == Admin )
	{
        new 
			specid = GetPVarInt( playerid, "SpecID" );
			
		ShowMenuForPlayer( Admin, playerid );
        switch( row ) 
		{
			case 0 :
			{
				if( GetPVarInt( playerid, "SpecID" ) >= GetPlayerPoolSize() )
				{
					SetPVarInt( playerid, "SpecID", 0 );
				}
				else
				{
					GivePVarInt( playerid, "SpecID", 1 );
				}
						
				for( new i = GetPVarInt( playerid, "SpecID" ), j = GetPlayerPoolSize(); i <= j; i++ )
				{
					if( !IsPlayerLogged( i ) || ( i == playerid ) )
						continue;
					
					SetPVarInt( playerid, "SpecID", i );
					SetPlayerInterior( playerid, GetPlayerInterior( i ) );
					SetPlayerVirtualWorld( playerid, GetPlayerVirtualWorld( i ) );
					
					AdminUpdateSpectatePanel( playerid, i );
					
					if( !IsPlayerInAnyVehicle( i ) ) 
					{
						PlayerSpectatePlayer( playerid, i );
					}
					else
					{
						PlayerSpectateVehicle( playerid, GetPlayerVehicleID( i ) );
					}
					
					
					break;
				}
			}
			case 1:
			{
				AdminUpdateSpectatePanel( playerid, specid );
			    TogglePlayerSpectating( playerid, true );
				SetPlayerInterior( playerid, GetPlayerInterior( specid ) );
				SetPlayerVirtualWorld( playerid, GetPlayerVirtualWorld( specid ) );
				if(!IsPlayerInAnyVehicle( specid ) ) return PlayerSpectatePlayer( playerid, specid );
				else return PlayerSpectateVehicle( playerid, GetPlayerVehicleID( specid ) );
			}
			case 2 :
			{
				if( GetPVarInt( playerid, "SpecID") <= 0 )
				{
					SetPVarInt( playerid, "SpecID", GetPlayerPoolSize() );
				}
				else 
				{
					SetPVarInt( playerid, "SpecID", GetPVarInt( playerid, "SpecID" ) - 1 );
				}
					
				for( new i = GetPVarInt( playerid, "SpecID"); i >= 0; i-- )
				{
					if( !IsPlayerLogged( i ) || ( i == playerid ) )
							continue;
					
					SetPVarInt( playerid, "SpecID", i );
					
					AdminUpdateSpectatePanel( playerid, i );
					TogglePlayerSpectating( playerid, true );
					SetPlayerInterior( playerid, GetPlayerInterior( i ) );
					SetPlayerVirtualWorld( playerid, GetPlayerVirtualWorld( i ) );
					
					if( !IsPlayerInAnyVehicle( i ) ) 
					{
						PlayerSpectatePlayer( playerid, i );
					}
					else
					{
						PlayerSpectateVehicle( playerid, GetPlayerVehicleID( i ) );
					}
					
					break;
				}
			}
			case 3: 
			{
			    showStats( playerid, GetPVarInt( playerid, "SpecID" ) );
			}
			case 4: 
			{
			    mysql_format:query( "SELECT `pIP` FROM `gb_sessions` WHERE BINARY `uName` = '%s' ORDER BY ID DESC LIMIT 25", Player[ GetPVarInt( playerid, "SpecID" ) ][uName]);
	    		mysql_tquery( mysql, query, "OnShowSessions", "dd", playerid, GetPVarInt( playerid, "SpecID" ) );
			}
			case 5: adminFrisk( playerid, GetPVarInt( playerid, "SpecID" ) );
			case 6: StopRecon( playerid, "~b~Spectate Exit");
        }
    }
	
    return 1;
}

hook OnPlayerExitedMenu(playerid) {
    ShowMenuForPlayer(GetPlayerMenu(playerid),playerid);
	return true;
}