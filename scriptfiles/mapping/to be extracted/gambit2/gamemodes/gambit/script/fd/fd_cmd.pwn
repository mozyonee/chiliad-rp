CMD:boat( playerid )
{
	if( Player[playerid][uMember] != 5 || Player[playerid][uIsPlayerJob][2] == 0 )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( GetPlayerState( playerid ) != PLAYER_STATE_DRIVER )
	    return SendClientMessage( playerid, C_WHITE, !""gbError"Вы должны находиться в вертолёте на месте пилота." );

	new
		vehicleid = GetPlayerVehicleID( playerid ),
		model = GetVehicleModel( vehicleid );
		
	if( vehicleid < fd_cars[0] && vehicleid > fd_cars[1] )
		return SendClientMessage( playerid, C_WHITE, !""gbError"Вы должны находиться в специализированном транспорте." );
		
	if( ( model != 563 ) && ( model != 548 ) && ( model != 577 ) && ( model != 417 ) )
	    return SendClientMessage( playerid, C_WHITE, !""gbError"Вы должны находиться в специализированном транспорте." );

	if( V::[vehicleid][vehicle_boat] == 0 )
	{
		new 
			Float: x,
			Float: y,
			Float: z,
			Float: z_angle;
			
		GetVehiclePos( vehicleid, x, y, z );
		GetVehicleZAngle( vehicleid, z_angle );
		
		V::[vehicleid][vehicle_boat] = CreateVehicle( 473, x, y, z - 5.0, z_angle, 3, 3, 800 );
		
		V::[ V::[vehicleid][vehicle_boat] ][vHealth] = 1000.0;
		V::[ V::[vehicleid][vehicle_boat] ][vFuel] = MaxVehicleFuel[ 473 - 400 ];	
		V::[ V::[vehicleid][vehicle_boat] ][vBuyingCar] = -1;
		
		SendClientMessage( playerid, C_WHITE, ""gbAccess"Вы выбросили спасательную шлюпку." );
	}
	else
	{
		DestroyVehicle( V::[vehicleid][vehicle_boat] );
		V::[vehicleid][vehicle_boat] = 0;
		SendClientMessage( playerid, C_WHITE, ""gbAccess"Вы удалили спасательную шлюпку." );
	}
	
	return 1;
}

CMD:fdheal( playerid, params[] )
{
	if( Player[playerid][uMember] != 5 || Player[playerid][uIsPlayerJob][2] == 0 )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "d", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE,""gbInfo"Введите: /heal [ id игрока ]");
		
	if( Player[params[0]][uJailSettings][2] != 0 ) 
		return SendClientMessage( playerid, C_WHITE,""gbError"Данный персонаж уже проходит реабилитацию." );
		
	if( Player[params[0]][uDeath] == 2 ) 
		return SendClientMessage( playerid, C_WHITE, ""gbError"Данный персонаж мёртв, его невозможно вылечить." );
		
	if( !IsPlayerLogged( params[0] ) || params[0] == playerid || IsPlayerNPC( params[0] )) 
		return SendClientMessage( playerid, C_WHITE, INCORRECT_PLAYER_ID );
	
	if(GetDistanceBetweenPlayers( playerid,params[0] ) > 5.0 
		|| GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld( params[0] ) 
	) 
		return SendClientMessage( playerid, C_WHITE,""gbError"Данного игрока нет рядом с Вами." );

	SendClientMessage(playerid,C_GRAY,""gbAccess"Вы использовали сумку с медикаментами.");
	
	format:gb_string( "использовал%s сумку с медикаментами",
		Player[ playerid ][ uSex ] == 2 ? ( "а" ) : ( "" )
	);
	
	MeAction( playerid, gb_string, 1 );
	
	ApplyAnimation( playerid, "MEDIC", "CPR", 4.0, 0, 1, 1, 0, 0, 1);
	
	if( Player[ params[0] ][ uHP ] + 50.0 < 100.0 ) 
	{
		setPlayerHealth( params[0], Player[ params[0] ][ uHP ] + 50.0 );
	}
	else 
	{
		setPlayerHealth( params[0], 100.0);
	}
	
	HealthPlayer( params[0] );
	
	return 1;
}

CMD:water( playerid )
{
	if( Player[playerid][uMember] != 5 || Player[playerid][uIsPlayerJob][2] == 0 )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
	
	if( GetPlayerState( playerid ) != PLAYER_STATE_DRIVER )
	    return SendClientMessage( playerid, C_WHITE, !""gbError"Вы должны находиться в вертолёте на месте пилота." );

	new
		vehicleid = GetPlayerVehicleID( playerid ),
		model = GetVehicleModel( vehicleid );
		
	if( vehicleid < fd_cars[0] && vehicleid > fd_cars[1] )
		return SendClientMessage( playerid, C_WHITE, !""gbError"Вы должны находиться в специализированном транспорте." );
		
	if( ( model != 563 ) && ( model != 548 ) && ( model != 577 ) && ( model != 417 ) && ( model != 577 ) )
	    return SendClientMessage( playerid, C_WHITE, !""gbError"Вы должны находиться в специализированном транспорте." );
	
	if( V::[ vehicleid ][ vehicle_water ][0] == 0 )
	{
		for( new i; i < 4; i++ )
		{
			V::[ vehicleid ][ vehicle_water ][ i ] = CreateObject( 18707, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 );
			AttachObjectToVehicle( V::[ vehicleid ][ vehicle_water ][ i ], vehicleid, 0.0, -3.3, -2.0, 0.0, 0.0, 0.0 );
		}
	}
	else 
	{
		for( new i; i < 4; i++ )
		{
			if( IsValidObject( V::[ vehicleid ][ vehicle_water ][ i ] ) ) 
			{
				DestroyObject( V::[ vehicleid ][ vehicle_water ][ i ] );
				V::[ vehicleid ][ vehicle_water ][ i ] = 0;
			}
		}
	}
	
	return 1;
}

CMD:fdobject( playerid )
{
	if( Player[playerid][uMember] != 5 || Player[playerid][uIsPlayerJob][2] == 0 )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	vb_string[0] = EOS;
	
	for( new i; i < sizeof fd_objects; i++ )
	{
		format:gb_string( ""cWHITE"%d."cGRAY" %s",
			i + 1,
			fd_objects[i][fd_obj_name]
		);
		
		strcat( vb_string, gb_string );
		
		if( sizeof fd_objects != i )
		{
			strcat( vb_string, "\n" );
		}
	}
	
	ShowPlayerDialog( playerid, d_fd_object, DIALOG_STYLE_LIST, " ", vb_string, "Выбрать", "Закрыть" );
	return 1;
}

CMD:dfdobject( playerid, params[] )
{
	if( Player[playerid][uMember] != 5 || Player[playerid][uIsPlayerJob][2] == 0 )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );
		
	if( sscanf( params, "d", params[0] ) ) 
	{
		return ShowPlayerDialog( playerid, d_fd_object + 1, DIALOG_STYLE_LIST, " ", 
			""cWHITE"1. "cGRAY"Удаление по ID: /delobject [ id ].\n\
			"cWHITE"2. "cGRAY"Удалить объект по клику.",
			"Выбрать", "Закрыть"
		);
	}
	
	params[0]--;
	
	if( params[0] < 0 || params[0] > MAX_OBJECT )
		return SendClientMessage( playerid, C_WHITE, ""gbError"Вы ввели неверный ID объекта." );
		
	if( Object[params[0]][fd_object_id] == 0 )
		return SendClientMessage( playerid, C_WHITE, ""gbError"Вы ввели неверный ID объекта." );
	
	for( new i; i < MAX_OBJECT; i++ ) 
	{
		if( !Object[i][fd_object_id] )
			continue;
			
		if( Object[params[0]][fd_object] == Object[i][fd_object] )
		{
			DestroyDynamicObject( Object[i][fd_object] );
			
			if( IsValidDynamic3DTextLabel( Object[i][fd_object_text] ) )
			{
				DestroyDynamic3DTextLabel( Object[i][fd_object_text] );
				Object[i][fd_object_text] = Text3D: INVALID_3DTEXT_ID;
			}
			
			ClearFDObjectData( i );
			CancelEdit( playerid );
			
			SendMes( playerid, C_WHITE, ""gbAccess"Вы удалили объект с ID: "cBLUE"%d", params[0] + 1 );
			break;
		}
	}
	
	return 1;
}

CMD:fdattach( playerid )
{
	if( Player[playerid][uMember] != 5 || Player[playerid][uIsPlayerJob][2] == 0 )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );	

	vb_string[0] = EOS;
		
	for( new i; i < sizeof fd_attach; i++ )
	{
		format:gb_string( ""cWHITE"%d."cGRAY" %s", 
			i + 1,
			fd_attach[i][fd_a_name]
		);
		
		strcat( vb_string, gb_string );
		
		if( sizeof fd_attach != i )
		{
			strcat( vb_string, "\n" );
		}
	}
	
	strcat( vb_string, "\n"cBLUE"— Удалить объекты" );
	showPlayerDialog( playerid, d_fd_attach, DIALOG_STYLE_LIST, " ", vb_string, "Выбрать", "Закрыть" );
	
	return 1;
}

CMD:fireshape( playerid, params[] )
{
	if( Player[playerid][uMember] != 5 || Player[playerid][uIsPlayerJob][2] == 0 )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );	
		
	if( sscanf( params, "d", params[0] ) ) 
		return SendClientMessage( playerid, C_WHITE, !""gbInfo"Введите: /fireshape [ id формы ( 1-3 | 0 - снять ) ]" );
		
	if( params[0] < 0 || params[0] > 3 )
		return SendClientMessage( playerid, C_WHITE, !""gbError"Вы ввели неверное значение формы. Значение должно быть: "cBLUE"1-3"cWHITE"." );
	
	if( params[0] == 0 )
	{
		SetPlayerSkin( playerid, Player[playerid][uJobSkin] );
		return SendMes( playerid, -1, ""gbAccess"Вы успешно сняли форму." );
	}
	
	switch( params[0] )
	{
		case 0 :
		{
			SetPlayerSkin( playerid, Player[playerid][uJobSkin] );
			return SendMes( playerid, -1, ""gbAccess"Вы успешно сняли форму." );
		}
		
		case 1 :
		{
			SetPlayerSkin( playerid, 277 );
		}
		
		case 2 :
		{
			SetPlayerSkin( playerid, 278 );
		}
		
		case 3 :
		{
			SetPlayerSkin( playerid, 279 );
		}
	}
	
	SendMes( playerid, -1, ""gbAccess"Вы успешно сменили форму." );
	
	gb_string[0] = EOS;
	switch( Player[playerid][uSex] )
	{
		case 1 : strcat( gb_string, "переоделся" );
		case 2 : strcat( gb_string, "переоделась" );
	}
	
	MeAction( playerid, gb_string, 1 );
	return 1;
}

CMD:luke( playerid )
{
	if( Player[playerid][uMember] != 5 || Player[playerid][uIsPlayerJob][2] == 0 )
		return SendClientMessage( playerid, C_WHITE, !NO_ACCESS );	
		
	if( GetPlayerState( playerid ) != PLAYER_STATE_DRIVER )
	    return SendClientMessage( playerid, C_WHITE, !""gbError"Вы должны находиться в вертолёте на месте пилота." );

	new
		vehicleid = GetPlayerVehicleID( playerid ),
		model = GetVehicleModel( vehicleid );
	
	if( vehicleid < fd_cars[0] && vehicleid > fd_cars[1] )
		return SendClientMessage( playerid, C_WHITE, !""gbError"Вы должны находиться в специализированном транспорте." );
	
	if( ( model != 417 ) && ( model != 563 ) && ( model != 548 ) )
	    return SendClientMessage( playerid, C_WHITE, !""gbError"Вы должны находиться в специализированном транспорте." );
		
	if( V::[vehicleid][vehicle_luke] == 0 )
	{
		new 
			Float: x,
			Float: y,
			Float: z,
			Float: z_angle;
			
		GetVehiclePos( vehicleid, x, y, z );
		GetVehicleZAngle( vehicleid, z_angle );
		
		x -= ( 30.0 * floatsin( -z_angle, degrees ) );
		y -= ( 30.0 * floatcos( -z_angle, degrees ) ); 
		z -= 2.0;
		
		V::[vehicleid][vehicle_luke] = 1;
		V::[vehicleid][vehicle_luke_text] = CreateDynamic3DTextLabel( 
			""cWHITE"[ Люк открыт ]\n\n"cBLUE"ALT",C_BLUE, 
			x,
			y,
			z,
			5.0,
			INVALID_PLAYER_ID,
			vehicleid,
			1,
			-1,
			-1
		);
		
		SendClientMessage( playerid, C_WHITE, !""gbAccess"Вы открыли люк вертолёта." );
	}
	else 
	{
		V::[vehicleid][vehicle_luke] = 0;
		
		if( IsValidDynamic3DTextLabel( V::[vehicleid][vehicle_luke_text] ) )
		{
			DestroyDynamic3DTextLabel( V::[vehicleid][vehicle_luke_text] );
			V::[vehicleid][vehicle_luke_text] = Text3D: INVALID_3DTEXT_ID;
		}
		
		SendClientMessage( playerid, C_WHITE, !""gbError"Вы закрыли люк вертолёта." );
	}
	
	return 1;
}
