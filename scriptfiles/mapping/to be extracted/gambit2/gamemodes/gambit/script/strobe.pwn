#include <YSI\y_hooks>
	
CMD:sl( playerid )
	return cmd_strobelight( playerid );
	
CMD:strobelight( playerid )
{
	new 
		bool: access = false, 
		vehicleid;
		
	switch( Player[playerid][uMember] )
	{
		case 1, 2, 3, 5, 8 : access = true;
	}
	
	if( !access )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( !( vehicleid = GetPlayerVehicleID( playerid ) ) )
		return SendClientMessage( playerid, C_WHITE, !""gbError"Для использован команды, Вам необходимо находиться в транспорте." );

	if( !GetStrobeValidVehicle( vehicleid ) )
		return SendClientMessage( playerid, C_WHITE, !""gbError"Вы не можете использовать данную команду в данном транспорте." );
	
	GetVehicleParamsEx( vehicleid, eng, light, other1, other2, other3, other4, other5 );
	if( strobelight_timer[ vehicleid ] == -1 )
	{
		strobelight_timer[ vehicleid ] = SetTimerEx( "OnVehicleStrobeLight", 250, true, "d", vehicleid );
		SendClientMessage( playerid, C_WHITE, ""gbInfo"Вы включили стробоскопы." );
	
		GetVehicleParamsEx( vehicleid, eng, light, other1, other2, other3, other4, other5 );
		SetVehicleParamsEx( vehicleid, eng, VEHICLE_PARAMS_ON, other1, other2, other3, other4, other5 );
		PlayerTextDrawSetString( playerid, Speed[2][playerid], "~w~lamp" );
	}
	else
	{	
		OnVehicleStrobeTimeOut( vehicleid );
		SendClientMessage( playerid, C_WHITE, ""gbInfo"Вы выключили стробоскопы." );
		PlayerTextDrawSetString( playerid, Speed[2][playerid], "~l~lamp" );
	}
	
	return 1;
}

function OnVehicleStrobeTimeOut( vehicleid )
{
	new 
		panels,
		doors,
		tires,
		lights;
			
	GetVehicleDamageStatus( vehicleid, panels, doors, lights, tires );
	UpdateVehicleDamageStatus( vehicleid, panels, doors, 0, tires );
	
	GetVehicleParamsEx( vehicleid, eng, light, other1, other2, other3, other4, other5 );
	SetVehicleParamsEx( vehicleid, eng, VEHICLE_PARAMS_OFF, other1, other2, other3, other4, other5 );
		
	strobelight_flash{ vehicleid } = 0;
	
	if( strobelight_timer[ vehicleid ] )
	{
		KillTimer( strobelight_timer[ vehicleid ] );
		strobelight_timer[ vehicleid ] = -1;
	}
	
	if( strobelight_time_out[ vehicleid ] )
	{
		KillTimer( strobelight_time_out[ vehicleid ] );
		strobelight_time_out[ vehicleid ] = -1;
	}
	
	return 1;
}

hook OnPlayerEnterVehicle( playerid, vehicleid, ispassenger )
{
	if( strobelight_time_out[ vehicleid ] )
	{
		KillTimer( strobelight_time_out[ vehicleid ] );
		strobelight_time_out[ vehicleid ] = -1;
	}
	
	return 1;
}

hook OnVehicleDeath( vehicleid, killerid )
{
	if( strobelight_timer[ vehicleid ] )
	{
		KillTimer( strobelight_timer[ vehicleid ] );
		strobelight_timer[ vehicleid ] = -1;
	}
	
	if( strobelight_time_out[ vehicleid ] )
	{
		KillTimer( strobelight_time_out[ vehicleid ] );
		strobelight_time_out[ vehicleid ] = -1;
	}
	return 1;
}

hook OnPlayerExitVehicle( playerid, vehicleid )
{
	if( strobelight_time_out[ vehicleid ] )
	{
		strobelight_time_out[ vehicleid ] = SetTimerEx( "OnVehicleStrobeTimeOut", 900000, false, "d", vehicleid );
	}
	
	return 1;
}

function OnVehicleStrobeLight( vehicleid )
{

	new 
		panels,
		doors,
		tires,
		lights;
		
	GetVehicleDamageStatus( vehicleid, panels, doors, lights, tires );
	
	switch( strobelight_flash{ vehicleid } )
	{
		case 0: UpdateVehicleDamageStatus( vehicleid, panels, doors, 2, tires );
		case 1: UpdateVehicleDamageStatus( vehicleid, panels, doors, 5, tires );
		case 2: UpdateVehicleDamageStatus( vehicleid, panels, doors, 2, tires );
		case 3: UpdateVehicleDamageStatus( vehicleid, panels, doors, 4, tires );
		case 4: UpdateVehicleDamageStatus( vehicleid, panels, doors, 5, tires );
		case 5: UpdateVehicleDamageStatus( vehicleid, panels, doors, 4, tires );	
	}
	
	strobelight_flash{ vehicleid }++;
	if( strobelight_flash{ vehicleid } > 5 )
	{
		strobelight_flash{ vehicleid } = 0;
	}

	return 1;
}

GetStrobeValidVehicle( vehicleid )
{
	if( fd_cars[0] <= vehicleid <= fd_cars[1] )
	{
		return 1;
	}
	else if( medicalcar[0] <= vehicleid <= medicalcar[1] )
	{
		return 1;
	}
	else if( lspdcars[0] <= vehicleid <= lspdcars[1] 
	|| sherifcar[0] <= vehicleid <= sherifcar[1]
	|| sasd_car[0] <= vehicleid <= sasd_car[1]
	)
	{
		return 1;
	}
	
	return 0;
}