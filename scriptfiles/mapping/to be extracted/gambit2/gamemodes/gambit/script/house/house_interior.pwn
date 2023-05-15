#include <YSI\y_hooks>


stock getPlayerHouseID( playerid ) {
	for( new h; h < sizeof HouseInfo; h++ ) {
		if( HouseInfo[h][hID] == Player[playerid][uHouse] ) return h;
	}
	return -1;
}

stock setHouseTexture( id, texture, type ) {
	if( texture == -1 ) return true;
	switch( type ) {
		case 1: {
			for( new i = HouseInfo[id][hHouseWall][0]; i < HouseInfo[id][hHouseWall][1] + 1; i++ ) {
				SetDynamicObjectMaterial( i, 0, int_wall_textures[ texture ][iwt_ob], int_wall_textures[ texture ][iwt_texture], int_wall_textures[ texture ][iwt_model], 0 );
			}
			//houseUpdate( HouseInfo[id][hID], "hWall", texture );
		}
		case 2: {
			for( new i = HouseInfo[id][hHouseFloor][0]; i < HouseInfo[id][hHouseFloor][1] + 1; i++ ) {
				SetDynamicObjectMaterial( i, 0, int_floor_textures[ texture ][iwt_ob], int_floor_textures[ texture ][iwt_texture], int_floor_textures[ texture ][iwt_model], 0 );
			}
			//houseUpdate( HouseInfo[id][hID], "hFloor", texture );
		}
		case 3: {
			for( new i = HouseInfo[id][hHouseRoof][0]; i < HouseInfo[id][hHouseRoof][1] + 1; i++ ) {
				SetDynamicObjectMaterial( i, 0, int_roof_textures[ texture ][iwt_ob], int_roof_textures[ texture ][iwt_texture], int_roof_textures[ texture ][iwt_model], 0 );
			}
			//houseUpdate( HouseInfo[id][hID], "hRoof", texture );
		}
		case 4: {
			for( new i = HouseInfo[id][hHouseDoor][0]; i < HouseInfo[id][hHouseDoor][1] + 1; i++ ) {
				//SetDynamicObjectMaterial( i, 0, int_door_textures[ texture ][iwt_ob], int_door_textures[ texture ][iwt_texture], int_door_textures[ texture ][iwt_model], 0 );
				SetDynamicObjectMaterial( i, 1, int_door_textures[ texture ][iwt_ob], int_door_textures[ texture ][iwt_texture], int_door_textures[ texture ][iwt_model], 0 );
				
			}
			//houseUpdate( HouseInfo[id][hID], "hDoor", texture );
		}
	}
	return true;
}

stock loadHouseInterior( id ) {
	new world = HouseInfo[id][hID],
		int = HouseInfo[id][hInterior];
	switch( int ) {
		//CreateDynamicObject(modelid, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz, worldid = world, interiorid = world, playerid = world, Float:streamdistance = 300.0);
		case 1: {
			HouseInfo[id][hHouseFloor][0] = CreateDynamicObject(19378, 541.72, -424.70, 1001.25,   0.00, 90.00, 0.00, world   );
			HouseInfo[id][hHouseFloor][1] = CreateDynamicObject(19378, 541.72, -424.70, 1000.19,   0.00, 90.00, 0.00, world  );
			HouseInfo[id][hHouseWall][0] = CreateDynamicObject(19395, 537.65, -421.06, 1002.98,   0.00, 0.00, -45.00, world, 5 );
			CreateDynamicObject(19459, 536.58, -424.71, 1002.98,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 546.02, -424.71, 1002.98,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 541.30, -419.99, 1002.98,   0.00, 0.00, 90.00, world, 5 );
			HouseInfo[id][hHouseWall][1] = CreateDynamicObject(19459, 541.30, -429.41, 1002.98,   0.00, 0.00, 90.00, world, 5 );
			
			CreateDynamicObject(1498, 537.16, -421.62, 1001.26,   0.00, 0.00, 45.00, world, 5 );
		
			HouseInfo[id][hHouseRoof][0] = CreateDynamicObject(19377, 541.72, -424.70, 1004.73,   0.00, 90.00, 0.00, world, 5 );
			HouseInfo[id][hHouseRoof][1] = CreateDynamicObject(19377, 541.72, -424.70, 1004.75,   0.00, 90.00, 0.00, world, 5 );
		}
		case 2: {
			HouseInfo[id][hHouseFloor][0] = CreateDynamicObject( 19378, 112.17, 82.93, 1045.24,   0.00, 90.00, 0.00, world, 5  );
			HouseInfo[id][hHouseFloor][1] = CreateDynamicObject( 19378, 112.17, 82.93, 1045.22,   0.00, 90.00, 0.00, world, 5  );
			HouseInfo[id][hHouseWall][0] = CreateDynamicObject(19459, 117.32, 82.96, 1047.04,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, 115.77, 79.92, 1047.04,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 107.86, 82.96, 1047.04,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 112.58, 87.69, 1047.04,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 112.58, 78.21, 1047.04,   0.00, 0.00, 90.00, world, 5 );
			HouseInfo[id][hHouseWall][1] = CreateDynamicObject(19459, 114.25, 75.19, 1047.04,   0.00, 0.00, 0.00, world, 5 );
			
			CreateDynamicObject(1498, 114.99, 79.94, 1045.30,   0.00, 0.00, 0.00, world, 5 );
			
			HouseInfo[id][hHouseRoof][0] = CreateDynamicObject(19377, 112.17, 82.93, 1048.81,   0.00, 90.00, 0.00, world, 5 );
			HouseInfo[id][hHouseRoof][1] = CreateDynamicObject(19377, 112.17, 82.93, 1048.83,   0.00, 90.00, 0.00, world, 5 );
			
		}
		case 3: {
			HouseInfo[id][hHouseFloor][0] = CreateDynamicObject(19378, -509.28, -81.57, 1002.54,   0.00, 90.00, 0.00, world, 5  );
			HouseInfo[id][hHouseFloor][1] = CreateDynamicObject(19378, -509.28, -81.57, 1002.54,   0.00, 90.00, 0.00, world, 5  );
			
			HouseInfo[id][hHouseWall][0] = CreateDynamicObject(19459, -514.41, -81.58, 1004.35,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -509.27, -77.91, 1004.35,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -503.05, -76.67, 1004.35,   0.00, 0.00, 105.00, world, 5 );
			CreateDynamicObject(19459, -504.15, -81.58, 1004.35,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -515.51, -76.67, 1004.35,   0.00, 0.00, -105.00, world, 5 );
			CreateDynamicObject(19459, -508.87, -86.30, 1004.35,   0.00, 0.00, 90.00, world, 5 );
			HouseInfo[id][hHouseWall][1] = CreateDynamicObject(19459, -518.49, -86.30, 1004.35,   0.00, 0.00, 90.00, world, 5 );
	
			CreateDynamicObject(1498, -510.05, -77.97, 1002.61,   0.00, 0.00, 0.00, world, 5 );
			
			HouseInfo[id][hHouseRoof][0] = CreateDynamicObject(19377, -509.28, -81.57, 1006.10,   0.00, 90.00, 0.00, world, 5 );
			HouseInfo[id][hHouseRoof][1] = CreateDynamicObject(19377, -509.28, -81.57, 1006.12,   0.00, 90.00, 0.00, world, 5 );
		}
		case 4: {
			HouseInfo[id][hHouseFloor][0] = CreateDynamicObject(19378, 324.62, -773.47, 998.57,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, 324.62, -763.87, 998.57,   0.00, 90.00, 0.00, world, 5  );
			HouseInfo[id][hHouseFloor][1] = CreateDynamicObject(19378, 335.08, -763.87, 998.57,   0.00, 90.00, 0.00, world, 5 );
			
			HouseInfo[id][hHouseWall][0] = CreateDynamicObject(19459, 327.39, -759.14, 1000.32,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, 320.99, -759.14, 1000.32,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 319.47, -763.88, 1000.32,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, 320.99, -768.14, 1000.32,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 327.39, -768.14, 1000.32,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 325.78, -758.94, 1000.32,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, 327.29, -763.66, 1000.32,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 333.68, -763.66, 1000.32,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 332.04, -758.81, 1000.32,   0.00, 0.00, 0.00, world, 5 );
			
			CreateDynamicObject(19459, 328.96, -772.87, 1000.32,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 319.47, -773.46, 1000.32,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 324.23, -777.40, 1000.32,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, 332.04, -765.31, 1000.32,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, 333.77, -768.14, 1000.32,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, 332.04, -768.51, 1000.32,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, 336.71, -765.31, 1000.32,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, 336.71, -768.49, 1000.32,   0.00, 0.00, 0.00, world, 5 );
			HouseInfo[id][hHouseWall][1] = CreateDynamicObject(19367, 336.97, -768.14, 1000.32,   0.00, 0.00, 90.00, world, 5 );
			
			CreateDynamicObject(1498, 320.21, -759.20, 998.60,   0.00, 0.00, 0.00, world, 5 );
			
			HouseInfo[id][hHouseDoor][0] = CreateDynamicObject(1502, 331.99, -764.53, 998.58,   0.00, 0.00, -90.00, world, 5 );
			CreateDynamicObject(1502, 326.51, -763.72, 998.58,   0.00, 0.00, 0.00, world, 5 );
			HouseInfo[id][hHouseDoor][1] = CreateDynamicObject(1502, 320.21, -768.15, 998.58,   0.00, 0.00, 0.00, world, 5 );
			
			HouseInfo[id][hHouseRoof][0] = CreateDynamicObject(19377, 335.08, -763.87, 1002.09,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, 324.62, -763.87, 1002.09,   0.00, 90.00, 0.00, world, 5 );
			HouseInfo[id][hHouseRoof][1] = CreateDynamicObject(19377, 324.62, -773.47, 1002.09,   0.00, 90.00, 0.00, world, 5 );
		}
		case 5: {
			HouseInfo[id][hHouseFloor][0] = CreateDynamicObject(19378, -675.19, -82.37, 1602.50,   0.00, 90.00, 0.00, world, 5  );
			CreateDynamicObject(19378, -664.75, -82.37, 1602.50,   0.00, 90.00, 0.00, world, 5   );
			CreateDynamicObject(19378, -675.19, -72.79, 1602.50,   0.00, 90.00, 0.00, world, 5  );
			CreateDynamicObject(19378, -674.03, -91.97, 1602.50,   0.00, 90.00, 0.00, world, 5 );
			HouseInfo[id][hHouseFloor][1] = CreateDynamicObject(19378, -664.75, -72.79, 1602.50,   0.00, 90.00, 0.00, world, 5  );
			
			HouseInfo[id][hHouseWall][0] = CreateDynamicObject(19459, -680.34, -79.18, 1604.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -680.34, -85.56, 1604.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -667.87, -87.08, 1604.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, -678.83, -82.69, 1604.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, -669.28, -82.69, 1604.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -663.15, -82.34, 1604.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -674.13, -77.96, 1604.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -675.66, -74.50, 1604.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -666.05, -74.50, 1604.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -675.64, -82.69, 1604.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -672.46, -82.69, 1604.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -667.64, -78.99, 1604.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -680.66, -87.08, 1604.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, -674.26, -87.08, 1604.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -669.64, -91.93, 1604.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -678.34, -91.93, 1604.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -674.11, -96.62, 1604.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, -667.64, -85.41, 1604.29,   0.00, 0.00, 0.00, world, 5 );
			HouseInfo[id][hHouseWall][1] = CreateDynamicObject(19459, -662.76, -82.69, 1604.29,   0.00, 0.00, 90.00, world, 5 );
			
			HouseInfo[id][hHouseRoof][0] = CreateDynamicObject(19377, -674.03, -91.97, 1606.04,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -675.19, -82.37, 1606.04,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -664.75, -82.37, 1606.04,   0.00, 90.00, 0.00, world, 5 );		
			CreateDynamicObject(19377, -675.19, -72.79, 1606.04,   0.00, 90.00, 0.00, world, 5 );
			HouseInfo[id][hHouseRoof][1] = CreateDynamicObject(19377, -664.75, -72.79, 1606.04,   0.00, 90.00, 0.00, world, 5 );
			
			CreateDynamicObject(1498, -680.29, -86.30, 1602.55,   0.00, 0.00, 90.00, world, 5 );
			HouseInfo[id][hHouseDoor][0] = CreateDynamicObject(1502, -673.51, -87.02, 1602.59,   0.00, 0.00, 180.00, world, 5 );
			CreateDynamicObject(1502, -667.65, -86.15, 1602.59,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(1502, -668.54, -82.69, 1602.59,   0.00, 0.00, 180.00, world, 5 );
			HouseInfo[id][hHouseDoor][1] = CreateDynamicObject(1502, -679.61, -82.75, 1602.59,   0.00, 0.00, 0.00, world, 5 );	
		}
		case 6: {
			HouseInfo[id][hHouseFloor][0] = CreateDynamicObject( 19378, -1870.60, 893.45, 1381.96,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1870.60, 883.87, 1381.96,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1870.60, 903.03, 1381.96,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1881.04, 903.03, 1381.96,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1881.04, 893.45, 1381.96,   0.00, 90.00, 0.00, world, 5 );
			HouseInfo[id][hHouseFloor][1] = CreateDynamicObject(19378, -1881.04, 883.87, 1381.96,   0.00, 90.00, 0.00, world, 5 );
		
			HouseInfo[id][hHouseWall][0] = CreateDynamicObject( 19367, -1866.96, 898.15, 1383.77,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -1865.45, 890.23, 1383.77,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -1865.45, 896.64, 1383.77,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -1870.16, 898.15, 1383.77,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, -1873.34, 898.15, 1383.77,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1876.04, 897.05, 1383.77,   0.00, 0.00, 135.00, world, 5 );
			CreateDynamicObject(19367, -1874.89, 899.73, 1383.77,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -1871.74, 902.89, 1383.77,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -1865.45, 902.91, 1383.77,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1876.41, 901.26, 1383.77,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1877.92, 902.77, 1383.77,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1877.92, 905.93, 1383.77,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -1873.22, 907.42, 1383.77,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -1863.61, 907.42, 1383.77,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -1871.68, 888.41, 1383.77,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -1870.16, 893.15, 1383.77,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1866.96, 893.15, 1383.77,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -1877.15, 891.18, 1383.77,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -1869.06, 886.47, 1383.77,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1871.68, 882.01, 1383.77,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -1875.47, 886.47, 1383.77,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1877.15, 884.78, 1383.77,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1876.20, 883.28, 1383.77,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1874.67, 881.76, 1383.77,   0.00, 0.00, 0.00, world, 5 );
			HouseInfo[id][hHouseWall][1] = CreateDynamicObject(19367, -1873.25, 881.94, 1383.77,   0.00, 0.00, 90.00, world, 5 );
	
			HouseInfo[id][hHouseRoof][0] = CreateDynamicObject(19377, -1870.60, 893.45, 1385.52,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1881.04, 893.45, 1385.52,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1881.04, 903.03, 1385.52,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1870.60, 903.03, 1385.52,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1870.60, 883.87, 1385.52,   0.00, 90.00, 0.00, world, 5 );
			HouseInfo[id][hHouseRoof][1] = CreateDynamicObject(19377, -1881.04, 883.87, 1385.52,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(1498, -1865.48, 895.90, 1382.01,   0.00, 0.00, 90.00, world, 5 );
			HouseInfo[id][hHouseDoor][0] = CreateDynamicObject(1502, -1870.95, 898.10, 1382.03,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(1502, -1872.60, 898.13, 1382.03,   0.00, 0.00, 180.00, world, 5 );
			CreateDynamicObject(1502, -1870.95, 893.15, 1382.03,   0.00, 0.00, 0.00, world, 5 );
			HouseInfo[id][hHouseDoor][1] = CreateDynamicObject(1502, -1876.25, 886.47, 1382.03,   0.00, 0.00, 0.00, world, 5 );
		}
		case 7: {
			
			HouseInfo[id][hHouseFloor][0] = CreateDynamicObject(19378, 2236.62, -668.18, 1082.99,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, 2236.62, -658.58, 1082.99,   0.00, 90.00, 0.00, world, 5  );
			CreateDynamicObject(19378, 2247.08, -658.58, 1082.99,   0.00, 90.00, 0.00, world, 5  );
			HouseInfo[id][hHouseFloor][1] = CreateDynamicObject(19378, 2247.08, -668.18, 1083.01,   0.00, 90.00, 0.00, world, 5 );
			
			HouseInfo[id][hHouseWall][0] = CreateDynamicObject(19395, 2241.93, -671.36, 1084.78,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 2249.68, -665.50, 1084.78,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, 2244.93, -668.17, 1084.78,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 2246.66, -672.87, 1084.78,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, 2244.93, -671.36, 1084.78,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, 2244.93, -664.98, 1084.78,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, 2241.93, -668.18, 1084.78,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, 2240.41, -669.76, 1084.78,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, 2244.31, -659.39, 1084.78,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, 2238.89, -671.28, 1084.78,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 2237.19, -666.66, 1084.78,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 2234.15, -672.87, 1084.78,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 2251.37, -668.14, 1084.78,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, 2241.20, -661.26, 1084.78,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, 2238.01, -661.26, 1084.78,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 2236.49, -661.90, 1084.78,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 2236.49, -652.32, 1084.78,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 2242.76, -656.52, 1084.78,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 2241.24, -653.88, 1084.78,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, 2243.91, -662.33, 1084.78,   0.00, 0.00, 45.00, world, 5 );
			CreateDynamicObject(19367, 2247.46, -659.39, 1084.78,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, 2246.58, -663.40, 1084.78,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, 2248.09, -661.89, 1084.78,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, 2248.09, -658.70, 1084.78,   0.00, 0.00, 0.00, world, 5 );
			HouseInfo[id][hHouseWall][1] = CreateDynamicObject(19459, 2232.46, -668.14, 1084.78,   0.00, 0.00, 0.00, world, 5 );
			
			HouseInfo[id][hHouseRoof][0] = CreateDynamicObject(19377, 2247.08, -668.18, 1086.55,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, 2247.08, -658.58, 1086.55,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, 2236.62, -658.58, 1086.55,   0.00, 90.00, 0.00, world, 5 );
			HouseInfo[id][hHouseRoof][1] = CreateDynamicObject(19377, 2236.62, -668.18, 1086.55,   0.00, 90.00, 0.00, world, 5 );
			
			HouseInfo[id][hHouseDoor][0] = CreateDynamicObject(1502, 2244.44, -662.86, 1083.04,   0.00, 0.00, 135.00, world, 5 );
			CreateDynamicObject(1502, 2241.92, -667.39, 1083.04,   0.00, 0.00, -90.00, world, 5 );
			CreateDynamicObject(1502, 2244.93, -672.11, 1083.04,   0.00, 0.00, 90.00, world, 5 );
			HouseInfo[id][hHouseDoor][1] = CreateDynamicObject(1502, 2237.22, -661.31, 1083.04,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(1498, 2241.97, -672.10, 1083.06,   0.00, 0.00, 90.00, world, 5 );
		}
		case 8: {
			HouseInfo[id][hHouseFloor][0] = CreateDynamicObject(19378, -675.19, -82.37, 1002.52,   0.00, 90.00, 0.00, world, 5  );
			CreateDynamicObject(19378, -664.75, -82.37, 1002.50,   0.00, 90.00, 0.00, world, 5  );
			CreateDynamicObject(19378, -675.19, -72.79, 1002.50,   0.00, 90.00, 0.0, world, 5  );
			HouseInfo[id][hHouseFloor][1] = CreateDynamicObject(19378, -664.75, -72.79, 1002.50,   0.00, 90.00, 0.00, world, 5  );
			
			HouseInfo[id][hHouseWall][0] = CreateDynamicObject(19459, -680.34, -79.18, 1004.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -680.34, -85.56, 1004.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -675.60, -87.08, 1004.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -665.99, -87.08, 1004.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, -678.83, -82.69, 1004.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, -667.64, -85.44, 1004.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -669.28, -82.69, 1004.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -667.64, -79.05, 1004.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -674.13, -77.96, 1004.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -669.55, -74.50, 1004.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -656.40, -87.08, 1004.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -660.47, -82.35, 1004.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -666.07, -80.00, 1004.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -659.67, -80.00, 1004.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -661.48, -75.25, 1004.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -675.64, -82.69, 1004.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -672.46, -82.69, 1004.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, -663.16, -74.50, 1004.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -665.90, -72.89, 1004.29,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -664.40, -71.39, 1004.29,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -661.22, -71.39, 1004.29,   0.00, 0.00, 90.00, world, 5 );
			HouseInfo[id][hHouseWall][1] = CreateDynamicObject(19459, -679.16, -74.50, 1004.29,   0.00, 0.00, 90.00, world, 5 );
	
			HouseInfo[id][hHouseDoor][0] = CreateDynamicObject(1502, -662.41, -74.50, 1002.59,   0.00, 0.00, 180.00, world, 5 );	
			CreateDynamicObject(1502, -668.54, -82.69, 1002.59,   0.00, 0.00, 180.00, world, 5 );
			CreateDynamicObject(1502, -679.61, -82.75, 1002.59,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(1502, -665.32, -80.00, 1002.59,   0.00, 0.00, 180.00, world, 5 );
			HouseInfo[id][hHouseDoor][1] = CreateDynamicObject(1502, -667.63, -86.19, 1002.59,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(1498, -680.29, -86.30, 1002.55,   0.00, 0.00, 90.00, world, 5 );
			HouseInfo[id][hHouseRoof][0] = CreateDynamicObject(19377, -675.19, -72.79, 1006.04,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -664.75, -72.79, 1006.04,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -664.75, -82.37, 1006.04,   0.00, 90.00, 0.00, world, 5 );
			HouseInfo[id][hHouseRoof][1] = CreateDynamicObject(19377, -675.19, -82.37, 1006.04,   0.00, 90.00, 0.00, world, 5 );
		}
		case 9: {
			HouseInfo[id][hHouseFloor][0] = CreateDynamicObject(19378, -1976.34, -603.29, 1199.57,   0.00, 90.00, 0.00, world, 5  );
			CreateDynamicObject(19378, -1965.86, -603.29, 1199.57,   0.00, 90.00, 0.00, world, 5  );
			CreateDynamicObject(19378, -1986.78, -603.29, 1199.57,   0.00, 90.00, 0.00, world, 5  );
			CreateDynamicObject(19378, -1986.78, -612.87, 1199.57,   0.00, 90.00, 0.00, world, 5  );
			CreateDynamicObject(19378, -1965.86, -612.87, 1199.57,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1986.78, -593.73, 1199.57,   0.00, 90.00, 0.00, world, 5  );
			CreateDynamicObject(19378, -1976.34, -593.73, 1199.57,   0.00, 90.00, 0.00, world, 5  );
			HouseInfo[id][hHouseFloor][1] = CreateDynamicObject(19378, -1965.86, -593.73, 1199.57,   0.00, 90.00, 0.00, world, 5  );
			
			HouseInfo[id][hHouseWall][0] = CreateDynamicObject(19367, -1981.50, -603.31, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -1976.38, -608.01, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -1986.26, -603.37, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, -1981.50, -606.48, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -1971.18, -606.48, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -1981.50, -600.15, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1971.18, -603.31, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -1971.18, -600.13, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1979.57, -598.63, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, -1976.38, -598.63, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1973.19, -598.63, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1970.00, -598.63, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1982.78, -598.63, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1979.00, -597.10, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1973.81, -597.10, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -1976.28, -595.58, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1984.30, -597.11, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1985.85, -595.61, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1989.02, -595.61, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1979.57, -608.01, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1973.20, -608.01, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1982.75, -608.01, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1970.03, -608.01, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -1990.53, -600.34, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1984.28, -609.53, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1985.85, -611.05, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1989.02, -611.05, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -1990.53, -609.94, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1968.50, -609.53, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1966.99, -611.05, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1963.83, -611.05, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -1962.27, -609.94, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -1962.27, -600.34, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -1966.38, -603.37, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1968.48, -597.11, 1201.36,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1966.91, -595.61, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			HouseInfo[id][hHouseWall][1] = CreateDynamicObject(19367, -1963.71, -595.61, 1201.36,   0.00, 0.00, 90.00, world, 5 );
			
			HouseInfo[id][hHouseRoof][0] = CreateDynamicObject(19377, -1986.78, -612.87, 1203.13,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1986.78, -603.29, 1203.13,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1986.78, -593.73, 1203.13,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1976.34, -603.29, 1203.13,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1965.86, -603.29, 1203.13,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1965.86, -593.73, 1203.13,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1976.34, -593.73, 1203.13,   0.00, 90.00, 0.00, world, 5 );
			HouseInfo[id][hHouseRoof][1] = CreateDynamicObject(19377, -1965.86, -612.87, 1203.13,   0.00, 90.00, 0.00, world, 5 );
			
			CreateDynamicObject(1498, -1977.16, -607.98, 1199.62,   0.00, 0.00, 0.00, world, 5 );
			HouseInfo[id][hHouseDoor][0] = CreateDynamicObject(1502, -1981.46, -607.24, 1199.62,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(1502, -1971.18, -607.24, 1199.62,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(1502, -1971.23, -599.34, 1199.62,   0.00, 0.00, -90.00, world, 5 );
			CreateDynamicObject(1502, -1981.51, -599.36, 1199.62,   0.00, 0.00, -90.00, world, 5 );
			HouseInfo[id][hHouseDoor][1] = CreateDynamicObject(1502, -1977.16, -598.67, 1199.62,   0.00, 0.00, 0.00, world, 5 );
		}
		case 10: {
			HouseInfo[id][hHouseFloor][0] = CreateDynamicObject(19378, 161.10, -1795.80, 1002.81,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, 168.77, -1796.12, 1006.35,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, 153.19, -1796.12, 1006.35,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, 171.16, -1786.53, 1006.35,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, 150.24, -1786.53, 1006.35,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, 160.71, -1786.53, 1006.35,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, 150.64, -1795.80, 1002.81,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(14394, 160.89, -1794.93, 1003.67,   0.00, 0.00, 90.00, world, 5 );//
			CreateDynamicObject(14394, 160.89, -1792.75, 1005.23,   0.00, 0.00, 90.00, world, 5 );//
			CreateDynamicObject(14394, 160.89, -1792.41, 1005.45,   0.00, 0.00, 90.00, world, 5 );//
			HouseInfo[id][hHouseFloor][1] = CreateDynamicObject(19378, 171.56, -1795.80, 1002.81,   0.00, 90.00, 0.00, world, 5 );
			
			HouseInfo[id][hHouseWall][0] = CreateDynamicObject(19395, 160.99, -1800.47, 1004.59,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 163.58, -1792.55, 1004.59,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, 163.58, -1798.94, 1004.59,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, 158.36, -1798.94, 1004.59,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, 166.64, -1794.89, 1004.59,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, 156.84, -1796.40, 1004.59,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 158.36, -1792.55, 1004.59,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, 165.11, -1796.40, 1004.59,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 167.35, -1800.47, 1004.59,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 154.59, -1800.47, 1004.59,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, 166.64, -1791.69, 1004.59,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 172.06, -1795.74, 1004.59,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 171.38, -1791.03, 1004.59,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, 155.31, -1794.89, 1004.59,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, 155.31, -1791.69, 1004.59,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 149.87, -1795.74, 1004.59,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 150.56, -1791.03, 1004.59,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 163.58, -1796.19, 1008.09,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 158.36, -1796.19, 1008.09,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, 156.84, -1791.45, 1008.09,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, 165.11, -1791.45, 1008.09,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, 167.75, -1790.33, 1008.09,   0.00, 0.00, 135.00, world, 5 );
			CreateDynamicObject(19367, 168.84, -1787.68, 1008.09,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, 154.21, -1790.35, 1008.09,   0.00, 0.00, -135.00, world, 5 );
			CreateDynamicObject(19459, 153.63, -1800.90, 1008.09,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 148.88, -1796.19, 1008.09,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, 150.46, -1791.45, 1008.09,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 171.45, -1791.45, 1008.09,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 168.33, -1800.90, 1008.09,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 173.05, -1796.19, 1008.09,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, 167.73, -1785.00, 1008.09,   0.00, 0.00, -135.00, world, 5 );
			CreateDynamicObject(19367, 154.21, -1785.00, 1008.09,   0.00, 0.00, 135.00, world, 5 );
			CreateDynamicObject(19459, 161.84, -1783.91, 1008.09,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, 152.23, -1783.91, 1008.09,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, 153.08, -1787.69, 1008.09,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, 151.93, -1784.99, 1008.09,   0.00, 0.00, 45.00, world, 5 );
			CreateDynamicObject(19367, 151.93, -1790.37, 1008.09,   0.00, 0.00, -45.00, world, 5 );
			CreateDynamicObject(19459, 148.62, -1786.67, 1008.09,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19440, 159.23, -1796.41, 1008.09,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19440, 160.82, -1796.41, 1008.09,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19440, 162.40, -1796.41, 1008.09,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19440, 163.29, -1797.12, 1008.09,   0.00, 0.00, 0.00, world, 5 );
			HouseInfo[id][hHouseWall][1] = CreateDynamicObject(19440, 163.45, -1797.12, 1008.09,   0.00, 0.00, 0.00, world, 5 );
			
			
			HouseInfo[id][hHouseDoor][0] = CreateDynamicObject(1502, 164.32, -1791.46, 1006.41,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(1502, 157.59, -1791.41, 1006.41,   0.00, 0.00, 180.00, world, 5 );
			CreateDynamicObject(1502, 153.13, -1788.44, 1006.41,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(1502, 163.57, -1799.68, 1002.89,   0.00, 0.00, 90.00, world, 5 );
			HouseInfo[id][hHouseDoor][1] = CreateDynamicObject(1502, 158.42, -1799.68, 1002.89,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(1498, 160.21, -1800.44, 1002.85,   0.00, 0.00, 0.00, world, 5 );
			
			
			HouseInfo[id][hHouseRoof][0] = CreateDynamicObject(19377, 168.77, -1795.80, 1006.33,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, 163.51, -1801.13, 1006.33,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, 153.18, -1795.80, 1006.33,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, 167.96, -1796.16, 1009.87,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, 157.48, -1796.16, 1009.87,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, 147.02, -1796.16, 1009.87,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, 167.96, -1786.55, 1009.87,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, 157.48, -1786.55, 1009.87,   0.00, 90.00, 0.00, world, 5 );
			HouseInfo[id][hHouseRoof][1] = CreateDynamicObject(19377, 147.02, -1786.55, 1009.87,   0.00, 90.00, 0.00, world, 5 );
		}
		case 11: {
			HouseInfo[id][hHouseFloor][0] = CreateDynamicObject(19378, -1614.05, 494.42, 1019.57,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1621.89, 502.16, 1021.27,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1603.59, 494.42, 1019.57,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1593.13, 494.42, 1019.57,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1593.13, 484.86, 1019.57,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1603.59, 484.86, 1019.57,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1614.05, 484.86, 1019.57,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1593.13, 504.02, 1019.57,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1603.59, 504.02, 1019.57,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1614.05, 504.02, 1019.57,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1609.63, 485.46, 1023.05,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19378, -1599.19, 495.04, 1023.05,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(14394, -1620.65, 496.49, 1020.43,   0.00, 0.00, 90.00, world, 5 );// Лестница
			CreateDynamicObject(14394, -1615.85, 501.31, 1022.13,   0.00, 0.00, 0.00, world, 5 );// Лестница
			HouseInfo[id][hHouseFloor][1] = CreateDynamicObject(19378, -1609.55, 495.04, 1023.05,   0.00, 90.00, 0.00, world, 5 );
			
			HouseInfo[id][hHouseWall][0] = CreateDynamicObject(19395, -1619.19, 491.25, 1021.33,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -1614.46, 489.75, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1619.19, 494.45, 1021.33,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1619.19, 497.64, 1021.33,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1616.87, 495.73, 1021.33,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1615.20, 497.25, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -1615.14, 499.77, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1619.19, 500.84, 1021.33,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1613.57, 498.77, 1021.33,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -1615.11, 494.22, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1611.92, 494.22, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1606.09, 493.11, 1021.33,   0.00, 0.00, 45.00, world, 5 );
			CreateDynamicObject(19459, -1610.41, 498.95, 1021.33,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19395, -1608.77, 494.22, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1608.57, 488.65, 1021.33,   0.00, 0.00, 45.00, world, 5 );
			CreateDynamicObject(19367, -1603.42, 492.00, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, -1601.91, 490.48, 1021.33,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1606.63, 487.54, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1603.46, 487.54, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1601.91, 487.28, 1021.33,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -1601.91, 496.83, 1021.33,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -1605.71, 501.57, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1600.26, 492.00, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1597.08, 492.00, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1600.39, 485.79, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1597.21, 485.79, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1593.92, 492.00, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1594.04, 485.79, 1021.33,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -1592.42, 487.29, 1021.33,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1616.87, 495.73, 1024.81,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1615.20, 497.25, 1024.81,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -1615.14, 499.77, 1024.81,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1619.19, 494.45, 1024.81,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1619.19, 497.64, 1024.81,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1619.19, 500.84, 1024.81,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1618.15, 494.09, 1024.81,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1613.58, 495.73, 1024.81,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -1605.54, 499.77, 1024.81,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, -1612.05, 494.23, 1024.81,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1613.58, 492.56, 1024.81,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1608.85, 494.23, 1024.81,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1606.18, 493.13, 1024.81,   0.00, 0.00, 45.00, world, 5 );
			CreateDynamicObject(19367, -1605.08, 490.45, 1024.81,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1613.58, 489.37, 1024.81,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19459, -1609.79, 488.98, 1024.81,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19395, -1607.37, 495.80, 1024.81,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1607.37, 498.98, 1024.81,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(19367, -1603.51, 491.99, 1024.81,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19367, -1600.33, 491.99, 1024.81,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -1595.92, 499.77, 1024.81,   0.00, 0.00, 90.00, world, 5 );
			CreateDynamicObject(19459, -1598.83, 495.02, 1024.81,   0.00, 0.00, 0.00, world, 5 );
			HouseInfo[id][hHouseWall][1] = CreateDynamicObject(19367, -1616.71, 495.73, 1021.33,   0.00, 0.00, 0.00, world, 5 );	

			HouseInfo[id][hHouseRoof][0] = CreateDynamicObject(19377, -1615.16, 495.07, 1026.59,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1604.70, 495.07, 1026.59,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1594.22, 495.07, 1026.59,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1615.16, 485.47, 1026.59,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1604.70, 485.47, 1026.59,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1594.22, 485.47, 1026.59,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1611.47, 492.52, 1023.03,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1601.00, 492.52, 1023.03,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1590.52, 492.52, 1023.03,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1621.97, 489.37, 1023.03,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1605.66, 482.89, 1023.03,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1595.20, 482.89, 1023.03,   0.00, 90.00, 0.00, world, 5 );
			CreateDynamicObject(19377, -1608.40, 502.14, 1023.03,   0.00, 90.00, 0.00, world, 5 );
			HouseInfo[id][hHouseRoof][1] = CreateDynamicObject(19377, -1597.95, 502.14, 1023.03,   0.00, 90.00, 0.00, world, 5 );
			
			CreateDynamicObject(1498, -1619.13, 490.51, 1019.61,   0.00, 0.00, 90.00, world, 5 );
			HouseInfo[id][hHouseDoor][0] = CreateDynamicObject(1502, -1612.84, 494.24, 1023.07,   0.00, 0.00, 0.00, world, 5 );
			CreateDynamicObject(1502, -1607.37, 495.05, 1023.07,   0.00, 0.00, 90.00, world, 5 );	
			CreateDynamicObject(1502, -1601.97, 491.26, 1019.57,   0.00, 0.00, -90.00, world, 5 );
			CreateDynamicObject(1502, -1609.55, 494.17, 1019.57,   0.00, 0.00, 0.00, world, 5 );
			HouseInfo[id][hHouseDoor][1] = CreateDynamicObject(1502, -1615.89, 494.17, 1019.57,   0.00, 0.00, 0.00, world, 5 );			
		}
	}
	setHouseTexture( id, HouseInfo[id][hWall], 1 ),
	setHouseTexture( id, HouseInfo[id][hFloor], 2 ),
	setHouseTexture( id, HouseInfo[id][hRoof], 3 ),
	setHouseTexture( id, HouseInfo[id][hDoor], 4 );
	return true;
}

CMD:sss( playerid, params[] ) {
	SendMes( playerid, -1, "%d", Streamer_CountVisibleItems( playerid, STREAMER_TYPE_OBJECT ) );//Streamer_CountItems(  STREAMER_TYPE_OBJECT ) );
	return true;
}

CMD:sss1( playerid, params[] ) {
	SendMes( playerid, -1, "%d", Streamer_GetVisibleItems( STREAMER_TYPE_OBJECT ) );
	return true;
}

CMD:sss2( playerid, params[] ) {
	if( sscanf( params, "i", params[0] ) ) return true;
	Streamer_SetVisibleItems( STREAMER_TYPE_OBJECT, params[0] );
	SendMes( playerid, -1, "NEW LIMIT: %d",  Streamer_GetVisibleItems( STREAMER_TYPE_OBJECT ) );
	return true;
}

CMD:sss3( playerid, params[] ) {
	if( sscanf( params, "d", params[0] ) ) return true;
	Streamer_ToggleErrorCallback( params[0] ); 
	return true;
}

hook OnGameModeInit() {
	// Коробка 1
	house_object_interior[0] = CreateObject( 19378, 541.72, -424.70, 1001.19,   0.00, 90.00, 0.00   );
	// »нтерьер коробка є 2 by Jew;
	CreateObject( 19378, 112.17, 82.93, 1045.23,   0.00, 90.00, 0.00  );
	// »нтерьер коробка є 3 by Jew;
	CreateObject(19378, -509.28, -81.57, 1002.54,   0.00, 90.00, 0.00  );
	// »нтерьер 1э, 3к є 1 by Jew;
	CreateObject(19378, 324.62, -763.87, 998.55,   0.00, 90.00, 0.00  );
	// »нтерьер 1э, 3к є 2 by Jew;
	CreateObject(19378, -675.19, -82.37, 1602.47,   0.00, 90.00, 0.00 );
	// »нтерьер 1э, 4к є 1 by Jew;
	CreateObject(19378, -1870.60, 893.45, 1381.94,   0.00, 90.00, 0.00 );
	// »нтерьер 1э, 4к є 2 by Jew;
	CreateObject(19378, 2247.08, -668.18, 1082.99,   0.00, 90.00, 0.00 );
	// »нтерьер 1э, 5к є 1 by Jew;
	CreateObject(19378, -675.19, -82.37, 1002.50,   0.00, 90.00, 0.00 );
	// »нтерьер 1э, 5к є 2 by Jew;
	CreateObject(19378, -1976.34, -603.29, 1199.57,   0.00, 90.00, 0.00  );
	// »нтерьер 2э, 5к є 1 by Jew;
	CreateObject(19378, 161.10, -1795.80, 1002.80,   0.00, 90.00, 0.00  );
	// »нтерьер 2э, 5к є 2 by Jew;
	house_object_interior[1] = CreateObject(19378, -1614.05, 494.42, 1019.57,   0.00, 90.00, 0.00 );

	return true;
}