		
	ataxils[0] = CreateVehicle(420,1088.9409,-1226.6272,16.0,178.6907,6,6,800);
	CreateVehicle(420,1092.6241,-1226.7338,16.0,178.9950,6,6,800);
	CreateVehicle(420,1096.3928,-1226.6588,16.0,180.8550,6,6,800);
	CreateVehicle(420,1099.9102,-1226.6177,16.0,180.6205,6,6,800);
	CreateVehicle(420,1103.6561,-1226.5134,16.0,181.6215,6,6,800);
	CreateVehicle(420,1107.1093,-1226.4722,16.0,181.7509,6,6,800);
	CreateVehicle(420,1110.7136,-1226.4169,16.0,181.3345,6,6,800);
	CreateVehicle(438,1085.2361,-1249.6957,16.0,0.1132,6,6,800);
	CreateVehicle(438,1088.8696,-1249.6790,16.0,357.9916,6,6,800);
	CreateVehicle(438,1092.8350,-1249.7706,16.0,359.5025,6,6,800);
	CreateVehicle(438,1096.8307,-1249.7848,16.0,359.9141,6,6,800);
	CreateVehicle(438,1100.8572,-1249.9136,16.0,359.3941,6,6,800);
	CreateVehicle(438,1105.0309,-1249.9475,16.0,359.0828,6,6,800);
	ataxils[1] = CreateVehicle(438,1109.0743,-1249.9226,16.0,358.7137,6,6,800);
	
	
	buscars[0] = CreateVehicle(431,1276.8282,-1795.0377,13.4941,90.3364,35,16,800); // медленный
	CreateVehicle(431,1276.8895,-1801.1270,13.4953,90.9786,25,13,800); // медленный
	CreateVehicle(431,1276.8611,-1823.0931,13.4853,88.7085,25,13,800); // медленный
	CreateVehicle(437,1276.8259,-1817.6543,13.5173,89.6227,3,7,800); // быстрый
	CreateVehicle(437,1276.9089,-1812.5516,13.5166,89.7969,12,44,800); // быстрый
	buscars[1] = CreateVehicle(437,1277.0083,-1806.7231,13.5188,90.5083,22,14,800); // быстрый
	
	
	dalncars[0] = CreateVehicle(498,2163.4971,-2313.3289,13.6160,314.2275,36,36,800);
	CreateVehicle(498,2166.8345,-2316.6970,13.6171,315.5631,13,120,800);
	CreateVehicle(515,2235.8130,-2245.9883,14.5792,45.0261,7,18,800);
	CreateVehicle(515,2228.1379,-2253.3562,14.5725,43.1278,2,15,800);
	CreateVehicle(515,2220.7446,-2260.6316,14.5755,44.0862,22,25,800);
	CreateVehicle(515,2213.2185,-2268.1628,14.5727,44.8789,7,22,800);
	CreateVehicle(498,2173.6616,-2266.3591,13.4380,225.9088,28,13,800);
	CreateVehicle(456,2168.0098,-2273.9182,13.5601,226.7312,24,9,800);
	CreateVehicle(499,2160.7366,-2280.4214,13.3709,225.8106,13,21,800);
	CreateVehicle(403,2199.3765,-2218.5076,14.1380,224.8252,41,12, 800); // 403 id дальнобой 
	CreateVehicle(403,2203.4631,-2214.7312,14.1581,223.4758,11,52, 800); // 403 id дальнобой 
	CreateVehicle(403,2206.8921,-2211.2883,14.1307,223.5612,31,22, 800); // 403 id дальнобой 
	CreateVehicle(403,2211.8689,-2206.3779,14.1554,223.7384,51,25, 800); // 403 id дальнобой 
	CreateVehicle(403,2215.9534,-2202.2053,14.1547,225.1878,41,15, 800); // 403 id дальнобой
	CreateVehicle(514,2179.7852,-2237.7822,13.9871,223.9288,3,42, 800); // 514 id дальнобой 
	CreateVehicle(514,2184.2124,-2233.4661,14.0335,224.0584,49,42, 800); // 514 id дальнобой 
	CreateVehicle(514,2188.6799,-2229.0642,14.0889,223.9040,0,12, 800); // 514 id дальнобой 
	CreateVehicle(514,2192.0776,-2225.7498,14.1237,224.1456,33,17, 800); // 514 id дальнобой 
	CreateVehicle(514,2195.9905,-2221.8831,14.1383,224.3720,53,27, 800); // 514 id дальнобой 
	dalncars[1] = CreateVehicle(414,2153.7668,-2289.6487,13.4742,225.7004,21,1,800);
	
	new temp_car;
	
	lspdcars[0] = CreateVehicle(482,1585.6781,-1667.7125,6.0198,268.7687,0,0, 86400); //
	vehicle_spawn[ lspdcars[0] ][vs_int] = 228, vehicle_spawn[ lspdcars[0] ][vs_world] = 2;
	LinkVehicleToInterior( lspdcars[0], 228 ), SetVehicleVirtualWorld( lspdcars[0], 2 );
	 
	temp_car = CreateVehicle(482,1585.5281,-1671.3903,6.0109,267.7208,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );
	 
	temp_car = CreateVehicle(482,1585.4904,-1675.3170,6.0163,269.3406,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );
	 
	temp_car = CreateVehicle(482,1585.2716,-1679.5311,6.0174,269.8594,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );
	 
	temp_car = CreateVehicle(426,1602.5762,-1671.9475,5.6873,87.5036,6,6, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(426,1602.5303,-1676.1494,5.6815,88.0579,44,44, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(426,1602.5138,-1680.0696,5.6859,89.1599,53,53, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(426,1602.5518,-1684.0306,5.6883,89.6018,3,3, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(426,1602.4972,-1687.8253,5.6776,86.3391,36,36, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(426,1602.5150,-1692.0813,5.6891,89.9075,1,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(426,1602.4989,-1696.1069,5.6884,90.2739,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(560,1602.8229,-1700.4170,5.7130,88.7527,36,36, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(560,1602.9325,-1704.4120,5.7142,88.7878,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(596,1595.2697,-1711.0776,5.6574,0.2872,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(596,1591.4028,-1710.9854,5.6589,359.3929,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(596,1587.5210,-1710.9144,5.6571,0.5979,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(596,1583.4302,-1710.9094,5.6571,1.0663,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(596,1578.4044,-1710.9591,5.6572,0.8608,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(596,1574.5748,-1710.9579,5.6586,358.8007,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(596,1570.6487,-1710.8843,5.6572,0.0033,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(596,1566.3141,-1710.8562,5.6910,0.5505,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(596,1562.8712,-1710.8749,5.6907,358.7613,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(596,1558.7554,-1710.7880,5.6573,359.9013,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(523,1545.9329,-1709.3306,5.4647,9.1882,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(523,1544.6133,-1709.0858,5.4622,9.6849,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(523,1543.2675,-1708.8724,5.4455,10.6779,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(523,1542.0211,-1707.9818,5.4605,7.0259,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(523,1540.0778,-1705.1028,5.4556,310.9596,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(523,1539.1809,-1704.0120,5.4612,310.2801,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(523,1538.1801,-1702.7490,5.4574,310.4323,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(523,1537.4031,-1701.1436,5.4541,311.3466,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(522,1535.9689,-1698.4130,5.5573,285.4010,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(522,1535.4657,-1696.7550,5.5575,287.4302,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(522,1535.1383,-1695.0640,5.5572,290.0769,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(522,1534.9124,-1693.1086,5.5575,294.2098,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(490,1529.3411,-1687.9637,5.8456,270.4045,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(490,1529.3143,-1683.3052,5.8456,270.2299,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(599,1526.6991,-1643.7687,5.9309,178.9796,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(599,1530.8153,-1643.7510,5.9312,178.6810,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(420,1534.6823,-1644.2002,5.5736,179.6379,6,6, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(420,1538.9232,-1644.2543,5.5736,179.4482,6,6, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(597,1546.3207,-1651.0652,5.4169,89.2627,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(597,1546.2509,-1655.2495,5.4168,88.8134,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(597,1546.0862,-1659.1881,5.4182,88.5915,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(597,1546.0912,-1663.3007,5.4168,89.2523,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(597,1545.9293,-1668.0299,5.4168,89.7495,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(597,1545.8369,-1672.0537,5.3684,87.5181,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(596,1545.5825,-1676.3236,5.6898,89.6674,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(596,1545.5510,-1680.2712,5.6898,89.5560,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(596,1545.4169,-1684.5277,5.6896,89.1657,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );

	temp_car = CreateVehicle(596,1545.3513,-1688.9188,5.6831,89.1797,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 2;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 2 );
	
	temp_car = CreateVehicle(497,2084.2214,-2149.8203,20.0991,46.2604,0,1, 86400 , 1); // Хеллипорт 
	temp_car = CreateVehicle(497,2100.1543,-2149.9546,20.0815,45.0553,0,1, 86400 , 1); // 
	temp_car = CreateVehicle(497,2101.5950,-2130.5957,20.0943,135.2576,0,1, 86400 , 1); // 
	temp_car = CreateVehicle(497,2076.4170,-2130.3159,20.1032,134.3672,0,1, 86400 , 1); // 
	temp_car = CreateVehicle(497,2049.5991,-2130.5474,20.0948,134.5204,0,1, 86400 , 1); // 

	temp_car = CreateVehicle(489,1586.4014,-1678.3949,5.9835,269.2853,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(489,1586.4205,-1673.2581,5.9808,270.2551,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(489,1586.4469,-1668.4515,5.9786,269.4784,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(601,1602.6704,-1671.3059,5.6517,91.0913,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(601,1602.6187,-1675.9663,5.6501,89.5505,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(528,1602.2057,-1680.3086,5.9484,89.1426,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(528,1602.1001,-1684.1462,5.9485,89.2458,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(528,1602.0607,-1688.2225,5.9488,89.5323,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(528,1602.0208,-1692.1461,5.9484,87.8034,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(427,1601.5417,-1696.1543,6.0902,89.7725,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(427,1601.5040,-1700.4457,6.0494,89.0530,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(427,1601.4839,-1704.7374,6.0910,88.5250,0,1, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(490,1595.8342,-1711.1423,5.8016,0.1062,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(490,1591.2596,-1711.4232,5.8018,0.1994,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(490,1587.3474,-1711.1443,5.8013,0.1971,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(490,1583.6570,-1711.0714,5.8032,1.1177,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );

	temp_car = CreateVehicle(490,1578.3435,-1710.8884,5.8415,359.8242,0,0, 86400); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 3;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 3 );
	
	temp_car = CreateVehicle(427,1526.6316,-1645.2024,6.0915,179.6966,0,1, 86400, 1 ); // центр
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	temp_car = CreateVehicle(427,1530.8550,-1645.1997,6.0921,180.0284,0,1, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(579,1534.8608,-1643.7509,5.8925,180.0020,0,0, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(579,1538.8191,-1643.6259,5.8956,180.7362,0,0, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(599,1546.3904,-1651.0746,5.9007,90.4282,0,1, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(599,1546.3407,-1654.9952,5.8995,89.6346,0,1, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(560,1546.5604,-1659.0068,5.7142,89.3259,0,0, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(560,1546.5719,-1663.3008,5.7175,90.6214,0,0, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(560,1546.6725,-1667.9121,5.7143,90.2842,0,0, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(560,1546.7051,-1672.2271,5.7175,88.2426,0,0, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(415,1546.7950,-1676.2197,5.6627,89.4050,0,1, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(415,1546.7924,-1680.3075,5.6634,90.2798,0,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(415,1546.6876,-1684.3812,5.6626,90.2699,0,1, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(415,1546.8107,-1688.6049,5.6636,90.5142,0,1, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(490,1528.7053,-1683.6584,5.8425,271.6880,0,0, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(490,1528.6531,-1687.9523,5.8416,270.1638,0,0, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(521,1535.2021,-1694.6859,5.4617,283.4576,1,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(521,1535.4280,-1696.1821,5.4616,283.2185,1,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(521,1535.5920,-1697.6707,5.4601,284.0596,1,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(522,1536.4541,-1699.6154,5.4876,303.1778,1,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(522,1537.2180,-1700.8889,5.4859,305.6326,1,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(522,1537.9224,-1702.1942,5.4875,305.3792,1,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(523,1539.0554,-1703.8665,5.4627,317.8989,0,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(523,1540.1779,-1705.0483,5.4623,316.5936,0,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(523,1541.3296,-1706.2784,5.4623,317.9324,0,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(523,1542.4735,-1707.4524,5.4623,319.3215,0,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(523,1543.8689,-1708.3864,5.4649,334.4580,0,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(523,1545.2157,-1709.2007,5.4601,332.4388,0,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(416,1560.7384,-1693.7556,6.1041,268.7408,0,0, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(596,1558.9553,-1711.7748,5.6786,359.5384,0,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(596,1562.6217,-1711.7516,5.6928,359.9986,0,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(596,1566.4672,-1711.7604,5.6919,359.6126,0,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(596,1570.1333,-1711.7130,5.6928,0.0720,0,1, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(596,1574.3733,-1711.7750,5.6921,0.0735,0,1, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(596,1578.5536,-1711.7227,5.6887,359.9363,0,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(596,1583.1229,-1711.7294,5.7049,0.3886,0,1, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(597,1587.1932,-1711.9344,5.7614,0.0306,0,1, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(597,1591.2719,-1712.0366,5.7720,0.0188,0,1, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(597,1595.4575,-1711.9642,5.7630,359.0894,0,1, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(426,1602.6185,-1704.3575,5.6883,88.2249,0,0, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(426,1602.6659,-1700.2499,5.7024,90.8211,0,0, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(426,1602.6583,-1696.1010,5.6954,90.7233,0,0, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(426,1602.6135,-1692.1311,5.6839,89.2635,1,1, 86400, 1 ); // 
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 );
	temp_car = CreateVehicle(426,1602.5970,-1688.0088,5.6865,87.7318,36,36, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(426,1602.5536,-1683.9420,5.6865,89.8604,43,43, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(426,1602.6190,-1680.0515,5.6873,88.1299,53,53, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(482,1586.1187,-1679.7321,6.0180,268.8322,0,0, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(482,1586.1418,-1675.6617,6.0140,270.9746,0,0, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	temp_car = CreateVehicle(482,1586.2565,-1671.6042,6.0130,270.4300,0,0, 86400, 1 ); //
	vehicle_spawn[ temp_car ][vs_int] = 228, vehicle_spawn[ temp_car ][vs_world] = 1;
	LinkVehicleToInterior( temp_car, 228 ), SetVehicleVirtualWorld( temp_car, 1 ); 
	lspdcars[1] = CreateVehicle(482,1586.1504,-1668.0452,6.0135,270.2974,0,0, 86400, 1 ); //
	vehicle_spawn[ lspdcars[1] ][vs_int] = 228, vehicle_spawn[ lspdcars[1] ][vs_world] = 1;
	LinkVehicleToInterior( lspdcars[1], 228 ), SetVehicleVirtualWorld( lspdcars[1], 1 ); 
	vehicle_spawn[ lspdcars[1] ][vs_int] = 228, vehicle_spawn[ lspdcars[1] ][vs_world] = 1;
	
	
	meria[0] = CreateVehicle(482,1405.4795,-1802.2202,13.7342,68.4884,0,0,86400); // Мэрия 1
	CreateVehicle(490,1404.9270,-1796.7960,13.4966,69.5901,0,0,86400); // Мэрия 2
	CreateVehicle(490,1404.6807,-1792.0476,13.4964,69.4212,0,0,86400); // Мэрия 3
	CreateVehicle(507,1404.4929,-1787.2014,13.1823,67.0562,0,0,86400); // Мэрия 4
	meria[1] = CreateVehicle(507,1403.9911,-1782.9432,13.1810,64.4274,0,0,86400); // Мэрия 5
	
	//Аренда авто!
	carsalon[0][0] = CreateVehicle(409,2068.9934,-1905.0581,13.3481,180.5433,-1,-1,86400); // автосалон №1 (Гетто)
	CreateVehicle(491,2065.6067,-1904.0929,13.3027,180.7523,-1,-1,86400); // автосалон №2 (Гетто)
	CreateVehicle(517,2062.4419,-1903.9573,13.3998,179.6575,-1,-1,86400); // автосалон №1 (Гетто)
	CreateVehicle(527,2059.1287,-1904.1017,13.2602,179.9636,-1,-1,86400); // автосалон №1 (Гетто)
	CreateVehicle(535,2055.8535,-1904.2860,13.3044,179.8137,-1,-1,86400); // автосалон №1 (Гетто)
	CreateVehicle(442,2052.5396,-1904.6290,13.3793,180.4318,0,0,86400); // автосалон №1 (Гетто)
	CreateVehicle(551,2069.3420,-1918.8177,13.3486,359.4314,-1,-1,86400); // автосалон №1 (Гетто)
	CreateVehicle(555,2065.4202,-1919.4617,13.2315,0.7095,-1,-1,86400); // автосалон №1 (Гетто)
	CreateVehicle(462,2062.8521,-1919.7321,13.1428,0.5258,-1,-1,86400); // автосалон №1 (Гетто)
	carsalon[1][0] = CreateVehicle(462,2061.3862,-1919.5995,13.1359,2.4131,-1,-1,86400); // автосалон №1 (Гетто)
	
	carsalon[0][1] = CreateVehicle(409,357.7865,-1808.8521,4.3474,359.8474,-1,-1,86400); // автосалон №2 (ЛС)
	CreateVehicle(442,353.5530,-1808.9697,4.3669,0.1600,0,0,86400); // автосалон №2 (ЛС)
	CreateVehicle(405,350.2563,-1809.2024,4.4073,1.0039,-1,-1,86400); // автосалон №2 (ЛС)
	CreateVehicle(412,347.1209,-1808.8239,4.3766,0.5165,-1,-1,86400); // автосалон №2 (ЛС)
	CreateVehicle(419,343.8349,-1809.6835,4.3076,0.7701,-1,-1,86400); // автосалон №2 (ЛС)
	CreateVehicle(421,340.7006,-1809.4426,4.3933,359.5387,-1,-1,86400); // автосалон №2 (ЛС)
	CreateVehicle(436,337.3437,-1809.1251,4.2818,359.8626,-1,-1,86400); // автосалон №2 (ЛС)
	CreateVehicle(467,334.0156,-1809.0062,4.2366,0.4116,-1,-1,86400); // автосалон №2 (ЛС)
	CreateVehicle(462,330.9431,-1809.2056,4.0806,3.2513,-1,-1,86400); // автосалон №2 (ЛС)
	carsalon[1][1] = CreateVehicle(462,327.7980,-1809.2627,4.0707,359.3671,-1,-1,86400); // автосалон №2 (ЛС)
	
	carsalon[0][2] = CreateVehicle(487,1991.3146,-2310.2952,13.7671,287.4415,-1,-1,86400); // 487
	CreateVehicle(487,1990.4380,-2292.3022,13.7005,283.4764,-1,-1,86400); // 487 _2
	CreateVehicle(469,2022.8711,-2351.8904,13.5601,317.7521,-1,-1,86400); // 469_1
	CreateVehicle(469,2036.7469,-2352.4893,13.5585,317.2421,-1,-1,86400); // 469_2
	CreateVehicle(511,2112.6824,-2426.3640,14.9194,178.0761,-1,-1,86400); // 511
	CreateVehicle(519,2046.6617,-2419.4417,14.4673,217.4800,-1,-1,86400); // 519
	carsalon[1][2] = CreateVehicle(593,2082.6697,-2388.7476,14.0118,157.5542,-1,-1,86400); // 593
	
	carsalon[0][3] = CreateVehicle(484,2329.4492,-2511.6851,-0.0344,272.7447,-1,-1,86400); // аренда лодок (№4)
	CreateVehicle(484,2330.9832,-2564.3540,0.4872,269.4326,-1,-1,86400); // аренда лодок (№4)
	CreateVehicle(454,2301.5959,-2542.5813,0.3969,270.3586,-1,-1,86400); // аренда лодок (№4)
	CreateVehicle(454,2301.6089,-2533.3120,-0.1231,270.0898,-1,-1,86400); // аренда лодок (№4)
	CreateVehicle(493,2300.0398,-2525.7759,-0.0173,270.7432,-1,-1,86400); // аренда лодок (№4)
	CreateVehicle(473,2319.2241,-2523.7314,0.0402,271.1984,-1,-1,86400); // аренда лодок (№4)
	CreateVehicle(473,2327.7637,-2523.7012,-0.2283,268.9990,-1,-1,86400); // аренда лодок (№4)
	CreateVehicle(446,2300.4255,-2550.3015,-0.7884,270.1352,-1,-1,86400); // аренда лодок (№4)
	CreateVehicle(452,2319.1509,-2552.1868,-0.6980,271.9871,-1,-1,86400); // аренда лодок (№4)
	carsalon[1][3] = CreateVehicle(452,2332.4011,-2552.1497,-0.7836,271.2569,-1,-1,86400); // аренда лодок (№4)
	
	medicalcar[0] = CreateVehicle( 416,1131.0857,-1348.6467,13.8968,180.0904,7,1,86400); // MD 
	CreateVehicle( 416,1126.0862,-1348.6383,13.8967,179.4821,7,1,86400); // MD 
	CreateVehicle( 416,1120.9939,-1348.5663,13.8967,179.7434,7,1,86400); // MD 
	CreateVehicle( 426,1115.9744,-1347.3896,13.4610,180.1266,7,7,86400); // MD 
	medicalcar[1] = CreateVehicle(426,1110.8997,-1347.3660,13.4618,178.9155,7,7,86400); // MD
	
	

	//Кары СНН от жустина!
	smicars[0] = CreateVehicle(488,1655.0829,-1636.8474,83.9916,270.2513,165,166,86400); // цвет 166,166 
	CreateVehicle(582,1670.5084,-1713.0643,20.5147,87.6457,135,1,86400); // цвет 135,1 
	CreateVehicle(582,1670.4374,-1716.7062,20.5208,89.0697,1,1,86400); // цвет 1,1 
	CreateVehicle(582,1670.4391,-1720.4296,20.5958,89.9975,35,1,86400); // цвет 36,1 
	CreateVehicle(405,1656.0365,-1695.6454,20.3331,180.1796,53,53,86400); // цвет 53,53
	CreateVehicle(561,1661.7842,-1695.5817,20.2780,180.8864,53,53,86400); // цвет 53,53
	smicars[1] = CreateVehicle(437,1633.0613,-1684.7795,13.5842,181.7419,53,53,86400); // цвет 53,53
	
	comm[0] = CreateVehicle(421,2298.9778,-40.1919,26.2870,179.0415,1,1,86400);
	comm[1] = CreateVehicle(421,2288.3879,-45.1409,26.2894,180.2202,1,1,86400);