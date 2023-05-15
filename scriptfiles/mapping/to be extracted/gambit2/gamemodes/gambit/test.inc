#include <YSI\y_hooks>

	

hook OnGameModeInit( )
{
	SetTimer( "OnTest3DTextLabels", 1000, true );
	return 1;
}


function OnTest3DTextLabels()
{
	for( new v; v < MAX_VEHICLES; v++ )
	{
		if( vehiclecallsign[ v ] )
		{
			if( IsValidDynamic3DTextLabel( vehicle3Dtext[ v ] ) )
			{
				printf( "[CALLSIGN][VALID] ID[%d]: %d", v, _: vehicle3Dtext[ v ] );
			}
			else 
			{
				printf( "[CALLSIGN][INVALID] ID[%d]: %d", v, _: vehicle3Dtext[ v ] );
			}
		}
		
		if( IsBuyingCar( v ) )
		{
			if( IsValidDynamic3DTextLabel( Car::[ v ][cNumberLabel] ) )
			{
				printf( "[NUBMER_PLATE][VALID] ID[%d]: %d", v, _: Car::[ v ][cNumberLabel] );
			}
			else 
			{
				printf( "[NUBMER_PLATE][INVALID] ID[%d]: %d", v, _: Car::[ v ][cNumberLabel] );
			}
		}
	}
	
	foreach( new i : Player)
	{
		if( GetPVarInt( i, "Player:UseAction" ) )
		{
			if( IsValidDynamic3DTextLabel( Player[i][uAction] ) )
			{
				printf( "[ACTION][VALID] ID[%d]: %d", i, _: Player[i][uAction] );
			}
			else 
			{
				printf( "[ACTION][INVALID] ID[%d]: %d", i, _: Player[i][uAction] );
			}
		}
	}
	
	return 1;
}
	