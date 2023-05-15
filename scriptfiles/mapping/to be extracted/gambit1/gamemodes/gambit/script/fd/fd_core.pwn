#include <YSI\y_hooks>

#define d_fd             		( 2170 )

new const
	fd_skins[] = { 
		8,
		16,
		27,
		42,
		50,
		51,
		61,
		70,
		71,
		90,
		93,
		96,
		97,
		153,
		187,
		191,
		192,
		211,
		216,
		219,
		228,
		233,
		251,
		252,
		255,
		268,
		274,
		275,
		276,
		277,
		278,
		279,
		295,
		302,
		303,
		304,
		305,
		308,
		309,
		311
	},
	
	Float: fd_clothes[][3] =
	{
		{ 1309.7570, -940.3437, 4001.0840 },
		{ -912.1944, -539.5333, 3501.0859 },
		{ 1893.9282, -2240.5261, 13.5469 }
	},
	
	Float: fd_assort[][3] = 
	{
		{ 1306.7933,-885.2131,39.5880 },
		{ 2786.4224,-1453.8165,30.4500 }
	};

hook OnGameModeInit()
{
	CreateDynamic3DTextLabel( "ALT", C_BLUE, 467.3643, 915.6750, 1954.5730, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID,1,-1,-1);

	for( new i; i < sizeof fd_clothes; i++ )
	{
		CreateDynamicPickup( 1275, 23, fd_clothes[i][0], fd_clothes[i][1], fd_clothes[i][2], -1 );
		CreateDynamic3DTextLabel("[ Одежда ]\n\n"cBLUE"ALT",0xFFFFFFFF,fd_clothes[i][0],fd_clothes[i][1],fd_clothes[i][2],5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1);
	}
	
	for( new i; i < sizeof fd_assort; i++ )
	{
		CreateDynamic3DTextLabel("[ Инструменты ]\n\n"cBLUE"ALT",0xFFFFFFFF,fd_assort[i][0],fd_assort[i][1],fd_assort[i][2],5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1);
	}
	
	fd_cars[0] = CreateVehicle( 573,1313.6118,-856.8167,40.2401,269.8964,3,1, 86400, 1 ); // FD 
	CreateVehicle( 544,1315.0327,-865.7567,39.8466,269.0402,3,3, 86400, 1 ); // FD 
	CreateVehicle( 407,1313.3126,-874.8549,39.8292,270.0467,3,3, 86400, 1 ); // FD 
	CreateVehicle( 407,1313.2894,-883.8282,39.8293,269.9419,3,3, 86400, 1 ); // FD 
	CreateVehicle( 490,1311.4906,-919.6075,38.4611,82.9313,3,1, 86400, 1 ); // FD 
	CreateVehicle( 490,1321.4136,-920.7893,37.5280,84.2006,3,1, 86400, 1 ); // FD 
	CreateVehicle( 416,2749.3489,-1465.0326,30.5915,0.1157,3,1, 86400, 1 ); // FD 
	CreateVehicle( 490,2749.3516,-1456.2462,30.5735,180.5907,3,3, 86400, 1 ); // FD 
	CreateVehicle( 490,2741.4307,-1440.3901,30.3973,359.9234,3,3, 86400, 1 ); // FD 
	CreateVehicle( 490,2741.3740,-1432.9762,30.3305,0.2206,3,3, 86400, 1 ); // FD 
	CreateVehicle( 416,2756.6543,-1461.4565,30.5992,179.9397,3,1, 86400, 1 ); // FD 
	CreateVehicle( 416,2765.8191,-1461.5331,30.5990,179.7232,3,1, 86400, 1 ); // FD 
	CreateVehicle( 416,2774.8137,-1461.5771,30.5984,179.5420,3,3, 86400, 1 ); // FD 
	CreateVehicle( 416,2783.7585,-1461.6184,30.6335,179.9354,3,3, 86400, 1 ); // FD 
	CreateVehicle( 418,1123.8796,-1365.0215,13.8192,359.9762,3,3, 86400, 1 ); // FD 
	CreateVehicle( 418,1119.6564,-1365.0955,13.8191,359.8546,3,3, 86400, 1 ); // FD 
	CreateVehicle( 426,1111.0364,-1359.5134,13.4699,269.4795,3,3, 86400, 1 ); // FD 
	CreateVehicle( 426,1111.1250,-1356.0370,13.4699,268.4016,3,3, 86400, 1 ); // FD 
	CreateVehicle( 442,1128.3752,-1364.6591,13.5290,359.3397,3,0, 86400, 1 ); // FD 
	CreateVehicle( 416,1118.0659,-1333.5603,13.8930,270.0001,3,3, 86400, 1 ); // FD 
	CreateVehicle( 416,1118.0627,-1328.6152,13.8930,269.9906,3,3, 86400, 1 ); // FD 
	CreateVehicle( 416,1118.0403,-1323.5149,13.8937,270.1957,3,3, 86400, 1 ); // FD 
	CreateVehicle( 490,1117.2635,-1318.5514,13.8222,269.5966,3,3, 86400, 1 ); // FD 
	CreateVehicle( 561,1128.6854,-1319.8348,13.5034,178.0370,3,3, 86400, 1 ); // FD 
	CreateVehicle( 560,1116.8999,-1338.2522,13.3837,270.2437,3,3, 86400, 1 ); // FD 
	CreateVehicle( 407,1036.6353,1311.4868,11.0884,325.0691,3,3, 86400, 1 ); // FD 
	CreateVehicle( 433,1031.8015,1314.7977,11.2272,325.5641,3,3, 86400, 1 ); // FD 
	CreateVehicle( 515,1052.7972,1309.1912,11.8833,359.4190,3,1, 86400, 1 ); // FD 
	CreateVehicle( 457,1077.6451,1359.3384,10.4633,160.2101,3,3, 86400, 1 ); // FD 
	CreateVehicle( 457,1081.0511,1359.6261,10.4662,158.5439,3,3, 86400, 1 ); // FD 
	CreateVehicle( 431,1105.8544,1358.9240,10.9043,270.0347,3,3, 86400, 1 ); // FD 
	CreateVehicle( 407,1105.6704,1349.3976,11.0834,269.7578,3,3, 86400, 1 ); // FD 
	CreateVehicle( 544,1107.0764,1344.4148,11.0835,270.2647,3,3, 86400, 1 ); // FD 
	CreateVehicle( 544,1107.0896,1339.4711,11.0834,270.3544,3,3, 86400, 1 ); // FD 
	CreateVehicle( 544,1107.1263,1334.6523,11.0835,270.4281,3,3, 86400, 1 ); // FD 
	CreateVehicle( 490,1154.1550,1349.8933,10.9275,181.1273,3,3, 86400, 1 ); // FD 
	CreateVehicle( 416,1170.1930,1334.5271,11.0154,89.9799,3,3, 86400, 1 ); // FD 
	CreateVehicle( 431,1148.0184,-1304.7659,13.7843,359.9784,3,3, 86400, 1 ); // FD 
	CreateVehicle( 487,1161.7598,-1376.3151,26.7638,269.8866,3,1, 86400, 1 ); // FD 
	CreateVehicle( 552,1946.8170,-2233.9766,13.2501,179.9832,3,1, 86400, 1 ); // FD 
	CreateVehicle( 497,1932.9457,-2247.0420,13.6663,180.9091,3,1, 86400, 1 ); // FD 
	CreateVehicle( 497,1910.7501,-2247.5061,13.6663,179.9535,3,1, 86400, 1 ); // FD 
	CreateVehicle( 433,1872.6165,-2203.0044,13.9836,218.6335,3,3, 86400, 1 ); // FD 
	CreateVehicle( 573,1877.6829,-2198.9207,14.1978,214.9118,3,1, 86400, 1 ); // FD 
	CreateVehicle( 431,1896.4644,-2199.5273,13.6469,179.5056,3,3, 86400, 1 ); // FD 
	CreateVehicle( 407,1896.5259,-2214.7283,13.7970,179.7371,3,1, 86400, 1 ); // FD 
	CreateVehicle( 544,1891.9148,-2214.9248,13.7796,180.4584,3,1, 86400, 1 ); // FD 
	CreateVehicle( 482,1881.3026,-2221.3181,13.6769,251.6451,3,3, 86400, 1 ); // FD 
	CreateVehicle( 428,1879.9730,-2224.9443,13.6780,251.0663,1,3, 86400, 1 ); // FD 
	CreateVehicle( 495,1867.8566,-2225.2439,13.9204,286.2699,3,1, 86400, 1 ); // FD 
	CreateVehicle( 490,1881.1206,-2264.1299,13.6768,288.9862,3,3, 86400, 1 ); // FD 
	CreateVehicle( 487,1883.2582,-2276.8936,13.7013,269.6567,3,1, 86400, 1 ); // FD 
	CreateVehicle( 487,1881.2004,-2295.8594,13.7047,265.8678,3,1, 86400, 1 ); // FD 
	CreateVehicle( 525,1879.8546,-2309.1792,13.4252,251.4781,3,3, 86400, 1 ); // FD 
	CreateVehicle( 525,1867.0238,-2309.4719,13.4285,288.2408,3,3, 86400, 1 ); // FD 
	CreateVehicle( 548,1915.0408,-2328.3813,15.0732,270.5222,3,1, 86400, 1 ); // FD 
	CreateVehicle( 563,1886.3131,-2363.1860,14.2932,179.1298,3,1, 86400, 1 ); // FD 
	CreateVehicle( 563,1862.6764,-2362.3311,14.3012,177.5732,3,1, 86400, 1 ); // FD 
	CreateVehicle( 417,1859.0869,-2397.4226,13.6910,270.0439,3,3, 86400, 1 ); // FD 
	CreateVehicle( 577,1970.4497,-2381.6895,13.4535,88.0375,3,1, 86400, 1 ); // FD 
	CreateVehicle( 515,1997.8214,-2261.4722,14.5747,92.0026,3,1, 86400, 1 ); // FD 
	CreateVehicle( 515,1997.4805,-2252.5415,14.5712,90.3949,3,1, 86400, 1 ); // FD 
	CreateVehicle( 471,368.6924,-1891.2263,1.1654,326.8329,3,1, 86400, 1 ); // FD 
	CreateVehicle( 471,366.2654,-1891.4102,1.1831,326.0092,3,1, 86400, 1 ); // FD 
	CreateVehicle( 471,363.7813,-1891.0966,1.2422,327.3581,3,1, 86400, 1 ); // FD 
	CreateVehicle( 424,358.4022,-1876.5515,2.6951,197.1404,3,1, 86400, 1 ); // FD 
	CreateVehicle( 472,358.5761,-1930.9285,0.2382,181.3073,3,1, 86400, 1 ); // FD 
	CreateVehicle( 490,1330.3442,-898.2162,39.7050,358.8330,3,3, 86400, 1 ); // FD
	CreateVehicle( 591, 1062.5326, 1229.9099, 11.3492, 0.0000, 3, 3, 86400, 1 ); 
	CreateVehicle( 591, 1067.0516, 1229.9065, 11.3492, 0.0000, 3, 3, 86400, 1 ); 
	CreateVehicle( 584, 1072.4465, 1230.1588, 11.8604, 0.0000, 3, 3, 86400, 1 );
	CreateVehicle( 591, 2010.6967, -2273.3440, 14.0749, 90.0000, 3, 3, 86400, 1 ); 
	CreateVehicle( 455,1868.5764,-2208.7559,13.8092,228.8699,3,3, 86400, 1 ); // FD
	fd_cars[1] = CreateVehicle( 584, 2011.7023, -2290.5916, 14.7749, 90.0000, 3, 3, 86400, 1 );
	
	for( new i; i < MAX_VEHICLES; i++ )
	{
		if( i >= fd_cars[0] && i <= fd_cars[1] )
		{
			V::[i][vHealth] = 1000.0;
			V::[i][vFuel] = MaxVehicleFuel[ GetVehicleModel( i ) - 400 ];
			
			V::[i][vehicle_boat] = 0;
			V::[i][vehicle_luke] = 0;
			V::[i][vehicle_luke_text] = Text3D: INVALID_3DTEXT_ID;
	
			switch( GetVehicleModel( i ) )
			{
				case 490:
				{
					V::[i][vInvSlot][0] = 340,V::[i][vInvSlot][1] = 340,
					V::[i][vInvSlot][3] = 457,V::[i][vInvSlot][4] = 457,V::[i][vInvSlot][5] = 457,
					V::[i][vInvSlot][6] = 435, V::[i][vInvSlot][7] = 435, V::[i][vInvSlot][2] = 435;

					V::[i][vInvSlotKol][0] = 3000,V::[i][vInvSlotKol][1] = 1,V::[i][vInvSlotKol][2] = 1,
					V::[i][vInvSlotKol][3] = 1,V::[i][vInvSlotKol][4] = 1,V::[i][vInvSlotKol][5] = 1,
					V::[i][vInvSlotKol][6] = 1, V::[i][vInvSlotKol][7] = 1;
				}

				case 426:
				{
					V::[i][vInvSlot][0] = 340,V::[i][vInvSlot][1] = 457,V::[i][vInvSlot][2] = 435,
					V::[i][vInvSlot][3] = 442;

					V::[i][vInvSlotKol][0] = 4000,V::[i][vInvSlotKol][1] = 1,V::[i][vInvSlotKol][2] = 1,
					V::[i][vInvSlotKol][3] = 1;
				}
				case 428:
				{
					V::[i][vInvSlot][0] = 340,V::[i][vInvSlot][1] = 457,V::[i][vInvSlot][2] = 435;

					V::[i][vInvSlotKol][0] = 4000,V::[i][vInvSlotKol][1] = 1,V::[i][vInvSlotKol][2] = 1;
				}

				case 573:
				{
					V::[i][vInvSlot][0] = 340,V::[i][vInvSlot][1] = 340,V::[i][vInvSlot][2] = 457,
					V::[i][vInvSlot][3] = 435, V::[i][vInvSlot][4] = 442;

					V::[i][vInvSlotKol][0] = 4000,V::[i][vInvSlotKol][1] = 4000,V::[i][vInvSlotKol][2] = 1,
					V::[i][vInvSlotKol][3] = 1,V::[i][vInvSlotKol][4] = 1;
				}
				case 544:
				{
					V::[i][vInvSlot][0] = 340,V::[i][vInvSlot][1] = 340,
					V::[i][vInvSlot][3] = 457,V::[i][vInvSlot][4] = 457,V::[i][vInvSlot][5] = 457,
					V::[i][vInvSlot][6] = 435, V::[i][vInvSlot][7] = 435, V::[i][vInvSlot][2] = 435;

					V::[i][vInvSlotKol][0] = 4000,V::[i][vInvSlotKol][1] = 4000,V::[i][vInvSlotKol][2] = 1,
					V::[i][vInvSlotKol][3] = 1,V::[i][vInvSlotKol][4] = 1,V::[i][vInvSlotKol][5] = 1,
					V::[i][vInvSlotKol][6] = 1, V::[i][vInvSlotKol][7] = 1;
				}
				case 416:
				{
					V::[i][vInvSlot][0] = 451,V::[i][vInvSlot][1] = 451,V::[i][vInvSlot][2] = 451,
					V::[i][vInvSlot][3] = 435,V::[i][vInvSlot][4] = 435,V::[i][vInvSlot][5] = 435,
					V::[i][vInvSlot][6] = 450,V::[i][vInvSlot][7] = 442;
					
					V::[i][vInvSlotKol][0] = 1,V::[i][vInvSlotKol][1] = 1,V::[i][vInvSlotKol][2] = 1,
					V::[i][vInvSlotKol][3] = 1,V::[i][vInvSlotKol][4] = 1,V::[i][vInvSlotKol][5] = 1,
					V::[i][vInvSlotKol][6] = 1,V::[i][vInvSlotKol][7] = 1;
				}
			}
		}
	}
	return 1;
}

hook OnPlayerConnect( playerid )
{
	SetPVarInt( playerid, "Passenger:VehicleID", INVALID_VEHICLE_ID );
	SetPVarInt( playerid, "Passenger:InVehicle", 0 );
	SetPVarInt( playerid, "Luke:VehicleID", INVALID_VEHICLE_ID );
	return 1;
}

hook OnPlayerDisconnect( playerid, reason )
{
	if( GetPVarInt( playerid, "Passenger:InVehicle" ) )
	{
		V::[GetPVarInt( playerid, "Passenger:VehicleID" )][vehicle_seat]--;
	}
	return 1;
}

hook OnPlayerEnterVehicle( playerid, vehicleid, ispassenger )
{
	if( ispassenger == 1 && GetAvailableSeat( vehicleid ) == -1 && GetVehicleAdditionalSeat( vehicleid ) != 0 )
	{
		if( V::[vehicleid][vehicle_seat] >= GetVehicleAdditionalSeat( vehicleid ) )
			return 1;
		
		SetPVarInt( playerid, "Passenger:VehicleID", vehicleid );
		SetPVarInt( playerid, "Passenger:InVehicle", 1 );
		
		TogglePlayerSpectating( playerid, 1 );
		
		PlayerSpectateVehicle( playerid, vehicleid );
		
		V::[vehicleid][vehicle_seat]++;
	}
	
	return 1;
}

hook OnPlayerKeyStateChange( playerid, newkeys, oldkeys )
{
	if( PRESSED( KEY_SECONDARY_ATTACK ) ) 
	{
		if( GetPVarInt( playerid, "Passenger:VehicleID" ) == INVALID_VEHICLE_ID
			&& !GetPVarInt( playerid, "Passenger:InVehicle" ) ) 
			return 1;
			
		PlayerExitAdditionalSeat( playerid );
	}
		
	else if( PRESSED( KEY_WALK ) )
	{
		if( GetPVarInt( playerid, "Passenger:VehicleID" ) == INVALID_VEHICLE_ID
			&& !GetPVarInt( playerid, "Passenger:InVehicle" ) )
		{
			new 
				Float: x,
				Float: y,
				Float: z;
				
			for( new i; i < MAX_VEHICLES; i++ )
			{
				if( !V::[i][vehicle_luke] )
					continue;
					
				GetVehiclePos( i, x, y, z );

				if( IsPlayerInRangeOfPoint( playerid, 8.0, x, y, z ) )
				{
					SetPlayerPos( playerid, 467.3643, 915.6750, 1954.5730 );
					SetPlayerVirtualWorld( playerid, i );
					SetPlayerInterior( playerid, 2 );
					SetPVarInt( playerid, "Luke:VehicleID", i );
					setHouseWeather( playerid );
					break;
				}
			}
		}
		
		if( GetPVarInt( playerid, "Luke:VehicleID" ) != INVALID_VEHICLE_ID )
		{
			if( IsPlayerInRangeOfPoint( playerid, 3.0, 467.3643, 915.6750, 1954.5730 ) )
			{
				if( !PlayerExitHelicopterInt( playerid ) )
				{
					SendClientMessage( playerid, C_WHITE, ""gbError"Люк закрыт, Вы не можете покинуть вертолет." );
				}
				else 
				{
					SendClientMessage( playerid, C_WHITE, ""gbAccess"Вы покинули вертолёт." );
				}
			}
		}
		
		
		if( Player[playerid][uMember] == 5 )
		{
			for( new i; i < sizeof fd_clothes; i++ )
			{
				if( IsPlayerInRangeOfPoint( playerid, 2.0, fd_clothes[i][0], fd_clothes[i][1], fd_clothes[i][2] ) )
				{
					if( Player[playerid][uIsPlayerJob][2] != 1 )
					{
						showPlayerDialog( playerid, d_fd, DIALOG_STYLE_MSGBOX, " ", 
							""gbInfo"Заступление на дежурство.\n\n\
							Вы желаете заступить на дежурство?", 
							"Да", "Нет"
						);
					}
					else 
					{
						showPlayerDialog( playerid, d_fd + 1, DIALOG_STYLE_MSGBOX, " ", 
							""gbInfo"Покинуть дежурство.\n\n\
							Вы желаете покинуть дежурство?", 
							"Да", "Нет"
						);
					}
					
					break;
				}
			}
			
			if( Player[playerid][uIsPlayerJob][2] != 1 )
				return 1;
				
			for( new i; i < sizeof fd_assort; i++ )
			{
				if( IsPlayerInRangeOfPoint( playerid, 2.0, fd_assort[i][0], fd_assort[i][1], fd_assort[i][2] ) )
				{
					showPlayerDialog( playerid, d_fd + 4, DIALOG_STYLE_LIST, " ", 
							""cBLUE"— Выберите инструменты:\n\
							"cWHITE"1."cGRAY" Получить аптечку.\n\ 
							"cWHITE"2."cGRAY" Получить огнетушитель.\n\ 
							"cWHITE"3."cGRAY" Получить бензопилу.", 
							"Далее", "Закрыть"
					);
					
					break;
				}
			}
		}
	}

	return 1;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) 
{
	if( dialog_cheat_use[playerid] == true ) 
		return 1;
	
	switch( dialogid )
	{
		case d_fd :
		{
			if( !response )
				return 1;
				
			showPlayerDialog( playerid, d_fd + 2, DIALOG_STYLE_LIST, " ", "\
				"cWHITE"1."cGRAY" Заступить на дежурство в рабочей одежде\n\
				"cWHITE"2."cGRAY" Заступить на дежурство в гражданской форме", 
				"Далее", "Закрыть"
			);

		}
		
		case d_fd + 1 :
		{
			if( !response )
				return 1; 
			
			SetPlayerColor( playerid,FracColor[0] );
			RemovePlayerAttachedObject( playerid,5 );
			RemovePlayerAttachedObject( playerid,7 );
			RemovePlayerAttachedObject( playerid,6 );
			
			Player[playerid][uIsPlayerJob][2] = 0;
			UpdatePlayerJob( playerid );
			gb_string[0] = EOS;
			switch( Player[playerid][uSex] )
			{
				case 1 : strcat( gb_string, "переоделся" );
				case 2 : strcat( gb_string, "переоделась" );
			}
			
			MeAction( playerid, gb_string, 1 );
			
			GetBackSkin( playerid );
			SendClientMessage( playerid, C_WHITE, ""gbAccess"Вы завершили своё дежурство." );
			
			RemoveStateItems( playerid );
		}
		
		case d_fd + 2 :
		{	
			if( !response )
				return 1;
				
			if( listitem == 0 )
			{
				return ShowSwitchSkinDialog( playerid );
			}
					
			Player[playerid][uJobSkin] = GetPlayerSkin( playerid );
			userUpdate( playerid, "uJobSkin", Player[playerid][uJobSkin] );
			SetPlayerSkin( playerid, Player[playerid][uJobSkin] );
			Player[playerid][uIsPlayerJob][2] = 1;
			UpdatePlayerJob( playerid );
			
			SetPlayerColor( playerid, FracColor[ Player[playerid][uMember] ] );
			
			SendMes( playerid, -1, ""gbAccess"Вы успешно вышли на дежурство." );
		}
		
		case d_fd + 3 :
		{
			if( !response )
				return showPlayerDialog( playerid, d_fd + 2, DIALOG_STYLE_LIST, " ", "\
				 "cWHITE"1."cGRAY" Заступить на дежурство в рабочей одежде\n\
				 "cWHITE"2."cGRAY" Заступить на дежурство в гражданской форме", 
				"Далее", "Закрыть"
			);
			
			if( listitem == 0 )
			{
				return ShowSwitchSkinDialog( playerid );
			}
			
			Player[playerid][uJobSkin] = fd_skins[ listitem - 1 ];
			userUpdate( playerid, "uJobSkin", Player[playerid][uJobSkin] );
			SetPlayerSkin( playerid, Player[playerid][uJobSkin] );
			Player[playerid][uIsPlayerJob][2] = 1;
			UpdatePlayerJob( playerid );
			SetPlayerColor( playerid, FracColor[ Player[playerid][uMember] ] );
			
			SendMes( playerid, -1, ""gbAccess"Вы успешно вышли на дежурство." );
		}
		
		case d_fd + 4 :
		{
			if( !response )	
				return 1;
				
			if( listitem == 0 )
			{
				return showPlayerDialog( playerid, d_fd + 4, DIALOG_STYLE_LIST, " ", 
						""cBLUE"— Выберите инструменты:\n\
						"cWHITE"1."cGRAY" Получить аптечку\n\ 
						"cWHITE"2."cGRAY" Получить огнетушитель\n\ 
						"cWHITE"3."cGRAY" Получить бензопилу", 
						"Далее", "Закрыть"
				);
			}
			
			else if( listitem == 1 )
			{
				GivePlayerItem( playerid, 434, 1 );	
				SendMes( playerid, -1, ""gbAccess"Вы получили аптечку, она находится в инвентаре." );
			}
			
			else if( listitem == 2 )
			{
				GivePlayerItem( playerid, 340, 1000 );
				SendMes( playerid, -1, ""gbAccess"Вы получили огнетушитель, он находится в инвентаре." );
			}
			
			else if( listitem == 3 )
			{
				GivePlayerItem( playerid, 523, 1 );
				SendMes( playerid, -1, ""gbAccess"Вы получили бензопилу, она находится в инвентаре." );
			}
		}
	}
	
	return 1;
}

hook OnVehicleDeath( vehicleid, killerid )
{
	foreach( new playerid : Player)
	{
		if( GetPVarInt( playerid, "Passenger:VehicleID" ) == vehicleid && GetPVarInt( playerid, "Passenger:InVehicle" ) )
		{
			PlayerExitAdditionalSeat( playerid );
			setPlayerHealth( playerid, 0.0 );
			break;
		}
		
		else if( GetPVarInt( playerid, "Luke:VehicleID" ) != INVALID_VEHICLE_ID )
		{
			PlayerExitHelicopterInt( playerid );
			setPlayerHealth( playerid, 0.0 );
			break;
		}
	}
	
	if( V::[ vehicleid ][ vehicle_water ][0] )
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

PlayerExitHelicopterInt( playerid )
{
	    
	new
	    vehicleid = GetPVarInt( playerid, "Luke:VehicleID" );
		
	if( !V::[vehicleid][vehicle_luke] )
	    return 0;

	new 
		Float: x,
		Float: y,
		Float: z,
		Float: angle;
		
			
	GetVehiclePos( vehicleid, x, y, z );
	GetVehicleZAngle( vehicleid, angle );
	
	x -= ( 8.0 * ( floatsin( -angle, degrees ) ) );
	y -= ( 8.0 * ( floatcos( -angle, degrees ) ) );
	
	SetPlayerPos( playerid, x, y, z );
	SetPlayerFacingAngle( playerid, angle - 180 );
	SetPlayerVirtualWorld( playerid, GetVehicleVirtualWorld( vehicleid ) );
	SetPlayerInterior( playerid, 0 );
	
	delData( playerid, "User:inInt" ); 
	updateWeather( playerid );
	
	SetPVarInt( playerid, "Luke:VehicleID", INVALID_VEHICLE_ID );
	return 1;
}

PlayerExitAdditionalSeat( playerid )
{	
	new 
		Float: x,
		Float: y,
		Float: z,
		Float: angle,
		_: vehicleid = GetPVarInt( playerid, "Passenger:VehicleID" );
		
	GetSpawnInfo( playerid, x, y, z, angle );
	SetSpawnInfo( playerid, 264, GetInventorySkinId( playerid ), x, y, z, angle, 0, 0, 0, 0, 0, 0 );
	
	SetPVarInt( playerid, "Passenger:VehicleID", INVALID_VEHICLE_ID );
	SetPVarInt( playerid, "Passenger:InVehicle", 0 );
	
	V::[vehicleid][vehicle_seat]--;
	
	if( V::[vehicleid][vehicle_seat] < 0 )
	{
		V::[vehicleid][vehicle_seat] = 0;
	}
	
	TogglePlayerSpectating( playerid, 0 );
}

GetVehicleAdditionalSeat( vehicleid )
{
	switch( GetVehicleModel( vehicleid ) )	
	{
		case 577 : return 60;
		case 497 : return 15;
		case 563 : return 22;
		case 417 : return 29;
		case 548 : return 48;
		case 416 : return 8;
		case 552, 544, 573, 495, 418, 428, 407, 487 : return 10;
		case 455 : return 12;
	}
	
	return 0;
}

ShowSwitchSkinDialog( playerid, dialogid = d_fd + 3 )
{
	
	vb_string[0] = EOS;
	
	strcat( vb_string, ""cBLUE"— Выберите одежду:\n" );
	for( new i; i < sizeof fd_skins; i++ )
	{
		format:gb_string( ""cWHITE"%d."cGRAY" Одежда #%d",
			i + 1,
			fd_skins[i]
		);
		
		strcat( vb_string, gb_string );
		
		if( sizeof fd_skins != i )
		{
			strcat( vb_string, "\n" );
		}
	}
	 
	return ShowPlayerDialog( playerid, dialogid, DIALOG_STYLE_LIST, " ", vb_string, "Далее", "Назад" );
}

UpdatePlayerJob( playerid )
{
	format:gb_string( "%d|%d|%d", 
		Player[playerid][uIsPlayerJob][0],
		Player[playerid][uIsPlayerJob][1], 
		Player[playerid][uIsPlayerJob][2]
	);
	
	userUpdateStr( playerid, "uIsPlayerJob", gb_string );
}