#include <YSI\y_hooks>

new 
	train_npc;

hook OnGameModeInit()
{
    ConnectNPC( "Train", "Trainfix" );
	
    train_npc = AddStaticVehicle( 537, 1976.3766, -1954.1646, 13.2701, 266.3449, 0, 0 );
    return 1;
}

hook OnPlayerSpawn( playerid )
{
    if( IsPlayerNPC( playerid ) )
    {
        if( !strcmp( Player[ playerid ][ uName ], "Train", true ) )
        {
            PutPlayerInVehicle( playerid, train_npc, 0 ); 
        }
    }
	
    return 1;
}