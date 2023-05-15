
new Float:fraction_spawn[][][] = {
	{ // Обычный спавн
		{ 1276.32, -1540.66, 13.0, 0.0 },
		{ 1293.3730,-1249.5225,13.5469, 0.0 },
		{ 1642.3522,-2332.4285,13.5469, 0.0 },
		{ 2189.6333,-2643.1455,13.5469, 0.0 },
		{ 2264.7957,-35.8585,26.4844, 0.0 }
	},
	{// Садок
		{ 60.8529, -334.7537, 2601.0859, 89.3708 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 }
	},
	{// Полиция
		{ 1527.8334,-1680.4747,2494.2458, 180.0 },
		{ -130.7128,-1891.7985,2501.0859, 90.0 },
		{ 409.1431,-1870.1115,2501.0859, 0.0 },
		{ 409.1431,-1870.1115,2501.0859, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 }
	},
	{// Медики
		{ 1162.9788,-1316.1796,2804.5207,90.0 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 }
	},
	{// CNN
		{ 1662.8215,-1648.3876,4704.3524,89.3648 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 }
	},

	{// Пожарники
		{ 1311.4906,-918.5745,4001.0840,86.4147 },
		{ -921.0436,-555.7059,3501.0859,171.6476 },
		{ 1891.6296,-2258.0356,13.5469,242.7334 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 }
	},
	{// Правительство
		{1469.9226,-1730.5280,910.5278,209.5771},
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 }
	},
	{// Комисариат
		{2330.0425,-43.3702,709.3535,176.7886},
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 }
	},
	{// SASD
		{634.1956,-584.7739,1994.0859, 90.0},
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 },
		{ 0.0, 0.0, 0.0, 0.0 }
	}
};

new fraction_int[][][] = {
	{// Обычный спавн
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 }
	},
	{
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 }
	},
	{// Полиция
		{ 1, 1 },
		{ 1, 1 },
		{ 1, 1 },
		{ 1, 1 },
		{ 0, 0 }
	},
	{// Медики
		{ 15, 26 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 }
	},
	{// CNN
		{ 1, 1 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 }
	},
	{// Пожарники
		{ 4, 2 },
		{ 3, 2 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 }
	},
	{// Правительство
		{ 1, 1 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 }
	},
	{// Комисариат
		{ 1, 1 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 }
	},
	{// SASD
		{ 6, 1 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 }
	}
	
};

function GetSpawnInfo( playerid, &Float: x, &Float: y, &Float: z, &Float: root ) 
{
	clear_massive();
	
	new 
		bool: spawned = true;
		
	if( GetPVarInt( playerid, "Spectate" ) )
	{
		x = getDataFloat( playerid, "PosSpecX" ); 
	    y = getDataFloat( playerid, "PosSpecY" ); 
	    z = getDataFloat( playerid, "PosSpecZ" );
		root = GetPVarFloat( playerid, "SpecAngle" );
		
		Player[playerid][uInt][0] = getData( playerid, "SpecInt" );
		Player[playerid][uInt][1] = getData( playerid, "SpecVT" );
		spawned = false;
	}
	
	if( GetPVarInt( playerid, "Passenger:VehicleID" ) != INVALID_VEHICLE_ID 
	&& GetPVarInt( playerid, "Passenger:InVehicle" )
	)
	{
		new
			vehicleid = GetPVarInt( playerid, "Passenger:VehicleID" );

		GetVehiclePos( vehicleid, x, y, z );
		GetVehicleZAngle( vehicleid, root );
		
		x += ( 6.0 * ( floatsin( -root + 90, degrees ) ) );
		y += ( 6.0 * ( floatcos( -root + 90, degrees ) ) );
		root -= 90.0;
		
		Player[playerid][uInt][0] = 0;
		Player[playerid][uInt][1] = GetVehicleVirtualWorld( vehicleid );
		
		spawned = false;
	}
	
	if( Player[playerid][uDeath] && spawned ) 
	{
		x = Player[playerid][uP][0]; 
		y = Player[playerid][uP][1]; 
		z = Player[playerid][uP][2];
		
		death_pos[ playerid ][ d_pos_x ] = x;
		death_pos[ playerid ][ d_pos_y ] = y;
		death_pos[ playerid ][ d_pos_z ] = z;
		death_pos[ playerid ][ d_world ] = Player[ playerid ][uInt][0];
		death_pos[ playerid ][ d_int ] = Player[ playerid ][uInt][1];
		
		TogglePlayerControllable( playerid, true );
		spawned = false;
	}

	if( Player[playerid][uArrest] ) {
		if( Player[playerid][uArrestCooler] ) {
			x = pr_cooler[ Player[ playerid ][uArrestCooler] - 1 ][0],
			y = pr_cooler[ Player[ playerid ][uArrestCooler] - 1 ][1],
			z = pr_cooler[ Player[ playerid ][uArrestCooler] - 1 ][2];
		}
		else {
			x = pr_camera[ Player[ playerid ][uArrestCamera] - 1 ][0],
			y = pr_camera[ Player[ playerid ][uArrestCamera] - 1 ][1],
			z = pr_camera[ Player[ playerid ][uArrestCamera] - 1 ][2];
		}	
		setPrisonWeather( playerid );
		spawned = false;
	}
	if( Player[playerid][uRole] == 6 && !Player[playerid][uArrest] ) {
		setPrisonSpawnLogin( playerid, x, y, z );
		spawned = false;
	}
	if( Player[playerid][uDMJail] && spawned ) {// Spawn в DeMorgan
		//setPlayerPos(playerid, 3958.6768,-942.3129,3.8427);
		x = 3958.6768, y = -942.3129, z = 3.8427, root = 0.0;
		
		Player[playerid][uInt][0] = 0;
		Player[playerid][uInt][1] = playerid + 1;
		
		SendMes( playerid, C_GRAY, ""gbInfo"Вы ещё не отсидели свой срок в Де Моргане." );
		spawned = false;
    }
	if( Player[playerid][uJail] ) {
		x = spawnJail[ Player[playerid][uJail] - 1 ][0],
		y = spawnJail[ Player[playerid][uJail] - 1 ][1],
		z = spawnJail[ Player[playerid][uJail] - 1 ][2];
		SendMes( playerid, C_GRAY, ""gbInfo"Вы ещё не отсидели свой срок." );
		spawned = false;
	}
	// 900
		
	if( Player[playerid][uLastTime] + (900) >= gettime() && Player[playerid][uLastTime] && spawned ) 
	{	
		x = Player[playerid][uP][0], 
		y = Player[playerid][uP][1],
		z = Player[playerid][uP][2];
		spawned = false;
	}
	else 
	{
		if( spawned && 
			( Player[playerid][uIsPlayerJob][0] == 1 
			|| Player[playerid][uIsPlayerJob][1] == 1 
			|| Player[playerid][uIsPlayerJob][2] == 1 ) 
		  ) 
		{
			if( !Player[playerid][uMember] ) 
			{
				Player[playerid][uSettings][1] = 0;
				Player[playerid][uIsPlayerJob][0] = 0, 
				Player[playerid][uIsPlayerJob][1] = 0, 
				Player[playerid][uIsPlayerJob][2] = 0;
				
				UpdatePlayerJob( playerid );
				RemoveStateItems( playerid );
				TogglePlayerControllable( playerid, true );
			}
			else 
			{
				new 
					f = Player[playerid][uMember], 
					sf = Player[playerid][uSubFrac];
					
				switch( Player[playerid][uMember] ) 
				{
					case 2: {// Копы
						x = fraction_spawn[ f ][ sf ][ 0 ], y = fraction_spawn[ f ][ sf ][ 1 ],
						z = fraction_spawn[ f ][ sf ][ 2 ], root = fraction_spawn[ f ][ sf ][ 3 ];
						Player[playerid][uInt][0] = fraction_int[ f ][ sf ][ 0 ],
						Player[playerid][uInt][1] = fraction_int[ f ][ sf ][ 1 ];
					}
					case 5: 
					{// Пожарники
						sf = Player[playerid][uSubFrac] - 1;
						x = fraction_spawn[ f ][ sf ][ 0 ], y = fraction_spawn[ f ][ sf ][ 1 ],
						z = fraction_spawn[ f ][ sf ][ 2 ], root = fraction_spawn[ f ][ sf ][ 3 ];
						Player[playerid][uInt][0] = fraction_int[ f ][ sf ][ 0 ],
						Player[playerid][uInt][1] = fraction_int[ f ][ sf ][ 1 ];
					}
					default: 
					{
						x = fraction_spawn[ f ][ 0 ][ 0 ], y = fraction_spawn[ f ][ 0 ][ 1 ],
						z = fraction_spawn[ f ][ 0 ][ 2 ], root = fraction_spawn[ f ][ 0 ][ 3 ];
						Player[playerid][uInt][0] = fraction_int[ f ][ 0 ][ 0 ],
						Player[playerid][uInt][1] = fraction_int[ f ][ 0 ][ 1 ];
					}
				}
				
				TogglePlayerControllable( playerid, true );
				spawned = false;
			}
		}
	}
	
	if( !Player[playerid][uMember] && Player[playerid][uSettings][1] == 1 ) 
	{
		Player[playerid][uSettings][1] = 0;
	}
	
	//
	if( spawned ) 
	{
		switch( Player[playerid][uSettings][1] ) {// Класс в настройках
			case 0: { // Стандартный спавн
				x = fraction_spawn[ 0 ][ Player[playerid][uRole] - 1 ][ 0 ], y = fraction_spawn[ 0 ][ Player[playerid][uRole] - 1 ][ 1 ],
				z = fraction_spawn[ 0 ][ Player[playerid][uRole] - 1 ][ 2 ], root = fraction_spawn[ 0 ][ Player[playerid][uRole] - 1 ][ 3 ];
				Player[playerid][uInt][0] = fraction_int[ 0 ][ Player[playerid][uRole] - 1 ][ 0 ],
				Player[playerid][uInt][1] = fraction_int[ 0 ][ Player[playerid][uRole] - 1 ][ 1 ];
				TogglePlayerControllable( playerid, true );
				spawned = false;
			}
			case 1: 
			{// Фракция
			
				new f = Player[playerid][uMember], 
					sf = Player[playerid][uSubFrac];
					
				switch( Player[playerid][uMember] ) {
					case 2: {// Копы
						x = fraction_spawn[ f ][ sf ][ 0 ], y = fraction_spawn[ f ][ sf ][ 1 ],
						z = fraction_spawn[ f ][ sf ][ 2 ], root = fraction_spawn[ f ][ sf ][ 3 ];
						Player[playerid][uInt][0] = fraction_int[ f ][ sf ][ 0 ],
						Player[playerid][uInt][1] = fraction_int[ f ][ sf ][ 1 ];
					}
					case 5: {// Пожарники
						sf = Player[playerid][uSubFrac] - 1;
						x = fraction_spawn[ f ][ sf ][ 0 ], y = fraction_spawn[ f ][ sf ][ 1 ],
						z = fraction_spawn[ f ][ sf ][ 2 ], root = fraction_spawn[ f ][ sf ][ 3 ];
						Player[playerid][uInt][0] = fraction_int[ f ][ sf ][ 0 ],
						Player[playerid][uInt][1] = fraction_int[ f ][ sf ][ 1 ];
					}
					default: {
						x = fraction_spawn[ f ][ 0 ][ 0 ], y = fraction_spawn[ f ][ 0 ][ 1 ],
						z = fraction_spawn[ f ][ 0 ][ 2 ], root = fraction_spawn[ f ][ 0 ][ 3 ];
						Player[playerid][uInt][0] = fraction_int[ f ][ 0 ][ 0 ],
						Player[playerid][uInt][1] = fraction_int[ f ][ 0 ][ 1 ];
					}
				}
				TogglePlayerControllable( playerid, true );
				spawned = false;
			}
			case 2: {
				if( spawned && Player[playerid][uHouse] ) {
					for( new h; h < MAX_HOUSE; h++ ) {
						if( HouseInfo[h][hID] == Player[playerid][uHouse] ) {
							x = HouseInfo[h][hExitPos][0],
							y = HouseInfo[h][hExitPos][1],
							z = HouseInfo[h][hExitPos][2],
							root = 0.0;
							Player[playerid][uInt][0] = HouseInfo[h][hExitInt];
							Player[playerid][uInt][1] = HouseInfo[h][hID];
							TogglePlayerControllable( playerid, true );
							setHouseWeather( playerid );
							//loadHouseInterior( h );
							spawned = false;
						}
					}
					
				}
				else if( spawned && !Player[playerid][uHouse] ) {
					x = fraction_spawn[ 0 ][ 0 ][ 0 ], y = fraction_spawn[ 0 ][ 0 ][ 1 ],
					z = fraction_spawn[ 0 ][ 0 ][ 2 ], root = fraction_spawn[ 0 ][ 0 ][ 3 ];
					Player[playerid][uInt][0] = fraction_int[ 0 ][ 0 ][ 0 ],
					Player[playerid][uInt][1] = fraction_int[ 0 ][ 0 ][ 1 ];
					
					SendMes(playerid,C_GRAY,""gbAccess"Возможно Вас выселили из дома или дом в котором Вы проживали был продан.");
					
					format( gb_string, sizeof gb_string,"%d|%d|%d|%d|%d|%d|%d|%d",Player[playerid][uSettings][0],Player[playerid][uSettings][1],Player[playerid][uSettings][2],
					Player[playerid][uSettings][3],Player[playerid][uSettings][4],Player[playerid][uSettings][5],Player[playerid][uSettings][6],Player[playerid][uSettings][7]);

					userUpdateStr( playerid, "uSettings", gb_string );
					TogglePlayerControllable( playerid, true );
					spawned = false;
					
				}	
			}
			
			case 4: 
			{// Там где вышел
				x = Player[playerid][uP][0], 
				y = Player[playerid][uP][1],
				z = Player[playerid][uP][2];
				TogglePlayerControllable( playerid, true );
				spawned = false;
			}
		}
	}

	ac_current_pos[ playerid ][ cp_x ] = x;
	ac_current_pos[ playerid ][ cp_y ] = y;
	ac_current_pos[ playerid ][ cp_z ] = z;
	
	return true;
}