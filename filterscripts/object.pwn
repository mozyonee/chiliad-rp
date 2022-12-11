#include <a_samp>
#include <streamer>

public OnGameModeInit()
{
	LSPDExterior();
	LSFDExterior();
    CPExterior();
    LSFDInterior();
    BankInterior();
	return 1;
}

LSPDExterior() {
    new LSPD_Exterior;
	LSPD_Exterior = CreateDynamicObject(11245, 1540.661376, -1633.898193, 18.491310, -0.000027, -70.100006, -137.899978, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(LSPD_Exterior, 0, 7009, "vgndwntwn1", "newpolice_sa", 0x00000000);
	SetDynamicObjectMaterial(LSPD_Exterior, 1, 1560, "7_11_door", "cj_sheetmetal2", 0x00000000);
	LSPD_Exterior = CreateDynamicObject(11245, 1540.650878, -1635.347290, 18.491310, -0.000027, -70.100006, -141.599975, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(LSPD_Exterior, 1, 1560, "7_11_door", "cj_sheetmetal2", 0x00000000);
	LSPD_Exterior = CreateDynamicObject(16101, 1541.031250, -1633.562255, 10.692811, 0.000000, 0.000014, -9.399991, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(LSPD_Exterior, 0, 1560, "7_11_door", "cj_sheetmetal2", 0x00000000);
	LSPD_Exterior = CreateDynamicObject(16101, 1541.041748, -1635.036010, 10.692811, 0.000000, 0.000014, -13.100004, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(LSPD_Exterior, 0, 1560, "7_11_door", "cj_sheetmetal2", 0x00000000);
 	// LSPD_Exterior = CreateDynamicObject(3976, 1571.599975, -1675.750000, 35.679698, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
 	// SetDynamicObjectMaterial(LSPD_Exterior, 3, 1560, "7_11_door", "cj_sheetmetal2", 0x00000000);
 	// SetDynamicObjectMaterial(LSPD_Exterior, 11, 4829, "airport_las", "Grass_128HV", 0x00000000);
 	// SetDynamicObjectMaterial(LSPD_Exterior, 12, 6873, "vgnshambild1", "glasswindow3b_256", 0x00000000);
	LSPD_Exterior = CreateDynamicObject(3853, 1536.072143, -1610.749511, 16.406883, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(LSPD_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	LSPD_Exterior = CreateDynamicObject(3853, 1534.060913, -1642.480712, 16.406883, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(LSPD_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	LSPD_Exterior = CreateDynamicObject(3853, 1534.060913, -1651.410400, 16.406883, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(LSPD_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	LSPD_Exterior = CreateDynamicObject(3853, 1534.060913, -1659.500000, 16.406883, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(LSPD_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	LSPD_Exterior = CreateDynamicObject(3853, 1534.060913, -1686.969848, 16.406883, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(LSPD_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	LSPD_Exterior = CreateDynamicObject(3853, 1534.060913, -1695.800292, 16.406883, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(LSPD_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	LSPD_Exterior = CreateDynamicObject(3853, 1534.060913, -1703.950195, 16.406883, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(LSPD_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	SetDynamicObjectMaterial(LSPD_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	SetDynamicObjectMaterial(LSPD_Exterior, 1, 10765, "airportgnd_sfse", "black64", 0x00000000);
	CreateDynamicObject(19305, 1584.32373, -1638.34253, 13.81670, 0.00000, 0.00000, 0.00000, 0, 0, -1, 300.00, 300.00);
	CreateDynamicObject(19305, 1584.34058, -1637.86096, 13.81668,   0.00000, 0.00000, 180.00000, 0, 0, -1, 300.00, 300.00);
	// LSPD_Exterior = CreateDynamicObject(3975, 1578.469970, -1676.420043, 13.070300, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	// SetDynamicObjectMaterial(LSPD_Exterior, 7, 9514, "711_sfw", "ws_carpark2", 0x00000000);
	// SetDynamicObjectMaterial(LSPD_Exterior, 8, 5267, "lashops91_las2", "laspowrec2", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	LSPD_Exterior = CreateDynamicObject(1216, 1541.299316, -1618.192871, 13.216878, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(1216, 1540.500000, -1618.192871, 13.216878, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(1280, 1538.815795, -1704.574829, 12.926874, 0.000000, 0.000007, 0.000000, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(1280, 1538.815795, -1710.565307, 12.926874, 0.000000, 0.000007, 0.000000, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(1280, 1538.815795, -1640.622924, 12.926874, 0.000000, 0.000014, 0.000000, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(1280, 1538.815795, -1646.613403, 12.926874, 0.000000, 0.000014, 0.000000, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(1280, 1543.356201, -1664.963256, 12.926874, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(1280, 1543.356201, -1658.683227, 12.926874, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(1280, 1543.356201, -1686.933959, 12.926874, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(1280, 1543.356201, -1692.924438, 12.926874, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(1549, 1541.809814, -1620.333618, 12.509833, 0.000000, 0.000000, 89.100006, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(1549, 1538.655273, -1643.673706, 12.509833, 0.000014, 0.000000, 89.099960, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(1549, 1543.289062, -1661.703125, 12.509833, 0.000000, 0.000000, 89.100006, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(1549, 1543.195678, -1689.984741, 12.509833, 0.000000, 0.000000, 89.100006, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(1549, 1538.655273, -1707.625610, 12.509833, 0.000007, 0.000000, 89.099983, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(4192, 1591.699951, -1674.849975, 20.492200, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(4232, 1568.290039, -1677.780029, 10.820300, 0.000000, 0.000000, -0.000027, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(4032, 1568.290039, -1677.780029, 10.820300, 0.000000, 0.000000, -0.000018, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(700, 1546.361572, -1665.018676, 12.5, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(700, 1546.361572, -1686.599731, 12.5, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(700, 1541.190185, -1647.599731, 12.5, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	LSPD_Exterior = CreateDynamicObject(700, 1541.190185, -1704.020874, 12.5, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
}

LSFDExterior() {
	new LSFD_Exterior;
	CreateDynamicObject(19545, 1980.600708, -2073.662109, 12.355792, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 600.0); // 0
	LSFD_Exterior = CreateDynamicObject(9241, 1987.697754, -2085.223145, 23.080158, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 600.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 9, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(738, 1970.210083, -2053.926514, 12.622812, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 14477, "crlsbits", "newtreeleavesb128", 0);
	LSFD_Exterior = CreateDynamicObject(997, 1971.692871, -2056.277588, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(738, 1980.170166, -2053.926514, 12.622812, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 14477, "crlsbits", "newtreeleavesb128", 0);
	LSFD_Exterior = CreateDynamicObject(997, 1976.392578, -2056.277588, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1978.376465, -2055.568359, 12.291766, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 9515, "bigboxtemp1", "tarmacplain_bank", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1977.967285, -2056.612061, 10.646878, 0.000000, 0.000014, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19523, "sampicons", "yellograd32", 0);
	LSFD_Exterior = CreateDynamicObject(997, 1980.862793, -2056.277588, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1973.197144, -2060.752686, 10.646878, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19523, "sampicons", "yellograd32", 0);
	LSFD_Exterior = CreateDynamicObject(997, 1985.393066, -2056.277588, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(738, 1990.020386, -2053.926514, 12.622812, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 14477, "crlsbits", "newtreeleavesb128", 0);
	LSFD_Exterior = CreateDynamicObject(19377, 1988.877930, -2055.568359, 12.291766, 0.000000, 90.000008, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 9515, "bigboxtemp1", "tarmacplain_bank", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1987.566650, -2056.612061, 10.646878, 0.000000, 0.000014, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19523, "sampicons", "yellograd32", 0);
	LSFD_Exterior = CreateDynamicObject(19445, 1989.607178, -2056.612061, 10.646878, 0.000000, 0.000014, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19523, "sampicons", "yellograd32", 0);
	CreateDynamicObject(16101, 1970.385254, -2069.136719, 12.396376, 0.000019, 0.000001, 39.999908, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(11245, 1970.109375, -2069.355469, 20.357349, -0.000019, -68.199997, -139.999969, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 12853, "cunte_gas01", "starspangban1_256", 0);
	LSFD_Exterior = CreateDynamicObject(19377, 1978.376465, -2065.187744, 12.291766, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 9515, "bigboxtemp1", "tarmacplain_bank", 0xFFFFFFFF);
	CreateDynamicObject(16101, 1970.385254, -2070.826904, 12.396376, 0.000025, -0.000001, 39.999908, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(3498, 1972.466919, -2069.654785, 9.229336, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19467, "speed_bumps", "vehicle_barrier01", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19467, "speed_bumps", "vehicle_barrier01", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(11245, 1970.109375, -2071.045654, 20.357349, -0.000025, -68.199989, -139.999939, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 12853, "cunte_gas01", "starspangban1_256", 0);
	LSFD_Exterior = CreateDynamicObject(19445, 1994.177002, -2056.612061, 10.646878, 0.000000, 0.000014, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19523, "sampicons", "yellograd32", 0);
	LSFD_Exterior = CreateDynamicObject(19445, 1994.337158, -2056.612061, 10.646878, 0.000000, 0.000006, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19523, "sampicons", "yellograd32", 0);
	LSFD_Exterior = CreateDynamicObject(19431, 1972.416382, -2070.087646, 14.251766, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19431, 1972.416382, -2070.087646, 17.751760, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	CreateDynamicObject(19425, 1974.086792, -2069.842285, 12.436053, -14.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19445, 1973.197144, -2070.382568, 10.646878, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19523, "sampicons", "yellograd32", 0);
	LSFD_Exterior = CreateDynamicObject(19431, 1973.147583, -2070.809814, 14.266877, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19431, 1973.147583, -2070.809814, 17.766872, 0.000000, 180.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(738, 1967.849854, -2074.016846, 12.622812, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 14477, "crlsbits", "newtreeleavesb128", 0);
	LSFD_Exterior = CreateDynamicObject(19464, 1976.141235, -2070.145508, 13.526882, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10763, "airport1_sfse", "ws_rollerdoor_fire", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1976.413208, -2070.051025, 18.776863, 0.000000, -359.999969, 89.999939, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1976.413208, -2070.049072, 21.156870, 0.000007, -359.999969, 89.999916, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	CreateDynamicObject(1297, 1992.898071, -2060.230469, 15.705642, 0.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	CreateDynamicObject(19425, 1977.386719, -2069.842285, 12.436053, -14.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19451, 1977.942261, -2070.078125, 10.776878, -0.000014, 0.000000, -89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1977.956543, -2070.082520, 10.816879, 0.000000, 0.000014, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(19451, 1978.016113, -2070.087646, 17.751760, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	CreateDynamicObject(1297, 1980.627563, -2068.601074, 15.705642, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19450, 1976.001221, -2071.279785, 17.096851, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1976.001221, -2071.279785, 22.776861, 0.000007, -89.999985, 89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(3498, 1979.717163, -2069.654785, 9.229336, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19467, "speed_bumps", "vehicle_barrier01", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19467, "speed_bumps", "vehicle_barrier01", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18766, 1975.843262, -2071.804443, 23.365288, 90.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1971.706543, -2074.818115, 17.671766, 0.000000, 180.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1971.683472, -2074.830566, 18.776863, -0.000000, -359.999969, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18766, 1971.263794, -2075.125488, 11.114301, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 4829, "airport_las", "sjmlahus28", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1971.681519, -2074.830566, 21.196886, -0.000000, -359.999969, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1980.587402, -2069.943359, 10.646878, 0.000000, 0.000014, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19523, "sampicons", "yellograd32", 0);
	LSFD_Exterior = CreateDynamicObject(19355, 1980.641113, -2070.078125, 14.276872, -0.000014, 0.000000, -89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(3498, 1981.507446, -2069.654785, 9.229336, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19467, "speed_bumps", "vehicle_barrier01", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19467, "speed_bumps", "vehicle_barrier01", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1988.877930, -2065.187744, 12.291766, 0.000000, 90.000008, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 9515, "bigboxtemp1", "tarmacplain_bank", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1973.297241, -2074.813477, 10.816879, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	CreateDynamicObject(1256, 1970.337280, -2076.501709, 13.166872, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19355, 1979.121094, -2071.608398, 14.276872, 0.000000, 0.000007, -0.000105, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1979.121094, -2071.608398, 17.776867, 0.000000, 180.000000, -0.000151, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1971.682495, -2076.071777, 18.776863, 0.000000, -359.999969, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1971.680542, -2076.071777, 21.196886, 0.000000, -359.999969, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18766, 1973.353394, -2075.094971, 23.364288, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0xFFFFFFFF);
	CreateDynamicObject(19425, 1983.527344, -2069.842285, 12.436053, -14.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19450, 1972.931030, -2076.000732, 17.096851, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1973.146606, -2076.010254, 14.266877, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1972.931030, -2076.000732, 22.776880, 0.000000, -89.999985, -0.000029, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1973.146606, -2076.010254, 17.766876, 0.000000, 180.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1973.297241, -2076.083984, 10.816879, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	CreateDynamicObject(3526, 1976.144531, -2074.587402, 23.977165, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19355, 1982.161743, -2071.608398, 14.276872, 0.000000, 0.000007, -0.000105, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1982.161743, -2071.608398, 17.776867, 0.000000, 180.000000, -0.000151, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1976.876709, -2074.818115, 12.461770, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 9515, "bigboxtemp1", "tarmacplain_bank", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1977.046143, -2074.915527, 16.682753, 0.000000, 270.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14666, "genintintsex", "mp_cop_floor2", 0xFFFFFFFF);
	CreateDynamicObject(1297, 1992.898071, -2065.220459, 15.705642, 0.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19464, 1985.191650, -2070.135498, 13.766879, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10763, "airport1_sfse", "ws_rollerdoor_fire", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1980.641113, -2073.148682, 14.276872, -0.000014, 0.000000, -89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1980.641113, -2073.148682, 17.776867, -0.000007, 180.000000, -89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1986.053101, -2070.051025, 18.776863, 0.000000, -359.999969, 89.999939, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1986.053101, -2070.049072, 21.156870, 0.000007, -359.999969, 89.999916, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	CreateDynamicObject(19425, 1986.827271, -2069.842285, 12.436053, -14.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19377, 1977.046387, -2075.856445, 16.681753, 0.000000, 270.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14666, "genintintsex", "mp_cop_floor2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1978.967529, -2074.812744, 10.816879, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(3633, 1980.660400, -2073.960449, 13.986808, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 11391, "hubprops2_sfse", "CJ_fire", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(3633, 1980.660400, -2073.960449, 13.026808, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 11391, "hubprops2_sfse", "CJ_fire", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(640, 1971.205322, -2079.406250, 13.904309, 0.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 14477, "crlsbits", "newtreeleavesb128", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19451, 1987.542114, -2070.078125, 10.776877, -0.000014, 0.000000, -89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1987.536133, -2070.082520, 10.816879, 0.000000, 0.000014, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(19450, 1985.631104, -2071.279785, 17.096851, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19451, 1987.625854, -2070.087646, 17.751760, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1985.631104, -2071.279785, 22.776861, 0.000007, -89.999985, 89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(1635, 1971.110718, -2079.900146, 15.143354, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1986.091553, -2071.278809, 17.097851, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1986.061523, -2071.279785, 22.796862, 0.000007, -89.999985, 89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(3498, 1988.867798, -2069.654785, 9.229336, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19467, "speed_bumps", "vehicle_barrier01", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19467, "speed_bumps", "vehicle_barrier01", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1994.177002, -2066.240967, 10.646878, 0.000000, 0.000014, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19523, "sampicons", "yellograd32", 0);
	LSFD_Exterior = CreateDynamicObject(19445, 1994.337158, -2066.240967, 10.646878, 0.000000, 0.000006, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19523, "sampicons", "yellograd32", 0);
	LSFD_Exterior = CreateDynamicObject(19873, 1980.614380, -2075.051270, 16.621407, 0.000000, 0.000039, -0.000303, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19087, 1980.617188, -2075.054443, 18.287422, 0.000007, -0.000051, 179.999557, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1978.967529, -2076.083984, 10.816879, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(18766, 1985.843262, -2071.804443, 23.364288, 90.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19873, 1980.614380, -2075.351318, 16.621407, 0.000000, 0.000039, -0.000303, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19087, 1980.617188, -2075.354736, 18.287422, 0.000007, -0.000051, 179.999557, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18066, 1980.609985, -2075.416260, 15.838203, 89.999992, 539.494690, -89.494644, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 18835, "mickytextures", "whiteforletters", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Exterior = CreateDynamicObject(19355, 1989.772583, -2070.078125, 14.276872, -0.000014, 0.000000, -89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1980.641602, -2076.002686, 12.476867, 360.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 4586, "skyscrap3_lan2", "sl_skyscrpr05wall1", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1982.336548, -2074.974854, 10.816879, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(2790, 1975.461792, -2079.130371, 18.022814, -0.000065, 179.999985, -89.999802, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	LSFD_Exterior = CreateDynamicObject(19355, 1988.232544, -2071.598389, 14.276872, -0.000014, 0.000000, 0.000052, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1988.232544, -2071.618408, 17.766878, -0.000014, 180.000000, 0.000052, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19873, 1980.614380, -2076.801270, 16.621407, 0.000000, 0.000039, -0.000303, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19087, 1980.617188, -2076.795654, 18.287422, 0.000007, -0.000051, 179.999557, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18066, 1980.609985, -2076.836182, 15.838203, 89.999992, 539.494690, -89.494644, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 18835, "mickytextures", "whiteforletters", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Exterior = CreateDynamicObject(2790, 1976.772095, -2079.130371, 18.022814, -0.000065, 179.999985, -89.999802, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	LSFD_Exterior = CreateDynamicObject(19445, 1982.336548, -2075.975586, 10.816879, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(19445, 1993.107300, -2069.943359, 10.646878, 0.000000, 0.000014, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19523, "sampicons", "yellograd32", 0);
	LSFD_Exterior = CreateDynamicObject(19355, 1992.982178, -2070.078125, 14.276872, -0.000014, 0.000000, -89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1976.140625, -2080.752197, 16.616873, 0.000000, 89.999992, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 2772, "airp_prop", "CJ_GALVANISED", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18066, 1980.609985, -2078.256104, 15.838203, 89.999992, 539.494690, -89.494644, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 18835, "mickytextures", "whiteforletters", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Exterior = CreateDynamicObject(19873, 1980.624390, -2078.251465, 16.621407, 0.000000, 0.000039, -0.000303, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19087, 1980.617188, -2078.256348, 18.287422, 0.000007, -0.000051, 179.999557, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1993.961914, -2070.078125, 10.776877, -0.000014, 0.000000, -89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19873, 1980.624390, -2078.551270, 16.621407, 0.000000, 0.000039, -0.000303, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	CreateDynamicObject(3526, 1986.865234, -2074.587402, 23.977165, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19087, 1980.617188, -2078.556641, 18.287422, 0.000007, -0.000051, 179.999557, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18763, 1973.990234, -2082.313477, 24.853281, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18065, "ab_sfammumain", "breezewall", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1989.762573, -2073.119141, 14.276872, -0.000014, 0.000000, 90.000053, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1989.762573, -2073.119141, 17.766870, -0.000014, 180.000000, 90.000053, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1987.376709, -2074.818115, 12.461770, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 9515, "bigboxtemp1", "tarmacplain_bank", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1987.546265, -2074.915527, 16.682753, 0.000000, 270.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14666, "genintintsex", "mp_cop_floor2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(738, 1967.849854, -2086.366699, 12.622812, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 14477, "crlsbits", "newtreeleavesb128", 0);
	LSFD_Exterior = CreateDynamicObject(19445, 1988.076660, -2074.814697, 10.816879, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(19377, 1971.706543, -2084.447754, 17.671766, 0.000000, 180.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1981.060425, -2079.083496, 23.771223, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0);
	LSFD_Exterior = CreateDynamicObject(19451, 1995.685181, -2070.087646, 21.241791, 0.000007, 180.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18766, 1971.263794, -2085.115234, 11.114301, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 4829, "airport_las", "sjmlahus28", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1987.546265, -2075.856445, 16.681753, 0.000000, 270.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14666, "genintintsex", "mp_cop_floor2", 0xFFFFFFFF);
	CreateDynamicObject(1256, 1970.337280, -2086.401855, 13.166872, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19445, 1988.076660, -2076.015137, 10.816879, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(19450, 1971.682495, -2085.682129, 18.776863, 0.000000, -359.999969, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(3440, 1980.644531, -2080.654785, 14.520300, 0.000000, 0.000029, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10839, "aircarpkbarier_sfse", "redband_64Ha", 0xFFFFFFF0);
	LSFD_Exterior = CreateDynamicObject(19450, 1971.680542, -2085.682129, 21.196886, 0.000000, -359.999969, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1997.255249, -2070.085693, 17.751760, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(1820, 1980.157959, -2081.152832, 12.102130, 0.000000, 360.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 16640, "a51", "redmetal", 0);
	LSFD_Exterior = CreateDynamicObject(18766, 1973.353394, -2085.075439, 23.364288, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1975.421997, -2083.840576, 25.318287, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 4829, "airport_las", "liftdoorsac256", 0);
	LSFD_Exterior = CreateDynamicObject(19450, 1972.931030, -2085.621094, 17.096851, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2790, 1975.461792, -2084.239014, 18.022814, -0.000073, 179.999985, -89.999779, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	LSFD_Exterior = CreateDynamicObject(19450, 1973.146606, -2085.630127, 14.266877, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1973.146606, -2085.630127, 17.766876, 0.000000, 180.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1972.931030, -2085.621094, 22.776880, 0.000000, -89.999985, -0.000029, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1998.334961, -2070.084717, 17.751760, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1973.297241, -2085.654053, 10.816879, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(1820, 1981.158325, -2081.142822, 17.083429, 0.000000, 540.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 16640, "a51", "redmetal", 0);
	LSFD_Exterior = CreateDynamicObject(2790, 1984.493042, -2079.130371, 18.022814, -0.000073, 179.999985, -89.999779, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	LSFD_Exterior = CreateDynamicObject(19450, 1991.403076, -2074.830811, 14.296869, 360.000000, 360.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1991.403076, -2074.833984, 17.796865, 360.000000, 540.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18766, 1995.843140, -2071.804443, 23.364288, 90.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18763, 1973.990234, -2085.313477, 24.853281, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18065, "ab_sfammumain", "breezewall", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2790, 1976.772095, -2084.239014, 18.022814, -0.000073, 179.999985, -89.999779, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	LSFD_Exterior = CreateDynamicObject(19377, 1976.876709, -2084.448486, 12.461770, 0.000000, 90.000008, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 9515, "bigboxtemp1", "tarmacplain_bank", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2790, 1985.803345, -2079.130371, 18.022814, -0.000073, 179.999985, -89.999779, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	LSFD_Exterior = CreateDynamicObject(18766, 1998.063477, -2071.803467, 23.365288, 90.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1977.046387, -2085.478271, 16.681753, 0.000000, 270.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14666, "genintintsex", "mp_cop_floor2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19873, 1980.614380, -2083.461426, 16.621407, 0.000000, 0.000033, -0.000303, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(640, 1971.205322, -2088.856934, 13.904309, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 14477, "crlsbits", "newtreeleavesb128", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19087, 1980.617188, -2083.464600, 18.287422, 0.000007, -0.000045, 179.999603, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1985.171875, -2080.752197, 16.616873, 0.000000, 89.999985, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 2772, "airp_prop", "CJ_GALVANISED", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1989.891479, -2077.992432, 12.476867, 360.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 4586, "skyscrap3_lan2", "sl_skyscrpr05wall1", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19873, 1980.614380, -2083.761475, 16.621407, 0.000000, 0.000033, -0.000303, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19087, 1980.617188, -2083.764893, 18.287422, 0.000007, -0.000045, 179.999603, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18066, 1980.609985, -2083.826416, 15.838203, 89.999992, 538.989441, -88.989410, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 18835, "mickytextures", "whiteforletters", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Exterior = CreateDynamicObject(19445, 1978.967529, -2085.654053, 10.816879, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(19873, 1980.614380, -2085.211426, 16.621407, 0.000000, 0.000033, -0.000303, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19087, 1980.617188, -2085.205811, 18.287422, 0.000007, -0.000045, 179.999603, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18066, 1980.609985, -2085.246338, 15.838203, 89.999992, 538.989441, -88.989410, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 18835, "mickytextures", "whiteforletters", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Exterior = CreateDynamicObject(2567, 1980.571777, -2085.460938, 12.562805, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1980.641602, -2085.632080, 12.476867, 360.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 4586, "skyscrap3_lan2", "sl_skyscrpr05wall1", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1997.866333, -2074.818115, 12.461770, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(1635, 1971.110718, -2091.570068, 15.143354, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1991.559937, -2079.083496, 23.771223, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0);
	LSFD_Exterior = CreateDynamicObject(2790, 1975.461792, -2089.319824, 18.022814, -0.000079, 179.999985, -89.999756, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	CreateDynamicObject(3526, 1998.554932, -2074.647461, 23.967163, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19445, 1982.336548, -2085.545654, 10.816879, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(2790, 1984.493042, -2084.239014, 18.022814, -0.000079, 179.999985, -89.999756, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	LSFD_Exterior = CreateDynamicObject(18066, 1980.609985, -2086.666260, 15.838203, 89.999992, 538.989441, -88.989410, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 18835, "mickytextures", "whiteforletters", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Exterior = CreateDynamicObject(19873, 1980.624390, -2086.661621, 16.621407, 0.000000, 0.000033, -0.000303, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19087, 1980.617188, -2086.666504, 18.287422, 0.000007, -0.000045, 179.999603, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19873, 1980.624390, -2086.961426, 16.621407, 0.000000, 0.000033, -0.000303, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19087, 1980.617188, -2086.966797, 18.287422, 0.000007, -0.000045, 179.999603, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2790, 1976.772095, -2089.319824, 18.022814, -0.000079, 179.999985, -89.999756, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	LSFD_Exterior = CreateDynamicObject(2790, 1985.803345, -2084.239014, 18.022814, -0.000079, 179.999985, -89.999756, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	LSFD_Exterior = CreateDynamicObject(19377, 1993.620728, -2079.083496, 23.772224, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0);
	LSFD_Exterior = CreateDynamicObject(640, 1971.205322, -2093.037354, 13.904309, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 14477, "crlsbits", "newtreeleavesb128", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1976.140625, -2090.363037, 16.616873, 0.000000, 89.999992, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 2772, "airp_prop", "CJ_GALVANISED", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18766, 2001.343872, -2074.291504, 23.366287, 90.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0xFFFFFFFF);
	CreateDynamicObject(2671, 1968.837769, -2094.999512, 12.554306, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19377, 1987.376709, -2084.448486, 12.461770, 0.000000, 90.000008, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 9515, "bigboxtemp1", "tarmacplain_bank", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2790, 1975.461792, -2091.921143, 18.022814, -0.000088, 179.999985, -89.999733, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	LSFD_Exterior = CreateDynamicObject(19377, 1971.706543, -2094.077148, 17.671766, 0.000000, 180.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1991.402100, -2082.462158, 14.296869, 360.000000, 360.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1981.060425, -2088.694824, 23.771223, 0.000000, 90.000008, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0);
	LSFD_Exterior = CreateDynamicObject(19450, 1991.402100, -2082.452148, 17.796865, 360.000000, 540.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 2003.073364, -2074.821045, 17.716862, 0.000000, 0.000000, 179.999969, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1987.546265, -2085.478271, 16.681753, 0.000000, 270.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14666, "genintintsex", "mp_cop_floor2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2790, 1976.772095, -2091.921143, 18.022814, -0.000088, 179.999985, -89.999733, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	LSFD_Exterior = CreateDynamicObject(18766, 1971.263794, -2095.115723, 11.114301, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 4829, "airport_las", "sjmlahus28", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1988.076660, -2085.585205, 10.816879, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(19377, 1971.704346, -2095.258057, 17.671766, 0.000000, 180.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1971.682495, -2095.261475, 18.776863, 0.000000, -359.999969, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(3440, 1980.644531, -2090.225586, 14.360301, 0.000000, 0.000022, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10839, "aircarpkbarier_sfse", "redband_64Ha", 0xFFFFFFF0);
	LSFD_Exterior = CreateDynamicObject(19450, 1971.680542, -2095.261475, 21.196886, 0.000000, -359.999969, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(1820, 1980.157959, -2090.723633, 12.082134, 0.000000, 360.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 16640, "a51", "redmetal", 0);
	CreateDynamicObject(1256, 1970.337280, -2096.462646, 13.166872, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19450, 1972.931030, -2095.251221, 17.097851, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1973.146606, -2095.259766, 14.266877, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1973.146606, -2095.259766, 17.766876, 0.000000, 180.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1972.931030, -2095.251221, 22.776880, 0.000000, -89.999985, -0.000029, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1973.297241, -2095.213379, 10.816879, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(1820, 1981.158325, -2090.713623, 17.073431, 0.000000, 540.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 16640, "a51", "redmetal", 0);
	LSFD_Exterior = CreateDynamicObject(18766, 1973.353394, -2095.065674, 23.364288, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(738, 1967.849854, -2098.366943, 12.622812, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 14477, "crlsbits", "newtreeleavesb128", 0);
	LSFD_Exterior = CreateDynamicObject(1945, 1980.394775, -2091.664063, 12.653889, -0.000015, -0.000014, -131.099960, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 3629, "arprtxxref_las", "wheel02_64", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 2003.072388, -2076.861816, 17.716862, 0.000000, 0.000000, 179.999969, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2642, 1980.656494, -2091.614014, 13.736866, 0.000000, -0.000022, 179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 4
	SetDynamicObjectMaterial(LSFD_Exterior, 3, 18885, "gunvendingmachine1", "vendredmetal", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18754, "basesections", "metalflooring4", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2790, 1984.493042, -2089.319824, 18.022814, -0.000088, 179.999985, -89.999733, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	LSFD_Exterior = CreateDynamicObject(640, 1971.205322, -2097.046875, 13.904309, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 14477, "crlsbits", "newtreeleavesb128", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19476, 1980.528931, -2091.787354, 13.790224, 84.700020, -86.599991, -85.999962, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 13139, "cecuntetunnel", "hangingwires2", 0);
	LSFD_Exterior = CreateDynamicObject(11736, 1980.604736, -2091.750488, 14.452526, 54.500004, 0.000038, -0.000030, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14530, "estate2", "firextingtemp", 0);
	LSFD_Exterior = CreateDynamicObject(11735, 1980.530273, -2091.833496, 12.773963, 0.000022, 0.000000, 89.999931, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19844, "metalpanels", "metalpanel2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(1945, 1980.901367, -2091.730469, 12.653889, -0.000022, 0.000000, -83.999924, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 3629, "arprtxxref_las", "wheel02_64", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1976.876709, -2094.079590, 12.461770, 0.000000, 90.000015, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 9515, "bigboxtemp1", "tarmacplain_bank", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(11735, 1980.580322, -2091.953613, 12.773963, 0.000020, 0.000003, 77.299934, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19844, "metalpanels", "metalpanel2", 0xFFFFFFFF);
	CreateDynamicObject(1613, 1979.023071, -2093.333740, 16.019009, 89.999992, 675.000000, -135.000046, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(2790, 1985.803345, -2089.319824, 18.022814, -0.000088, 179.999985, -89.999733, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	LSFD_Exterior = CreateDynamicObject(2642, 1980.651489, -2092.504639, 12.786853, -89.999992, 270.000000, 89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 4
	SetDynamicObjectMaterial(LSFD_Exterior, 3, 18885, "gunvendingmachine1", "vendredmetal", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18754, "basesections", "metalflooring4", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2642, 1980.625488, -2092.533691, 14.346866, -89.999992, 450.000061, 89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 4
	SetDynamicObjectMaterial(LSFD_Exterior, 3, 18885, "gunvendingmachine1", "vendredmetal", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18754, "basesections", "metalflooring4", 0xFFFFFFFF);
	CreateDynamicObject(1613, 1979.423462, -2093.333740, 16.018007, 89.999992, 495.000000, -135.000046, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(11735, 1980.724854, -2092.623535, 12.773963, -0.000018, 0.000009, -59.799999, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19844, "metalpanels", "metalpanel2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19793, 1979.189819, -2093.551758, 15.465756, 0.000000, -138.399582, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(2704, 1980.864990, -2092.585205, 13.880352, -0.000022, 0.000000, -89.999931, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19331, "firehats", "fire_hat01", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10763, "airport1_sfse", "ws_rollerdoor_fire", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1981.050537, -2092.364502, 23.775225, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0);
	LSFD_Exterior = CreateDynamicObject(11735, 1980.785278, -2092.727539, 12.773963, -0.000018, 0.000009, -59.799999, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19844, "metalpanels", "metalpanel2", 0xFFFFFFFF);
	CreateDynamicObject(19330, 1980.521362, -2092.941650, 14.455300, 0.000014, 270.000000, 89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19377, 1977.046387, -2095.108154, 16.681753, 0.000000, 270.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14666, "genintintsex", "mp_cop_floor2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19793, 1979.192749, -2093.963135, 15.218810, 0.000000, -158.999710, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19450, 1985.171875, -2090.363037, 16.616873, 0.000000, 89.999985, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 2772, "airp_prop", "CJ_GALVANISED", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19567, 1980.819458, -2093.055664, 14.354936, 0.000020, 0.000006, 71.299995, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 2961, "fire_brx", "fire_break", 0);
	CreateDynamicObject(3526, 1976.144531, -2095.798828, 23.967163, -0.000007, 0.000000, -89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19450, 1989.891479, -2087.623047, 12.476867, 360.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 4586, "skyscrap3_lan2", "sl_skyscrpr05wall1", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(11736, 1980.724854, -2093.355957, 14.471720, -73.699974, 0.000080, 0.000077, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14530, "estate2", "firextingtemp", 0);
	LSFD_Exterior = CreateDynamicObject(19476, 1980.798706, -2093.312500, 13.795744, 87.600037, 142.099976, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 13139, "cecuntetunnel", "hangingwires2", 0);
	LSFD_Exterior = CreateDynamicObject(2642, 1980.656494, -2093.405273, 13.736866, 0.000000, -0.000022, 179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 4
	SetDynamicObjectMaterial(LSFD_Exterior, 3, 18885, "gunvendingmachine1", "vendredmetal", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18754, "basesections", "metalflooring4", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2642, 1980.623413, -2093.470215, 13.738867, 0.000000, 0.000022, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 4
	SetDynamicObjectMaterial(LSFD_Exterior, 3, 18885, "gunvendingmachine1", "vendredmetal", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18754, "basesections", "metalflooring4", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19476, 1980.642090, -2093.557861, 13.807640, 89.300018, -267.000000, -89.299980, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 16322, "a51_stores", "hangingwires1", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1979.196655, -2094.434326, 15.149577, 0.000000, 176.400238, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19567, 1980.733032, -2093.598877, 14.354936, 0.000000, 0.000022, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 2961, "fire_brx", "fire_break", 0);
	LSFD_Exterior = CreateDynamicObject(2704, 1980.364990, -2093.934814, 13.880352, 0.000022, 0.000000, 89.999931, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19331, "firehats", "fire_hat01", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10763, "airport1_sfse", "ws_rollerdoor_fire", 0xFFFFFFFF);
	CreateDynamicObject(19330, 1980.521362, -2093.932129, 14.455300, 0.000014, 270.000000, 89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(11735, 1980.724976, -2093.907227, 12.773963, -0.000022, 0.000000, -92.199913, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19844, "metalpanels", "metalpanel2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1983.131592, -2092.364502, 23.774225, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1979.196655, -2094.918213, 15.256539, 0.000000, 159.300140, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	CreateDynamicObject(1613, 1981.904297, -2093.333740, 16.019009, 89.999992, 655.528748, -115.528809, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(11735, 1980.780151, -2094.029541, 12.773963, -0.000020, 0.000006, -73.099983, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19844, "metalpanels", "metalpanel2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1978.967529, -2095.213379, 10.816879, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(2790, 1984.493042, -2091.921143, 18.022814, -0.000096, 179.999985, -89.999710, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	CreateDynamicObject(1613, 1982.304688, -2093.333740, 16.018007, 89.999992, 475.528778, -115.528809, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19330, 1980.711426, -2094.342529, 14.455300, -0.000014, 270.000000, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19331, "firehats", "fire_hat02", 0);
	LSFD_Exterior = CreateDynamicObject(2642, 1980.653442, -2094.384766, 14.346866, -89.999992, 630.000000, 89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 4
	SetDynamicObjectMaterial(LSFD_Exterior, 3, 18885, "gunvendingmachine1", "vendredmetal", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18754, "basesections", "metalflooring4", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2642, 1980.651489, -2094.384766, 12.786853, -89.999992, 270.000000, 89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 4
	SetDynamicObjectMaterial(LSFD_Exterior, 3, 18885, "gunvendingmachine1", "vendredmetal", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18754, "basesections", "metalflooring4", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19793, 1982.071045, -2093.551758, 15.465756, -0.000007, -138.399582, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1979.200562, -2095.354248, 15.492391, 0.000000, 144.299957, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(2704, 1980.364990, -2094.775635, 13.880352, 0.000022, 0.000000, 89.999931, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19331, "firehats", "fire_hat01", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10763, "airport1_sfse", "ws_rollerdoor_fire", 0xFFFFFFFF);
	CreateDynamicObject(19330, 1980.521362, -2094.782959, 14.455300, 0.000014, -89.999985, 89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19793, 1982.073975, -2093.963135, 15.218810, -0.000007, -158.999710, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(11735, 1980.523193, -2094.891357, 12.773963, 0.000022, 0.000003, 80.099968, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19844, "metalpanels", "metalpanel2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19793, 1979.204468, -2095.712158, 15.834503, 0.000000, 128.999954, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(11735, 1980.530273, -2095.045410, 12.773963, 0.000022, 0.000000, 89.999931, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19844, "metalpanels", "metalpanel2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2790, 1985.803345, -2091.921143, 18.022814, -0.000096, 179.999985, -89.999710, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 3
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "white", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1979.204468, -2095.948486, 16.257565, 0.000000, 110.000015, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(11736, 1980.554688, -2095.199219, 14.464385, -73.699974, 0.000080, 0.000077, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14530, "estate2", "firextingtemp", 0);
	LSFD_Exterior = CreateDynamicObject(921, 1979.219604, -2096.067627, 16.516476, 89.999992, 44.999992, -135.000046, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1980.641602, -2095.250977, 12.476868, 360.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 4586, "skyscrap3_lan2", "sl_skyscrpr05wall1", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2642, 1980.626465, -2095.295166, 13.736866, 0.000000, 0.000022, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 4
	SetDynamicObjectMaterial(LSFD_Exterior, 3, 18885, "gunvendingmachine1", "vendredmetal", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 2, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 18754, "basesections", "metalflooring4", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18754, "basesections", "metalflooring4", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19793, 1982.077881, -2094.434326, 15.149577, -0.000007, 176.400238, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1979.213745, -2096.131104, 16.232548, -0.000009, -89.400032, 138.200027, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1979.214233, -2096.135742, 15.712582, -0.000009, -89.400032, 138.200027, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19602, 1979.201782, -2096.147705, 13.898943, 0.000000, 0.000014, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10763, "airport1_sfse", "yellowscum64", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1979.204468, -2096.147705, 14.158950, 0.000000, 90.000015, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1979.215210, -2096.140381, 15.192619, -0.000009, -89.400032, 138.200027, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19431, 1972.426147, -2099.999268, 14.266877, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19793, 1979.212524, -2096.145752, 14.675954, 0.000000, -89.400032, 90.400024, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(1359, 1971.360352, -2100.586914, 13.186870, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19431, 1972.426147, -2099.999268, 17.766874, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(1945, 1980.842896, -2095.282715, 12.653889, 0.000006, 0.000020, 15.599989, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 3629, "arprtxxref_las", "wheel02_64", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1997.866333, -2084.448486, 12.461770, 0.000000, 90.000008, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1991.559937, -2088.694824, 23.771223, 0.000000, 90.000008, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0);
	LSFD_Exterior = CreateDynamicObject(3498, 1972.466919, -2100.306641, 9.229337, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19467, "speed_bumps", "vehicle_barrier01", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19467, "speed_bumps", "vehicle_barrier01", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19793, 1982.077881, -2094.918213, 15.256539, -0.000007, 159.300140, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(18766, 1975.863525, -2098.645264, 23.365288, 90.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1976.000366, -2098.751709, 17.096851, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1982.336548, -2095.104980, 10.816879, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(19450, 1976.000366, -2098.751709, 22.776857, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19793, 1982.081787, -2095.354248, 15.492391, -0.000007, 144.299957, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1982.085693, -2095.712158, 15.834503, -0.000007, 128.999954, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1982.085693, -2095.948486, 16.257565, -0.000007, 110.000015, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19355, 1980.641602, -2096.940430, 14.276873, 360.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(921, 1982.100830, -2096.067627, 16.516476, 89.999992, 25.528761, -115.528809, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1980.641602, -2096.940430, 17.776867, 0.000000, 180.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1993.620728, -2088.713379, 23.772224, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1982.094971, -2096.131104, 16.232548, -0.000004, -89.400040, 138.200027, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1982.095459, -2096.135742, 15.712582, -0.000004, -89.400040, 138.200027, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19602, 1982.083008, -2096.147705, 13.898943, -0.000007, 0.000014, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10763, "airport1_sfse", "yellowscum64", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1982.085693, -2096.147705, 14.158950, -0.000007, 90.000015, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1982.096436, -2096.140381, 15.192619, -0.000004, -89.400040, 138.200027, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19793, 1982.093750, -2096.145752, 14.675954, 0.000007, -89.400032, 90.400002, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 10765, "airportgnd_sfse", "ws_yellowline", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10765, "airportgnd_sfse", "black64", 0);
	LSFD_Exterior = CreateDynamicObject(19464, 1976.112427, -2099.906006, 14.866880, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10763, "airport1_sfse", "ws_rollerdoor_fire", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1979.120972, -2098.480713, 14.276873, 360.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1979.120972, -2098.480713, 17.776867, 0.000000, 180.000000, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1976.432495, -2100.051270, 18.776863, 0.000014, -359.999969, 89.999893, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1976.432495, -2100.052246, 21.166872, 0.000014, -359.999969, 89.999893, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1976.876709, -2100.150146, 12.463769, 0.000000, 90.000023, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 9515, "bigboxtemp1", "tarmacplain_bank", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18766, 2001.343872, -2084.291260, 23.366287, 90.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1987.376709, -2094.079590, 12.461770, 0.000000, 90.000015, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 9515, "bigboxtemp1", "tarmacplain_bank", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1978.027222, -2099.972900, 10.816879, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(19450, 1978.025757, -2099.999268, 17.766874, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1991.393677, -2091.882568, 13.947709, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18241, "cw_tempstuffcs_t", "des_metaldoor1", 0);
	LSFD_Exterior = CreateDynamicObject(19450, 1991.402100, -2092.082031, 14.296869, 360.000000, 360.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1991.402100, -2092.082031, 17.796865, 360.000000, 540.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1989.911499, -2093.234375, 12.477868, 360.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 4586, "skyscrap3_lan2", "sl_skyscrpr05wall1", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1987.546265, -2095.108154, 16.681753, 0.000000, 270.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14666, "genintintsex", "mp_cop_floor2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1982.161621, -2098.480713, 14.276873, 360.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1982.161621, -2098.480713, 17.776867, 0.000000, 180.000000, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(3498, 1979.486938, -2100.306641, 9.229337, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19467, "speed_bumps", "vehicle_barrier01", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19467, "speed_bumps", "vehicle_barrier01", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1988.076660, -2095.144531, 10.816879, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	CreateDynamicObject(3526, 1986.763550, -2095.788818, 23.977165, -0.000007, 0.000000, -89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	CreateDynamicObject(1297, 1971.116089, -2105.107422, 15.847802, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19355, 1980.641602, -2100.001221, 14.276873, 360.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1993.620728, -2092.364502, 23.774225, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0);
	LSFD_Exterior = CreateDynamicObject(19425, 1973.299805, -2105.020264, 12.408557, 13.300002, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(3498, 1981.707642, -2100.306641, 9.229337, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19467, "speed_bumps", "vehicle_barrier01", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19467, "speed_bumps", "vehicle_barrier01", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 2003.072388, -2086.481689, 17.716862, 0.000000, 0.000000, 179.999969, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1985.619995, -2098.751709, 17.096851, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1985.630371, -2098.751709, 22.776857, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18766, 1985.863281, -2098.645264, 23.365288, 90.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1989.741943, -2096.940430, 14.276873, 0.000000, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1989.741943, -2096.940430, 17.776867, 0.000007, 180.000000, 89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19464, 1985.191650, -2099.906006, 14.866880, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10763, "airport1_sfse", "ws_rollerdoor_fire", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19425, 1976.609863, -2105.020264, 12.408557, 13.300002, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1991.432373, -2096.121094, 17.716862, 0.000000, 0.000000, 179.999969, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1988.221313, -2098.480713, 14.276873, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1988.221313, -2098.480713, 17.776867, 0.000000, 179.999985, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6490, "tvstudio_law2", "tvstud02_LAw2", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1986.062378, -2100.051270, 18.776863, 0.000014, -359.999969, 89.999893, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1986.062622, -2100.052246, 21.166872, 0.000014, -359.999969, 89.999893, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1987.376953, -2100.150146, 12.463766, 0.000000, 90.000023, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 9515, "bigboxtemp1", "tarmacplain_bank", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19445, 1987.646729, -2099.972900, 10.816879, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 18835, "mickytextures", "whiteforletters", 0);
	LSFD_Exterior = CreateDynamicObject(19450, 1987.645996, -2099.999268, 17.766874, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1987.645996, -2099.999268, 21.266880, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19425, 1979.899414, -2105.020264, 12.408557, 13.300002, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1991.261963, -2098.480713, 14.276873, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1991.261963, -2098.480713, 17.776867, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1997.866333, -2094.079590, 12.461770, 0.000000, 90.000015, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(3498, 1988.687622, -2100.306641, 9.229337, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19467, "speed_bumps", "vehicle_barrier01", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19467, "speed_bumps", "vehicle_barrier01", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19355, 1989.741943, -2100.001221, 14.276873, 0.000000, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 1997.866333, -2095.250244, 12.463769, 0.000000, 90.000023, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19425, 1983.199219, -2105.020264, 12.408557, 13.300002, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	CreateDynamicObject(3526, 1998.554932, -2095.858887, 23.977165, -0.000007, 0.000000, -89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(18766, 2001.343872, -2094.281006, 23.366287, 90.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1995.270020, -2098.751709, 22.776857, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19517, "noncolored", "gen_white", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(738, 1990.018921, -2102.776855, 12.622812, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 14477, "crlsbits", "newtreeleavesb128", 0);
	LSFD_Exterior = CreateDynamicObject(19425, 1986.489014, -2105.020264, 12.408557, 13.300002, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(18766, 1995.853271, -2099.646240, 23.365288, 90.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1995.702271, -2100.051270, 18.776863, 0.000022, -359.999969, 89.999870, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19450, 1995.702515, -2100.052246, 21.166872, 0.000022, -359.999969, 89.999870, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 5766, "capitol_lawn", "capitolwin1_LAwN", 0xFFFFFFFF);
	CreateDynamicObject(16101, 1992.793091, -2102.398682, 12.316654, 0.000014, 0.000007, 129.999924, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	CreateDynamicObject(1687, 1996.183472, -2099.967041, 24.599691, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19436, 1995.398682, -2100.939209, 17.291836, 89.999992, 256.616028, -166.616119, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19436, 1995.398682, -2100.939209, 18.901863, 89.999992, 244.444061, -154.444168, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(11245, 1993.011841, -2102.674561, 20.277626, -0.000014, -68.200005, -49.999954, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 12853, "cunte_gas01", "starspangban1_256", 0);
	LSFD_Exterior = CreateDynamicObject(19377, 1996.161377, -2100.862061, 17.716862, 0.000000, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19377, 2003.072388, -2096.111084, 17.716862, 0.000000, 0.000000, 179.999969, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	CreateDynamicObject(970, 1990.895508, -2104.720703, 13.078016, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	CreateDynamicObject(16101, 1994.483154, -2102.398682, 12.316654, 0.000020, 0.000001, 129.999924, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19355, 1997.154175, -2100.876953, 13.985850, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10143, "calfed_sfe", "slidingdoor01_128", 0);
	LSFD_Exterior = CreateDynamicObject(18766, 1998.853638, -2099.645264, 23.366287, 90.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(11245, 1994.701904, -2102.674561, 20.277626, -0.000020, -68.199997, -49.999943, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 12853, "cunte_gas01", "starspangban1_256", 0);
	LSFD_Exterior = CreateDynamicObject(19482, 1997.158936, -2101.088867, 17.687782, 0.000028, 0.000000, -90.000122, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 2
	SetDynamicObjectMaterialText(LSFD_Exterior, 0, "NO 69", 130, "Engravers MT", 60, 1, 0xFFFFFFFF, 0, 1);
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 9910, "fishwarf", "sf_windos_10wall", 0);
	LSFD_Exterior = CreateDynamicObject(19482, 1997.158936, -2101.088867, 18.747801, 0.000012, 0.000000, -90.000076, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterialText(LSFD_Exterior, 0, "FIRE STATION", 130, "Engravers MT", 60, 1, 0xFFFFFFFF, 0, 1);
	LSFD_Exterior = CreateDynamicObject(19482, 1997.218750, -2101.078857, 17.687782, 0.000028, 0.000000, -90.000122, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterialText(LSFD_Exterior, 0, "NO 69", 130, "Engravers MT", 60, 1, 0xFF000000, 0, 1);
	LSFD_Exterior = CreateDynamicObject(19482, 1997.218750, -2101.078857, 18.747801, 0.000012, 0.000000, -90.000076, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterialText(LSFD_Exterior, 0, "FIRE STATION", 130, "Engravers MT", 60, 1, 0xFF000000, 0, 1);
	CreateDynamicObject(1297, 1991.826660, -2104.957031, 15.847802, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	CreateDynamicObject(1688, 1999.273071, -2099.967041, 24.599691, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19377, 1998.341797, -2100.861084, 17.716862, 0.000000, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 6908, "vgndwntwn21", "vgnlawbuild1_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19436, 1998.889160, -2100.939209, 17.291836, 89.999992, 256.616028, -166.616119, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(19436, 1998.889160, -2100.939209, 18.901863, 89.999992, 244.444061, -154.444168, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFFFFFFF);
	CreateDynamicObject(970, 1996.745728, -2104.720703, 13.078016, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(738, 2003.689209, -2103.687500, 12.622812, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 14477, "crlsbits", "newtreeleavesb128", 0);
	CreateDynamicObject(970, 2002.485596, -2104.720703, 13.108016, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 240.0); // 0
	LSFD_Exterior = CreateDynamicObject(19330, 1980.711426, -2092.581787, 14.455300, -0.000014, 270.000000, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 19331, "firehats", "fire_hat02", 0);
	LSFD_Exterior = CreateDynamicObject(2704, 1980.364990, -2092.955566, 13.880352, 0.000022, 0.000000, 89.999931, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19331, "firehats", "fire_hat01", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10763, "airport1_sfse", "ws_rollerdoor_fire", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2704, 1980.864990, -2094.345215, 13.880352, -0.000022, 0.000000, -89.999931, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19331, "firehats", "fire_hat01", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10763, "airport1_sfse", "ws_rollerdoor_fire", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(1945, 1980.421753, -2095.267822, 12.653889, -0.000007, 0.000020, -22.899994, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 3629, "arprtxxref_las", "wheel02_64", 0xFFFFFFFF);
	CreateDynamicObject(19305, 1979.812134, -2096.874023, 14.097709, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 0
	CreateDynamicObject(19305, 1981.542236, -2096.874023, 14.097709, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 0
	CreateDynamicObject(1258, 1999.432861, -2101.532227, 13.121457, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 0
	CreateDynamicObject(19305, 1979.762207, -2073.202637, 14.097709, -0.000000, 0.000007, -0.000015, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 0
	CreateDynamicObject(19305, 1981.492310, -2073.202637, 14.097709, -0.000000, 0.000007, -0.000015, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 0
	LSFD_Exterior = CreateDynamicObject(3761, 1990.497437, -2076.419922, 14.501601, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Exterior = CreateDynamicObject(2257, 1991.279541, -2082.320801, 14.657710, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 14842, "genintintpolicea", "cop_notice", 0);
	LSFD_Exterior = CreateDynamicObject(2257, 1991.279541, -2085.660645, 14.657710, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 1
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 14853, "gen_pol_vegas", "mp_cop_pinboard", 0);
	LSFD_Exterior = CreateDynamicObject(2704, 1980.364990, -2092.115234, 13.880352, 0.000022, 0.000000, 89.999931, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 2
	SetDynamicObjectMaterial(LSFD_Exterior, 1, 19331, "firehats", "fire_hat01", 0);
	SetDynamicObjectMaterial(LSFD_Exterior, 0, 10763, "airport1_sfse", "ws_rollerdoor_fire", 0xFFFFFFFF);
	CreateDynamicObject(19330, 1980.521362, -2092.100830, 14.455300, 0.000014, 270.000000, 89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 0
	CreateDynamicObject(1549, 1991.140503, -2089.949951, 12.563804, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 80.0); // 0
}
LSFDInterior() {
	new LSFD_Interior;
	LSFD_Interior = CreateDynamicObject(18754, -1847.636108, 525.959290, 2164.702393, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 700.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	CreateDynamicObject(19379, -1832.118164, 507.761200, 2168.970703, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	CreateDynamicObject(8661, -1826.714111, 490.130096, 2169.154297, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	CreateDynamicObject(6959, -1835.041748, 531.840088, 2169.899902, 0.000000, 0.000000, 89.999802, -1, 44, -1, STREAMER_OBJECT_SD, 250.0); // 0
	CreateDynamicObject(6959, -1835.041748, 531.840088, 2174.479980, 0.000000, 0.000000, 89.999802, -1, 44, -1, STREAMER_OBJECT_SD, 250.0); // 0
	LSFD_Interior = CreateDynamicObject(14394, -1805.330200, 503.711090, 2174.504883, -0.000007, 0.000000, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14784, "genintwarehsint3", "lasjmflood2", 0);
	CreateDynamicObject(18981, -1863.382446, 501.852417, 2171.703857, 0.000000, 90.000015, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	CreateDynamicObject(6959, -1835.041748, 549.171875, 2169.924072, 0.000000, 0.000000, 89.999802, -1, 44, -1, STREAMER_OBJECT_SD, 250.0); // 0
	CreateDynamicObject(6959, -1835.041748, 549.171875, 2174.500000, 0.000000, 0.000000, 89.999802, -1, 44, -1, STREAMER_OBJECT_SD, 250.0); // 0
	CreateDynamicObject(18981, -1787.104004, 506.009613, 2171.779785, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(11714, -1833.001831, 509.105316, 2166.488525, 0.000000, 0.000014, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 13364, "cetown3cs_t", "sw_door17", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19353, -1832.993774, 509.181335, 2166.087891, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2988, "kcomp_gx", "kmwood_gate", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1833.435181, 509.193420, 2166.976563, 0.000029, 179.999985, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(19325, -1832.610229, 506.536804, 2168.720215, 0.000022, 90.000008, 89.999901, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x88FFFFFF);
	LSFD_Interior = CreateDynamicObject(19377, -1833.029541, 507.507996, 2168.818848, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3063, "col_wall1x", "mp_diner_ceilingdirt", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(19940, -1830.274536, 507.644470, 2166.242920, 0.000037, 0.001981, -0.000280, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14842, "genintintpolicea", "poldesk", 0);
	LSFD_Interior = CreateDynamicObject(19377, -1832.190674, 507.507996, 2169.071777, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18800, "mroadhelix1", "concreteoldpainted1", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(19937, -1830.274536, 507.613586, 2165.223877, 0.000022, 0.000022, -0.000037, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 13590, "kickstart", "AH_barpanelM", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19940, -1830.274536, 505.728821, 2166.242920, 0.000037, 0.001981, -0.000280, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14842, "genintintpolicea", "poldesk", 0);
	LSFD_Interior = CreateDynamicObject(19937, -1830.274536, 505.697937, 2165.223877, 0.000022, 0.000022, -0.000037, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 13590, "kickstart", "AH_barpanelM", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2855, -1830.283203, 508.782532, 2166.232422, -0.000014, 0.000007, -89.999924, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 14802, "lee_bdupsflat", "Bdup_KitchDoor", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 14802, "lee_bdupsflat", "Bdup_KitchDoor", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 14802, "lee_bdupsflat", "Bdup_KitchDoor", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 14802, "lee_bdupsflat", "Bdup_KitchDoor", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14802, "lee_bdupsflat", "Bdup_KitchDoor", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3440, "airportpillar", "metalic_64", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1833.435181, 509.185364, 2163.735840, -0.000014, 0.000014, -89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFCECECE);
	CreateDynamicObject(14680, -1830.026489, 508.380920, 2167.076416, 0.000022, 0.000007, 89.999901, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(2604, -1829.609131, 506.920959, 2165.874023, 0.000022, -0.000022, 89.999802, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 6, 14544, "ab_woozieb", "ap_screens1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 5, 1717, "cj_tv", "CJ_TV2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 1714, "cj_office", "of_monitor_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 13590, "kickstart", "Upt_Precinct_woodLedge", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 1285, "newstand", "newstandnew256back", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14842, "genintintpolicea", "poldesk", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19996, -1834.073364, 505.418030, 2169.161621, -0.000003, 0.000003, -44.999989, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "metaldoor_128", 0);
	LSFD_Interior = CreateDynamicObject(2662, -1830.364014, 509.076721, 2167.004639, 0.000014, -0.000007, -0.000060, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 7525, "vgnfirestat", "vegasfiredept1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17588, "lae2coast_alpha", "LAShad1", 0);
	LSFD_Interior = CreateDynamicObject(19934, -1832.385742, 508.839417, 2169.134766, 0.000022, 0.000022, 89.999901, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 13590, "kickstart", "AH_barpanelM", 0xFFE0E0E0);
	LSFD_Interior = CreateDynamicObject(2611, -1830.303955, 509.059357, 2167.134766, 0.000007, 0.000014, 0.000007, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 3, 14853, "gen_pol_vegas", "mp_cop_pinboard", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 13590, "kickstart", "AH_barpanelM", 0);
	LSFD_Interior = CreateDynamicObject(19934, -1830.114380, 504.948425, 2165.223877, 0.000014, 0.000022, 89.999924, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 13590, "kickstart", "AH_barpanelM", 0xFFE0E0E0);
	LSFD_Interior = CreateDynamicObject(19843, -1831.699585, 505.105408, 2169.131836, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18835, "mickytextures", "metal013", 0xFFA0A0A0);
	LSFD_Interior = CreateDynamicObject(19482, -1829.481689, 507.068298, 2165.241943, 0.000022, 90.000031, -0.000068, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x88000000);
	LSFD_Interior = CreateDynamicObject(18880, -1831.699585, 505.105408, 2169.161621, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 2, 9549, "beachbx_sfw", "cst_rock_coast_sfw", 0xFF858585);
	LSFD_Interior = CreateDynamicObject(19996, -1835.204346, 506.138733, 2169.161621, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "metaldoor_128", 0);
	LSFD_Interior = CreateDynamicObject(19940, -1830.274536, 509.560486, 2166.242920, 0.000037, 0.001981, -0.000280, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14842, "genintintpolicea", "poldesk", 0);
	LSFD_Interior = CreateDynamicObject(11714, -1836.193481, 509.103210, 2166.878906, 89.999992, 179.999985, -90.000008, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2988, "kcomp_gx", "kmwood_gate", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19807, -1829.277954, 505.910004, 2166.291992, 0.000000, 0.000000, 98.000000, -1, 44, -1, STREAMER_OBJECT_SD, 600.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19807, "telephone1", "nt_phone2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19807, "telephone1", "nt_phone1", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19937, -1830.274536, 509.529602, 2165.223877, 0.000022, 0.000022, -0.000037, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 13590, "kickstart", "AH_barpanelM", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19937, -1832.545898, 509.588928, 2169.134766, 0.000022, 0.000029, -0.000037, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 13590, "kickstart", "AH_barpanelM", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(11714, -1836.293579, 509.105164, 2166.878906, 89.999992, 179.999985, -90.000008, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2988, "kcomp_gx", "kmwood_gate", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19937, -1831.059326, 508.839417, 2169.134766, 0.000022, 0.000022, 89.999901, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 13590, "kickstart", "AH_barpanelM", 0xFFE0E0E0);
	LSFD_Interior = CreateDynamicObject(19940, -1829.492554, 504.949402, 2166.244141, 0.000014, 0.000007, 89.999924, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14842, "genintintpolicea", "poldesk", 0);
	LSFD_Interior = CreateDynamicObject(19614, -1829.282959, 505.426941, 2165.339111, 0.000029, -0.000014, 89.999741, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3922, "bistro", "Cabinet", 0);
	CreateDynamicObject(14680, -1830.026489, 503.906555, 2167.076416, 0.000014, 0.000007, 89.999924, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(1945, -1830.266846, 505.436462, 2169.271973, 0.000024, 0.000040, 44.999985, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "wheel02_64", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2974, -1836.232422, 509.817566, 2165.221191, 0.000022, 0.000000, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16360, "desn2_truckstop", "sw_wind17", 0);
	LSFD_Interior = CreateDynamicObject(2165, -1830.812744, 509.483948, 2169.159668, 0.000000, 0.000000, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 5, 14544, "ab_woozieb", "ap_screens1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 14842, "genintintpolicea", "poldesk", 0);
	LSFD_Interior = CreateDynamicObject(19776, -1834.838745, 504.933044, 2169.885498, -0.000009, 0.000014, -49.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2188, "kbblackjack", "deck_cards", 0);
	LSFD_Interior = CreateDynamicObject(19482, -1835.244507, 504.261658, 2169.170410, 0.000037, 89.999985, 179.999771, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x66000000);
	LSFD_Interior = CreateDynamicObject(1945, -1829.831787, 505.553162, 2169.271973, 0.000024, 0.000040, 44.999985, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "wheel02_64", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19940, -1828.825806, 504.948425, 2166.245117, 0.000014, 0.000007, 89.999924, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14842, "genintintpolicea", "poldesk", 0);
	LSFD_Interior = CreateDynamicObject(19940, -1831.334717, 508.840149, 2170.151855, 0.000037, 0.001991, 89.999718, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14842, "genintintpolicea", "poldesk", 0);
	LSFD_Interior = CreateDynamicObject(19776, -1835.291748, 505.056091, 2169.885498, -0.000011, -0.000012, -159.999893, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2188, "kbblackjack", "deck_cards", 0);
	LSFD_Interior = CreateDynamicObject(19996, -1834.073364, 503.418030, 2169.161621, -0.000003, -0.000003, -135.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "metaldoor_128", 0);
	LSFD_Interior = CreateDynamicObject(19940, -1832.545898, 509.619812, 2170.153809, 0.000037, 0.001991, -0.000280, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14842, "genintintpolicea", "poldesk", 0);
	LSFD_Interior = CreateDynamicObject(19940, -1831.053467, 508.841125, 2170.152832, 0.000037, 0.001991, 89.999718, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14842, "genintintpolicea", "poldesk", 0);
	LSFD_Interior = CreateDynamicObject(19937, -1828.787964, 504.948425, 2165.223877, 0.000014, 0.000022, 89.999924, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 13590, "kickstart", "AH_barpanelM", 0xFFE0E0E0);
	LSFD_Interior = CreateDynamicObject(2831, -1835.187744, 504.661438, 2169.877441, -0.000012, 0.000006, -61.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 2896, "law_coffintxd", "metleg_32_law", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19996, -1836.613159, 505.418030, 2169.161621, -0.000003, -0.000003, 44.999985, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "metaldoor_128", 0);
	LSFD_Interior = CreateDynamicObject(1970, -1835.182373, 504.281677, 2169.702148, 0.000029, -0.000014, 179.999786, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2209, -1835.115356, 503.637146, 2169.161621, 0.000014, 0.000014, 89.999924, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19776, -1835.247803, 504.392761, 2169.885498, 0.000019, 0.000000, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2188, "kbblackjack", "deck_cards", 0);
	LSFD_Interior = CreateDynamicObject(2645, -1830.070923, 505.631042, 2170.014893, -0.000003, -0.000059, -164.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(2645, -1830.089844, 505.592834, 2170.016846, 0.000003, 0.000059, 14.999999, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(19940, -1835.182373, 504.281677, 2169.892578, 0.000029, 89.999985, 179.999786, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19776, -1835.247803, 504.292786, 2169.885498, 0.000019, 0.000000, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2188, "kbblackjack", "deck_cards", 0);
	LSFD_Interior = CreateDynamicObject(1715, -1837.963867, 506.762024, 2165.223877, 0.000007, 0.000000, 89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 10023, "bigwhitesfe", "bigwhite_2", 0);
	LSFD_Interior = CreateDynamicObject(2642, -1829.851685, 504.700745, 2169.414063, -89.999992, 77.847153, 92.847038, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 5
	SetDynamicObjectMaterial(LSFD_Interior, 4, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16023, "des_trainstuff", "metpat64shadow", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 16023, "des_trainstuff", "metpat64shadow", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16023, "des_trainstuff", "metpat64shadow", 0);
	LSFD_Interior = CreateDynamicObject(19937, -1829.851685, 504.700745, 2169.414063, 0.000003, 0.000029, 14.999999, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	CreateDynamicObject(18074, -1832.414551, 511.010559, 2169.229736, 0.000000, -90.000000, -270.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19776, -1835.247803, 504.192810, 2169.885498, 0.000019, 0.000000, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2188, "kbblackjack", "deck_cards", 0);
	LSFD_Interior = CreateDynamicObject(1715, -1837.963867, 506.162048, 2165.223877, 0.000007, 0.000000, 89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(1715, -1831.112915, 510.728943, 2169.143555, -0.000014, 0.000022, 0.000037, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 10023, "bigwhitesfe", "bigwhite_2", 0);
	LSFD_Interior = CreateDynamicObject(19776, -1835.247803, 504.092834, 2169.885498, 0.000019, 0.000000, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2188, "kbblackjack", "deck_cards", 0);
	CreateDynamicObject(18074, -1832.414551, 511.090637, 2169.229736, 0.000000, -90.000000, -270.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19482, -1837.963867, 505.862000, 2165.241943, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x66000000);
	LSFD_Interior = CreateDynamicObject(1715, -1828.012207, 506.268005, 2165.223877, -0.000014, 0.000022, -89.999962, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 10023, "bigwhitesfe", "bigwhite_2", 0);
	LSFD_Interior = CreateDynamicObject(19776, -1834.879395, 503.758240, 2169.885498, 0.000019, 0.000000, 69.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2188, "kbblackjack", "deck_cards", 0);
	LSFD_Interior = CreateDynamicObject(2704, -1829.922852, 505.196350, 2170.012207, 0.000076, -0.000034, 134.999786, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19331, "firehats", "fire_hat01", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1716, "cj_seating", "CJ_SHINYWOOD", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(1715, -1837.963867, 505.562073, 2165.223877, 0.000007, 0.000000, 89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(1715, -1828.012207, 508.008728, 2165.223877, -0.000014, 0.000022, -89.999962, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 10023, "bigwhitesfe", "bigwhite_2", 0);
	LSFD_Interior = CreateDynamicObject(2164, -1828.345947, 509.072449, 2165.223877, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 2, 14842, "genintintpolicea", "poldesk", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14476, "carlslounge", "AH_plnskirting", 0);
	LSFD_Interior = CreateDynamicObject(19807, -1830.631958, 509.701996, 2170.020996, 0.000000, 0.000000, 179.000000, -1, 44, -1, STREAMER_OBJECT_SD, 600.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19807, "telephone1", "nt_phone2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19807, "telephone1", "nt_phone1", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2683, -1835.493042, 504.077332, 2169.997803, 0.000000, -0.000007, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16377, "des_byofficeint", "water_cool2", 0);
	LSFD_Interior = CreateDynamicObject(19477, -1838.221924, 506.216980, 2167.344971, 0.000000, 0.000000, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 7525, "vgnfirestat", "vegasfiredept1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17588, "lae2coast_alpha", "LAShad1", 0);
	LSFD_Interior = CreateDynamicObject(1945, -1829.847168, 503.870178, 2169.271973, 0.000024, 0.000035, 44.999985, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "wheel02_64", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19174, -1838.225586, 506.216980, 2167.475098, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 7525, "vgnfirestat", "vegasfiredept1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 7525, "vgnfirestat", "vegasfiredept1_256", 0);
	LSFD_Interior = CreateDynamicObject(1715, -1837.963867, 504.962097, 2165.223877, 0.000007, 0.000000, 89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 10023, "bigwhitesfe", "bigwhite_2", 0);
	LSFD_Interior = CreateDynamicObject(1744, -1838.396606, 507.678772, 2165.874023, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14846, "genintintpoliceb", "pol_dor_surr2", 0);
	LSFD_Interior = CreateDynamicObject(19834, -1838.202759, 506.337158, 2167.755371, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 7525, "vgnfirestat", "vegasfiredept1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18787, "matramps", "redrailing", 0);
	CreateDynamicObject(14680, -1831.055054, 506.419983, 2171.269043, 0.000029, -0.000014, 179.999710, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19834, -1838.200806, 506.096924, 2167.755371, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 7525, "vgnfirestat", "vegasfiredept1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18787, "matramps", "redrailing", 0);
	LSFD_Interior = CreateDynamicObject(631, -1837.777954, 504.250793, 2166.124023, 0.000000, 0.000000, 45.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14477, "crlsbits", "CJ_PLANTPOT", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19325, -1832.610229, 502.073914, 2168.720215, 0.000014, 90.000008, 89.999924, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x88FFFFFF);
	LSFD_Interior = CreateDynamicObject(2704, -1829.772827, 504.635559, 2170.012207, 0.000067, -0.000060, 164.999481, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19331, "firehats", "fire_hat02", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1716, "cj_seating", "CJ_SHINYWOOD", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2813, -1835.336914, 503.495911, 2169.868164, 0.000000, 0.000014, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1838.321411, 508.376282, 2166.976563, 0.000014, -179.999954, -179.999817, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(1945, -1829.412109, 503.986877, 2169.271973, 0.000024, 0.000035, 44.999985, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "wheel02_64", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19776, -1835.337891, 503.372375, 2169.885498, 0.000006, 0.000019, 20.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2188, "kbblackjack", "deck_cards", 0);
	CreateDynamicObject(19330, -1829.954834, 505.139709, 2170.606934, 0.000088, 270.000000, 84.999840, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19377, -1837.907837, 504.298035, 2165.147949, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14847, "mp_policesf", "mp_cop_tile", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2642, -1829.851685, 504.700745, 2170.494385, -89.999992, 77.847153, 92.847038, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 5
	SetDynamicObjectMaterial(LSFD_Interior, 4, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16023, "des_trainstuff", "metpat64shadow", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 16023, "des_trainstuff", "metpat64shadow", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16023, "des_trainstuff", "metpat64shadow", 0);
	CreateDynamicObject(2986, -1838.207642, 508.353577, 2168.439941, 0.000000, -90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19843, -1831.699585, 502.105408, 2169.131836, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18835, "mickytextures", "metal013", 0xFFA0A0A0);
	LSFD_Interior = CreateDynamicObject(19996, -1835.220337, 502.440979, 2169.161621, 0.000000, -0.000007, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "metaldoor_128", 0);
	LSFD_Interior = CreateDynamicObject(19996, -1836.613159, 503.418030, 2169.161621, -0.000003, 0.000003, 134.999985, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "metaldoor_128", 0);
	LSFD_Interior = CreateDynamicObject(18880, -1831.699585, 502.105408, 2169.161621, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 2, 9549, "beachbx_sfw", "cst_rock_coast_sfw", 0xFF858585);
	CreateDynamicObject(14680, -1835.925903, 506.419983, 2171.269043, 0.000029, -0.000007, 179.999756, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19330, -1829.807373, 504.644104, 2170.606934, -0.000088, 270.000000, -94.999733, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19331, "firehats", "fire_hat02", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1832.512573, 510.592224, 2170.910645, 0.000014, 0.000007, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	CreateDynamicObject(2986, -1827.937134, 509.083557, 2168.439941, 0.000000, -90.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(2645, -1829.591553, 503.841858, 2170.014893, -0.000003, -0.000049, -164.999863, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(2645, -1829.610352, 503.803772, 2170.016846, 0.000003, 0.000049, 14.999999, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1838.313354, 508.372253, 2163.735840, 0.000000, 0.000022, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1838.330078, 505.064148, 2164.096191, -89.999985, 0.000014, -180.000046, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2974, -1834.920044, 511.744812, 2169.369873, 0.000018, 0.000000, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16360, "desn2_truckstop", "sw_wind17", 0);
	LSFD_Interior = CreateDynamicObject(631, -1837.812744, 507.228699, 2170.054443, 0.000000, 0.000000, 45.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14477, "crlsbits", "CJ_PLANTPOT", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19567, -1829.646973, 504.088074, 2170.496582, 0.000077, 0.000018, 86.299904, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2961, "fire_brx", "fire_break", 0);
	LSFD_Interior = CreateDynamicObject(2766, -1826.945679, 507.685486, 2167.044434, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 11389, "hubint1_sfse", "ws_STDcalendar", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1716, "cj_seating", "CJ_SHINYWOOD", 0);
	LSFD_Interior = CreateDynamicObject(19131, -1826.908691, 506.273743, 2167.594238, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1654, "dynamite", "clock64", 0);
	LSFD_Interior = CreateDynamicObject(19377, -1827.407837, 504.298035, 2165.147949, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14847, "mp_policesf", "mp_cop_tile", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19426, -1833.235107, 511.315125, 2170.910645, 0.000000, -0.000007, 179.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(2691, -1837.258423, 505.561432, 2170.879395, 0.000019, 179.999969, 89.999733, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14420, "dr_gsbits", "mp_apt1_frame1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17588, "lae2coast_alpha", "LAShad1", 0);
	LSFD_Interior = CreateDynamicObject(2974, -1830.105103, 511.744812, 2169.369873, 0.000018, 0.000000, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16360, "desn2_truckstop", "sw_wind17", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1832.148926, 501.088074, 2168.818848, 0.000000, 90.000015, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3063, "col_wall1x", "mp_diner_ceilingdirt", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(19786, -1832.520874, 510.458893, 2171.659912, 5.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 2
	SetDynamicObjectMaterialText(LSFD_Interior, 1, "Горит здание {fbec5d}glen park str. 16{ffffff}.\n\n\nГорит здание {fbec5d}los flores str. 22{ffffff}.\n\n\nГорит здание {fbec5d}commercial str. 24{ffffff}.\n\n\nГорит здание {fbec5d}rodeo drive str. 38{ffffff}.\n\n\nВведите {33aa33}/fireduty{ffffff} для выезда на пожар.", 130, "Lucida Console", 18, 0, 0xFFFFFFFF, 0xFF1D1D1D, 1);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 15040, "cuntcuts", "GB_phone02", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1831.789673, 511.315125, 2170.910645, 0.000000, -0.000007, 179.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19353, -1834.920044, 511.092102, 2170.910645, 0.000014, 0.000007, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(2164, -1838.875366, 506.826233, 2169.149658, 0.000000, 0.000000, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 14842, "genintintpolicea", "poldesk", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14476, "carlslounge", "AH_plnskirting", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1285, "newstand", "newstandnew256", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1832.148926, 501.088074, 2169.073730, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18800, "mroadhelix1", "concreteoldpainted1", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(2386, -1827.176147, 506.805847, 2169.229736, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19331, "firehats", "fire_hat02", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2257, -1837.264404, 505.511383, 2171.079590, 0.000019, -0.000035, 89.999733, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(2254, -1837.257080, 505.511383, 2171.087646, 0.000019, -0.000035, 89.999733, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14599, "paperchasebits", "ab_blueprint4", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1837.380493, 505.190857, 2170.910645, 0.000000, 0.000007, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(2386, -1827.176147, 507.719788, 2169.229736, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19331, "firehats", "fire_hat01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2386, -1827.176147, 505.891907, 2169.229736, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19331, "firehats", "fire_hat01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(971, -1831.281494, 507.023132, 2172.676514, 89.999992, 90.000015, -89.999962, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF505050);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(2167, -1826.969238, 506.894592, 2169.149658, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(11735, -1827.187500, 506.676697, 2169.580078, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3895, "inditaly", "Plaindoor_64V", 0);
	LSFD_Interior = CreateDynamicObject(11735, -1827.187500, 506.566589, 2169.580078, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3895, "inditaly", "Plaindoor_64V", 0);
	LSFD_Interior = CreateDynamicObject(11735, -1827.187500, 507.480530, 2169.580078, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3895, "inditaly", "Plaindoor_64V", 0);
	LSFD_Interior = CreateDynamicObject(11735, -1827.187500, 507.590637, 2169.580078, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3895, "inditaly", "Plaindoor_64V", 0);
	LSFD_Interior = CreateDynamicObject(2167, -1826.969238, 507.808533, 2169.149658, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(2386, -1827.176147, 508.633606, 2169.229736, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19331, "firehats", "fire_hat02", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2167, -1826.969238, 505.980652, 2169.149658, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(1656, -1829.322021, 501.893738, 2168.941895, 89.999992, 166.631470, -76.631500, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16640, "a51", "Metal3_128", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(11735, -1827.187500, 505.762756, 2169.580078, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3895, "inditaly", "Plaindoor_64V", 0);
	LSFD_Interior = CreateDynamicObject(11735, -1827.187500, 505.652649, 2169.580078, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3895, "inditaly", "Plaindoor_64V", 0);
	LSFD_Interior = CreateDynamicObject(2386, -1827.176147, 504.977966, 2169.229736, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19331, "firehats", "fire_hat02", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(971, -1831.281616, 507.023132, 2172.890869, 89.999992, 263.215912, -83.215935, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF252525);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(11735, -1827.187500, 508.394348, 2169.580078, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3895, "inditaly", "Plaindoor_64V", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1830.105103, 511.092102, 2170.910645, 0.000014, 0.000007, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(2167, -1826.967285, 506.896545, 2169.530029, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(11735, -1827.187500, 508.504456, 2169.580078, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3895, "inditaly", "Plaindoor_64V", 0);
	LSFD_Interior = CreateDynamicObject(14394, -1839.728638, 505.211609, 2166.033691, 0.000000, -0.000022, 179.999863, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14537, "pdomebar", "club_wood1_SFw", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1835.648926, 501.088074, 2168.818848, 0.000000, 90.000015, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3063, "col_wall1x", "mp_diner_ceilingdirt", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(2167, -1826.967285, 507.810486, 2169.530029, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(2167, -1826.969238, 508.722351, 2169.149658, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1839.128174, 503.650940, 2166.976563, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17545, "burnsground", "newall10_seamless", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(2167, -1826.967285, 505.982605, 2169.530029, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(2167, -1826.969238, 505.066711, 2169.149658, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1835.648926, 501.088074, 2169.073730, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18800, "mroadhelix1", "concreteoldpainted1", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(2704, -1827.235962, 507.016418, 2170.232422, 0.000066, -0.000055, 134.999527, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19331, "firehats", "fire_hat02", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1716, "cj_seating", "CJ_SHINYWOOD", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19843, -1831.699585, 505.105408, 2172.902344, 0.000000, 0.000014, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18835, "mickytextures", "metal013", 0xFFA0A0A0);
	LSFD_Interior = CreateDynamicObject(11735, -1827.187500, 504.848816, 2169.580078, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3895, "inditaly", "Plaindoor_64V", 0);
	CreateDynamicObject(11713, -1837.298218, 510.500061, 2170.619873, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19834, -1828.434692, 502.448181, 2169.165771, -90.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 7981, "vgssairport02", "chevronYB_64", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19611, -1827.290894, 509.890686, 2169.164551, 0.000007, -0.000006, -150.000092, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1716, "cj_seating", "CJ_SHINYWOOD", 0);
	LSFD_Interior = CreateDynamicObject(11735, -1827.187500, 504.738708, 2169.580078, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3895, "inditaly", "Plaindoor_64V", 0);
	LSFD_Interior = CreateDynamicObject(2704, -1827.235962, 506.102478, 2170.232422, 0.000066, -0.000055, 134.999527, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19331, "firehats", "fire_hat01", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1716, "cj_seating", "CJ_SHINYWOOD", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2704, -1827.235962, 507.930359, 2170.232422, 0.000066, -0.000055, 134.999527, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19331, "firehats", "fire_hat01", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1716, "cj_seating", "CJ_SHINYWOOD", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2167, -1826.967285, 508.724304, 2169.530029, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(1656, -1828.562378, 502.095154, 2168.941895, 89.999992, 89.999992, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2167, -1826.967285, 505.068665, 2169.530029, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(19834, -1829.675537, 501.350647, 2169.165771, 90.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 7981, "vgssairport02", "chevronYB_64", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2386, -1827.176147, 504.064026, 2169.229736, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19331, "firehats", "fire_hat01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1826.836548, 510.630432, 2166.976563, 0.000014, 179.999985, -0.000014, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19378, -1838.055054, 511.357727, 2169.073730, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18800, "mroadhelix1", "concreteoldpainted1", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(2704, -1827.235962, 505.188538, 2170.232422, 0.000066, -0.000055, 134.999527, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19331, "firehats", "fire_hat02", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1716, "cj_seating", "CJ_SHINYWOOD", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2691, -1837.258423, 503.261444, 2170.879395, 0.000019, 179.999969, 89.999733, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14420, "dr_gsbits", "mp_apt1_frame1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17588, "lae2coast_alpha", "LAShad1", 0);
	LSFD_Interior = CreateDynamicObject(2167, -1826.969238, 504.152771, 2169.149658, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(2704, -1827.235962, 508.844177, 2170.232422, 0.000066, -0.000055, 134.999527, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19331, "firehats", "fire_hat02", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1716, "cj_seating", "CJ_SHINYWOOD", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19567, -1827.229980, 507.112976, 2170.648926, 0.000072, 0.000018, 266.299927, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2961, "fire_brx", "fire_break", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1836.529785, 501.088074, 2168.820801, 0.000000, 90.000015, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3063, "col_wall1x", "mp_diner_ceilingdirt", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(19426, -1837.327515, 510.592224, 2170.910645, 0.000014, 0.000007, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(19426, -1836.605347, 511.315125, 2170.910645, 0.000000, -0.000007, 179.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19567, -1827.229980, 506.199036, 2170.648926, 0.000072, 0.000018, 266.299927, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2961, "fire_brx", "fire_break", 0);
	LSFD_Interior = CreateDynamicObject(19567, -1827.229980, 508.026917, 2170.648926, 0.000072, 0.000018, 266.299927, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2961, "fire_brx", "fire_break", 0);
	LSFD_Interior = CreateDynamicObject(11735, -1827.187500, 503.934875, 2169.580078, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3895, "inditaly", "Plaindoor_64V", 0);
	LSFD_Interior = CreateDynamicObject(19330, -1827.193970, 506.751160, 2170.777344, -0.000077, 270.000000, 55.000244, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19331, "firehats", "fire_hat02", 0);
	LSFD_Interior = CreateDynamicObject(19834, -1828.495117, 501.100403, 2166.755859, 0.000014, 90.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(11735, -1827.187500, 503.824768, 2169.580078, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3895, "inditaly", "Plaindoor_64V", 0);
	CreateDynamicObject(19330, -1827.193970, 507.665100, 2170.777344, -0.000077, 270.000000, 55.000244, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(2257, -1837.264404, 503.211395, 2171.079590, 0.000019, -0.000035, 89.999733, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(2254, -1837.257080, 503.211395, 2171.087646, 0.000019, -0.000035, 89.999733, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14599, "paperchasebits", "ab_blueprint3", 0);
	LSFD_Interior = CreateDynamicObject(19325, -1834.093262, 503.836243, 2172.912842, 0.000029, 89.999992, 179.999756, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x88FFFFFF);
	LSFD_Interior = CreateDynamicObject(2167, -1826.967285, 504.154724, 2169.530029, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(2691, -1828.507690, 501.085876, 2165.267578, -89.999992, 89.999992, 89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14577, "casinovault01", "ab_loadbayMark01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19567, -1827.229980, 505.285095, 2170.648926, 0.000072, 0.000018, 266.299927, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2961, "fire_brx", "fire_break", 0);
	CreateDynamicObject(19330, -1827.193970, 505.837219, 2170.777344, -0.000077, 270.000000, 55.000244, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(2709, -1828.507690, 501.085876, 2165.123779, 0.000000, 0.000014, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1839.738770, 503.652893, 2166.976563, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17545, "burnsground", "newall10_seamless", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19353, -1838.940430, 506.712830, 2170.910645, 0.000000, 0.000007, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(2704, -1827.235962, 504.274597, 2170.232422, 0.000066, -0.000055, 134.999527, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19331, "firehats", "fire_hat01", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1716, "cj_seating", "CJ_SHINYWOOD", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19567, -1827.229980, 508.940735, 2170.648926, 0.000072, 0.000018, 266.299927, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2961, "fire_brx", "fire_break", 0);
	LSFD_Interior = CreateDynamicObject(19330, -1827.193970, 508.578918, 2170.777344, -0.000077, 270.000000, 55.000244, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19331, "firehats", "fire_hat02", 0);
	LSFD_Interior = CreateDynamicObject(19378, -1827.555054, 511.357727, 2169.073730, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18800, "mroadhelix1", "concreteoldpainted1", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(19445, -1826.844604, 510.630432, 2163.735840, 0.000000, 0.000014, 179.999893, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19330, -1827.193970, 504.923279, 2170.777344, -0.000077, 270.000000, 55.000244, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19331, "firehats", "fire_hat02", 0);
	LSFD_Interior = CreateDynamicObject(19567, -1827.229980, 504.371155, 2170.648926, 0.000072, 0.000018, 266.299927, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2961, "fire_brx", "fire_break", 0);
	LSFD_Interior = CreateDynamicObject(19399, -1828.648926, 501.088074, 2168.818848, 0.000000, 90.000015, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3063, "col_wall1x", "mp_diner_ceilingdirt", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(6959, -1834.443359, 503.182434, 2172.889160, 0.000000, 180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14415, "carter_block_2", "mp_carter_floor", 0xFF505050);
	LSFD_Interior = CreateDynamicObject(2960, -1834.923828, 499.415100, 2166.805908, 0.000014, 90.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(19834, -1829.675537, 500.559875, 2169.167725, 90.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 7981, "vgssairport02", "chevronYB_64", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2167, -1837.298096, 501.067322, 2169.149658, 0.000007, 0.000000, 89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14842, "genintintpolicea", "poldesk", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14476, "carlslounge", "AH_plnskirting", 0);
	LSFD_Interior = CreateDynamicObject(921, -1834.933838, 499.595276, 2168.167236, 0.000007, 90.000000, 179.999969, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14780, "lring_gmint3", "crash_pad_red", 0);
	LSFD_Interior = CreateDynamicObject(19399, -1828.648926, 501.088074, 2169.073730, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18800, "mroadhelix1", "concreteoldpainted1", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(1656, -1827.663330, 501.893860, 2168.941895, 89.999992, 32.418354, -122.418381, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16640, "a51", "Metal3_128", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(2697, -1827.316040, 509.864929, 2170.812744, -0.000006, -0.000007, -60.000015, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18368, "cs_mountaintop", "sw_flag01", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1828.420898, 511.315125, 2170.910645, 0.000000, -0.000007, 179.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(1656, -1829.322021, 500.534973, 2168.941895, 89.999992, 166.631470, -76.631500, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16640, "a51", "Metal3_128", 0xFFCECECE);
	CreateDynamicObject(19330, -1827.193970, 504.009338, 2170.777344, -0.000077, 270.000000, 55.000244, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19834, -1828.495117, 501.100403, 2169.165771, 0.000014, 90.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1827.697632, 510.592224, 2170.910645, 0.000014, 0.000007, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(2960, -1833.821045, 499.416077, 2168.747559, 89.999992, 256.631500, -76.631500, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(19353, -1840.461670, 505.177917, 2168.587402, 0.000000, 0.000000, 180.000031, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17545, "burnsground", "newall10_seamless", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(1656, -1827.203613, 502.095154, 2168.941895, 89.999992, 89.999992, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1826.866577, 509.218567, 2170.910645, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19353, -1837.380493, 501.980896, 2170.910645, 0.000000, 0.000007, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19426, -1838.050903, 511.315125, 2170.910645, 0.000000, -0.000007, 179.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19426, -1839.128174, 503.650940, 2170.476563, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17545, "burnsground", "newall10_seamless", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19325, -1829.222412, 503.836243, 2172.912842, 0.000029, 89.999985, 179.999710, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x88FFFFFF);
	LSFD_Interior = CreateDynamicObject(2271, -1836.782104, 501.453430, 2171.269531, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 2670, "proc_rub", "CJ_CERT_1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(19843, -1831.699585, 502.105408, 2172.902344, 0.000000, 0.000014, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18835, "mickytextures", "metal013", 0xFFA0A0A0);
	CreateDynamicObject(3017, -1837.087036, 501.034485, 2170.680664, 0.000007, 0.000000, 89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19426, -1839.738770, 503.652893, 2170.476563, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17545, "burnsground", "newall10_seamless", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(1656, -1828.582886, 500.081360, 2168.941895, 89.999992, -72.586990, -107.413086, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1826.836548, 500.996399, 2166.976563, 0.000014, 179.999985, -0.000014, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(1502, -1831.667969, 498.917999, 2169.133057, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14707, "labig3int2", "aptdoor01_int", 0xFF5E809B);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19478, -1828.610840, 499.558655, 2165.364746, -0.000024, -0.000007, -80.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14776, "genintintcarint3", "leccy_cables", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1826.824829, 500.996399, 2167.235840, 0.000000, 0.000007, 179.999893, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19478, -1828.541016, 499.572083, 2165.474854, 0.000024, 180.000000, 99.999947, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14776, "genintintcarint3", "leccy_cables", 0);
	LSFD_Interior = CreateDynamicObject(2729, -1837.267700, 501.461121, 2171.510254, 0.000000, 90.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17588, "lae2coast_alpha", "LAShad1", 0xFF000000);
	LSFD_Interior = CreateDynamicObject(1270, -1828.361084, 499.598328, 2165.352295, -89.999992, -359.173920, 100.825920, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(2734, -1837.247681, 501.453430, 2171.599854, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2164, -1829.573608, 499.444397, 2169.149658, 0.000000, 0.000000, 360.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 14842, "genintintpolicea", "poldesk", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14476, "carlslounge", "AH_plnskirting", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1285, "newstand", "newstandnew256", 0);
	LSFD_Interior = CreateDynamicObject(19834, -1826.096558, 502.448181, 2169.165771, -90.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 7981, "vgssairport02", "chevronYB_64", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(918, -1828.201416, 499.658386, 2165.511963, 52.900066, 90.000099, -169.999969, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3630, "compthotrans_la", "sanpedock993", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(18066, -1831.651611, 498.922424, 2169.523926, -0.000012, 90.000038, -0.000213, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(1656, -1827.663330, 500.535095, 2168.941895, 89.999992, 32.418354, -122.418381, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16640, "a51", "Metal3_128", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(2974, -1839.734985, 511.744812, 2169.369873, 0.000018, 0.000000, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16360, "desn2_truckstop", "sw_wind17", 0);
	LSFD_Interior = CreateDynamicObject(2960, -1829.201538, 499.416077, 2168.747559, 89.999992, 244.471222, -64.471222, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(19483, -1828.158691, 499.642517, 2165.241699, 0.000029, 90.000175, 99.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0xAA000000);
	LSFD_Interior = CreateDynamicObject(1581, -1839.387695, 500.759460, 2166.271240, -29.999949, 179.999802, -160.000427, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14776, "genintintcarint3", "tool_store", 0);
	LSFD_Interior = CreateDynamicObject(918, -1827.945557, 499.703674, 2165.513184, 52.900066, 90.000099, -169.999969, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3630, "compthotrans_la", "sanpedock993", 0xFFFFFFFF);
	CreateDynamicObject(19900, -1839.333984, 500.740173, 2165.218994, 0.000007, 0.000007, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19563, -1827.927490, 499.675842, 2165.693359, 89.999992, 359.174011, -79.174026, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16640, "a51", "a51_boffstuff1", 0);
	LSFD_Interior = CreateDynamicObject(19878, -1827.996582, 499.673157, 2165.233398, 0.000023, 179.999985, -169.999985, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(1581, -1839.350342, 500.657166, 2166.131104, 89.999992, 75.626297, -55.626019, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14776, "genintintcarint3", "toolwall1", 0);
	LSFD_Interior = CreateDynamicObject(1581, -1839.350342, 500.657166, 2166.111084, 89.999992, 75.626297, -55.626019, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14776, "genintintcarint3", "tool_store", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1826.844604, 500.996399, 2163.735840, 0.000000, 0.000014, 179.999893, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2645, -1835.041626, 498.185608, 2166.092041, 0.000000, -0.000029, -1250.000092, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1839.741333, 501.975769, 2169.684082, 0.000000, 120.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3063, "col_wall1x", "mp_diner_ceilingdirt", 0xFF959595);
	LSFD_Interior = CreateDynamicObject(2645, -1835.066895, 498.151306, 2166.093994, 0.000000, 0.000029, 4.999999, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(1945, -1834.819580, 498.067322, 2165.349121, 0.000007, 0.000018, 34.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "wheel02_64", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2202, -1836.881470, 499.199890, 2169.149658, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19353, -1839.734985, 511.092102, 2170.910645, 0.000014, 0.000007, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(1945, -1835.268311, 498.028015, 2165.349121, 0.000007, 0.000018, 34.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "wheel02_64", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1839.990967, 501.162903, 2164.096191, -89.999985, 0.000014, -90.000046, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(1656, -1827.224121, 500.081360, 2168.941895, 89.999992, -72.586990, -107.413086, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16640, "a51", "Metal3_128", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(18066, -1831.651611, 498.922424, 2170.943359, -0.000012, 90.000031, -0.000213, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19353, -1837.380493, 505.190857, 2174.410645, 0.000000, 180.000000, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2704, -1834.971313, 497.731750, 2166.089111, 0.000056, -0.000014, 124.999817, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19331, "firehats", "fire_hat01", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1716, "cj_seating", "CJ_SHINYWOOD", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(971, -1839.989624, 507.023132, 2172.676514, 89.999992, 90.000031, -89.999962, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF505050);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	CreateDynamicObject(19330, -1835.012573, 497.681580, 2166.684082, 0.000059, 270.000000, 74.999901, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19445, -1823.801147, 509.193420, 2166.976563, 0.000029, 179.999985, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(2960, -1838.439209, 499.416077, 2168.747559, 89.999992, 263.225983, -83.225975, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(19353, -1840.461670, 505.177917, 2172.087402, 0.000000, 0.000000, 180.000031, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17545, "burnsground", "newall10_seamless", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(971, -1839.989746, 507.023132, 2172.890869, 89.999992, 266.596100, -86.596100, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF252525);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(971, -1831.281494, 500.020813, 2172.676514, 89.999992, 90.000031, -89.999962, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF505050);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(2960, -1826.923828, 499.415100, 2166.805908, 0.000014, 90.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(19477, -1840.742676, 501.049377, 2167.069824, -0.000007, 0.000000, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14776, "genintintcarint3", "toolwall1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17588, "lae2coast_alpha", "LAShad1", 0);
	LSFD_Interior = CreateDynamicObject(19477, -1840.742676, 501.041321, 2167.139648, -0.000007, 0.000000, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14776, "genintintcarint3", "toolwall1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14776, "genintintcarint3", "tool_store", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1837.380493, 499.573425, 2170.910645, 0.000000, 0.000007, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19483, -1840.742676, 501.033264, 2167.139648, -0.000007, 0.000000, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14776, "genintintcarint3", "toolwall1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14776, "genintintcarint3", "toolwall1", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1839.049805, 506.704529, 2173.932129, 89.999992, 89.999992, -180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19478, -1839.770874, 499.932434, 2165.335205, 0.000014, 0.000003, -119.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1340, "foodkarts", "dogcart05", 0);
	LSFD_Interior = CreateDynamicObject(971, -1831.281616, 500.020813, 2172.890869, 89.999992, 266.596100, -86.596100, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF252525);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1823.801147, 509.185364, 2163.735840, -0.000014, 0.000014, -89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19482, -1826.937744, 499.254944, 2167.446533, 89.999992, 89.999992, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x88000000);
	LSFD_Interior = CreateDynamicObject(19580, -1839.919067, 499.855042, 2165.540283, -0.000011, -0.000024, -29.999912, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 15040, "cuntcuts", "GB_phone02", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16640, "a51", "airvent_gz", 0);
	LSFD_Interior = CreateDynamicObject(11722, -1839.917114, 499.858337, 2165.411133, 0.000011, 179.999985, 149.999985, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 15040, "cuntcuts", "GB_phone02", 0);
	LSFD_Interior = CreateDynamicObject(2729, -1829.589722, 499.440735, 2171.720703, 0.000007, 90.000031, 0.000007, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17588, "lae2coast_alpha", "LAShad1", 0xFF000000);
	LSFD_Interior = CreateDynamicObject(2642, -1834.987183, 497.231384, 2166.571533, -89.999992, 90.000000, 94.999969, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 5
	SetDynamicObjectMaterial(LSFD_Interior, 4, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16023, "des_trainstuff", "metpat64shadow", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 16023, "des_trainstuff", "metpat64shadow", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16023, "des_trainstuff", "metpat64shadow", 0);
	LSFD_Interior = CreateDynamicObject(11710, -1839.942261, 499.872009, 2165.329590, 89.999992, -15.146786, -14.853098, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3440, "airportpillar", "metalic_64", 0);
	LSFD_Interior = CreateDynamicObject(19937, -1834.987183, 497.231384, 2165.491211, 0.000000, 0.000000, 5.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(2642, -1834.987183, 497.231384, 2165.491211, -89.999992, 90.000000, 94.999969, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 5
	SetDynamicObjectMaterial(LSFD_Interior, 4, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16023, "des_trainstuff", "metpat64shadow", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 16023, "des_trainstuff", "metpat64shadow", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16023, "des_trainstuff", "metpat64shadow", 0);
	LSFD_Interior = CreateDynamicObject(19478, -1840.429565, 500.312805, 2165.335205, 0.000014, 0.000003, -119.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1340, "foodkarts", "dogcart05", 0);
	LSFD_Interior = CreateDynamicObject(2704, -1834.920776, 497.153381, 2166.089111, 0.000058, -0.000034, 154.999664, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19331, "firehats", "fire_hat02", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1716, "cj_seating", "CJ_SHINYWOOD", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19330, -1834.953491, 497.167908, 2166.684082, -0.000059, 270.000000, -104.999825, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19331, "firehats", "fire_hat02", 0);
	LSFD_Interior = CreateDynamicObject(2734, -1829.597412, 499.420715, 2171.810059, 0.000007, 0.000029, 0.000007, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14652, "ab_trukstpa", "CJ_WOOD1(EDGE)", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19426, -1840.021484, 500.285583, 2168.818848, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3063, "col_wall1x", "mp_diner_ceilingdirt", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(2662, -1840.162964, 500.008240, 2165.265137, -89.999992, 21.866142, 171.866150, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x99000000);
	LSFD_Interior = CreateDynamicObject(1270, -1840.286011, 500.069519, 2165.478516, -85.899971, 0.000165, 60.000263, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18081, "cj_barb", "barberschr7b", 0);
	LSFD_Interior = CreateDynamicObject(19478, -1839.906006, 499.698303, 2165.335205, 0.000014, 0.000003, -119.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1340, "foodkarts", "dogcart05", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1828.495972, 510.592224, 2174.410645, 0.000014, 180.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(11710, -1840.409790, 500.141907, 2165.329590, 89.999992, -15.146786, -14.853098, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3440, "airportpillar", "metalic_64", 0);
	LSFD_Interior = CreateDynamicObject(19383, -1831.684570, 498.125549, 2170.910645, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19353, -1841.562988, 504.735168, 2171.156006, 40.999985, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3063, "col_wall1x", "mp_diner_ceilingdirt", 0xFF959595);
	LSFD_Interior = CreateDynamicObject(19383, -1831.602173, 498.125549, 2170.910645, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14853, "gen_pol_vegas", "mp_cop_wall", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(14397, -1826.116211, 499.607605, 2167.194824, 0.000000, -90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2917, "a51_crane", "girder2_grey_64HV", 0);
	LSFD_Interior = CreateDynamicObject(2271, -1829.597412, 498.955139, 2171.479736, 0.000007, 0.000029, 0.000007, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 2670, "proc_rub", "CJ_CERT_1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14652, "ab_trukstpa", "CJ_WOOD1(EDGE)", 0);
	LSFD_Interior = CreateDynamicObject(19377, -1843.009766, 506.030579, 2168.076660, 0.000000, 0.000000, 180.000031, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17545, "burnsground", "newall10_seamless", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(18066, -1831.651611, 497.370422, 2169.503418, 0.000012, 270.000000, -179.999649, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19478, -1840.564697, 500.078430, 2165.335205, 0.000014, 0.000003, -119.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1340, "foodkarts", "dogcart05", 0);
	LSFD_Interior = CreateDynamicObject(1270, -1840.793091, 500.362488, 2165.087891, -62.400013, 179.999954, -120.000031, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1841.562988, 505.377869, 2171.715820, 40.999985, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3063, "col_wall1x", "mp_diner_ceilingdirt", 0xFF959595);
	LSFD_Interior = CreateDynamicObject(19445, -1838.130005, 510.592224, 2174.410645, 0.000014, 180.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19445, -1826.866577, 505.749695, 2174.410645, 0.000000, 180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	CreateDynamicObject(19900, -1841.234375, 500.740173, 2165.218994, 0.000007, 0.000007, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(631, -1827.602783, 499.027283, 2170.054443, 0.000000, 0.000000, 45.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14477, "crlsbits", "CJ_PLANTPOT", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(18066, -1831.651611, 498.248474, 2171.678223, 89.999992, 211.960464, -121.960403, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFF707070);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19482, -1834.639404, 497.115265, 2169.173096, 0.000000, 90.000000, 3.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 12869, "ce_ground04", "carpark_128", 0);
	CreateDynamicObject(2986, -1837.266846, 499.642517, 2172.310547, 0.000000, -90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19581, -1839.482788, 499.696716, 2170.050293, 0.000000, 0.000012, -0.000167, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19581, -1839.482788, 499.696716, 2170.090332, 0.000000, 180.000000, -0.000167, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3961, "lee_kitch", "Roast", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19426, -1838.828979, 499.571716, 2170.910645, 0.000000, 0.000007, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(631, -1842.354004, 509.957458, 2170.054443, 0.000000, 0.000000, 45.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14477, "crlsbits", "CJ_PLANTPOT", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19353, -1837.380493, 501.980896, 2174.410645, 0.000000, 180.000000, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19567, -1834.891968, 496.592468, 2166.573730, 0.000048, 0.000014, 76.299973, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2961, "fire_brx", "fire_break", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1841.419556, 511.315125, 2170.910645, 0.000000, -0.000007, 179.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(18066, -1831.650635, 498.025574, 2171.677246, 89.999992, 211.960464, -121.960403, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFF707070);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2002, -1832.264038, 496.782990, 2168.938965, 0.000000, 0.000000, 270.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19929, -1839.672852, 499.237000, 2169.151855, 0.000014, 0.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3636, "indust_lax", "lasjmpow94", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 5407, "glenpark1x_lae", "sjmhoodlawn4", 0);
	LSFD_Interior = CreateDynamicObject(2729, -1827.978271, 499.440735, 2171.720703, 0.000007, 90.000023, 0.000007, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17588, "lae2coast_alpha", "LAShad1", 0xFF000000);
	LSFD_Interior = CreateDynamicObject(19445, -1826.947754, 499.651184, 2170.910645, 0.000014, 0.000007, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(19378, -1832.594727, 515.328430, 2172.740723, 0.000000, 90.000015, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14415, "carter_block_2", "mp_carter_floor", 0xFF808080);
	LSFD_Interior = CreateDynamicObject(2002, -1832.264038, 496.782990, 2169.150879, 0.000000, 0.000000, 270.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1841.562988, 501.975769, 2170.124512, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3063, "col_wall1x", "mp_diner_ceilingdirt", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(19426, -1838.106323, 498.850037, 2170.910645, 0.000000, 0.000007, 270.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(2734, -1827.985962, 499.420715, 2171.810059, 0.000007, 0.000022, 0.000007, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14652, "ab_trukstpa", "CJ_WOOD1(EDGE)", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1826.947754, 499.551208, 2170.910645, 0.000014, 0.000007, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14853, "gen_pol_vegas", "mp_cop_wall", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(1945, -1834.678223, 496.451965, 2165.349121, 0.000007, 0.000012, 34.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "wheel02_64", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1826.866577, 499.584534, 2170.910645, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(6959, -1836.788940, 496.919250, 2165.260254, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16103, "des_ne", "des_panelconc", 0xFFA0A0A0);
	LSFD_Interior = CreateDynamicObject(18066, -1831.651611, 497.370422, 2170.922852, 0.000012, 270.000000, -179.999695, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2645, -1834.880127, 496.340393, 2166.092041, 0.000000, -0.000022, -1250.000046, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(1945, -1835.126953, 496.412659, 2165.349121, 0.000007, 0.000012, 34.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "wheel02_64", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2645, -1834.905396, 496.306091, 2166.093994, 0.000000, 0.000022, 4.999999, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(2271, -1827.985962, 498.955139, 2171.479736, 0.000007, 0.000022, 0.000007, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 2670, "proc_rub", "CJ_CERT_1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14652, "ab_trukstpa", "CJ_WOOD1(EDGE)", 0);
	LSFD_Interior = CreateDynamicObject(19377, -1822.529541, 507.507996, 2168.818848, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3063, "col_wall1x", "mp_diner_ceilingdirt", 0xFFAFAFAF);
	CreateDynamicObject(19900, -1841.879150, 500.740173, 2165.218994, 0.000007, 0.000007, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19426, -1842.142456, 510.592224, 2170.910645, 0.000014, 0.000007, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(19581, -1840.182739, 499.696716, 2170.050293, 0.000000, 0.000012, -0.000167, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19581, -1840.182739, 499.696716, 2170.090332, 0.000000, 180.000000, -0.000167, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14802, "lee_bdupsflat", "Bdup_Pizza", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19825, -1839.585083, 499.248108, 2170.313965, -29.999990, 0.000000, -90.000008, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2776, "lee_chair1", "strip_metal", 0);
	LSFD_Interior = CreateDynamicObject(19482, -1834.923828, 496.250183, 2165.236084, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14577, "casinovault01", "ab_loadbayMark01", 0);
	LSFD_Interior = CreateDynamicObject(19483, -1838.093750, 498.751282, 2171.366699, 89.999992, 179.999985, -90.000008, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0xAA000000);
	LSFD_Interior = CreateDynamicObject(2691, -1842.869263, 508.371521, 2170.879395, 0.000029, 179.999969, 89.999710, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14420, "dr_gsbits", "mp_apt1_frame1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17588, "lae2coast_alpha", "LAShad1", 0);
	LSFD_Interior = CreateDynamicObject(19329, -1838.093750, 498.685120, 2171.366699, 0.000018, 90.000031, -0.000068, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 12853, "cunte_gas01", "starspangban1_256", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2279, -1836.652710, 497.050903, 2169.311768, 0.000014, 90.000015, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18047, "gen_mun_counter", "mp_gun_metal", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19564, -1831.984009, 496.776001, 2170.275879, 90.000000, 0.000000, 270.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterialText(LSFD_Interior, 0, "\n60%", 140, "Ariel", 240, 1, 0xFF223333, 0xFF778B8F, 1);
	LSFD_Interior = CreateDynamicObject(2254, -1842.867920, 508.321472, 2171.087646, 0.000029, -0.000036, 89.999710, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 2254, "picture_frame_clip", "CJ_PAINTING24", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2254, "picture_frame_clip", "CJ_PAINTING26", 0);
	LSFD_Interior = CreateDynamicObject(2257, -1842.875244, 508.321472, 2171.079590, 0.000029, -0.000036, 89.999710, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14652, "ab_trukstpa", "CJ_WOOD1(EDGE)", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14652, "ab_trukstpa", "CJ_WOOD1(EDGE)", 0);
	CreateDynamicObject(19586, -1839.804321, 499.106140, 2170.091309, -7.499985, 0.000000, 239.999924, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(2279, -1837.603638, 497.331146, 2169.311768, -0.000014, 90.000015, -89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18047, "gen_mun_counter", "mp_gun_metal", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(16101, -1828.508789, 501.088074, 2157.983887, 0.000000, 0.000029, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1843.000122, 508.363220, 2170.910645, 89.999992, 89.999992, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	CreateDynamicObject(1893, -1842.268555, 502.411804, 2170.589355, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19940, -1838.010010, 497.561981, 2169.962402, 0.000000, 90.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19825, -1840.285034, 499.248108, 2170.313965, -29.999990, 0.000000, -90.000008, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2776, "lee_chair1", "strip_metal", 0);
	LSFD_Interior = CreateDynamicObject(19581, -1840.882690, 499.696716, 2170.050293, 0.000000, 0.000012, -0.000167, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19581, -1840.882690, 499.696716, 2170.090332, 0.000000, 180.000000, -0.000167, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2823, "gb_kitchtake", "GB_takeaway03", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2162, -1826.972534, 497.683899, 2169.149658, 0.000000, 0.000000, 270.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 14842, "genintintpolicea", "poldesk", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14476, "carlslounge", "AH_plnskirting", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1285, "newstand", "newstandnew256", 0);
	LSFD_Interior = CreateDynamicObject(11707, -1838.093750, 498.705139, 2172.416992, 0.000018, 0.000028, -0.000068, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(1715, -1832.146362, 495.847473, 2169.151855, 0.000000, 0.000000, -89.999969, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 10023, "bigwhitesfe", "bigwhite_2", 0);
	LSFD_Interior = CreateDynamicObject(2163, -1841.348999, 499.315979, 2169.151855, 0.000000, 0.000014, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 13761, "lahills_whisky", "lasviper7", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1843.034058, 500.996399, 2166.976563, 0.000014, -179.999954, -179.999863, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19427, -1826.877563, 497.059021, 2165.474365, 0.000000, 0.000014, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 9515, "bigboxtemp1", "ws_garagedoor3_white", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1843.045776, 500.996399, 2167.235840, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2161, -1826.972534, 497.263489, 2168.709229, 0.000000, 0.000000, 270.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1285, "newstand", "newstandnew256", 0);
	LSFD_Interior = CreateDynamicObject(2279, -1838.454346, 497.050903, 2169.311768, 0.000029, 90.000015, 89.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18047, "gen_mun_counter", "mp_gun_metal", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1826.877930, 498.125549, 2170.910645, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14853, "gen_pol_vegas", "mp_cop_wall", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(14394, -1844.528687, 505.731018, 2168.332520, 0.000007, -0.000022, 89.999840, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14537, "pdomebar", "club_wood1_SFw", 0);
	LSFD_Interior = CreateDynamicObject(971, -1839.989624, 500.020813, 2172.676514, 89.999992, 90.000046, -89.999962, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF505050);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19929, -1839.872803, 499.436951, 2172.123535, 0.000007, -179.999969, -89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3636, "indust_lax", "lasjmpow94", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 5407, "glenpark1x_lae", "sjmhoodlawn4", 0);
	LSFD_Interior = CreateDynamicObject(14394, -1844.528687, 504.766418, 2167.626465, 0.000000, -0.000022, 89.999863, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14537, "pdomebar", "club_wood1_SFw", 0);
	LSFD_Interior = CreateDynamicObject(2163, -1840.693237, 499.517883, 2171.221436, 0.000000, 0.000022, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 13761, "lahills_whisky", "lasviper7", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(971, -1831.282715, 495.571899, 2168.732422, 89.999992, 89.999992, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF505050);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19825, -1840.984985, 499.248108, 2170.313965, -29.999990, 0.000000, -90.000008, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2776, "lee_chair1", "strip_metal", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1843.310059, 501.153137, 2166.976563, 0.000000, 179.999985, 90.000023, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(971, -1831.282837, 495.571899, 2168.948730, 89.999992, 224.950516, -44.950569, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF252525);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1837.380493, 499.573425, 2174.410645, 0.000000, 180.000000, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1843.067871, 501.145081, 2163.735840, 0.000014, 0.000014, -90.000046, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(971, -1839.989746, 500.020813, 2172.890869, 89.999992, 268.296539, -88.296532, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF252525);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1843.026001, 500.996399, 2163.735840, 0.000000, 0.000014, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19377, -1843.310059, 501.170959, 2168.076660, 0.000000, 0.000000, 90.000023, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17545, "burnsground", "newall10_seamless", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(2279, -1839.405273, 497.331146, 2169.311768, -0.000029, 90.000015, -89.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18047, "gen_mun_counter", "mp_gun_metal", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1842.990112, 511.683777, 2170.910645, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	CreateDynamicObject(11743, -1841.631226, 499.460022, 2170.041992, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19482, -1838.037842, 496.420044, 2169.170410, 0.000036, 90.000000, 89.999886, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x66000000);
	CreateDynamicObject(14680, -1840.666504, 499.031555, 2171.269043, 0.000029, -0.000014, 179.999710, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(1715, -1832.146362, 495.247498, 2169.151855, 0.000000, 0.000000, -89.999969, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(18066, -1831.652588, 495.713440, 2170.653076, -0.000012, 90.000038, -0.000213, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19426, -1840.659302, 499.571716, 2172.201416, 0.000000, 90.000008, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14653, "ab_trukstpb", "met_supp", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(1970, -1838.017822, 496.357910, 2169.702148, 0.000029, 0.000000, 89.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14653, "ab_trukstpb", "diner_seat3", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2855, -1829.973877, 495.789490, 2170.131348, 89.999992, 115.528748, -115.528801, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 14802, "lee_bdupsflat", "Bdup_KitchDoor", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 14802, "lee_bdupsflat", "Bdup_KitchDoor", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 14802, "lee_bdupsflat", "Bdup_KitchDoor", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 14802, "lee_bdupsflat", "Bdup_KitchDoor", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14802, "lee_bdupsflat", "Bdup_KitchDoor", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14665, "genintint711_1", "interiorwindowglow", 0);
	LSFD_Interior = CreateDynamicObject(19427, -1830.923828, 494.959290, 2165.149902, 0.000000, 90.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 4559, "lanlacma_lan2", "LASLACMA997", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1842.150391, 506.712830, 2174.410645, 0.000000, 180.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19940, -1838.017822, 496.377930, 2169.892578, 0.000029, 90.000000, 89.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	CreateDynamicObject(2986, -1826.985107, 498.202576, 2172.310547, 0.000000, -90.000000, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(18066, -1831.651611, 495.712463, 2170.943359, -0.000012, 90.000031, -0.000213, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2163, -1841.548950, 499.515930, 2171.222412, 0.000000, 0.000022, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 13761, "lahills_whisky", "lasviper7", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1826.867554, 496.254333, 2165.734619, -89.999992, 89.999992, 89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2988, "kcomp_gx", "kmwood_gate", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19482, -1826.923828, 496.250183, 2165.236084, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14577, "casinovault01", "ab_loadbayMark01", 0);
	LSFD_Interior = CreateDynamicObject(19980, -1831.623901, 494.934753, 2168.851563, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 14701, "lahss2int2", "HS2_Blind2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14701, "lahss2int2", "HS2_Blind2", 0);
	LSFD_Interior = CreateDynamicObject(19477, -1832.266479, 494.947571, 2169.169922, 0.000000, 90.000000, 179.999847, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x66000000);
	LSFD_Interior = CreateDynamicObject(19477, -1826.931519, 496.255798, 2167.562012, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x66FFFFFF);
	LSFD_Interior = CreateDynamicObject(2209, -1838.662354, 496.280884, 2169.161621, 0.000000, 0.000014, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19477, -1829.260620, 495.472351, 2169.169922, 0.000000, 90.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x77000000);
	LSFD_Interior = CreateDynamicObject(2960, -1842.923828, 499.415100, 2166.805908, 0.000014, 90.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(2279, -1836.652710, 495.430817, 2169.311768, 0.000000, 90.000015, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18047, "gen_mun_counter", "mp_gun_metal", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(2075, -1826.797363, 496.255798, 2167.792236, 20.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 10778, "airportcpark_sfse", "ws_fluorescent2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1842.116943, 499.754578, 2170.910645, -0.000007, 0.000007, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16322, "a51_stores", "metalic128", 0xFFE5E5E5);
	LSFD_Interior = CreateDynamicObject(14397, -1842.596680, 499.608582, 2169.576416, 0.000000, -180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2917, "a51_crane", "girder2_grey_64HV", 0);
	LSFD_Interior = CreateDynamicObject(2279, -1837.603638, 495.711060, 2169.311768, 0.000000, 90.000015, 270.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18047, "gen_mun_counter", "mp_gun_metal", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1826.947754, 499.651184, 2174.410645, 0.000014, 180.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(18066, -1831.650635, 495.058655, 2169.963379, -89.999992, 230.522629, 140.522614, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFF707070);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19929, -1842.533203, 499.237000, 2169.151855, 0.000014, 0.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3636, "indust_lax", "lasjmpow94", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 5407, "glenpark1x_lae", "sjmhoodlawn4", 0);
	LSFD_Interior = CreateDynamicObject(19482, -1842.934082, 499.254944, 2167.446533, 89.999992, 89.999992, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x88000000);
	LSFD_Interior = CreateDynamicObject(1896, -1829.148438, 495.509949, 2169.972168, -0.000014, -0.000014, -179.999832, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 8
	SetDynamicObjectMaterial(LSFD_Interior, 9, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 8, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 7, 2423, "cj_ff_counters", "CJ_worktop", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 15034, "genhotelsave", "walp57S", 0xFFFFFFFF);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(1715, -1832.146362, 494.647522, 2169.151855, 0.000000, 0.000000, -89.999969, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1843.521484, 500.285583, 2168.818848, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3063, "col_wall1x", "mp_diner_ceilingdirt", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(2717, -1827.020020, 496.771912, 2170.879883, 0.000007, 1.000007, -90.000023, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16644, "a51_detailstuff", "a51_map", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19378, -1832.062012, 494.591248, 2169.063721, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14415, "carter_block_2", "mp_carter_floor", 0xFF505050);
	CreateDynamicObject(14680, -1835.925903, 495.619934, 2171.269043, 0.000029, -0.000007, 179.999756, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(18066, -1831.651611, 494.835754, 2169.962402, -89.999992, 230.522629, 140.522614, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFF707070);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2960, -1843.057861, 499.416077, 2168.747559, 89.999992, 266.601196, -86.601173, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(19377, -1845.790894, 506.028748, 2166.775635, 0.000000, 90.000023, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14847, "mp_policesf", "mp_cop_tile", 0xFFFFFFFF);
	CreateDynamicObject(19808, -1829.343262, 495.229675, 2169.992676, 0.000000, 0.000000, 10.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19483, -1829.177734, 496.454407, 2172.624023, 0.000022, 90.000000, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3694, "ryderholes", "ryd_holes", 0x88000000);
	LSFD_Interior = CreateDynamicObject(2190, -1828.317017, 495.520935, 2169.962402, 0.000000, 0.000000, -50.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 2, 19894, "laptopsamp1", "laptopscreen2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1714, "cj_office", "of_monitor_256", 0);
	LSFD_Interior = CreateDynamicObject(19383, -1831.680542, 494.915588, 2170.730469, 0.000000, 180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19383, -1831.606201, 494.915588, 2170.730469, 0.000000, 180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14853, "gen_pol_vegas", "mp_cop_wall", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(2075, -1829.177734, 496.434387, 2172.690186, 0.000000, 0.000029, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 10778, "airportcpark_sfse", "ws_fluorescent2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14476, "carlslounge", "AH_plnskirting", 0);
	LSFD_Interior = CreateDynamicObject(19383, -1831.684570, 494.915588, 2170.910645, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19383, -1831.602173, 494.915588, 2170.910645, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14853, "gen_pol_vegas", "mp_cop_wall", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19378, -1829.521606, 494.699036, 2169.075684, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18800, "mroadhelix1", "concreteoldpainted1", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(19427, -1826.877563, 495.454041, 2165.474365, 0.000000, 0.000014, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 9515, "bigboxtemp1", "ws_garagedoor3_white", 0);
	LSFD_Interior = CreateDynamicObject(2279, -1838.454346, 495.430817, 2169.311768, 0.000014, 90.000015, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18047, "gen_mun_counter", "mp_gun_metal", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(18066, -1831.651611, 495.038513, 2171.678223, 89.999992, 211.960464, -121.960403, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFF707070);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19482, -1831.642944, 495.215881, 2172.050537, 90.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 10871, "blacksky_sfse", "ws_glass_balustrade", 0xAAFFFFFF);
	LSFD_Interior = CreateDynamicObject(1613, -1843.179077, 498.484558, 2165.929199, -90.000000, 0.000000, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19477, -1826.976196, 496.112122, 2170.767090, 0.000022, -0.000014, -0.000213, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 7525, "vgnfirestat", "vegasfiredept1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17588, "lae2coast_alpha", "LAShad1", 0);
	LSFD_Interior = CreateDynamicObject(19807, -1828.458008, 495.112000, 2170.054932, 0.000000, 0.000000, -24.000000, -1, 44, -1, STREAMER_OBJECT_SD, 600.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19807, "telephone1", "nt_phone2", 0xFFFFFFFF);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19807, "telephone1", "nt_phone1", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(1715, -1832.146362, 494.047546, 2169.151855, 0.000000, 0.000000, -89.999969, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 10023, "bigwhitesfe", "bigwhite_2", 0);
	LSFD_Interior = CreateDynamicObject(19174, -1826.972534, 496.112122, 2170.897461, 0.000014, 0.000022, -90.000015, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14853, "gen_pol_vegas", "mp_cop_pinboard", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14853, "gen_pol_vegas", "mp_cop_pinboard", 0);
	LSFD_Interior = CreateDynamicObject(2279, -1839.405273, 495.711060, 2169.311768, -0.000014, 90.000015, -89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18047, "gen_mun_counter", "mp_gun_metal", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19940, -1838.010010, 495.191833, 2169.962402, 0.000000, 90.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(2149, -1842.550415, 498.544617, 2170.222168, 0.000000, 0.000000, 70.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 2, 1692, "moregenroofstuff", "skylight_scum", 0);
	LSFD_Interior = CreateDynamicObject(18066, -1831.650635, 494.815613, 2171.677246, 89.999992, 211.960464, -121.960403, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFF707070);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19427, -1838.923828, 494.959290, 2165.149902, 0.000000, 90.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 4559, "lanlacma_lan2", "LASLACMA997", 0);
	LSFD_Interior = CreateDynamicObject(19929, -1842.453125, 497.845642, 2169.149658, 0.000022, -0.000014, 179.999817, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3636, "indust_lax", "lasjmpow94", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 5407, "glenpark1x_lae", "sjmhoodlawn4", 0);
	LSFD_Interior = CreateDynamicObject(2032, -1828.657227, 496.448303, 2173.400879, 0.000000, 180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "kit_table", 0);
	LSFD_Interior = CreateDynamicObject(19759, -1842.847412, 497.733337, 2166.397217, 13.300000, 0.000056, 179.999786, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14770, "genintgenintint3", "brothredleth", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(971, -1839.991577, 495.571899, 2168.732422, 89.999992, 89.999992, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF505050);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(18066, -1831.652588, 494.161438, 2170.632568, 0.000012, 270.000000, -179.999649, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19929, -1842.733154, 499.436951, 2172.123535, 0.000007, -179.999969, -89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3636, "indust_lax", "lasjmpow94", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 5407, "glenpark1x_lae", "sjmhoodlawn4", 0);
	LSFD_Interior = CreateDynamicObject(971, -1839.991699, 495.571899, 2168.948730, 89.999992, 224.971710, -44.971794, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF252525);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19378, -1840.021606, 495.579895, 2169.075684, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18800, "mroadhelix1", "concreteoldpainted1", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(18066, -1831.651611, 494.160461, 2170.922852, 0.000012, 270.000000, -179.999695, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2611, -1827.023560, 495.558044, 2170.937500, 0.000007, 0.000007, -90.000023, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 4
	SetDynamicObjectMaterial(LSFD_Interior, 6, 65535, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1842.990112, 511.683777, 2174.410645, 0.000000, 180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19325, -1838.833862, 496.447815, 2172.912842, 0.000029, 89.999985, 179.999710, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x88FFFFFF);
	LSFD_Interior = CreateDynamicObject(2960, -1834.923828, 493.350159, 2166.805908, 0.000014, 90.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	CreateDynamicObject(14680, -1829.143433, 493.686951, 2167.076416, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(2960, -1833.821045, 493.351135, 2168.747559, 89.999992, 256.631500, -76.631500, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	CreateDynamicObject(14680, -1837.044678, 493.686951, 2167.076416, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(2518, -1842.387207, 497.084778, 2169.141602, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(18634, -1842.999268, 497.213074, 2167.426758, -300.099991, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(1715, -1828.895264, 493.905579, 2169.151855, 0.000000, 0.000000, -179.999969, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18027, "cj_barb2", "interiordoor1_256", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 10023, "bigwhitesfe", "bigwhite_2", 0);
	LSFD_Interior = CreateDynamicObject(2167, -1830.846558, 493.355774, 2169.149658, 0.000000, 0.000000, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14842, "genintintpolicea", "poldesk", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14476, "carlslounge", "AH_plnskirting", 0);
	LSFD_Interior = CreateDynamicObject(19929, -1842.653076, 498.505798, 2172.121338, 0.000000, -179.999969, 0.000059, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3636, "indust_lax", "lasjmpow94", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 5407, "glenpark1x_lae", "sjmhoodlawn4", 0);
	LSFD_Interior = CreateDynamicObject(2267, -1842.432373, 497.183167, 2170.095947, -90.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14718, "lasmall1int2", "kb_sink2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19480, -1830.979858, 493.221130, 2168.965332, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x8FFFFFFF);
	CreateDynamicObject(2690, -1827.198608, 494.037048, 2165.599365, 0.000000, 0.000000, -120.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19378, -1826.389160, 494.669006, 2169.079834, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14847, "mp_policesf", "mp_cop_tile", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(19353, -1826.877930, 494.915588, 2170.910645, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14853, "gen_pol_vegas", "mp_cop_wall", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(2960, -1829.201538, 493.351135, 2168.747559, 89.999992, 244.471222, -64.471222, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(2271, -1832.284790, 493.349426, 2170.899170, 0.000022, 0.000000, -90.000038, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 15040, "cuntcuts", "GB_novels06", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(2163, -1842.731689, 497.462341, 2171.221436, 0.000014, 0.000029, 89.999924, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 13761, "lahills_whisky", "lasviper7", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(2729, -1831.799194, 493.341736, 2171.140137, 0.000022, 90.000000, -90.000038, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17588, "lae2coast_alpha", "LAShad1", 0xFF000000);
	LSFD_Interior = CreateDynamicObject(2734, -1831.819214, 493.349426, 2171.229492, 0.000022, 0.000000, -90.000038, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19802, -1836.610962, 493.127991, 2169.133057, 0.000000, 0.000000, -193.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14707, "labig3int2", "aptdoor01_int", 0xFF5E809B);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(2691, -1837.936401, 494.028992, 2170.879395, 0.000029, 179.999969, 179.999634, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14420, "dr_gsbits", "mp_apt1_frame1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17588, "lae2coast_alpha", "LAShad1", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1842.114380, 498.846008, 2174.291260, 0.000000, 180.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(19353, -1842.056885, 498.770935, 2174.291260, 0.000000, -180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19482, -1842.923828, 496.250183, 2165.236084, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14577, "casinovault01", "ab_loadbayMark01", 0);
	LSFD_Interior = CreateDynamicObject(19378, -1843.094727, 515.328430, 2172.740723, 0.000000, 90.000015, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14415, "carter_block_2", "mp_carter_floor", 0xFF808080);
	LSFD_Interior = CreateDynamicObject(19445, -1831.684570, 494.915588, 2174.410645, 0.000000, 180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2254, -1837.886353, 494.030334, 2171.087646, 0.000029, -0.000043, 179.999634, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 11389, "hubint1_sfse", "ws_STDcalendar", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 11389, "hubint1_sfse", "ws_STDcalendar", 0);
	LSFD_Interior = CreateDynamicObject(2257, -1837.886353, 494.023010, 2171.079590, 0.000029, -0.000043, 179.999634, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(18066, -1836.594238, 493.132874, 2169.523926, -0.000012, 90.000046, -0.000211, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1842.112305, 498.837219, 2174.410645, 0.000000, 180.000000, 270.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(1502, -1831.667969, 492.497986, 2169.133057, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14707, "labig3int2", "aptdoor01_int", 0xFF5E809B);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19916, -1842.607666, 495.999817, 2169.091797, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14576, "mafiacasinovault01", "ab_vaultmetal", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19611, -1827.240601, 493.614075, 2169.164551, 0.000006, 0.000003, 119.999832, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1716, "cj_seating", "CJ_SHINYWOOD", 0);
	LSFD_Interior = CreateDynamicObject(2691, -1829.254150, 493.374817, 2170.879395, 0.000022, 179.999969, 179.999664, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14420, "dr_gsbits", "mp_apt1_frame1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17588, "lae2coast_alpha", "LAShad1", 0);
	LSFD_Interior = CreateDynamicObject(2960, -1838.439209, 493.351135, 2168.747559, 89.999992, 263.225983, -83.225975, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(18066, -1831.651611, 492.502502, 2169.523926, -0.000012, 90.000038, -0.000213, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1826.866577, 496.115662, 2174.410645, 0.000000, 180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2254, -1829.204102, 493.376160, 2171.087646, 0.000022, -0.000043, 179.999664, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 10765, "airportgnd_sfse", "black64", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 11631, "mp_ranchcut", "CJ_PAINTING20", 0);
	LSFD_Interior = CreateDynamicObject(2257, -1829.204102, 493.368835, 2171.079590, 0.000022, -0.000043, 179.999664, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14652, "ab_trukstpa", "CJ_WOOD1(EDGE)", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14652, "ab_trukstpa", "CJ_WOOD1(EDGE)", 0);
	LSFD_Interior = CreateDynamicObject(2960, -1826.923828, 493.350159, 2166.805908, 0.000014, 90.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(2163, -1839.909180, 494.003967, 2169.141602, 0.000000, -0.000007, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14842, "genintintpolicea", "poldesk", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14476, "carlslounge", "AH_plnskirting", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1842.785156, 497.200134, 2172.199219, 0.000000, 90.000008, 270.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14653, "ab_trukstpb", "met_supp", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(18066, -1836.594238, 493.132874, 2170.943359, -0.000012, 90.000038, -0.000211, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2163, -1842.729736, 496.606628, 2171.222412, 0.000014, 0.000029, 89.999924, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 13761, "lahills_whisky", "lasviper7", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19482, -1826.937744, 493.190002, 2167.446533, 89.999992, 89.999992, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x88000000);
	LSFD_Interior = CreateDynamicObject(14397, -1826.116211, 493.543030, 2167.194824, 0.000000, -89.999992, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2917, "a51_crane", "girder2_grey_64HV", 0);
	LSFD_Interior = CreateDynamicObject(2767, -1840.296753, 494.213440, 2170.062256, 0.000039, 0.000048, -0.000100, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1730, "cj_furniture", "CJ_WOOD5", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2767, -1840.296753, 494.213440, 2170.077393, 0.000039, 0.000048, -0.000100, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1730, "cj_furniture", "CJ_WOOD5", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(2767, -1840.296753, 494.213440, 2170.092285, 0.000039, 0.000048, -0.000100, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1730, "cj_furniture", "CJ_WOOD5", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2767, -1840.296753, 494.213440, 2170.107178, 0.000039, 0.000048, -0.000100, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1730, "cj_furniture", "CJ_WOOD5", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(2767, -1840.296753, 494.213440, 2170.122070, 0.000039, 0.000048, -0.000100, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1730, "cj_furniture", "CJ_WOOD5", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19480, -1838.890747, 493.221130, 2168.965332, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x8FFFFFFF);
	LSFD_Interior = CreateDynamicObject(2697, -1827.266357, 493.639221, 2170.812744, 0.000003, -0.000006, -150.000031, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18368, "cs_mountaintop", "sw_flag01", 0);
	LSFD_Interior = CreateDynamicObject(18066, -1831.651611, 492.502502, 2170.943359, -0.000012, 90.000031, -0.000213, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(11713, -1842.925171, 495.287781, 2166.829590, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2961, "fire_brx", "fire_break", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1842.061890, 497.165955, 2173.870850, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(16734, -1834.580811, 522.281677, 2165.686523, -0.000014, 0.000000, -89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18646, "matcolours", "grey-10-percent", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1843.723755, 498.850037, 2173.870850, 0.000000, 0.000007, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(19378, -1826.311157, 494.668884, 2172.725586, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14847, "mp_policesf", "mp_cop_floor", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(971, -1831.281494, 493.018127, 2172.676514, 89.999992, 90.000046, -89.999962, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF505050);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(16101, -1828.477295, 501.088074, 2179.804199, 0.000000, -179.999985, -0.000029, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(19325, -1834.093262, 493.036194, 2172.912842, 0.000029, 89.999992, 179.999756, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x88FFFFFF);
	LSFD_Interior = CreateDynamicObject(19759, -1842.847412, 494.972473, 2165.989746, -13.300000, 180.000000, -0.000014, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14770, "genintgenintint3", "brothredleth", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19476, -1840.314087, 493.998108, 2170.701660, 0.000043, -0.000003, 89.999756, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterialText(LSFD_Interior, 0, "Используйте {FF8282}ПКМ{ffffff},\nчтобы взять поднос.", 120, "Arial", 40, 0, 0xFFFFFFFF, 0xFF000000, 1);
	LSFD_Interior = CreateDynamicObject(971, -1831.281616, 493.018127, 2172.890869, 89.999992, 268.296539, -88.296532, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF252525);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19427, -1830.923828, 491.459290, 2165.149902, 0.000000, 90.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 4559, "lanlacma_lan2", "LASLACMA997", 0);
	LSFD_Interior = CreateDynamicObject(1431, -1834.899658, 491.388611, 2165.774414, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3786, "missiles_sfs", "ws_packingcase1", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1826.947754, 493.258484, 2170.910645, 0.000014, 0.000007, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14853, "gen_pol_vegas", "mp_cop_wall", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(19383, -1836.539673, 492.374695, 2170.910645, 0.000000, 0.000000, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19445, -1826.947754, 493.238464, 2170.910645, 0.000014, 0.000007, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 7533, "vgncondos1", "casinowall6_256", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(19383, -1836.627930, 492.374695, 2170.910645, 0.000000, 0.000000, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14443, "ganghoos", "ab_wallPanel", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19426, -1842.786865, 495.496887, 2170.910645, 0.000000, 0.000007, 270.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(19445, -1842.960083, 495.602844, 2170.910645, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16322, "a51_stores", "metalic128", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19378, -1842.562012, 494.591248, 2169.063721, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14415, "carter_block_2", "mp_carter_floor", 0xFF505050);
	LSFD_Interior = CreateDynamicObject(19426, -1842.063965, 494.775452, 2170.910645, 0.000000, 0.000007, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(18066, -1836.594238, 492.458923, 2171.678223, 89.999992, 197.136093, -107.136017, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFF707070);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19929, -1842.653076, 495.644714, 2172.121338, 0.000000, -179.999969, 0.000059, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3636, "indust_lax", "lasjmpow94", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 5407, "glenpark1x_lae", "sjmhoodlawn4", 0);
	CreateDynamicObject(11729, -1827.226074, 492.363342, 2169.121582, -0.000007, 0.000000, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19173, -1840.971436, 493.709656, 2170.392090, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1692, "moregenroofstuff", "skylight_scum", 0);
	LSFD_Interior = CreateDynamicObject(19383, -1831.684570, 491.705627, 2170.910645, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19383, -1831.602173, 491.705627, 2170.910645, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 7533, "vgncondos1", "casinowall6_256", 0xFFCECECE);
	CreateDynamicObject(11745, -1840.189209, 493.437805, 2171.232422, 0.000000, 0.000000, 80.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(18066, -1836.593262, 492.236023, 2171.677246, 89.999992, 197.136093, -107.136017, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFF707070);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(18066, -1836.594238, 491.580872, 2169.503418, 0.000011, 270.000000, -179.999603, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1841.276367, 493.899353, 2170.910645, -0.000007, 0.000007, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(18066, -1831.651611, 491.828552, 2171.678223, 89.999992, 211.960464, -121.960403, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFF707070);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1841.276367, 493.799377, 2170.910645, -0.000007, 0.000007, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14443, "ganghoos", "ab_wallPanel", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(18066, -1831.650635, 491.605652, 2171.677246, 89.999992, 211.960464, -121.960403, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFF707070);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19602, -1842.844849, 493.829529, 2166.777832, -11.999995, -179.999985, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1654, "dynamite", "redcan", 0);
	LSFD_Interior = CreateDynamicObject(18066, -1831.651611, 490.950500, 2169.503418, 0.000012, 270.000000, -179.999649, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(18066, -1836.594238, 491.580872, 2170.922852, 0.000011, 270.000000, -179.999649, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19427, -1838.923828, 491.459290, 2165.149902, 0.000000, 90.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 4559, "lanlacma_lan2", "LASLACMA997", 0);
	CreateDynamicObject(11730, -1827.226074, 491.663391, 2169.121582, -0.000007, 0.000000, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19353, -1842.056885, 495.560974, 2174.291260, 0.000000, -180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19482, -1834.923828, 490.450134, 2165.236084, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14577, "casinovault01", "ab_loadbayMark01", 0);
	LSFD_Interior = CreateDynamicObject(2694, -1827.279175, 491.658752, 2169.432129, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2567, "ab", "Box_Texturepage", 0);
	CreateDynamicObject(14782, -1841.955688, 493.351624, 2170.032471, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(18066, -1831.651611, 490.950500, 2170.922852, 0.000012, 270.000000, -179.999695, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(18634, -1842.999268, 493.472107, 2166.906250, -29.488661, 264.218628, -11.622674, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1826.836548, 491.362366, 2166.976563, 0.000014, 179.999985, -0.000014, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(14397, -1842.596680, 493.544006, 2169.576416, 0.000000, -180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2917, "a51_crane", "girder2_grey_64HV", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1826.824829, 491.362366, 2167.235840, 0.000000, 0.000007, 179.999893, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2960, -1842.923828, 493.350159, 2166.805908, 0.000014, 90.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(971, -1839.989624, 493.018127, 2172.676514, 89.999992, 90.000061, -89.999962, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF505050);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(2705, -1827.261475, 491.700745, 2170.722168, 0.000000, 0.000000, -110.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 2514, "cj_bathroom", "CJ_PILLOWCASE", 0xFFFFFFFF);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1716, "cj_seating", "CJ_SHINYWOOD", 0);
	LSFD_Interior = CreateDynamicObject(971, -1839.989746, 493.018127, 2172.890869, 89.999992, 269.148071, -89.148056, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF252525);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1826.844604, 491.362366, 2163.735840, 0.000000, 0.000014, 179.999893, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19482, -1842.934082, 493.190002, 2167.446533, 89.999992, 89.999992, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x88000000);
	LSFD_Interior = CreateDynamicObject(2960, -1843.057861, 493.351135, 2168.747559, 89.999992, 266.601196, -86.601173, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(2161, -1831.784302, 490.108582, 2169.139648, 0.000014, -0.000007, 269.999939, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 14842, "genintintpolicea", "poldesk", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14476, "carlslounge", "AH_plnskirting", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1285, "newstand", "newstandnew256", 0);
	LSFD_Interior = CreateDynamicObject(19427, -1826.877563, 490.968933, 2165.474365, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 9515, "bigboxtemp1", "ws_garagedoor3_white", 0);
	LSFD_Interior = CreateDynamicObject(2271, -1835.940186, 490.680969, 2170.899170, 0.000022, 0.000000, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 18081, "cj_barb", "barberspic1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1842.048096, 494.775452, 2174.410645, 0.000000, 180.000000, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	CreateDynamicObject(11729, -1827.226074, 490.963440, 2169.121582, -0.000007, 0.000000, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	CreateDynamicObject(19900, -1842.621826, 492.600159, 2165.218994, 0.000000, -0.000007, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(2729, -1836.425781, 490.688660, 2171.140137, 0.000022, 90.000000, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17588, "lae2coast_alpha", "LAShad1", 0xFF000000);
	LSFD_Interior = CreateDynamicObject(2120, -1831.076416, 490.110779, 2169.792236, 0.000000, 0.000000, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14802, "lee_bdupsflat", "Bdup_cabinet", 0);
	LSFD_Interior = CreateDynamicObject(2734, -1836.405762, 490.680969, 2171.229492, 0.000022, 0.000000, 89.999931, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 8423, "pirateship01", "tislandwdbox01_128", 0xFFFFFFFF);
	CreateDynamicObject(2384, -1831.034302, 490.095764, 2169.862305, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(2161, -1831.784302, 490.108582, 2170.490234, 0.000014, -0.000007, 269.999939, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 14842, "genintintpolicea", "poldesk", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14476, "carlslounge", "AH_plnskirting", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1285, "newstand", "newstandnew256", 0);
	LSFD_Interior = CreateDynamicObject(19483, -1839.860840, 492.224304, 2172.624023, 0.000045, 90.000000, 89.999863, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3694, "ryderholes", "ryd_holes", 0x88000000);
	LSFD_Interior = CreateDynamicObject(19445, -1841.276367, 493.899353, 2174.410645, -0.000007, 180.000000, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(2075, -1839.860840, 492.204285, 2172.690186, 0.000000, 0.000049, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 10778, "airportcpark_sfse", "ws_fluorescent2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3961, "lee_kitch", "metal1", 0);
	LSFD_Interior = CreateDynamicObject(2032, -1839.340332, 492.218201, 2173.400879, 0.000000, 180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14653, "ab_trukstpb", "met_supp", 0);
	LSFD_Interior = CreateDynamicObject(19482, -1826.923828, 490.450134, 2165.236084, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14577, "casinovault01", "ab_loadbayMark01", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1838.066406, 490.698303, 2170.910645, -0.000014, 0.000007, -89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14443, "ganghoos", "ab_wallPanel", 0xFFFFFFFF);
	CreateDynamicObject(19624, -1827.457275, 490.967957, 2171.272461, -90.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(16734, -1834.920044, 524.208923, 2169.615234, -0.000007, 0.000000, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18646, "matcolours", "grey-50-percent", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1838.066406, 490.588318, 2170.910645, -0.000014, 0.000007, -89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "wall3", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2518, -1837.545288, 489.991150, 2169.141602, 0.000007, 0.000014, 0.000007, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19174, -1838.126709, 490.507385, 2170.786377, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1692, "moregenroofstuff", "skylight_scum", 0);
	LSFD_Interior = CreateDynamicObject(16734, -1830.105103, 524.208923, 2169.615234, -0.000007, 0.000000, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18646, "matcolours", "grey-50-percent", 0);
	LSFD_Interior = CreateDynamicObject(19348, -1831.074341, 489.596619, 2169.833008, 33.999939, 0.000023, -90.000130, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0);
	LSFD_Interior = CreateDynamicObject(19329, -1842.873413, 492.105042, 2167.335449, 0.000007, 90.000015, 89.999947, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 12853, "cunte_gas01", "starspangban1_256", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19929, -1838.107422, 490.065002, 2169.141602, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 15041, "bigsfsave", "mp_carter_tilewall", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1826.867554, 490.164246, 2165.734619, -90.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2988, "kcomp_gx", "kmwood_gate", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2267, -1837.446899, 490.036316, 2170.095947, -89.999992, 64.471207, 64.471214, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14718, "lasmall1int2", "kb_sink2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19477, -1826.931519, 490.174377, 2167.562012, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x66FFFFFF);
	CreateDynamicObject(11729, -1827.226074, 490.263489, 2169.121582, -0.000007, 0.000000, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(11707, -1842.893433, 492.105042, 2168.385742, 0.000007, 0.000014, 89.999947, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2075, -1826.797363, 490.165710, 2167.792236, 20.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 10778, "airportcpark_sfse", "ws_fluorescent2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(19483, -1829.177734, 490.482605, 2172.624023, 0.000029, 90.000000, 89.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3694, "ryderholes", "ryd_holes", 0x88000000);
	LSFD_Interior = CreateDynamicObject(19348, -1831.074341, 489.596619, 2170.943848, 33.999939, 0.000033, -90.000145, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0);
	LSFD_Interior = CreateDynamicObject(2075, -1829.177734, 490.462585, 2172.690186, 0.000000, 0.000036, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 10778, "airportcpark_sfse", "ws_fluorescent2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3961, "lee_kitch", "metal1", 0);
	LSFD_Interior = CreateDynamicObject(2518, -1838.944702, 489.991150, 2169.142578, 0.000007, 0.000014, 0.000007, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1842.938477, 492.374695, 2170.910645, 0.000000, 0.000000, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14443, "ganghoos", "ab_wallPanel", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(18066, -1840.482300, 490.630554, 2169.503418, -0.000003, 270.000000, -89.999542, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2267, -1838.846313, 490.036316, 2170.096924, -89.999992, 64.471207, 64.471214, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14718, "lasmall1int2", "kb_sink2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(14397, -1843.757813, 499.608582, 2153.206299, 0.000000, -270.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2917, "a51_crane", "girder2_grey_64HV", 0);
	LSFD_Interior = CreateDynamicObject(2032, -1828.657227, 490.476501, 2173.400879, 0.000000, 180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14653, "ab_trukstpb", "met_supp", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1843.034058, 491.362366, 2166.976563, 0.000014, -179.999954, -179.999863, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(18066, -1840.482300, 490.630554, 2170.922852, -0.000003, 270.000000, -89.999588, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1843.045776, 491.362366, 2167.235840, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19348, -1827.392212, 489.596619, 2169.833008, -32.800045, 0.000049, -90.000099, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0);
	LSFD_Interior = CreateDynamicObject(19329, -1842.774048, 491.816711, 2171.036377, 0.000037, 90.000031, 89.999855, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 12853, "cunte_gas01", "starspangban1_256", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(971, -1831.282715, 488.571655, 2168.732422, 89.999992, 89.999992, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF505050);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19427, -1826.877563, 489.363953, 2165.474365, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 9515, "bigboxtemp1", "ws_garagedoor3_white", 0);
	LSFD_Interior = CreateDynamicObject(2202, -1832.241089, 488.539612, 2169.149658, 0.000000, 0.000000, 270.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19483, -1842.840210, 491.816711, 2171.036377, 89.999992, 244.471191, -64.471237, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0xAA000000);
	LSFD_Interior = CreateDynamicObject(971, -1831.282837, 488.571655, 2168.948730, 89.999992, 224.950516, -44.950569, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF252525);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1843.026001, 491.362366, 2163.735840, 0.000000, 0.000014, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(16734, -1839.734985, 524.208923, 2169.615234, -0.000007, 0.000000, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18646, "matcolours", "grey-50-percent", 0);
	LSFD_Interior = CreateDynamicObject(19383, -1841.276367, 490.698303, 2170.910645, -0.000014, 0.000007, -89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14443, "ganghoos", "ab_wallPanel", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19348, -1827.392212, 489.596619, 2170.943848, -32.800045, 0.000057, -90.000114, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0);
	LSFD_Interior = CreateDynamicObject(1502, -1842.030029, 490.614014, 2169.133057, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14707, "labig3int2", "aptdoor01_int", 0xFF5E809B);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	CreateDynamicObject(19900, -1842.621826, 490.699768, 2165.218994, 0.000000, -0.000007, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19383, -1841.276367, 490.588318, 2170.910645, -0.000014, 0.000007, -89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "wall3", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(18066, -1842.034302, 490.630554, 2169.523926, 0.000003, 90.000053, 89.999718, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2164, -1836.434937, 488.557800, 2169.149658, 0.000014, -0.000007, 89.999939, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 14842, "genintintpolicea", "poldesk", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14476, "carlslounge", "AH_plnskirting", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1285, "newstand", "newstandnew256", 0);
	LSFD_Interior = CreateDynamicObject(11707, -1842.794067, 491.816711, 2172.086670, 0.000037, 0.000028, 89.999855, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2306, -1829.694458, 488.529114, 2169.141602, -0.000007, -0.000037, -179.999725, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14802, "lee_bdupsflat", "Bdup_cabinet", 0);
	LSFD_Interior = CreateDynamicObject(18066, -1841.137451, 490.631531, 2171.677246, 89.999992, 250.012451, -70.012375, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFF707070);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(1771, -1830.835449, 488.362976, 2169.739746, -0.000035, -0.000029, 177.599869, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3603, "bevmans01_la", "aamanbev93x", 0);
	LSFD_Interior = CreateDynamicObject(19353, -1831.684570, 488.495667, 2170.910645, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19353, -1831.602173, 488.495667, 2170.910645, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 7533, "vgncondos1", "casinowall6_256", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(18066, -1841.360352, 490.630554, 2171.678223, 89.999992, 250.012451, -70.012375, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFF707070);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2306, -1828.793579, 488.531067, 2169.139648, -0.000007, -0.000037, -179.999725, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14802, "lee_bdupsflat", "Bdup_cabinet", 0);
	LSFD_Interior = CreateDynamicObject(19174, -1830.939941, 488.254700, 2169.789551, 89.999992, -173.225891, -96.773956, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 2343, "cb_bar_bits", "CJ_POLISHED", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2343, "cb_bar_bits", "CJ_POLISHED", 0);
	LSFD_Interior = CreateDynamicObject(18066, -1842.034302, 490.630554, 2170.943359, 0.000003, 90.000046, 89.999718, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 3178, "counthousmisc", "shackwood01", 0xFFA0A0A0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3178, "counthousmisc", "shackwood01", 0xFFFFFFFF);
	CreateDynamicObject(2986, -1842.919434, 490.572571, 2168.439941, 0.000000, -90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19482, -1842.923828, 490.450134, 2165.236084, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14577, "casinovault01", "ab_loadbayMark01", 0);
	LSFD_Interior = CreateDynamicObject(1771, -1830.835449, 488.362976, 2170.850586, -0.000043, -0.000029, 177.599884, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3603, "bevmans01_la", "aamanbev93x", 0);
	LSFD_Interior = CreateDynamicObject(19477, -1830.942017, 487.978699, 2169.170898, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x77000000);
	LSFD_Interior = CreateDynamicObject(19174, -1830.939941, 488.254700, 2170.900879, 89.999992, -173.225876, -96.773956, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 2343, "cb_bar_bits", "CJ_POLISHED", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2343, "cb_bar_bits", "CJ_POLISHED", 0);
	CreateDynamicObject(19900, -1842.621826, 490.054993, 2165.218994, 0.000000, -0.000007, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19483, -1839.860840, 489.831970, 2172.624023, 0.000049, 90.000000, 89.999840, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3694, "ryderholes", "ryd_holes", 0x88000000);
	LSFD_Interior = CreateDynamicObject(2075, -1839.860840, 489.811951, 2172.690186, 0.000000, 0.000059, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 3
	SetDynamicObjectMaterial(LSFD_Interior, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 10778, "airportcpark_sfse", "ws_fluorescent2", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3961, "lee_kitch", "metal1", 0);
	LSFD_Interior = CreateDynamicObject(2032, -1839.340332, 489.825867, 2173.400879, 0.000000, 180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14653, "ab_trukstpb", "met_supp", 0);
	LSFD_Interior = CreateDynamicObject(1771, -1827.627686, 488.362976, 2169.739746, -0.000043, -0.000037, 177.599838, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3603, "bevmans01_la", "aamanbev93x", 0);
	CreateDynamicObject(14680, -1829.143433, 487.611267, 2167.076416, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(2960, -1834.923828, 487.292297, 2166.805908, 0.000014, 90.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	CreateDynamicObject(14680, -1837.044678, 487.611267, 2167.076416, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19174, -1827.546753, 488.254700, 2169.789551, 89.999992, -176.601044, -93.398750, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 2343, "cb_bar_bits", "CJ_POLISHED", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2343, "cb_bar_bits", "CJ_POLISHED", 0);
	LSFD_Interior = CreateDynamicObject(971, -1839.991577, 488.571655, 2168.732422, 89.999992, 89.999992, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF505050);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19475, -1837.256836, 487.813660, 2169.173828, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2986, "imm_roomx", "kb_imvent", 0);
	LSFD_Interior = CreateDynamicObject(2960, -1833.821045, 487.295959, 2168.747559, 89.999992, 256.631500, -76.631500, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(971, -1839.991699, 488.571655, 2168.948730, 89.999992, 224.971710, -44.971794, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF252525);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1836.539673, 489.164734, 2174.410645, 0.000000, 180.000000, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(1771, -1827.627686, 488.362976, 2170.850586, -0.000048, -0.000037, 177.599869, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3603, "bevmans01_la", "aamanbev93x", 0);
	LSFD_Interior = CreateDynamicObject(970, -1830.828979, 487.482483, 2169.932617, 90.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1826.885010, 488.495667, 2170.910645, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 7533, "vgncondos1", "casinowall6_256", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(1569, -1842.981567, 489.587463, 2165.233887, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18232, "cw_truckstopcs_t", "des_wigwamdoor", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19174, -1827.546753, 488.254700, 2170.900879, 89.999992, -176.601028, -93.398750, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 2343, "cb_bar_bits", "CJ_POLISHED", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2343, "cb_bar_bits", "CJ_POLISHED", 0);
	LSFD_Interior = CreateDynamicObject(631, -1836.032471, 487.495178, 2170.054443, -0.000003, 0.000014, -44.999985, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14477, "crlsbits", "CJ_PLANTPOT", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(14494, -1837.253174, 488.000183, 2171.446777, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19482, -1834.923828, 486.943054, 2167.446533, 90.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x88000000);
	LSFD_Interior = CreateDynamicObject(19475, -1838.568115, 487.813660, 2169.173828, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2986, "imm_roomx", "kb_imvent", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1831.625122, 486.848083, 2166.976563, 0.000000, 179.999985, -89.999916, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(2960, -1829.201538, 487.295959, 2168.747559, 89.999992, 244.471222, -64.471222, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(4084, -1830.923828, 486.878601, 2166.626709, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 10763, "airport1_sfse", "ws_rollerdoor_fire", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(2059, -1829.384644, 487.465881, 2170.152100, 0.000000, 0.000000, -14.099993, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(1508, -1830.933838, 486.814392, 2166.784912, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "ws_corrugateddoor1", 0);
	LSFD_Interior = CreateDynamicObject(19348, -1831.074341, 487.085022, 2169.833008, 33.999939, 0.000033, -90.000137, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0);
	LSFD_Interior = CreateDynamicObject(19482, -1827.052124, 487.698425, 2169.170898, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x77000000);
	LSFD_Interior = CreateDynamicObject(14494, -1838.573730, 488.000183, 2171.446777, -0.000007, 0.000000, -89.999977, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19348, -1831.074341, 487.085022, 2170.943848, 33.999939, 0.000039, -90.000153, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0);
	LSFD_Interior = CreateDynamicObject(970, -1827.646606, 487.482483, 2169.932617, 90.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 2
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19475, -1839.888428, 487.813660, 2169.173828, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2986, "imm_roomx", "kb_imvent", 0);
	LSFD_Interior = CreateDynamicObject(2960, -1838.439209, 487.295959, 2168.747559, 89.999992, 263.225983, -83.225975, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(2960, -1826.923828, 487.295105, 2166.805908, 0.000014, 90.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(2683, -1828.567383, 487.210876, 2170.262695, 0.000000, 0.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16377, "des_byofficeint", "water_cool2", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1831.703735, 486.874207, 2170.910645, 0.000006, 0.000006, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(14397, -1826.116211, 487.491394, 2167.194824, 0.000000, -89.999985, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2917, "a51_crane", "girder2_grey_64HV", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1828.611450, 486.856140, 2163.735840, 0.000014, 0.000014, 89.999924, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19482, -1826.937744, 487.134949, 2167.446533, 89.999992, 89.999992, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x88000000);
	LSFD_Interior = CreateDynamicObject(19378, -1826.311157, 488.377991, 2172.721436, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 9582, "fort_sfw", "mallfloor2", 0xFFA0A0A0);
	LSFD_Interior = CreateDynamicObject(14494, -1839.894287, 488.000183, 2171.446777, -0.000014, 0.000000, -89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1837.915161, 487.174011, 2170.910645, 0.000000, 0.000000, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "wall3", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19426, -1837.907104, 487.165955, 2170.910645, 0.000000, 0.000000, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "wall3", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19426, -1836.518677, 486.874207, 2170.910645, 0.000006, 0.000006, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(19445, -1838.245483, 486.856140, 2163.735840, 0.000014, 0.000014, 89.999924, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19426, -1837.923096, 487.165955, 2170.910645, 0.000000, 0.000000, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "wall3", 0xFFCECECE);
	CreateDynamicObject(2986, -1842.828369, 489.499451, 2172.310547, 0.000000, -90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(4084, -1838.923828, 486.878601, 2166.626709, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 10763, "airport1_sfse", "ws_rollerdoor_fire", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19348, -1827.392212, 487.085022, 2169.833008, -32.800045, 0.000058, -90.000099, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0);
	LSFD_Interior = CreateDynamicObject(1508, -1838.933838, 486.814392, 2166.784912, 0.000000, 0.000000, -90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 3629, "arprtxxref_las", "ws_corrugateddoor1", 0);
	LSFD_Interior = CreateDynamicObject(16101, -1833.943970, 487.965393, 2157.184570, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	CreateDynamicObject(2986, -1829.235474, 487.091980, 2172.310547, 0.000000, -90.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	LSFD_Interior = CreateDynamicObject(19378, -1841.943726, 488.928650, 2172.725586, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14847, "mp_policesf", "mp_cop_floor", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(19353, -1834.111206, 486.374329, 2170.910645, 0.000006, 0.000006, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(19348, -1827.392212, 487.085022, 2170.943848, -32.800045, 0.000068, -90.000114, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0);
	LSFD_Interior = CreateDynamicObject(16101, -1835.932983, 487.965393, 2157.184570, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1839.235718, 487.174011, 2170.910645, 0.000000, -0.000007, 179.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "wall3", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19426, -1839.227661, 487.165955, 2170.910645, 0.000000, -0.000007, 179.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "wall3", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19426, -1839.243652, 487.165955, 2170.910645, 0.000000, -0.000007, 179.999908, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "wall3", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19426, -1832.425903, 486.151306, 2170.910645, 0.000000, 0.000000, -0.000103, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19445, -1826.947754, 486.977966, 2170.910645, 0.000014, 0.000007, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 7533, "vgncondos1", "casinowall6_256", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(2974, -1834.111206, 485.721619, 2169.369873, 0.000012, 0.000000, -90.000015, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 16360, "desn2_truckstop", "sw_wind17", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1835.796143, 486.151306, 2170.910645, 0.000000, 0.000000, -0.000103, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(14397, -1843.757813, 493.544006, 2153.206299, 0.000000, -270.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2917, "a51_crane", "girder2_grey_64HV", 0);
	LSFD_Interior = CreateDynamicObject(16101, -1827.932983, 487.965393, 2157.184570, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(19426, -1840.556274, 487.174011, 2170.910645, 0.000000, -0.000014, 179.999863, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "wall3", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19426, -1840.548218, 487.165955, 2170.910645, 0.000000, -0.000014, 179.999863, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "wall3", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19426, -1840.564209, 487.165955, 2170.910645, 0.000000, -0.000014, 179.999863, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "wall3", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19445, -1833.691772, 486.874207, 2174.410645, 0.000006, 180.000000, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19445, -1841.259155, 486.848083, 2166.976563, 0.000000, 179.999985, -89.999916, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF79A5C7);
	LSFD_Interior = CreateDynamicObject(2120, -1842.283691, 487.545227, 2169.792236, 0.000000, 0.000000, 215.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 1, 14802, "lee_bdupsflat", "Bdup_cabinet", 0);
	LSFD_Interior = CreateDynamicObject(19445, -1836.539673, 485.954773, 2170.910645, 0.000000, 0.000000, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 17541, "eastbeach2a_lae2", "sfe_nicearch6", 0xFF87B8DE);
	LSFD_Interior = CreateDynamicObject(19445, -1836.627930, 485.954773, 2170.910645, 0.000000, 0.000000, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "wall3", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(11707, -1841.319702, 487.065979, 2170.216309, 0.000000, 0.000000, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 3, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(971, -1832.372559, 486.014099, 2172.676514, 89.999992, 90.000076, -89.999962, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF505050);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(14397, -1842.596680, 487.492371, 2169.576416, 0.000000, -180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2917, "a51_crane", "girder2_grey_64HV", 0);
	LSFD_Interior = CreateDynamicObject(11707, -1841.319702, 487.065979, 2170.516113, 0.000000, 0.000000, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(971, -1832.372681, 486.014099, 2172.890869, 89.999992, 269.574005, -89.573982, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 6
	SetDynamicObjectMaterial(LSFD_Interior, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 2, 16069, "des_stownstrip1", "sw_metalgate1", 0xFF252525);
	SetDynamicObjectMaterial(LSFD_Interior, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19962, "samproadsigns", "materialtext1", 0);
	LSFD_Interior = CreateDynamicObject(2960, -1842.923828, 487.295105, 2166.805908, 0.000014, 90.000000, 89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(11707, -1841.319702, 487.065979, 2170.816162, 0.000000, 0.000000, 180.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 3, 65535, "none", "none", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1841.276367, 486.907532, 2170.910645, -0.000014, 0.000007, -89.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "wall3", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19482, -1842.934082, 487.134949, 2167.446533, 89.999992, 89.999992, -89.999992, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 19063, "xmasorbs", "sphere", 0x88000000);
	LSFD_Interior = CreateDynamicObject(19378, -1832.062012, 484.957214, 2169.063721, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14415, "carter_block_2", "mp_carter_floor", 0xFF505050);
	LSFD_Interior = CreateDynamicObject(2960, -1843.057861, 487.295959, 2168.747559, 89.999992, 266.601196, -86.601173, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 65535, "none", "none", 0xFF47439F);
	LSFD_Interior = CreateDynamicObject(19378, -1840.021606, 485.945862, 2169.075684, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18800, "mroadhelix1", "concreteoldpainted1", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(19378, -1829.521606, 485.065002, 2169.075684, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18800, "mroadhelix1", "concreteoldpainted1", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(16101, -1841.943970, 487.965393, 2157.184570, 0.000000, 0.000007, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(19378, -1826.389160, 485.034973, 2169.079834, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14847, "mp_policesf", "mp_cop_tile", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(19378, -1841.931763, 485.806702, 2169.079834, 0.000000, 90.000008, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 11100, "bendytunnel_sfse", "Bow_sub_walltiles", 0xFFAFAFAF);
	LSFD_Interior = CreateDynamicObject(19445, -1831.684570, 485.281555, 2174.410645, 0.000000, 180.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14500, "imm_roomss", "mp_motel_bluew", 0xFFFFFFFF);
	LSFD_Interior = CreateDynamicObject(19445, -1842.938477, 485.954773, 2170.910645, 0.000000, 0.000000, 179.999954, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14471, "carls_kit1", "wall3", 0xFFCECECE);
	LSFD_Interior = CreateDynamicObject(19378, -1842.562012, 484.957214, 2169.063721, 0.000000, 90.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14415, "carter_block_2", "mp_carter_floor", 0xFF505050);
	LSFD_Interior = CreateDynamicObject(19378, -1833.635498, 482.138000, 2172.740723, 0.000000, 90.000008, 179.999847, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 14415, "carter_block_2", "mp_carter_floor", 0xFF808080);
	LSFD_Interior = CreateDynamicObject(14397, -1843.757813, 487.492371, 2153.206299, 0.000000, -270.000000, 0.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 2917, "a51_crane", "girder2_grey_64HV", 0);
	LSFD_Interior = CreateDynamicObject(16101, -1833.943970, 477.708313, 2171.813965, -69.999954, 180.000076, 179.999878, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(16101, -1835.932983, 477.708313, 2171.813965, -69.999954, 180.000076, 179.999878, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(16101, -1833.943970, 477.045837, 2168.073242, -89.999992, 64.471222, 64.471199, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(16101, -1835.932983, 477.045837, 2168.073242, -89.999992, 64.471222, 64.471199, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(16101, -1827.932983, 477.708313, 2171.813965, -69.999954, 180.000076, 179.999878, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(16101, -1827.932983, 477.045837, 2168.073242, -89.999992, 64.471222, 64.471199, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(16101, -1841.943970, 477.708313, 2171.813965, -69.999954, 180.000076, 179.999878, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(16101, -1841.943970, 477.045837, 2168.073242, -89.999992, 64.471222, 64.471199, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	LSFD_Interior = CreateDynamicObject(16734, -1834.111206, 472.979065, 2169.615234, -0.000007, 0.000000, 90.000023, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 1
	SetDynamicObjectMaterial(LSFD_Interior, 0, 18646, "matcolours", "grey-50-percent", 0);
	CreateDynamicObject(8661, -1817.438599, 461.589691, 2171.401367, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
	CreateDynamicObject(8661, -1817.438599, 461.589691, 2177.499023, 0.000000, 0.000000, 90.000000, -1, 44, -1, STREAMER_OBJECT_SD, 300.0); // 0
}

CPExterior() {
	new CP_Exterior = CreateDynamicObject(3853, -168.019760, 333.716033, 14.019145, -0.000001, 0.000007, -16.899997, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	CP_Exterior = CreateDynamicObject(3853, -163.526840, 351.284820, 14.019145, -0.000000, 0.000007, -13.799990, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	CP_Exterior = CreateDynamicObject(3853, -157.541931, 373.262023, 14.019145, -0.000000, 0.000007, -13.799990, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	CP_Exterior = CreateDynamicObject(3853, -152.870315, 390.814270, 14.019145, -0.000000, 0.000007, -13.799990, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	CP_Exterior = CreateDynamicObject(3853, -169.306579, 395.610534, 14.019145, 0.000000, -0.000007, 165.899993, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	CP_Exterior = CreateDynamicObject(3853, -173.842163, 378.169708, 14.019145, 0.000001, -0.000007, 164.299942, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	CP_Exterior = CreateDynamicObject(3853, -179.684875, 356.200744, 14.019145, 0.000001, -0.000007, 164.299942, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	CP_Exterior = CreateDynamicObject(3853, -184.248672, 338.744506, 14.019145, 0.000001, -0.000007, 164.299942, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 14802, "lee_bdupsflat", "USAflag", 0x00000000);
	CP_Exterior = CreateDynamicObject(18762, -170.275558, 333.095123, 13.675669, 0.000000, 0.000000, -14.600006, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18762, -182.875106, 336.377105, 13.615669, 0.000000, 0.000000, -14.600006, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18762, -176.556121, 334.730895, 13.505665, 0.000000, 0.000000, -14.600006, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18762, -164.167984, 356.304443, 13.505665, 0.000000, 0.000000, -14.600006, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18762, -176.742919, 359.641601, 13.505665, 0.000000, 0.000000, -14.600006, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18762, -169.486312, 361.792541, 13.505665, 0.000000, 0.000000, -14.600006, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18766, -168.687774, 338.889221, 9.794472, 0.000000, 0.000000, 75.199981, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18766, -165.844604, 349.650054, 9.794472, 0.000000, 0.000000, 75.199981, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18762, -170.433502, 357.998016, 13.505665, 0.000000, 0.000000, -14.600006, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18762, -169.970321, 359.934539, 13.505665, 0.000000, 0.000000, -14.600006, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18766, -181.333786, 342.230377, 9.794472, 0.000000, 0.000000, 75.299980, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18766, -178.500320, 352.993927, 9.794472, 0.000000, 0.000000, 75.199981, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18766, -178.461624, 352.983673, 8.874470, 0.000000, 0.000000, 75.199981, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	CP_Exterior = CreateDynamicObject(18766, -181.304840, 342.223083, 8.874470, 0.000000, 0.000000, 75.199981, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	CP_Exterior = CreateDynamicObject(18766, -168.765136, 338.909667, 8.834465, 0.000000, 0.000000, 75.199981, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	CP_Exterior = CreateDynamicObject(18766, -165.938781, 349.685180, 8.834465, 0.000000, 0.000000, 75.199981, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	CP_Exterior = CreateDynamicObject(18766, -173.254547, 347.480468, 8.994467, 0.000000, 0.000000, 75.199981, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(3331, -177.343185, 364.276947, 14.641539, 0.000000, 0.000000, -14.500003, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 3620, "lasxrefdock", "ws_goldengate5b", 0x00000000);
	SetDynamicObjectMaterial(CP_Exterior, 1, 3620, "lasxrefdock", "ws_goldengate5b", 0x00000000);
	SetDynamicObjectMaterial(CP_Exterior, 2, 3620, "lasxrefdock", "ws_goldengate5b", 0x00000000);
	SetDynamicObjectMaterial(CP_Exterior, 3, 3620, "lasxrefdock", "ws_goldengate5b", 0x00000000);
	CP_Exterior = CreateDynamicObject(18762, -175.766799, 363.428466, 13.505665, 0.000000, 0.000000, -14.600006, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18762, -163.147918, 360.141510, 13.505665, 0.000000, 0.000000, -14.600006, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18762, -183.813613, 336.621978, 10.865650, 0.000000, 0.000000, -14.600006, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(18762, -169.334747, 332.819122, 10.865650, 0.000000, 0.000000, -14.600006, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 962.551879, 761.269470, 36.983352, 90.700057, 0.000000, -88.100021, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 958.411254, 886.061462, 36.983352, 90.700057, 0.000000, -88.100021, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 958.411254, 886.061462, 36.983352, 90.700057, 0.000000, -88.100021, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 954.269775, 1010.862365, 36.983352, 90.700057, 0.000000, -88.100021, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 950.125793, 1135.751464, 36.983352, 90.700057, 0.000000, -88.100021, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 945.986572, 1260.522094, 36.983352, 90.700057, 0.000000, -88.100021, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 941.850158, 1385.202880, 36.983352, 90.700057, 0.000000, -88.100021, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 937.710937, 1509.974365, 36.983352, 90.700057, 0.000000, -88.100021, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 918.463989, 1632.260009, 36.878948, 90.700057, 0.000000, -74.000045, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 899.063171, 1754.578491, 36.610511, 90.700057, 0.000000, -88.100021, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 894.917663, 1879.519165, 36.610511, 90.700057, 0.000000, -88.100021, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 890.773925, 2004.419067, 36.610511, 90.700057, 0.000000, -88.100021, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 886.632202, 2129.250976, 36.610511, 90.700057, 0.000000, -88.100021, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 882.493591, 2254.011962, 36.610511, 90.700057, 0.000000, -88.100021, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 878.349975, 2378.910156, 36.610511, 90.700057, 0.000000, -88.100021, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 892.874877, 2627.881103, 36.702934, 90.700057, 0.000000, -95.100135, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 881.764282, 2503.386962, 36.702934, 90.700057, 0.000000, -95.100135, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 903.981262, 2752.324951, 36.702934, 90.700057, 0.000000, -95.100135, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	CP_Exterior = CreateDynamicObject(19538, 915.092224, 2876.818359, 36.702934, 90.700057, 0.000000, -95.100135, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(CP_Exterior, 0, 19962, "samproadsigns", "materialtext1", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	CP_Exterior = CreateDynamicObject(3330, -164.873657, 342.386108, 1.094174, 0.000000, 0.000000, 74.899955, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(3330, -172.535827, 386.847381, 1.094174, 0.000000, 0.000000, 74.899955, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(3330, -182.976333, 347.270141, 1.094174, 0.000000, 0.000000, 74.899955, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(3330, -154.346313, 381.939270, 1.094174, 0.000000, 0.000000, 74.899955, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(16003, -175.280731, 339.558959, 12.474044, 0.000000, 0.000000, 75.499969, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(997, -176.119171, 359.847839, 11.147307, 0.000000, 0.000000, 75.299972, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(997, -170.905364, 358.480499, 11.147307, 0.000000, 0.000000, 75.299972, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(997, -169.831573, 358.199096, 11.147307, 0.000000, 0.000000, 75.299972, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(997, -164.598587, 356.826263, 11.147307, 0.000000, 0.000000, 75.299972, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(997, -176.650802, 334.451782, 11.147307, 0.000000, 0.000000, 75.299972, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(19967, -176.727798, 334.151855, 10.988702, 0.000000, 0.000000, -15.300004, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(19979, -179.674240, 297.870361, 11.185612, 0.000000, 0.000000, -15.599999, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(18880, -179.813232, 347.493011, 10.764286, 0.000000, 0.000000, -13.800001, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(18880, -167.246780, 344.406555, 10.764286, 0.000000, 0.000000, 165.799957, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(1238, -170.833114, 356.489776, 11.342267, 0.000000, 0.000000, -17.000001, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(1238, -171.269866, 354.856170, 11.342267, 0.000000, 0.000000, -17.000001, -1, -1, -1, 300.00, 300.00);
	CP_Exterior = CreateDynamicObject(1238, -171.696365, 353.187957, 11.342267, 0.000000, 0.000000, -17.000001, -1, -1, -1, 300.00, 300.00);
}

BankInterior()
{
	new bank_int;
	bank_int= CreateDynamicObject(19456, 560.980835, 2623.865723, 1131.934814, 0.000000, 90.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dts_elevator_carpet3", 0);
	bank_int= CreateDynamicObject(19377, 556.309692, 2623.757568, 1131.928955, 0.000000, 90.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble2", 0);
	bank_int= CreateDynamicObject(19455, 557.615479, 2623.482178, 1136.576904, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(19455, 560.805908, 2622.803955, 1136.574951, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(631, 560.028809, 2628.925049, 1133.201050, 0.000000, 0.000118, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(948, 559.994385, 2628.926514, 1131.988159, 0.000000, 0.000118, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 3741, "cehillhse14", "glassblocks1", 0xFFFAEBD7);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0);
	bank_int= CreateDynamicObject(631, 560.028809, 2618.783936, 1133.201050, 0.000000, 0.000112, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(948, 559.994385, 2618.785400, 1131.988159, 0.000000, 0.000112, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 3741, "cehillhse14", "glassblocks1", 0xFFFAEBD7);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0);
	bank_int= CreateDynamicObject(19456, 564.480713, 2623.865723, 1131.934814, 0.000000, 90.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dts_elevator_carpet3", 0);
	bank_int= CreateDynamicObject(2309, 553.769287, 2626.661621, 1132.490723, 0.000000, 180.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19455, 554.285400, 2622.803955, 1136.574951, 0.000000, 90.000023, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(19812, 552.982910, 2623.778564, 1132.715576, -0.000037, -0.000019, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(2309, 553.769287, 2620.973389, 1132.500732, 0.000014, 180.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(3440, 552.988281, 2623.783447, 1133.664551, 0.000047, -0.000014, 154.999710, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(bank_int, 0, 10765, "airportgnd_sfse", "white", 0);
	bank_int= CreateDynamicObject(19812, 552.982910, 2623.778564, 1133.815674, -0.000037, -0.000019, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(1763, 553.592407, 2626.677246, 1132.014893, 0.000007, 0.000000, 89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(19812, 552.982910, 2623.778564, 1131.610596, -0.000037, -0.000019, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(19812, 552.982910, 2623.778564, 1134.915771, -0.000037, -0.000019, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(2309, 553.769287, 2627.992676, 1132.500732, 0.000000, 180.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 554.995361, 2622.790771, 1138.264771, 0.000000, -179.999985, -0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 6522, "cuntclub_law2", "marinawindow1_256", 0xFFFFFFFF);
	CreateDynamicObject(2986, 554.455322, 2620.378174, 1136.455078, 180.000000, 180.000000, 450.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 0
	bank_int= CreateDynamicObject(19812, 552.982910, 2623.778564, 1136.015869, -0.000037, -0.000019, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(2309, 553.769287, 2619.642334, 1132.490723, 0.000014, 180.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	CreateDynamicObject(2002, 560.017700, 2617.092529, 1132.014893, 0.000000, 0.000000, 270.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 0
	bank_int= CreateDynamicObject(1763, 553.592407, 2619.676270, 1132.014893, 0.000014, 0.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(2309, 553.769287, 2628.693604, 1132.490723, 0.000007, 180.000000, 89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 560.298706, 2631.221680, 1132.490723, 0.000050, 180.000000, 89.999771, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1763, 553.592407, 2628.727539, 1132.014893, 0.000007, 0.000000, 89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(19378, 561.627441, 2623.895020, 1139.954346, 0.000000, 0.000000, 360.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 553.769287, 2618.941406, 1132.500732, 0.000007, 180.000000, 89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	CreateDynamicObject(2986, 554.455322, 2629.229980, 1136.455078, 180.000000, 180.000000, 450.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 0
	bank_int= CreateDynamicObject(19604, 557.549805, 2630.747559, 1136.661011, 0.000000, 0.000007, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18835, "mickytextures", "whiteforletters", 0);
	bank_int= CreateDynamicObject(627, 552.510254, 2628.316406, 1132.818848, 0.000045, 0.000007, 89.999832, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3897, "libertyhi", "newtreea128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19378, 565.417725, 2628.655762, 1134.424561, 0.000000, 0.000000, 270.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1360, 552.584473, 2628.421631, 1131.929810, 0.000007, -0.000037, 179.999725, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 18632, "fishingrod", "rodpole2", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19456, 565.556274, 2628.639404, 1131.744629, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0);
	bank_int= CreateDynamicObject(2309, 553.769287, 2630.024658, 1132.500732, 0.000007, 180.000000, 89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 551.518677, 2626.661621, 1132.490723, 0.000014, 180.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19378, 565.417725, 2619.056885, 1134.424561, 0.000000, 0.000000, 270.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(627, 552.510254, 2619.295898, 1132.818848, 0.000037, 0.000007, 89.999855, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3897, "libertyhi", "newtreea128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1360, 552.584473, 2619.250977, 1131.929810, 0.000007, -0.000029, 179.999771, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 18632, "fishingrod", "rodpole2", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19456, 565.526978, 2619.068359, 1131.744629, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0);
	bank_int= CreateDynamicObject(2309, 551.558594, 2620.973389, 1132.500732, 0.000037, 180.000000, 89.999886, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 560.298706, 2615.922607, 1132.500732, 0.000045, 180.000000, 89.999794, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 552.399536, 2628.584717, 1131.934814, 0.000000, 90.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dts_elevator_carpet3", 0);
	bank_int= CreateDynamicObject(983, 552.616943, 2621.397217, 1137.321045, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 10871, "blacksky_sfse", "ws_glass_balustrade", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1763, 560.072144, 2615.848389, 1132.014893, -0.000037, -0.000022, -89.999702, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(2309, 553.769287, 2617.610352, 1132.490723, 0.000007, 180.000000, 89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1763, 551.331909, 2620.917236, 1132.014893, -0.000022, 0.000000, -89.999901, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(19456, 552.399536, 2618.955322, 1131.934814, 0.000000, 90.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dts_elevator_carpet3", 0);
	bank_int= CreateDynamicObject(1763, 553.592407, 2617.625977, 1132.014893, 0.000014, 0.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(1763, 560.072144, 2632.478027, 1132.014893, -0.000044, -0.000014, -89.999725, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(2309, 551.518677, 2627.992676, 1132.500732, 0.000014, 180.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 560.298706, 2632.552734, 1132.500732, 0.000050, 180.000000, 89.999771, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(983, 552.616943, 2627.727051, 1137.321045, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 10871, "blacksky_sfse", "ws_glass_balustrade", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 551.558594, 2619.642334, 1132.490723, 0.000037, 180.000000, 89.999886, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1763, 551.291992, 2627.918213, 1132.014893, -0.000007, 0.000000, -89.999947, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(19604, 557.549805, 2616.085205, 1136.661011, 0.000000, 0.000007, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18835, "mickytextures", "whiteforletters", 0);
	bank_int= CreateDynamicObject(2309, 551.518677, 2628.693604, 1132.490723, 0.000022, 180.000000, 89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19380, 560.146362, 2615.908203, 1136.784912, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14533, "pleas_dome", "ornate_ceiling1_sfw", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19356, 560.615356, 2632.834473, 1134.445557, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 6522, "cuntclub_law2", "marinawindow1_256", 0);
	bank_int= CreateDynamicObject(2309, 551.558594, 2618.941406, 1132.500732, 0.000029, 180.000000, 89.999908, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 560.298706, 2633.201660, 1132.490723, 0.000050, 180.000000, 89.999771, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19455, 560.805908, 2632.432861, 1136.574951, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(1763, 551.331909, 2618.866943, 1132.014893, -0.000022, 0.000000, -89.999901, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(2309, 560.298706, 2614.591553, 1132.490723, 0.000045, 180.000000, 89.999794, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 560.656616, 2633.368652, 1131.744629, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0);
	bank_int= CreateDynamicObject(19378, 560.677612, 2633.386230, 1134.424561, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 551.518677, 2630.024658, 1132.500732, 0.000022, 180.000000, 89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19377, 556.309692, 2633.377197, 1131.928955, 0.000000, 90.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble2", 0);
	bank_int= CreateDynamicObject(19456, 560.656616, 2614.336670, 1131.744629, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0);
	bank_int= CreateDynamicObject(19378, 560.677612, 2614.325439, 1134.424561, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1763, 551.291992, 2629.968506, 1132.014893, -0.000007, 0.000000, -89.999947, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(2309, 551.558594, 2617.610352, 1132.490723, 0.000029, 180.000000, 89.999908, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19356, 560.615356, 2614.263428, 1134.445557, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 6522, "cuntclub_law2", "marinawindow1_256", 0);
	bank_int= CreateDynamicObject(2309, 560.298706, 2613.942627, 1132.500732, 0.000045, 180.000000, 89.999794, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1763, 560.072144, 2613.867920, 1132.014893, -0.000037, -0.000014, -89.999748, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(19377, 556.309692, 2614.147705, 1131.928955, 0.000000, 90.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble2", 0);
	bank_int= CreateDynamicObject(19455, 554.285400, 2632.432861, 1136.574951, 0.000000, 90.000023, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(1763, 560.072144, 2634.458496, 1132.014893, -0.000044, -0.000022, -89.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(19812, 552.982910, 2632.569824, 1132.715576, -0.000029, -0.000022, -89.999985, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(3440, 552.988281, 2632.574707, 1133.664551, 0.000044, -0.000007, 154.999756, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(bank_int, 0, 10765, "airportgnd_sfse", "white", 0);
	bank_int= CreateDynamicObject(19812, 552.982910, 2632.569824, 1133.815674, -0.000029, -0.000022, -89.999985, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(2309, 560.298706, 2634.532715, 1132.500732, 0.000050, 180.000000, 89.999771, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19812, 552.982910, 2632.569824, 1131.610596, -0.000029, -0.000022, -89.999985, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(19812, 552.982910, 2632.569824, 1134.915771, -0.000029, -0.000022, -89.999985, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(19456, 554.995361, 2632.421143, 1138.264771, 0.000000, -179.999985, -0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 6522, "cuntclub_law2", "marinawindow1_256", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19812, 552.982910, 2632.569824, 1136.015869, -0.000029, -0.000022, -89.999985, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(19379, 550.395630, 2623.951660, 1139.664917, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(19812, 552.982910, 2614.802734, 1132.715576, -0.000022, -0.000022, -90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(3440, 552.988281, 2614.807617, 1133.664551, 0.000039, -0.000000, 154.999802, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(bank_int, 0, 10765, "airportgnd_sfse", "white", 0);
	bank_int= CreateDynamicObject(19812, 552.982910, 2614.802734, 1133.815674, -0.000022, -0.000022, -90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(19812, 552.982910, 2614.802734, 1131.610596, -0.000022, -0.000022, -90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(19812, 552.982910, 2614.802734, 1134.915771, -0.000022, -0.000022, -90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(957, 548.213379, 2625.419678, 1136.044678, 0.000000, -0.000059, 179.999634, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 5042, "bombshop_las", "lightcover1", 0);
	bank_int= CreateDynamicObject(19081, 548.215698, 2625.410156, 1136.100098, 0.000000, 270.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 1, 18996, "mattextures", "sampblack", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1877, 548.217407, 2625.423340, 1136.165283, 0.000000, 179.999985, -179.999664, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 560.298706, 2612.611572, 1132.490723, 0.000045, 180.000000, 89.999794, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19812, 552.982910, 2614.802734, 1136.015869, -0.000022, -0.000022, -90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0xFFE2E2E2);
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(19604, 549.673706, 2624.526123, 1139.549805, 0.000000, 360.000000, -0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14561, "triad_neon", "kbneon", 0);
	bank_int= CreateDynamicObject(19455, 560.805908, 2613.174072, 1136.574951, 0.000000, 90.000008, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(957, 548.213379, 2621.147705, 1136.044678, 0.000000, -0.000050, 179.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 5042, "bombshop_las", "lightcover1", 0);
	bank_int= CreateDynamicObject(19081, 548.215698, 2621.138184, 1136.100098, 0.000000, 270.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 1, 18996, "mattextures", "sampblack", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1877, 548.217407, 2621.151367, 1136.165283, 0.000000, 179.999985, -179.999710, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(983, 552.616943, 2615.066650, 1137.321045, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 10871, "blacksky_sfse", "ws_glass_balustrade", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19455, 554.285400, 2613.174072, 1136.574951, 0.000000, 90.000023, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(957, 548.213379, 2629.540527, 1136.044678, 0.000000, -0.000067, 179.999588, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 5042, "bombshop_las", "lightcover1", 0);
	bank_int= CreateDynamicObject(19081, 548.215698, 2629.531006, 1136.100098, 0.000000, 270.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 1, 18996, "mattextures", "sampblack", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1877, 548.217407, 2629.544189, 1136.165283, 0.000000, 179.999985, -179.999619, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(631, 560.028809, 2636.665771, 1133.201050, 0.000000, 0.000127, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(983, 552.616943, 2634.047363, 1137.321045, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 10871, "blacksky_sfse", "ws_glass_balustrade", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(948, 559.994385, 2636.667236, 1131.988159, 0.000000, 0.000127, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 3741, "cehillhse14", "glassblocks1", 0xFFFAEBD7);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0);
	bank_int= CreateDynamicObject(19456, 554.995361, 2613.160400, 1138.264771, 0.000000, -179.999985, -0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 6522, "cuntclub_law2", "marinawindow1_256", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2942, 557.997803, 2636.794922, 1132.645020, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2942, 557.007324, 2636.794922, 1132.645020, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	CreateDynamicObject(2986, 554.455322, 2612.307861, 1136.455078, 180.000000, 180.000000, 450.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 0
	bank_int= CreateDynamicObject(957, 548.213379, 2617.297607, 1136.044678, 0.000000, -0.000044, 179.999725, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 5042, "bombshop_las", "lightcover1", 0);
	bank_int= CreateDynamicObject(2942, 556.006958, 2636.794922, 1132.645020, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19081, 548.215698, 2617.288086, 1136.100098, 0.000000, 270.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 1, 18996, "mattextures", "sampblack", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1877, 548.217407, 2617.301270, 1136.165283, 0.000000, 179.999985, -179.999756, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19377, 545.809814, 2623.757568, 1131.928955, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble2", 0);
	bank_int= CreateDynamicObject(19456, 557.306030, 2637.260254, 1131.744629, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0);
	bank_int= CreateDynamicObject(2942, 554.996582, 2636.794922, 1132.645020, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19378, 557.317383, 2637.316406, 1134.424561, 0.000000, 0.000000, 270.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(7666, 556.479980, 2637.196533, 1134.702881, 60.495472, 270.000031, 179.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "ATM", 140, "Times New Roman", 60, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(631, 560.028809, 2610.012451, 1133.201050, 0.000000, 0.000103, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(948, 559.994385, 2610.013916, 1131.988159, 0.000000, 0.000103, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 3741, "cehillhse14", "glassblocks1", 0xFFFAEBD7);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0);
	bank_int= CreateDynamicObject(19604, 549.673706, 2632.184570, 1139.529785, 0.000000, 360.000000, -0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14561, "triad_neon", "kbneon", 0);
	bank_int= CreateDynamicObject(2942, 557.997803, 2609.931885, 1132.645020, 0.000000, 0.000000, 179.999893, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	CreateDynamicObject(2690, 553.879150, 2637.110840, 1134.034912, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 0
	bank_int= CreateDynamicObject(11713, 553.873169, 2637.180908, 1134.004517, 0.000000, 0.000000, 270.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19655, "mattubes", "reddirt1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2942, 556.987427, 2609.931885, 1132.645020, 0.000000, 0.000000, 179.999893, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2420, 553.506714, 2637.156494, 1132.014893, 0.000000, 0.000000, 360.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "CJ_WOOD_DARK", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2942, 555.987061, 2609.931885, 1132.645020, 0.000000, 0.000000, 179.999893, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1213, 552.862793, 2636.804932, 1135.391846, 0.000000, 179.999985, -179.999802, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19941, "goldbar1", "chrome", 0xFFCDCDCD);
	bank_int= CreateDynamicObject(19871, 552.863037, 2636.798584, 1135.459961, 0.000049, 0.000014, 89.999840, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3961, "lee_kitch", "metal1", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(7666, 544.688965, 2623.136719, 1132.402588, 60.495438, 270.000031, -90.000122, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "3", 140, "Arial", 80, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(7666, 544.688843, 2624.514893, 1134.772949, 60.495491, 270.000031, -90.000237, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "BANK", 140, "Times New Roman", 60, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(19379, 550.395630, 2633.574951, 1139.664917, 0.000000, 90.000015, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(7666, 544.688965, 2625.847900, 1132.402588, 60.495415, 270.000031, -90.000076, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "4", 140, "Arial", 80, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(11699, 544.613037, 2624.409424, 1134.310791, 89.999992, 90.000000, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(2707, 544.576538, 2624.019531, 1134.100342, -0.000090, 0.000029, -89.999763, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(2750, 544.606201, 2624.280029, 1134.429688, -0.000090, 90.000023, -89.999763, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(2750, 544.606201, 2623.390625, 1134.429688, -0.000075, 90.000023, -89.999809, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(2707, 544.576538, 2623.130127, 1134.100342, -0.000075, 0.000029, -89.999809, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(2707, 544.576538, 2624.930176, 1134.100342, -0.000091, 0.000029, -89.999763, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19379, 550.395630, 2614.331055, 1139.664917, 0.000000, 90.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(2750, 544.606201, 2625.190674, 1134.429688, -0.000091, 90.000023, -89.999763, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19455, 557.615479, 2638.142578, 1136.576904, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(2942, 554.996582, 2609.931885, 1132.645020, 0.000000, 0.000000, 179.999893, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(7666, 544.688843, 2622.084961, 1134.772949, 60.495491, 270.000031, -90.000237, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "LOS-SANTOS", 140, "Times New Roman", 60, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(2750, 544.606201, 2622.439697, 1134.429688, -0.000081, 90.000023, -89.999786, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19934, 544.476685, 2624.438477, 1131.994873, 0.000000, 0.000029, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_cooch_carp", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2707, 544.576538, 2622.179199, 1134.100342, -0.000081, 0.000029, -89.999786, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19456, 557.306396, 2609.456787, 1131.744629, 0.000007, 0.000000, 89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0);
	bank_int= CreateDynamicObject(2707, 544.576538, 2625.881104, 1134.100342, -0.000081, 0.000029, -89.999786, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(11699, 544.613037, 2621.838379, 1134.310791, 89.999992, 89.999992, -89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19378, 557.327271, 2609.433594, 1134.424561, -0.000007, 0.000000, -89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(7666, 544.688843, 2622.986084, 1135.813232, 60.495480, 270.000031, -90.000214, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "$", 140, "Arial", 199, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(2750, 544.606201, 2626.141602, 1134.429688, -0.000081, 90.000023, -89.999786, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(2309, 552.210083, 2637.039063, 1132.490723, 0.000059, 180.000000, 179.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2750, 544.606201, 2621.708984, 1134.429688, -0.000081, 90.000023, -89.999786, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(7666, 556.514282, 2609.530273, 1134.702881, 60.495472, 270.000031, -0.000334, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "ATM", 140, "Times New Roman", 60, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(2707, 544.576538, 2621.448486, 1134.100342, -0.000081, 0.000029, -89.999786, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19934, 544.476685, 2621.856934, 1131.994873, 0.000000, 0.000029, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_cooch_carp", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2707, 544.576538, 2626.770508, 1134.100342, -0.000096, 0.000029, -89.999741, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(7666, 544.688965, 2620.576416, 1132.402588, 60.495445, 270.000031, -90.000145, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "2", 140, "Arial", 80, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(19604, 544.690186, 2624.929932, 1129.550781, 180.000000, 90.000000, 0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18835, "mickytextures", "whiteforletters", 0);
	bank_int= CreateDynamicObject(983, 544.403137, 2625.820801, 1134.105103, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 10806, "airfence_sfse", "ws_griddyfence", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19604, 549.673706, 2614.535889, 1139.549805, 0.000000, 360.000000, -0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14561, "triad_neon", "kbneon", 0);
	bank_int= CreateDynamicObject(19456, 544.289490, 2623.466797, 1131.935791, 0.000000, 90.000015, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dts_elevator_carpet3", 0);
	bank_int= CreateDynamicObject(957, 548.213379, 2633.671631, 1136.044678, 0.000000, -0.000075, 179.999542, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 5042, "bombshop_las", "lightcover1", 0);
	bank_int= CreateDynamicObject(19081, 548.215698, 2633.662109, 1136.100098, 0.000000, 270.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 1, 18996, "mattextures", "sampblack", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(2750, 544.606201, 2627.031006, 1134.429688, -0.000096, 90.000023, -89.999741, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(11699, 544.613037, 2627.160400, 1134.310791, 89.999992, 90.000015, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(1877, 548.217407, 2633.675293, 1136.165283, 0.000000, 179.999985, -179.999573, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2773, 545.952881, 2631.004883, 1132.524902, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1257, "bustopm", "CJ_GREENMETAL", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19926, 544.254883, 2624.683594, 1131.894775, 0.000000, 0.000022, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2750, 544.606201, 2620.819580, 1134.429688, -0.000068, 90.000023, -89.999832, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19926, 544.254883, 2624.683594, 1134.334839, 0.000000, 0.000029, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19926, 544.254883, 2622.773682, 1131.894775, 0.000000, 0.000022, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19926, 544.254883, 2622.773682, 1134.334839, 0.000000, 0.000029, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2707, 544.576538, 2620.559082, 1134.100342, -0.000068, 0.000029, -89.999832, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19604, 544.690186, 2621.707520, 1129.550781, 0.000000, 270.000000, -179.999908, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18835, "mickytextures", "whiteforletters", 0);
	bank_int= CreateDynamicObject(19934, 544.476685, 2627.339844, 1131.994873, 0.000000, 0.000022, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_cooch_carp", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2707, 544.576538, 2627.851318, 1134.100342, -0.000097, 0.000029, -89.999741, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19456, 544.289490, 2626.578857, 1131.936768, 0.000000, 90.000015, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dts_elevator_carpet3", 0);
	bank_int= CreateDynamicObject(983, 544.403137, 2627.221436, 1134.105103, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 10806, "airfence_sfse", "ws_griddyfence", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19926, 544.254883, 2626.604004, 1131.894775, 0.000000, 0.000022, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19926, 544.254883, 2626.604004, 1134.334839, 0.000000, 0.000029, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2750, 544.606201, 2628.111816, 1134.429688, -0.000097, 90.000023, -89.999741, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(2750, 544.606201, 2619.868652, 1134.429688, -0.000075, 90.000023, -89.999809, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(7666, 544.708984, 2628.739258, 1132.402588, 60.495403, 270.000031, -90.000053, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "5", 140, "Arial", 80, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(1763, 550.953735, 2636.812500, 1132.014893, -0.000050, -0.000007, 0.000265, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(2707, 544.576538, 2619.608154, 1134.100342, -0.000075, 0.000029, -89.999809, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19926, 544.254883, 2620.854736, 1131.894775, 0.000000, 0.000014, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19926, 544.254883, 2620.854736, 1134.334839, 0.000000, 0.000019, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19457, 556.133911, 2638.995605, 1131.934814, 0.000000, 90.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 9920, "anotherbuildsfe", "grassgrn256", 0);
	bank_int= CreateDynamicObject(2707, 544.576538, 2628.802246, 1134.100342, -0.000091, 0.000029, -89.999763, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	CreateDynamicObject(2690, 553.833862, 2609.592773, 1134.044678, 0.000022, -0.000007, 179.999786, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 0
	bank_int= CreateDynamicObject(11699, 544.613037, 2619.068115, 1134.310791, 89.999992, 89.999992, -89.999992, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19456, 544.289490, 2620.056152, 1131.934814, 0.000000, 90.000015, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dts_elevator_carpet3", 0);
	bank_int= CreateDynamicObject(19934, 544.476685, 2619.278076, 1131.994873, 0.000000, 0.000029, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_cooch_carp", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 550.879028, 2637.039063, 1132.500732, 0.000059, 180.000000, 179.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2750, 544.606201, 2629.062744, 1134.429688, -0.000091, 90.000023, -89.999763, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(11713, 553.839722, 2609.522949, 1134.014282, 0.000007, 0.000022, 89.999916, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19655, "mattubes", "reddirt1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2750, 544.606201, 2618.938721, 1134.429688, -0.000075, 90.000023, -89.999809, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(983, 544.403137, 2619.470703, 1134.105103, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 10806, "airfence_sfse", "ws_griddyfence", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1213, 552.862793, 2610.012939, 1135.391846, 0.000000, 179.999985, -179.999756, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19941, "goldbar1", "chrome", 0xFFCDCDCD);
	bank_int= CreateDynamicObject(19871, 552.863037, 2610.006592, 1135.459961, 0.000059, 0.000014, 89.999817, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3961, "lee_kitch", "metal1", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(2707, 544.576538, 2618.678223, 1134.100342, -0.000075, 0.000029, -89.999809, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19926, 544.254883, 2628.523926, 1131.894775, 0.000000, 0.000022, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1763, 552.276123, 2610.028564, 1132.014893, -0.000029, -0.000014, -179.999741, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(19926, 544.254883, 2628.523926, 1134.334839, 0.000000, 0.000029, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19455, 557.615479, 2608.873535, 1136.576904, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(957, 548.213379, 2613.256104, 1136.044678, 0.000000, -0.000037, 179.999771, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 5042, "bombshop_las", "lightcover1", 0);
	bank_int= CreateDynamicObject(19081, 548.215698, 2613.246582, 1136.100098, 0.000000, 270.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 1, 18996, "mattextures", "sampblack", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(2420, 553.216431, 2609.565430, 1132.014893, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "CJ_WOOD_DARK", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1877, 548.217407, 2613.259766, 1136.165283, 0.000000, 179.999985, -179.999802, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2773, 545.952881, 2615.583984, 1132.524902, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1257, "bustopm", "CJ_GREENMETAL", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2707, 544.576538, 2629.691650, 1134.100342, -0.000104, 0.000029, -89.999718, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(7666, 544.688965, 2617.845215, 1132.402588, 60.495457, 270.000031, -90.000168, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "1", 140, "Arial", 80, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(14788, 550.544312, 2637.127197, 1134.144775, 0.000024, 0.000000, -90.000069, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 3077, "blkbrdx", "nf_blackbrd", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(2309, 552.350586, 2609.802002, 1132.500732, 0.000037, 180.000000, -0.000151, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19926, 544.254883, 2618.934326, 1131.894775, 0.000000, 0.000014, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2750, 544.606201, 2629.952148, 1134.429688, -0.000104, 90.000023, -89.999718, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(2750, 544.606201, 2618.049316, 1134.429688, -0.000059, 90.000023, -89.999855, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19926, 544.254883, 2618.934326, 1134.334839, 0.000000, 0.000019, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 550.230103, 2637.039063, 1132.490723, 0.000059, 180.000000, 179.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(11699, 544.613037, 2630.081543, 1134.310791, 89.999992, 90.000031, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19604, 544.704224, 2624.526123, 1139.549805, 0.000000, 360.000000, -0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14561, "triad_neon", "kbneon", 0);
	bank_int= CreateDynamicObject(2707, 544.576538, 2617.788818, 1134.100342, -0.000059, 0.000029, -89.999855, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19926, 544.256836, 2629.633545, 1131.896729, 0.000000, 0.000029, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19926, 544.256836, 2629.633545, 1134.336914, 0.000000, 0.000036, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19934, 544.478638, 2630.251465, 1131.996826, 0.000000, 0.000022, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_cooch_carp", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2750, 544.606201, 2617.098389, 1134.429688, -0.000068, 90.000023, -89.999832, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19424, "headphones", "headphones02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(2707, 544.576538, 2616.837891, 1134.100342, -0.000068, 0.000029, -89.999832, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(640, 550.449585, 2637.737549, 1132.144775, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 701, "badlands", "newtreeleaves128", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19377, 545.809814, 2633.377197, 1131.928955, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble2", 0);
	bank_int= CreateDynamicObject(14788, 550.544312, 2637.117188, 1137.605957, 0.000014, 0.000000, -90.000046, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 3077, "blkbrdx", "nf_blackbrd", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(2309, 551.019531, 2609.802002, 1132.490723, 0.000037, 180.000000, -0.000151, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1763, 548.973267, 2636.812500, 1132.014893, -0.000050, -0.000014, 0.000311, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(19926, 544.254883, 2617.024414, 1131.894775, 0.000000, 0.000014, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19926, 544.254883, 2617.024414, 1134.334839, 0.000000, 0.000019, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19934, 544.476685, 2616.395996, 1131.994873, 0.000000, 0.000014, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_cooch_carp", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19934, 543.898682, 2630.401611, 1131.996826, 0.000000, 0.000022, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_cooch_carp", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1763, 550.295898, 2610.028564, 1132.014893, -0.000029, -0.000007, -179.999786, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(19457, 556.133911, 2607.733887, 1131.934814, 0.000000, 90.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 9920, "anotherbuildsfe", "grassgrn256", 0);
	bank_int= CreateDynamicObject(2309, 548.899048, 2637.039063, 1132.500732, 0.000059, 180.000000, 179.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19377, 545.809814, 2614.147705, 1131.928955, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble2", 0);
	bank_int= CreateDynamicObject(19926, 543.726929, 2630.164063, 1134.338867, 0.000000, 0.000036, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 550.370361, 2609.802002, 1132.500732, 0.000037, 180.000000, -0.000151, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 552.575684, 2638.983398, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(14788, 550.544434, 2609.606934, 1134.144775, 0.000029, 0.000000, 89.999878, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 3077, "blkbrdx", "nf_blackbrd", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19604, 550.260132, 2638.128662, 1135.090820, 90.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18835, "mickytextures", "whiteforletters", 0);
	bank_int= CreateDynamicObject(1367, 543.236206, 2630.250488, 1132.364502, 0.000000, 0.000019, 179.999893, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 1733, "cj_commercial", "CJ_S_VENDOR", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(7009, 565.386963, 2637.322998, 1141.770752, 0.000000, 0.000000, 270.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 8, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19934, 543.906738, 2616.245850, 1131.994873, 0.000000, 0.000014, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_cooch_carp", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(983, 552.616943, 2608.747314, 1137.321045, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 10871, "blacksky_sfse", "ws_glass_balustrade", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19893, 543.217896, 2630.485596, 1132.731689, 11.999985, 0.000007, 179.999893, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19894, "laptopsamp1", "laptopscreen3", 0);
	SetDynamicObjectMaterial(bank_int, 0, 16640, "a51", "a51_cardreader", 0);
	bank_int= CreateDynamicObject(19926, 543.726929, 2616.424316, 1134.338867, 0.000007, 0.000036, 89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(983, 543.823303, 2616.290771, 1131.325317, 90.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 10806, "airfence_sfse", "ws_griddyfence", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1500, 547.735229, 2636.943604, 1132.500000, -0.000006, 0.000049, 179.999847, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 4003, "cityhall_tr_lan", "mc_flags1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19797, 543.084106, 2630.500977, 1132.560791, 0.000000, 90.000023, -179.999908, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "g", 130, "Webdings", 40, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(14788, 550.544434, 2609.616943, 1137.605957, 0.000024, 0.000000, 89.999901, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 3077, "blkbrdx", "nf_blackbrd", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(640, 550.449585, 2608.924805, 1132.144775, 0.000007, 0.000000, 89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 701, "badlands", "newtreeleaves128", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(2309, 549.039307, 2609.802002, 1132.490723, 0.000037, 180.000000, -0.000151, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19611, 547.448853, 2636.943604, 1132.029541, -0.000006, 0.000049, 179.999847, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 16322, "a51_stores", "metalic128", 0);
	bank_int= CreateDynamicObject(2773, 546.972900, 2636.564941, 1132.524902, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1257, "bustopm", "CJ_GREENMETAL", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19940, 545.584717, 2612.913574, 1133.265625, 89.999992, 270.000000, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19940, 545.584717, 2612.881348, 1133.265625, 89.999992, 270.000000, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19939, 545.584595, 2612.914063, 1131.766968, 89.999992, 270.000000, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19358, 542.771851, 2630.375488, 1132.775146, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19939, 545.584595, 2612.882080, 1131.766968, 89.999992, 270.000000, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19631, 542.622925, 2630.140625, 1132.855469, 21.299974, 0.000006, 108.099937, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14584, "ab_abbatoir01", "cj_sheetmetal", 0);
	bank_int= CreateDynamicObject(19456, 550.625610, 2638.983398, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19631, 542.629517, 2630.346436, 1132.864380, 21.299974, -0.000003, 73.800049, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14584, "ab_abbatoir01", "cj_sheetmetal", 0);
	bank_int= CreateDynamicObject(19631, 542.589478, 2630.244141, 1132.673096, -12.000020, 0.000000, 90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14584, "ab_abbatoir01", "cj_sheetmetal", 0);
	bank_int= CreateDynamicObject(19612, 545.588623, 2612.668213, 1134.262695, 0.000022, 180.000000, 89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14391, "dr_gsmix", "mixingdesk05", 0);
	bank_int= CreateDynamicObject(19612, 545.585205, 2612.631104, 1134.034668, -0.000022, 0.000000, -89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14391, "dr_gsmix", "mixingdesk05", 0);
	bank_int= CreateDynamicObject(19797, 545.782959, 2612.355957, 1134.208740, 0.000014, 90.000000, 89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "g", 130, "Webdings", 40, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(19934, 543.166748, 2616.245850, 1131.994873, 0.000000, 0.000014, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_cooch_carp", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19611, 546.958374, 2636.943604, 1132.029541, -0.000006, 0.000049, 179.999847, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 16322, "a51_stores", "metalic128", 0);
	bank_int= CreateDynamicObject(19797, 545.782959, 2612.298828, 1134.208740, 0.000014, 90.000000, 89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "g", 130, "Webdings", 40, 1, 0xFF00FF00, 0, 1);
	bank_int= CreateDynamicObject(19604, 544.704224, 2632.184570, 1139.529785, 0.000000, 360.000000, -0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14561, "triad_neon", "kbneon", 0);
	bank_int= CreateDynamicObject(19612, 545.587158, 2612.429199, 1134.034668, 0.000022, 0.000000, 89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14391, "dr_gsmix", "mixingdesk05", 0);
	bank_int= CreateDynamicObject(19939, 545.586548, 2612.429688, 1134.049927, 0.000000, 0.000022, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19939, 545.586548, 2612.429688, 1134.250000, 0.000000, 0.000022, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2773, 544.662964, 2613.513184, 1132.524902, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1257, "bustopm", "CJ_GREENMETAL", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19604, 550.260132, 2608.595947, 1135.090820, 89.999992, 90.000000, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18835, "mickytextures", "whiteforletters", 0);
	bank_int= CreateDynamicObject(19612, 545.584717, 2612.218018, 1134.034668, -0.000022, 0.000000, -89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14391, "dr_gsmix", "mixingdesk05", 0);
	bank_int= CreateDynamicObject(19456, 552.575684, 2607.670654, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19612, 545.588623, 2612.187988, 1134.034668, 0.000022, 0.000000, 89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14391, "dr_gsmix", "mixingdesk05", 0);
	bank_int= CreateDynamicObject(18659, 547.012451, 2637.225098, 1135.540405, -85.500023, 90.000305, -179.999603, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19063, "xmasorbs", "sphere", 0);
	bank_int= CreateDynamicObject(19940, 545.584717, 2611.972900, 1133.265625, 89.999992, 270.000000, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19611, 546.457886, 2636.943604, 1132.029541, -0.000006, 0.000049, 179.999847, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 16322, "a51_stores", "metalic128", 0);
	bank_int= CreateDynamicObject(19940, 545.584717, 2611.942871, 1133.265625, 89.999992, 270.000000, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19939, 545.584595, 2611.973145, 1131.766968, 89.999992, 270.000000, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19939, 545.584595, 2611.941162, 1131.766968, 89.999992, 270.000000, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19797, 545.390381, 2612.104736, 1134.207764, -0.000014, 90.000000, -89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "g", 130, "Webdings", 40, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(19797, 545.390381, 2612.048584, 1134.207764, -0.000014, 90.000000, -89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "g", 130, "Webdings", 40, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(19869, 540.855164, 2623.261719, 1132.884766, -0.000014, 89.999901, -90.000526, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10973, "mall_sfse", "ws_grilleshade", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19297, "matlights", "invisible", 0);
	bank_int= CreateDynamicObject(2714, 540.874451, 2623.136230, 1133.814697, 0.000049, 0.000007, 89.999809, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterialText(bank_int, 0, "C", 130, "Webdings", 199, 0, 0xFFFFFFFF, 0, 1);
	SetDynamicObjectMaterial(bank_int, 1, 19480, "signsurf", "sign", 0);
	bank_int= CreateDynamicObject(2714, 540.874451, 2623.386230, 1134.284668, 0.000049, 0.000007, 89.999809, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterialText(bank_int, 0, "__", 130, "Impact", 199, 0, 0xFFFFFFFF, 0, 1);
	SetDynamicObjectMaterial(bank_int, 1, 19480, "signsurf", "sign", 0);
	bank_int= CreateDynamicObject(2714, 540.874451, 2623.256348, 1134.284668, 0.000049, 0.000007, 89.999809, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterialText(bank_int, 0, "__", 130, "Impact", 199, 0, 0xFFFFFFFF, 0, 1);
	SetDynamicObjectMaterial(bank_int, 1, 19480, "signsurf", "sign", 0);
	bank_int= CreateDynamicObject(2714, 540.874451, 2623.136230, 1134.384644, 0.000049, 0.000007, 89.999809, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterialText(bank_int, 0, "OFFICE", 130, "Impact", 199, 0, 0xFFFFFFFF, 0, 1);
	SetDynamicObjectMaterial(bank_int, 1, 19480, "signsurf", "sign", 0);
	bank_int= CreateDynamicObject(1897, 540.831238, 2623.828613, 1131.964844, 89.999992, 76.631493, -76.631500, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(2714, 540.874451, 2622.905762, 1134.284668, 0.000049, 0.000007, 89.999809, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterialText(bank_int, 0, "__", 130, "Impact", 199, 0, 0xFFFFFFFF, 0, 1);
	SetDynamicObjectMaterial(bank_int, 1, 19480, "signsurf", "sign", 0);
	bank_int= CreateDynamicObject(19869, 540.855164, 2625.622559, 1132.884766, -0.000014, 89.999901, -90.000526, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10973, "mall_sfse", "ws_grilleshade", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19297, "matlights", "invisible", 0);
	bank_int= CreateDynamicObject(983, 542.553345, 2616.290771, 1131.325317, 90.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 10806, "airfence_sfse", "ws_griddyfence", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1569, 540.839600, 2625.694092, 1132.084717, 0.000022, 0.000007, 449.999908, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19451, 540.758972, 2623.297852, 1133.724854, 0.000007, -0.000022, 179.999817, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3820, "boxhses_sfsx", "ws_boxhouse_wins5", 0);
	bank_int= CreateDynamicObject(19456, 546.965942, 2637.310303, 1136.744141, 90.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1897, 540.761658, 2624.889648, 1132.174805, -0.000022, -0.000019, -90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19611, 547.464966, 2609.781494, 1132.029541, -0.000007, 0.000049, -0.000006, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 16322, "a51_stores", "metalic128", 0);
	bank_int= CreateDynamicObject(19926, 541.807007, 2630.164063, 1134.338867, 0.000000, 0.000036, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19934, 542.436890, 2616.245850, 1131.994873, 0.000000, 0.000014, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_cooch_carp", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1897, 540.761658, 2624.889648, 1134.364746, -0.000022, -0.000019, -90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1897, 540.831238, 2626.018555, 1131.964844, 89.999992, 76.631493, -76.631500, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19940, 545.584717, 2611.481934, 1133.265625, 89.999992, 270.000000, -89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19604, 544.704224, 2614.535889, 1139.549805, 0.000000, 360.000000, -0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14561, "triad_neon", "kbneon", 0);
	bank_int= CreateDynamicObject(1897, 540.831238, 2621.748535, 1131.964844, 89.999992, 76.631493, -76.631500, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19940, 545.584717, 2611.449707, 1133.265625, 89.999992, 270.000000, -89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19934, 541.818726, 2630.401611, 1131.996826, 0.000000, 0.000022, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_cooch_carp", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19939, 545.584595, 2611.482422, 1131.766968, 89.999992, 270.000000, -89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19939, 545.584595, 2611.450439, 1131.766968, 89.999992, 270.000000, -89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2773, 546.992920, 2610.015137, 1132.524902, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1257, "bustopm", "CJ_GREENMETAL", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1897, 540.761658, 2621.688965, 1132.174805, -0.000022, -0.000014, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19377, 548.239258, 2638.445557, 1137.064575, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble2", 0);
	bank_int= CreateDynamicObject(19869, 540.855164, 2620.911621, 1132.884766, -0.000014, 89.999901, -90.000526, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10973, "mall_sfse", "ws_grilleshade", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19297, "matlights", "invisible", 0);
	bank_int= CreateDynamicObject(1897, 540.752136, 2623.957031, 1135.444824, -0.000022, 450.000000, -90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1897, 540.761658, 2621.688965, 1134.364746, -0.000022, -0.000014, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1897, 540.831238, 2627.008789, 1131.964844, 89.999992, 76.631493, -76.631500, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19612, 545.588623, 2611.236572, 1134.262695, 0.000014, 180.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14391, "dr_gsmix", "mixingdesk05", 0);
	bank_int= CreateDynamicObject(19456, 548.645386, 2638.983398, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19926, 541.566956, 2630.165039, 1134.340820, 0.000000, 0.000036, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1897, 540.752136, 2626.136719, 1135.444824, -0.000022, 450.000000, -90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19612, 545.585205, 2611.199463, 1134.034668, -0.000014, 0.000000, -89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14391, "dr_gsmix", "mixingdesk05", 0);
	bank_int= CreateDynamicObject(1897, 540.752136, 2621.737793, 1135.444824, -0.000022, 450.000000, -90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19869, 540.855164, 2627.983398, 1132.884766, -0.000014, 89.999901, -90.000526, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10973, "mall_sfse", "ws_grilleshade", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19297, "matlights", "invisible", 0);
	bank_int= CreateDynamicObject(19797, 545.782959, 2610.924316, 1134.208740, 0.000007, 90.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "g", 130, "Webdings", 40, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(19869, 540.855164, 2628.083496, 1132.884766, -0.000014, 89.999901, -90.000526, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10973, "mall_sfse", "ws_grilleshade", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19297, "matlights", "invisible", 0);
	bank_int= CreateDynamicObject(19611, 546.964478, 2609.781494, 1132.029541, -0.000007, 0.000049, -0.000006, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 16322, "a51_stores", "metalic128", 0);
	bank_int= CreateDynamicObject(19378, 540.687256, 2627.043945, 1134.424561, -0.000007, 0.000000, 0.000022, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19797, 545.782959, 2610.867188, 1134.208740, 0.000007, 90.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "g", 130, "Webdings", 40, 1, 0xFF00FF00, 0, 1);
	bank_int= CreateDynamicObject(19456, 550.656128, 2607.670654, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(957, 541.296143, 2629.814453, 1133.837158, 0.000000, -0.000050, 179.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 5042, "bombshop_las", "lightcover1", 0);
	bank_int= CreateDynamicObject(1897, 540.752136, 2627.017578, 1135.444824, -0.000022, 450.000000, -90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1877, 541.290222, 2629.818115, 1133.858398, 0.000000, 179.999985, -179.999710, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2069, 541.271851, 2629.797607, 1132.070557, 0.000000, 0.000029, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 1564, "ab_jetlite", "CJ_BULLETBRASS", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19612, 545.587158, 2610.997559, 1134.034668, 0.000014, 0.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14391, "dr_gsmix", "mixingdesk05", 0);
	bank_int= CreateDynamicObject(19939, 545.586548, 2610.998047, 1134.049927, 0.000000, 0.000014, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19939, 545.586548, 2610.998047, 1134.250000, 0.000000, 0.000014, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1897, 540.761658, 2628.080566, 1132.174805, -0.000022, -0.000029, -90.000053, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1897, 540.761658, 2628.080566, 1134.364746, -0.000022, -0.000029, -90.000053, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1897, 540.831238, 2619.538574, 1131.964844, 89.999992, 76.631493, -76.631500, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(2161, 540.803894, 2628.585693, 1133.344604, 0.000022, 0.000000, 89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 14859, "gf1", "mp_cooch_carp", 0);
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(18857, 550.152222, 2640.618652, 1132.014893, 90.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10973, "mall_sfse", "ws_grilleshade", 0);
	bank_int= CreateDynamicObject(983, 541.433105, 2630.431885, 1131.195313, 90.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 10806, "airfence_sfse", "ws_griddyfence", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1569, 540.849548, 2619.231445, 1132.074707, 0.000022, 0.000007, 89.999901, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2161, 540.803894, 2628.585693, 1132.014893, 0.000022, 0.000000, 89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 14859, "gf1", "mp_cooch_carp", 0);
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19612, 545.584717, 2610.786377, 1134.034668, -0.000014, 0.000000, -89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14391, "dr_gsmix", "mixingdesk05", 0);
	bank_int= CreateDynamicObject(19926, 541.807007, 2616.426270, 1134.340820, 0.000007, 0.000036, 89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19612, 545.588623, 2610.756348, 1134.034668, 0.000014, 0.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14391, "dr_gsmix", "mixingdesk05", 0);
	bank_int= CreateDynamicObject(19926, 541.726868, 2616.424316, 1134.338867, 0.000007, 0.000036, 89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3922, "bistro", "Marble", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1355, "break_s_bins", "marble1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 545.150269, 2636.918945, 1132.490723, 0.000059, 180.000000, 179.999634, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19611, 546.473999, 2609.781494, 1132.029541, -0.000007, 0.000049, -0.000006, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 16322, "a51_stores", "metalic128", 0);
	bank_int= CreateDynamicObject(1897, 540.752136, 2619.537109, 1135.444824, -0.000022, 450.000000, -90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19934, 541.716919, 2616.245850, 1131.994873, 0.000000, 0.000014, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_cooch_carp", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 540.715759, 2622.790771, 1137.924316, 180.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 6522, "cuntclub_law2", "marinawindow1_256", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19940, 545.584717, 2610.541260, 1133.265625, 89.999992, 270.000000, -89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19940, 545.584717, 2610.509277, 1133.265625, 89.999992, 270.000000, -89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(18659, 546.910400, 2609.500000, 1135.540405, -85.500023, 90.000305, 0.000306, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19063, "xmasorbs", "sphere", 0);
	bank_int= CreateDynamicObject(19939, 545.584595, 2610.541504, 1131.766968, 89.999992, 270.000000, -89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19939, 545.584595, 2610.509521, 1131.766968, 89.999992, 270.000000, -89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dt_officewall3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19934, 541.088867, 2630.401611, 1131.996826, 0.000000, 0.000022, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_cooch_carp", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19797, 545.390381, 2610.673096, 1134.207764, -0.000007, 90.000000, -89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "g", 130, "Webdings", 40, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(1897, 540.761658, 2618.498535, 1132.174805, -0.000022, -0.000007, -89.999916, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19797, 545.390381, 2610.616943, 1134.207764, -0.000007, 90.000000, -89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "g", 130, "Webdings", 40, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(1897, 540.761658, 2618.498535, 1134.364746, -0.000022, -0.000007, -89.999916, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1500, 546.187622, 2609.781494, 1132.500000, -0.000007, 0.000049, -0.000006, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 4003, "cityhall_tr_lan", "mc_flags1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(957, 541.296143, 2616.752441, 1133.837158, 0.000000, -0.000045, 179.999725, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 5042, "bombshop_las", "lightcover1", 0);
	bank_int= CreateDynamicObject(1877, 541.290222, 2616.756104, 1133.858398, 0.000000, 179.999985, -179.999756, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2069, 541.271851, 2616.735596, 1132.070557, 0.000000, 0.000022, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 1564, "ab_jetlite", "CJ_BULLETBRASS", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19427, 546.991943, 2638.863281, 1135.430908, -0.000014, 450.000000, 89.999916, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0);
	bank_int= CreateDynamicObject(19456, 546.965942, 2609.419189, 1136.744141, 90.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2161, 540.803894, 2617.575928, 1133.344604, 0.000014, 0.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 14859, "gf1", "mp_cooch_carp", 0);
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(983, 541.383301, 2616.290771, 1131.325317, 90.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 10806, "airfence_sfse", "ws_griddyfence", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2161, 540.803894, 2617.575928, 1132.014893, 0.000014, 0.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 14859, "gf1", "mp_cooch_carp", 0);
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19457, 546.504272, 2638.995605, 1131.934814, 0.000000, 90.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 9920, "anotherbuildsfe", "grassgrn256", 0);
	bank_int= CreateDynamicObject(19378, 540.687256, 2617.433838, 1134.424561, -0.000007, 0.000000, 0.000022, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19934, 540.996948, 2616.245850, 1131.994873, 0.000000, 0.000014, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_cooch_carp", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 548.655640, 2607.670654, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19377, 548.119019, 2608.083008, 1137.064575, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble2", 0);
	bank_int= CreateDynamicObject(1763, 543.893921, 2636.692383, 1132.014893, -0.000050, 0.000000, 0.000265, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(2773, 542.132935, 2613.513184, 1132.524902, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1257, "bustopm", "CJ_GREENMETAL", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 543.819214, 2636.918945, 1132.500732, 0.000059, 180.000000, 179.999634, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(18857, 550.152222, 2606.099121, 1132.014893, 89.999992, -90.000000, -89.999992, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10973, "mall_sfse", "ws_grilleshade", 0);
	bank_int= CreateDynamicObject(2642, 540.835449, 2615.257080, 1133.630127, 0.000059, -0.000036, 90.000015, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 5
	SetDynamicObjectMaterial(bank_int, 4, 19297, "matlights", "invisible", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19297, "matlights", "invisible", 0xFFFFFFFF);
	SetDynamicObjectMaterial(bank_int, 2, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(bank_int, 1, 14859, "gf1", "mp_apt1_pos2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 3017, "arch_plx", "arch_plans", 0);
	bank_int= CreateDynamicObject(19379, 539.905884, 2623.951660, 1139.664917, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(19427, 546.930908, 2607.861816, 1135.430908, -0.000014, 450.000000, -90.000023, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0);
	bank_int= CreateDynamicObject(14788, 543.523682, 2637.127197, 1134.144775, 0.000029, 0.000000, -90.000092, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 3077, "blkbrdx", "nf_blackbrd", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19328, 540.809326, 2614.960938, 1133.620117, 0.000059, -0.000036, 90.000015, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14808, "lee_strip2", "strip_table", 0);
	bank_int= CreateDynamicObject(19811, 540.809570, 2614.955566, 1134.790283, 89.999992, 180.118011, -90.117752, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 14385, "trailerkb", "tr_kit_3a", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14385, "trailerkb", "tr_kit_3a", 0);
	bank_int= CreateDynamicObject(2309, 543.170288, 2636.918945, 1132.490723, 0.000059, 180.000000, 179.999634, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2642, 540.835449, 2614.636475, 1133.630127, 0.000059, -0.000036, 90.000015, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 5
	SetDynamicObjectMaterial(bank_int, 4, 19297, "matlights", "invisible", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19297, "matlights", "invisible", 0xFFFFFFFF);
	SetDynamicObjectMaterial(bank_int, 2, 16644, "a51_detailstuff", "a51_map", 0);
	SetDynamicObjectMaterial(bank_int, 1, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14859, "gf1", "mp_apt1_pos3", 0);
	bank_int= CreateDynamicObject(19457, 546.504272, 2607.733887, 1131.934814, 0.000000, 90.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 9920, "anotherbuildsfe", "grassgrn256", 0);
	bank_int= CreateDynamicObject(19456, 545.295532, 2638.983398, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 540.715759, 2632.421143, 1137.924316, 180.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 6522, "cuntclub_law2", "marinawindow1_256", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(640, 543.399658, 2637.707520, 1132.144775, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 701, "badlands", "newtreeleaves128", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(14788, 543.523682, 2637.117188, 1137.605957, 0.000024, 0.000000, -90.000069, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 3077, "blkbrdx", "nf_blackbrd", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(631, 541.248657, 2612.946045, 1133.201050, 0.000000, 0.000142, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2714, 540.821106, 2613.647949, 1133.914917, 0.000000, 0.000000, 450.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "STAFF ONLY", 130, "Tahoma", 90, 0, 0xFFFFFFFF, 0xFF000000, 1);
	bank_int= CreateDynamicObject(948, 541.214233, 2612.947510, 1131.988159, 0.000000, 0.000142, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 3741, "cehillhse14", "glassblocks1", 0xFFFAEBD7);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0);
	bank_int= CreateDynamicObject(19131, 540.792114, 2613.690674, 1134.834717, 0.000000, 0.000014, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 1654, "dynamite", "clock64", 0);
	bank_int= CreateDynamicObject(19604, 543.539917, 2638.128662, 1135.090820, 90.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18835, "mickytextures", "whiteforletters", 0);
	bank_int= CreateDynamicObject(14788, 543.523682, 2609.606934, 1134.144775, 0.000024, 0.000000, 89.999901, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 3077, "blkbrdx", "nf_blackbrd", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(1763, 541.913452, 2636.692383, 1132.014893, -0.000050, -0.000007, 0.000311, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(2309, 541.839233, 2636.918945, 1132.500732, 0.000059, 180.000000, 179.999634, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(14788, 543.523682, 2609.616943, 1137.605957, 0.000014, 0.000000, 89.999924, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 3077, "blkbrdx", "nf_blackbrd", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19456, 545.276184, 2607.670654, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(640, 543.399658, 2608.894775, 1132.144775, 0.000007, 0.000000, 89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 701, "badlands", "newtreeleaves128", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(631, 541.248657, 2636.665771, 1133.201050, 0.000000, 0.000134, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 540.715759, 2613.160400, 1137.924316, 180.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 6522, "cuntclub_law2", "marinawindow1_256", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(948, 541.214233, 2636.667236, 1131.988159, 0.000000, 0.000134, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 3741, "cehillhse14", "glassblocks1", 0xFFFAEBD7);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0);
	bank_int= CreateDynamicObject(19456, 543.465576, 2638.983398, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19604, 543.539917, 2608.595947, 1135.090820, 89.999992, 90.000000, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18835, "mickytextures", "whiteforletters", 0);
	bank_int= CreateDynamicObject(2309, 536.968506, 2624.224365, 1132.490723, 0.000050, 180.000000, 89.999771, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19379, 550.395630, 2604.709717, 1139.664917, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(2309, 536.968506, 2625.555420, 1132.500732, 0.000050, 180.000000, 89.999771, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2257, 537.212524, 2620.322998, 1133.871826, -0.000007, 0.000000, -89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 2254, "picture_frame_clip", "CJ_PAINTING24", 0);
	bank_int= CreateDynamicObject(19479, 537.249023, 2620.012207, 1133.014893, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18646, "matcolours", "grey-80-percent", 0x50000000);
	bank_int= CreateDynamicObject(2773, 537.032593, 2620.298340, 1132.524902, 0.000007, -0.000007, 179.999924, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1257, "bustopm", "CJ_GREENMETAL", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19378, 540.687256, 2636.671631, 1134.424561, -0.000007, 0.000000, 0.000022, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1763, 536.741943, 2625.480957, 1132.014893, -0.000044, -0.000022, -89.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(19379, 539.905884, 2633.574951, 1139.664917, 0.000000, 90.000015, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(19379, 539.905884, 2614.331055, 1139.664917, 0.000000, 90.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(19378, 537.345703, 2628.351318, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1213, 541.402588, 2636.784912, 1138.521484, 0.000000, 179.999985, -179.999847, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19941, "goldbar1", "chrome", 0xFFCDCDCD);
	bank_int= CreateDynamicObject(19871, 541.402832, 2636.778564, 1138.589600, 0.000044, 0.000014, 89.999863, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3961, "lee_kitch", "metal1", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(631, 536.858765, 2628.284668, 1133.201050, 0.000000, 0.000157, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(948, 536.824341, 2628.286133, 1131.988159, 0.000000, 0.000157, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 3741, "cehillhse14", "glassblocks1", 0xFFFAEBD7);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0);
	bank_int= CreateDynamicObject(19456, 543.466125, 2607.670654, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19378, 537.345703, 2617.858887, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19940, 538.974609, 2612.601807, 1132.424805, 89.999992, 270.000000, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 17538, "losflor4_lae2", "ventc128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19940, 538.974609, 2612.601807, 1134.424805, 89.999992, 270.000000, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 17538, "losflor4_lae2", "ventc128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 536.968506, 2617.082764, 1132.500732, 0.000044, 180.000000, 89.999794, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 541.725586, 2638.983398, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1213, 541.402588, 2609.863770, 1138.521484, 0.000000, 179.999985, -179.999893, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19941, "goldbar1", "chrome", 0xFFCDCDCD);
	bank_int= CreateDynamicObject(19871, 541.402832, 2609.857422, 1138.589600, 0.000036, 0.000014, 89.999886, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3961, "lee_kitch", "metal1", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(19456, 539.025818, 2612.688721, 1136.744141, 90.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1763, 536.741943, 2617.008301, 1132.014893, -0.000036, -0.000022, -89.999702, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(19456, 540.045837, 2637.310303, 1136.744141, 90.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19377, 545.809814, 2604.527344, 1131.928955, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble2", 0);
	bank_int= CreateDynamicObject(2309, 536.968506, 2615.751709, 1132.490723, 0.000044, 180.000000, 89.999794, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19940, 538.974609, 2611.622559, 1132.004517, 180.000000, 360.000000, 0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 17538, "losflor4_lae2", "ventc128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19379, 535.535645, 2623.951660, 1136.255127, 0.000000, 90.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3621, "dockcargo1_las", "dt_ceiling1", 0);
	CreateDynamicObject(19456, 540.473999, 2609.790039, 1137.209961, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 300.0); // 0
	bank_int= CreateDynamicObject(19377, 535.309875, 2623.780029, 1131.928955, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14700, "vgshs2int2", "ah_SCMFLR", 0);
	bank_int= CreateDynamicObject(19893, 539.977966, 2609.756836, 1132.731689, 11.999983, 0.000000, 179.999847, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19894, "laptopsamp1", "laptopscreen3", 0);
	SetDynamicObjectMaterial(bank_int, 0, 16640, "a51", "a51_cardreader", 0);
	bank_int= CreateDynamicObject(19797, 538.215942, 2612.322998, 1132.560791, 0.000000, 90.000023, 0.000121, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "g", 130, "Webdings", 40, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(19797, 539.844177, 2609.772217, 1132.560791, 0.000000, 90.000015, -179.999863, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterialText(bank_int, 0, "g", 130, "Webdings", 40, 1, 0xFFFFFFFF, 0, 1);
	bank_int= CreateDynamicObject(1367, 538.063843, 2612.573486, 1132.364502, 0.000000, 0.000018, -0.000167, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 1733, "cj_commercial", "CJ_S_VENDOR", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1367, 539.996277, 2609.521729, 1132.364502, 0.000000, 0.000012, 179.999847, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 1733, "cj_commercial", "CJ_S_VENDOR", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19355, 538.955444, 2610.984131, 1133.694580, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(19893, 538.082153, 2612.338379, 1132.731689, 11.999981, 0.000007, -0.000169, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19894, "laptopsamp1", "laptopscreen3", 0);
	SetDynamicObjectMaterial(bank_int, 0, 16640, "a51", "a51_cardreader", 0);
	bank_int= CreateDynamicObject(19456, 541.726318, 2607.670654, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19377, 540.009155, 2638.445557, 1137.064575, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble2", 0);
	bank_int= CreateDynamicObject(19479, 537.249023, 2634.816406, 1133.014893, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18646, "matcolours", "grey-80-percent", 0x50000000);
	bank_int= CreateDynamicObject(19479, 538.552246, 2637.212402, 1135.194214, 90.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18646, "matcolours", "grey-80-percent", 0x50000000);
	CreateDynamicObject(19456, 540.474976, 2608.030029, 1133.729980, 180.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 300.0); // 0
	bank_int= CreateDynamicObject(19456, 535.019409, 2619.195313, 1131.934814, 0.000000, 90.000015, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dts_elevator_carpet3", 0);
	bank_int= CreateDynamicObject(19604, 535.150879, 2619.154297, 1136.135986, 540.000000, 180.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14561, "triad_neon", "kbneon", 0);
	bank_int= CreateDynamicObject(19377, 540.598877, 2608.083008, 1137.064575, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble2", 0);
	bank_int= CreateDynamicObject(19940, 538.974609, 2609.630615, 1132.004517, 180.000000, 360.000000, 0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 17538, "losflor4_lae2", "ventc128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(631, 536.858765, 2613.146240, 1133.201050, 0.000000, 0.000150, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(948, 536.824341, 2613.147705, 1131.988159, 0.000000, 0.000150, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 3741, "cehillhse14", "glassblocks1", 0xFFFAEBD7);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0);
	bank_int= CreateDynamicObject(19940, 538.974609, 2609.510498, 1132.414917, 89.999992, 270.000000, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 17538, "losflor4_lae2", "ventc128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19940, 538.974609, 2609.510498, 1134.415527, 89.999992, 270.000000, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 17538, "losflor4_lae2", "ventc128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19479, 541.802246, 2606.220947, 1135.194214, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18646, "matcolours", "grey-80-percent", 0x50000000);
	bank_int= CreateDynamicObject(19377, 535.309875, 2633.400635, 1131.928955, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14700, "vgshs2int2", "ah_SCMFLR", 0);
	bank_int= CreateDynamicObject(19379, 535.535645, 2633.582275, 1136.255127, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(19379, 535.535645, 2614.331055, 1136.255127, 0.000000, 90.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3621, "dockcargo1_las", "dt_ceiling1", 0);
	bank_int= CreateDynamicObject(19377, 535.309875, 2614.147705, 1131.928955, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14700, "vgshs2int2", "ah_SCMFLR", 0);
	bank_int= CreateDynamicObject(19378, 538.955811, 2609.418701, 1140.243774, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19869, 533.558105, 2628.786377, 1132.845215, 0.000007, 89.999886, 179.999252, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10973, "mall_sfse", "ws_grilleshade", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19297, "matlights", "invisible", 0);
	bank_int= CreateDynamicObject(1897, 533.555420, 2628.879883, 1132.135254, 0.000000, -0.000044, 179.999725, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1897, 533.555420, 2628.879883, 1134.325195, 0.000000, -0.000044, 179.999725, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19869, 533.458008, 2628.786377, 1132.845215, 0.000007, 89.999886, 179.999252, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10973, "mall_sfse", "ws_grilleshade", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19297, "matlights", "invisible", 0);
	bank_int= CreateDynamicObject(19378, 537.345703, 2638.851563, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19869, 536.606201, 2609.526367, 1133.641113, 0.000000, 89.999924, 179.999527, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10973, "mall_sfse", "ws_grilleshade", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19297, "matlights", "invisible", 0);
	bank_int= CreateDynamicObject(19378, 532.925598, 2619.150146, 1136.744141, 89.999992, -90.000000, -89.999992, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1897, 532.483643, 2628.810303, 1131.925293, 89.999992, 0.000024, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19378, 536.555664, 2609.418701, 1136.744141, 90.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1897, 532.492432, 2628.889404, 1135.405273, 0.000000, 450.000000, 179.999832, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1360, 532.164429, 2619.250977, 1131.929810, 0.000007, -0.000037, 179.999725, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 18632, "fishingrod", "rodpole2", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(627, 532.090210, 2619.295898, 1132.818848, 0.000045, 0.000007, 89.999832, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3897, "libertyhi", "newtreea128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19378, 532.055908, 2628.884277, 1136.744141, 89.999992, 0.000011, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 536.616821, 2607.780762, 1136.744141, 89.999992, -90.000000, -89.999992, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19379, 539.905884, 2604.709717, 1139.664917, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(1897, 531.611572, 2628.889404, 1135.405273, 0.000000, 450.000000, 179.999832, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1897, 531.493164, 2628.810303, 1131.925293, 89.999992, 0.000024, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19869, 531.097412, 2628.786377, 1132.845215, 0.000007, 89.999886, 179.999252, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10973, "mall_sfse", "ws_grilleshade", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19297, "matlights", "invisible", 0);
	bank_int= CreateDynamicObject(1569, 531.007568, 2628.832031, 1132.065308, 0.000000, 0.000022, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1500, 530.535034, 2622.507080, 1132.500000, -0.000006, 0.000043, 179.999802, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 4003, "cityhall_tr_lan", "mc_flags1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19869, 534.116089, 2609.526367, 1134.191162, 0.000000, 89.999924, 179.999527, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10973, "mall_sfse", "ws_grilleshade", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19297, "matlights", "invisible", 0);
	bank_int= CreateDynamicObject(19611, 530.248657, 2622.507080, 1132.029541, -0.000006, 0.000043, 179.999802, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 16322, "a51_stores", "metalic128", 0);
	bank_int= CreateDynamicObject(19604, 534.080444, 2609.516357, 1135.090820, 89.999992, 90.000031, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18835, "mickytextures", "whiteforletters", 0);
	bank_int= CreateDynamicObject(1897, 530.364502, 2628.879883, 1132.135254, 0.000000, -0.000036, 179.999771, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1897, 530.364502, 2628.879883, 1134.325195, 0.000000, -0.000036, 179.999771, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19611, 529.758179, 2622.507080, 1132.029541, -0.000006, 0.000043, 179.999802, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 16322, "a51_stores", "metalic128", 0);
	bank_int= CreateDynamicObject(2773, 529.729736, 2622.273438, 1132.524902, -0.000007, 0.000000, -89.999947, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1257, "bustopm", "CJ_GREENMETAL", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19611, 529.257690, 2622.507080, 1132.029541, -0.000006, 0.000043, 179.999802, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 16322, "a51_stores", "metalic128", 0);
	bank_int= CreateDynamicObject(19356, 529.602783, 2619.186768, 1131.944824, 0.000000, 90.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dts_elevator_carpet3", 0);
	bank_int= CreateDynamicObject(19456, 534.117004, 2607.780762, 1136.744141, 89.999992, -90.000000, -89.999992, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19611, 530.254883, 2615.732666, 1132.029541, -0.000007, 0.000058, -0.000003, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 16322, "a51_stores", "metalic128", 0);
	bank_int= CreateDynamicObject(1897, 529.431885, 2628.889404, 1135.405273, 0.000000, 450.000000, 179.999832, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1897, 529.303467, 2628.810303, 1131.925293, 89.999992, 0.000024, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(2773, 529.782715, 2615.966309, 1132.524902, 0.000007, 0.000000, 89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1257, "bustopm", "CJ_GREENMETAL", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19611, 529.754395, 2615.732666, 1132.029541, -0.000007, 0.000058, -0.000003, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 16322, "a51_stores", "metalic128", 0);
	bank_int= CreateDynamicObject(2714, 528.861084, 2628.767090, 1134.245117, 0.000028, 0.000022, -0.000091, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterialText(bank_int, 0, "__", 130, "Impact", 199, 0, 0xFFFFFFFF, 0, 1);
	SetDynamicObjectMaterial(bank_int, 1, 19480, "signsurf", "sign", 0);
	bank_int= CreateDynamicObject(19451, 528.772461, 2628.882568, 1133.685303, 0.000022, 0.000000, 89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 8434, "vgsoffice1", "vegasoffice04_256", 0);
	bank_int= CreateDynamicObject(19869, 528.736328, 2628.786377, 1132.845215, 0.000007, 89.999886, 179.999252, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10973, "mall_sfse", "ws_grilleshade", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19297, "matlights", "invisible", 0);
	bank_int= CreateDynamicObject(2714, 528.730957, 2628.767090, 1134.245117, 0.000028, 0.000022, -0.000091, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterialText(bank_int, 0, "__", 130, "Impact", 199, 0, 0xFFFFFFFF, 0, 1);
	SetDynamicObjectMaterial(bank_int, 1, 19480, "signsurf", "sign", 0);
	bank_int= CreateDynamicObject(2714, 528.610840, 2628.767090, 1133.775146, 0.000028, 0.000022, -0.000091, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterialText(bank_int, 0, "C", 130, "Webdings", 199, 0, 0xFFFFFFFF, 0, 1);
	SetDynamicObjectMaterial(bank_int, 1, 19480, "signsurf", "sign", 0);
	bank_int= CreateDynamicObject(2714, 528.610840, 2628.767090, 1134.345093, 0.000028, 0.000022, -0.000091, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterialText(bank_int, 0, "OFFICE", 130, "Impact", 199, 0, 0xFFFFFFFF, 0, 1);
	SetDynamicObjectMaterial(bank_int, 1, 19480, "signsurf", "sign", 0);
	bank_int= CreateDynamicObject(19611, 529.263916, 2615.732666, 1132.029541, -0.000007, 0.000058, -0.000003, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 16322, "a51_stores", "metalic128", 0);
	bank_int= CreateDynamicObject(2714, 528.380615, 2628.767090, 1134.245117, 0.000028, 0.000022, -0.000091, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterialText(bank_int, 0, "__", 130, "Impact", 199, 0, 0xFFFFFFFF, 0, 1);
	SetDynamicObjectMaterial(bank_int, 1, 19480, "signsurf", "sign", 0);
	bank_int= CreateDynamicObject(1500, 528.977539, 2615.732666, 1132.500000, -0.000007, 0.000058, -0.000003, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 4003, "cityhall_tr_lan", "mc_flags1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2257, 527.845154, 2624.442871, 1133.871826, -0.000014, 0.000014, 179.999863, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 2254, "picture_frame_clip", "CJ_PAINTING12", 0);
	bank_int= CreateDynamicObject(2773, 527.820496, 2624.622559, 1132.524902, -0.000007, -0.000014, 89.999924, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1257, "bustopm", "CJ_GREENMETAL", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1763, 530.856689, 2609.987793, 1132.014893, -0.000049, -0.000019, -179.999619, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(2309, 530.931152, 2609.761230, 1132.500732, 0.000059, 180.000000, -0.000288, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19378, 527.755615, 2624.320068, 1136.744141, 89.999992, 0.000011, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 527.659424, 2626.645508, 1131.934814, 0.000000, 90.000015, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dts_elevator_carpet3", 0);
	bank_int= CreateDynamicObject(19378, 527.755615, 2622.868652, 1136.744141, 89.999992, 0.000011, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19604, 527.670837, 2626.629395, 1136.135986, 0.000000, 0.000014, 90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14561, "triad_neon", "kbneon", 0);
	bank_int= CreateDynamicObject(2257, 527.413818, 2622.748291, 1134.025146, -0.000007, 0.000000, 0.000022, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 14842, "genintintpolicea", "cop_notice", 0);
	bank_int= CreateDynamicObject(19604, 527.871094, 2619.168701, 1136.135986, 0.000000, 0.000014, 90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14561, "triad_neon", "kbneon", 0);
	bank_int= CreateDynamicObject(19456, 531.616760, 2607.780762, 1136.744141, 89.999992, -90.000000, -89.999992, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1897, 527.223389, 2628.810303, 1131.925293, 89.999992, 0.000024, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1897, 527.163818, 2628.879883, 1132.135254, 0.000000, -0.000029, 179.999817, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1897, 527.163818, 2628.879883, 1134.325195, 0.000000, -0.000029, 179.999817, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1897, 527.212402, 2628.889404, 1135.405273, 0.000000, 450.000000, 179.999832, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(18659, 530.180664, 2609.500000, 1134.598145, -85.500023, 90.000404, 0.000402, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19063, "xmasorbs", "sphere", 0);
	bank_int= CreateDynamicObject(19378, 527.755615, 2615.420410, 1136.744141, 89.999992, 0.000011, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2309, 529.600098, 2609.761230, 1132.490723, 0.000059, 180.000000, -0.000288, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2009, 526.374023, 2622.092529, 1132.014893, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 1355, "break_s_bins", "CJ_WOOD_DARK", 0);
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19869, 526.386230, 2628.786377, 1132.845215, 0.000007, 89.999886, 179.999252, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10973, "mall_sfse", "ws_grilleshade", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19297, "matlights", "invisible", 0);
	bank_int= CreateDynamicObject(19378, 527.755615, 2613.979492, 1136.744141, 89.999992, 0.000011, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19427, 530.201172, 2607.861816, 1134.488770, -0.000023, 450.000000, -90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0);
	bank_int= CreateDynamicObject(19378, 526.506165, 2628.892090, 1136.744141, 89.999992, 0.000011, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2257, 527.289978, 2613.859619, 1133.871826, -0.000014, 0.000014, 0.000014, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 2254, "picture_frame_clip", "CJ_PAINTING24", 0);
	bank_int= CreateDynamicObject(2773, 527.314636, 2613.679932, 1132.524902, -0.000007, -0.000014, -90.000015, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 1257, "bustopm", "CJ_GREENMETAL", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	CreateDynamicObject(2309, 525.688110, 2622.460693, 1132.014893, -0.000003, 0.000006, 151.299896, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2309, 526.448303, 2615.768066, 1132.014893, 0.000000, 0.000000, -28.700010, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 0
	bank_int= CreateDynamicObject(19456, 527.659424, 2611.643555, 1131.934814, 0.000000, 90.000015, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dts_elevator_carpet3", 0);
	bank_int= CreateDynamicObject(19604, 527.670837, 2611.720947, 1136.135986, 540.000000, 180.000000, 270.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14561, "triad_neon", "kbneon", 0);
	bank_int= CreateDynamicObject(19379, 525.035645, 2623.951660, 1136.255127, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3621, "dockcargo1_las", "dt_ceiling1", 0);
	bank_int= CreateDynamicObject(19377, 524.810059, 2623.780029, 1131.928955, 0.000000, 90.000015, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14700, "vgshs2int2", "ah_SCMFLR", 0);
	bank_int= CreateDynamicObject(1897, 525.013184, 2628.810303, 1131.925293, 89.999992, 0.000024, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1897, 525.011963, 2628.889404, 1135.405273, 0.000000, 450.000000, 179.999832, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(2009, 525.374023, 2616.229248, 1132.014893, 0.000000, 0.000000, 360.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 1355, "break_s_bins", "CJ_WOOD_DARK", 0);
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1569, 524.706055, 2628.791992, 1132.045288, 0.000000, 0.000022, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19172, 527.159302, 2609.528564, 1133.836548, -0.000007, 89.999992, 179.999847, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 12853, "cunte_gas01", "starspangban1_256", 0);
	bank_int= CreateDynamicObject(11707, 527.189819, 2609.560303, 1135.186768, -0.000007, -0.000007, 179.999847, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 642, "canopy", "wood02", 0);
	SetDynamicObjectMaterial(bank_int, 0, 642, "canopy", "wood02", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1897, 523.973389, 2628.879883, 1132.135254, 0.000000, -0.000022, 179.999863, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(1897, 523.973389, 2628.879883, 1134.325195, 0.000000, -0.000022, 179.999863, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19377, 524.869873, 2633.400635, 1131.929932, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14700, "vgshs2int2", "ah_SCMFLR", 0);
	bank_int= CreateDynamicObject(19379, 525.035645, 2633.582275, 1136.255127, 0.000000, 90.000015, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 10871, "blacksky_sfse", "ws_slatetiles", 0);
	bank_int= CreateDynamicObject(19379, 525.035645, 2614.331055, 1136.255127, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3621, "dockcargo1_las", "dt_ceiling1", 0);
	bank_int= CreateDynamicObject(19377, 524.810059, 2614.147705, 1131.928955, 0.000000, 90.000015, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14700, "vgshs2int2", "ah_SCMFLR", 0);
	bank_int= CreateDynamicObject(2257, 524.353577, 2615.544922, 1134.025146, -0.000007, 0.000000, 180.000031, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 14853, "gen_pol_vegas", "mp_cop_pinboard", 0);
	bank_int= CreateDynamicObject(19378, 526.055786, 2609.418701, 1136.744141, 90.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19431, 522.572876, 2623.589844, 1133.755127, 0.000000, 0.000014, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19431, 522.572876, 2623.589844, 1137.254517, 0.000000, 0.000014, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(631, 522.171875, 2623.659180, 1133.201050, 0.000007, 0.000172, 89.999947, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(948, 522.170410, 2623.624512, 1131.988159, 0.000007, 0.000172, 89.999947, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 3741, "cehillhse14", "glassblocks1", 0xFFFAEBD7);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0);
	bank_int= CreateDynamicObject(1763, 524.746765, 2609.987793, 1132.014893, -0.000049, -0.000029, -179.999573, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(2309, 524.821228, 2609.761230, 1132.500732, 0.000059, 180.000000, -0.000288, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	CreateDynamicObject(14596, 523.939087, 2634.549072, 1125.314941, 0.000000, 0.000000, 450.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 0
	bank_int= CreateDynamicObject(19431, 522.572876, 2614.696289, 1133.755127, 0.000000, 0.000007, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19431, 522.572876, 2614.696289, 1137.254517, 0.000000, 0.000007, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(18659, 524.070496, 2609.500000, 1134.598145, -85.500023, 90.000504, 0.000499, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19063, "xmasorbs", "sphere", 0);
	bank_int= CreateDynamicObject(631, 522.171875, 2614.724365, 1133.201050, 0.000014, 0.000172, 89.999924, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(948, 522.170410, 2614.689697, 1131.988159, 0.000014, 0.000172, 89.999924, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 3741, "cehillhse14", "glassblocks1", 0xFFFAEBD7);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0);
	bank_int= CreateDynamicObject(2309, 523.490173, 2609.761230, 1132.490723, 0.000059, 180.000000, -0.000288, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19355, 523.670227, 2638.733398, 1133.275391, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 16293, "a51_undergrnd", "Was_scrpyd_door_in_hngr", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19355, 523.700256, 2638.733398, 1135.575684, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14495, "sweetshall", "mcstraps_ceiling", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19427, 524.091003, 2607.861816, 1134.488770, -0.000029, 450.000000, -89.999977, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0);
	bank_int= CreateDynamicObject(19869, 522.695984, 2609.526367, 1133.641113, 0.000000, 89.999931, 179.999573, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10973, "mall_sfse", "ws_grilleshade", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19297, "matlights", "invisible", 0);
	bank_int= CreateDynamicObject(19456, 520.219299, 2619.144043, 1131.934814, 0.000000, 90.000015, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18757, "vcinteriors", "dts_elevator_carpet3", 0);
	bank_int= CreateDynamicObject(19456, 522.706604, 2607.780762, 1136.744141, 89.999992, -89.999992, -90.000023, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19378, 519.386230, 2628.886230, 1139.583862, 89.999992, 0.000011, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(11713, 517.886353, 2623.382813, 1133.681152, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 65535, "none", "none", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19431, 517.742676, 2623.601318, 1133.755127, 0.000000, 0.000014, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19431, 517.744751, 2623.150879, 1133.755127, 0.000000, 0.000029, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19869, 520.205811, 2609.526367, 1134.191162, 0.000000, 89.999931, 179.999573, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10973, "mall_sfse", "ws_grilleshade", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19297, "matlights", "invisible", 0);
	bank_int= CreateDynamicObject(19940, 517.754761, 2621.361816, 1136.155640, 180.000000, 360.000000, 0.000037, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 17538, "losflor4_lae2", "ventc128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19431, 517.742676, 2623.601318, 1137.254517, 0.000000, 0.000014, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19940, 517.754761, 2620.921387, 1136.175659, 180.000000, 360.000000, 0.000037, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 17538, "losflor4_lae2", "ventc128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19431, 517.744751, 2623.150879, 1137.254517, 0.000000, 0.000029, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19604, 520.170166, 2609.516357, 1135.090820, 89.999992, 90.000015, -89.999962, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18835, "mickytextures", "whiteforletters", 0);
	bank_int= CreateDynamicObject(19604, 517.670898, 2626.629395, 1136.135986, 0.000000, 0.000014, 90.000008, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14561, "triad_neon", "kbneon", 0);
	bank_int= CreateDynamicObject(2274, 518.334778, 2615.443848, 1133.059204, 0.000014, 0.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3070, "gogsx", "nightvision", 0);
	SetDynamicObjectMaterial(bank_int, 0, 3272, "ele_substation", "des_substa_bit2", 0);
	bank_int= CreateDynamicObject(19940, 517.754761, 2618.921875, 1136.175659, 180.000000, 360.000000, 0.000037, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 17538, "losflor4_lae2", "ventc128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19940, 517.754761, 2616.922363, 1136.175659, 180.000000, 360.000000, 0.000037, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 17538, "losflor4_lae2", "ventc128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19313, 517.699219, 2619.231934, 1138.781250, 0.000000, 90.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10806, "airfence_sfse", "ws_griddyfence", 0);
	SetDynamicObjectMaterial(bank_int, 0, 2896, "law_coffintxd", "metleg_32_law", 0);
	bank_int= CreateDynamicObject(2274, 516.954712, 2622.285889, 1133.059204, 0.000014, 0.000000, 0.999938, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3070, "gogsx", "nightvision", 0);
	SetDynamicObjectMaterial(bank_int, 0, 3272, "ele_substation", "des_substa_bit2", 0);
	bank_int= CreateDynamicObject(19431, 517.744751, 2615.129639, 1133.755127, 0.000000, 0.000037, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 520.206787, 2607.780762, 1136.744141, 89.999992, -89.999992, -90.000023, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19431, 517.742676, 2614.696289, 1133.755127, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19431, 517.744751, 2615.129639, 1137.254517, 0.000000, 0.000037, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19431, 517.742676, 2614.696289, 1137.254517, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2274, 516.954712, 2616.034424, 1133.059204, 0.000014, 0.000000, 179.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3070, "gogsx", "nightvision", 0);
	SetDynamicObjectMaterial(bank_int, 0, 3272, "ele_substation", "des_substa_bit2", 0);
	bank_int= CreateDynamicObject(19604, 517.670898, 2611.720947, 1136.135986, 540.000000, 180.000000, 270.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14561, "triad_neon", "kbneon", 0);
	bank_int= CreateDynamicObject(19081, 515.530640, 2622.804443, 1133.291260, 0.000000, -13.699995, -101.899963, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19379, 515.762024, 2618.707764, 1133.692139, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(631, 514.998779, 2624.744629, 1133.201050, 0.000000, 0.000172, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(948, 514.964355, 2624.746094, 1131.988159, 0.000000, 0.000172, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 3741, "cehillhse14", "glassblocks1", 0xFFFAEBD7);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0);
	bank_int= CreateDynamicObject(1763, 514.998840, 2626.009277, 1132.014893, -0.000044, -0.000006, 90.000259, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(631, 514.998779, 2628.284668, 1133.201050, 0.000000, 0.000165, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(948, 514.964355, 2628.286133, 1131.988159, 0.000000, 0.000165, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 3741, "cehillhse14", "glassblocks1", 0xFFFAEBD7);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0);
	bank_int= CreateDynamicObject(2309, 514.772278, 2625.934814, 1132.500732, 0.000050, 180.000000, -90.000282, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19081, 515.530640, 2615.440430, 1132.940918, 0.000000, -13.699995, 112.700020, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19081, 515.530640, 2615.441162, 1134.073486, 0.000000, -13.699995, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19081, 515.530640, 2615.450439, 1134.502197, 0.000000, 18.600006, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(2707, 515.020752, 2619.141113, 1135.873779, -0.000014, 359.999969, -89.999847, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 3440, "airportpillar", "metalic_64", 0);
	bank_int= CreateDynamicObject(2309, 514.772278, 2627.265869, 1132.490723, 0.000050, 180.000000, -90.000282, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 517.706543, 2607.780762, 1136.744141, 89.999992, -89.999992, -90.000023, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3922, "bistro", "Marble", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19379, 514.545654, 2623.951660, 1136.255127, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3621, "dockcargo1_las", "dt_ceiling1", 0);
	bank_int= CreateDynamicObject(19377, 514.310181, 2623.780029, 1131.928955, 0.000000, 90.000023, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14700, "vgshs2int2", "ah_SCMFLR", 0);
	bank_int= CreateDynamicObject(2707, 514.489014, 2620.425293, 1135.873779, -0.000007, 0.000007, 135.000092, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 3440, "airportpillar", "metalic_64", 0);
	bank_int= CreateDynamicObject(2707, 514.489014, 2617.856934, 1135.873779, 0.000007, 359.999969, 45.000084, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 3440, "airportpillar", "metalic_64", 0);
	bank_int= CreateDynamicObject(19479, 514.549316, 2631.315186, 1133.014893, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18646, "matcolours", "grey-80-percent", 0x50000000);
	bank_int= CreateDynamicObject(19378, 514.446228, 2629.632080, 1136.744141, 89.999992, 0.000011, 0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(631, 514.998779, 2613.399902, 1133.201050, 0.000000, 0.000180, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(948, 514.964355, 2613.401367, 1131.988159, 0.000000, 0.000180, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 3741, "cehillhse14", "glassblocks1", 0xFFFAEBD7);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0);
	bank_int= CreateDynamicObject(19081, 513.713989, 2622.794434, 1132.916748, 0.000000, -27.199995, -67.299980, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19378, 513.896362, 2628.884277, 1136.744141, 89.999992, 0.000011, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19379, 514.545532, 2614.331055, 1136.255127, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3621, "dockcargo1_las", "dt_ceiling1", 0);
	bank_int= CreateDynamicObject(19377, 514.370117, 2633.400635, 1131.928955, 0.000000, 90.000015, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14700, "vgshs2int2", "ah_SCMFLR", 0);
	bank_int= CreateDynamicObject(2309, 514.772278, 2612.320068, 1132.490723, 0.000044, 180.000000, -90.000259, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19377, 514.310181, 2614.147705, 1131.928955, 0.000000, 90.000023, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14700, "vgshs2int2", "ah_SCMFLR", 0);
	bank_int= CreateDynamicObject(1763, 514.998840, 2611.063477, 1132.014893, -0.000036, -0.000006, 90.000237, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	bank_int= CreateDynamicObject(19378, 515.555847, 2609.418701, 1136.744141, 90.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2707, 513.204590, 2620.957275, 1135.873779, 0.000000, 0.000000, -179.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 3440, "airportpillar", "metalic_64", 0);
	bank_int= CreateDynamicObject(2309, 514.772278, 2610.989014, 1132.500732, 0.000044, 180.000000, -90.000259, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3676, "lawnxref", "lasthoose4blue", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(18659, 513.218994, 2619.154053, 1135.861572, 0.000012, 269.999969, -0.000012, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 2718, "cj_ff_acc2", "CJ_FLY_TUBE", 0);
	bank_int= CreateDynamicObject(19081, 513.656006, 2615.463379, 1132.916748, 0.000000, -27.199995, 112.700020, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(13649, 513.206543, 2619.166504, 1136.488770, 0.000012, 179.999969, -0.000012, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10755, "airportrminl_sfse", "bumptile", 0);
	SetDynamicObjectMaterial(bank_int, 0, 3440, "airportpillar", "metalic_64", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(631, 514.998779, 2609.926514, 1133.201050, 0.000000, 0.000188, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 701, "badlands", "newtreeleaves128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(948, 514.964355, 2609.927979, 1131.988159, 0.000000, 0.000188, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 3, 3741, "cehillhse14", "glassblocks1", 0xFFFAEBD7);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 2423, "cj_ff_counters", "CJ_Laminate1", 0);
	bank_int= CreateDynamicObject(19456, 512.782837, 2622.867676, 1133.734863, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(2707, 513.204590, 2617.324951, 1135.873779, 0.000000, 0.000000, -179.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 3440, "airportpillar", "metalic_64", 0);
	bank_int= CreateDynamicObject(19456, 512.782837, 2622.867676, 1137.234741, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(19378, 512.555786, 2624.320068, 1136.744141, 89.999992, 0.000011, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19378, 512.555786, 2622.878662, 1136.744141, 89.999992, 0.000011, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 512.782837, 2615.427246, 1133.734863, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(19081, 511.839325, 2622.817383, 1132.940918, 0.000000, -13.699995, -81.199966, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19081, 511.839325, 2622.816650, 1134.073486, 0.000000, -13.699995, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19456, 512.782837, 2615.427246, 1137.234375, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(19081, 511.839325, 2622.807373, 1134.502197, 0.000000, 18.600006, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(19378, 514.446228, 2608.678223, 1136.744141, 89.999992, 0.000011, 0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2707, 511.920624, 2620.425049, 1135.873779, 0.000007, 359.999969, 45.000084, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 3440, "airportpillar", "metalic_64", 0);
	bank_int= CreateDynamicObject(19378, 512.575562, 2615.410889, 1136.744141, 89.999992, 0.000011, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2707, 511.920380, 2617.856934, 1135.873779, -0.000007, 0.000007, 135.000092, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 3440, "airportpillar", "metalic_64", 0);
	bank_int= CreateDynamicObject(19378, 512.575562, 2613.979492, 1136.744141, 89.999992, 0.000011, -89.999969, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19479, 514.549316, 2606.694580, 1133.014893, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18646, "matcolours", "grey-80-percent", 0x50000000);
	bank_int= CreateDynamicObject(19081, 511.839325, 2615.453369, 1133.291260, 0.000000, -13.699995, 112.700020, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 2
	SetDynamicObjectMaterial(bank_int, 2, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	SetDynamicObjectMaterial(bank_int, 0, 19787, "samplcdtvs1", "samplcdtv1screen", 0);
	bank_int= CreateDynamicObject(2707, 511.388153, 2619.141113, 1135.873779, -0.000014, 359.999969, -89.999847, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 1, 3440, "airportpillar", "metalic_64", 0);
	bank_int= CreateDynamicObject(19379, 510.151855, 2618.707764, 1133.692139, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(18886, 508.631805, 2619.080811, 1133.465942, 0.000000, 90.000015, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2274, 508.874512, 2616.013428, 1132.838867, 0.000014, 0.000000, 180.999939, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3070, "gogsx", "nightvision", 0);
	SetDynamicObjectMaterial(bank_int, 0, 3272, "ele_substation", "des_substa_bit2", 0);
	bank_int= CreateDynamicObject(2274, 508.704529, 2617.074219, 1132.838989, 0.000014, 0.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3070, "gogsx", "nightvision", 0);
	SetDynamicObjectMaterial(bank_int, 0, 3272, "ele_substation", "des_substa_bit2", 0);
	bank_int= CreateDynamicObject(1943, 508.454803, 2619.080811, 1133.472290, 0.000014, 0.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 2225, "cj_hi_fi2", "CJ_SPEAKER3", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19378, 510.585846, 2608.728271, 1136.744141, 90.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19355, 508.119476, 2622.220947, 1133.735107, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(18886, 508.241425, 2619.080811, 1133.468994, 0.000000, 90.000015, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 16640, "a51", "a51_weedoors", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19355, 507.979675, 2622.220947, 1133.735107, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(921, 508.344208, 2617.110840, 1134.580566, 0.000014, 0.000000, 89.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3272, "ele_substation", "des_substa_bit2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 18752, "volcano", "lavalake", 0);
	bank_int= CreateDynamicObject(2707, 508.284027, 2617.151367, 1134.588379, -130.300034, 0.000000, 540.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 18657, "lightbeams", "red-512x512", 0);
	bank_int= CreateDynamicObject(2707, 508.284027, 2617.151367, 1134.588379, 49.500008, 0.000000, 540.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 18657, "lightbeams", "red-512x512", 0);
	bank_int= CreateDynamicObject(19456, 508.122894, 2619.067383, 1136.664795, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(19354, 507.938202, 2619.120361, 1133.034912, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19456, 508.012817, 2619.067383, 1136.664795, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(19355, 508.119476, 2615.812012, 1133.735107, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(19355, 507.979675, 2615.839355, 1133.735107, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(19378, 507.385651, 2625.941162, 1136.744141, 89.999992, 0.000011, 0.000029, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "ab_mottleGrey", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 507.182678, 2625.487305, 1133.734863, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(19354, 507.378204, 2619.120361, 1133.034912, 0.000000, 0.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 100.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(11689, 507.090790, 2619.671387, 1133.459351, 0.000000, 90.000031, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10023, "bigwhitesfe", "liftdoors_kb_256", 0);
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(11689, 507.094696, 2618.424561, 1133.461304, 0.000000, 270.000000, 179.999893, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 10023, "bigwhitesfe", "liftdoors_kb_256", 0);
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2707, 507.034119, 2617.851563, 1134.588379, 23.000019, -179.999908, 179.999893, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 18657, "lightbeams", "red-512x512", 0);
	bank_int= CreateDynamicObject(2707, 507.034119, 2617.851563, 1134.588379, -23.199972, -0.000003, -0.000018, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 18657, "lightbeams", "red-512x512", 0);
	bank_int= CreateDynamicObject(2007, 506.613068, 2624.147217, 1133.450439, 0.000000, -0.000014, -90.000153, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2623.157471, 1133.450439, 0.000000, -0.000022, -90.000198, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2624.147217, 1132.050781, 0.000000, -0.000014, -90.000153, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.612762, 2625.060791, 1133.450439, 0.000000, -0.000045, -0.000288, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2625.136963, 1133.450439, 0.000000, -0.000007, -90.000107, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2623.157471, 1132.050781, 0.000000, -0.000022, -90.000198, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(921, 506.973938, 2617.892090, 1134.580566, 0.000006, 0.000000, -89.999992, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3272, "ele_substation", "des_substa_bit2", 0);
	SetDynamicObjectMaterial(bank_int, 0, 18752, "volcano", "lavalake", 0);
	bank_int= CreateDynamicObject(2007, 506.612762, 2625.060791, 1132.050781, 0.000000, -0.000045, -0.000288, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2625.136963, 1132.050781, 0.000000, -0.000007, -90.000107, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2622.177979, 1133.450439, 0.000000, -0.000029, -90.000244, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2622.177979, 1132.050781, 0.000000, -0.000029, -90.000244, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2626.106689, 1133.450439, 0.000000, 0.000000, -90.000061, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2626.106689, 1132.050781, 0.000000, 0.000000, -90.000061, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2621.178223, 1133.450439, 0.000000, -0.000037, -90.000290, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2621.178223, 1132.050781, 0.000000, -0.000037, -90.000290, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2627.096680, 1133.450439, 0.000000, 0.000007, -90.000015, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2627.096680, 1132.050781, 0.000000, 0.000007, -90.000015, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1213, 506.422668, 2624.859619, 1134.927979, 0.000000, 179.999985, -179.999893, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19941, "goldbar1", "chrome", 0xFFCDCDCD);
	bank_int= CreateDynamicObject(19871, 506.422913, 2624.853271, 1134.996094, 0.000036, 0.000014, 89.999886, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3961, "lee_kitch", "metal1", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(2274, 506.594421, 2616.934570, 1133.169312, 0.000014, 0.000000, 629.999939, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 3070, "gogsx", "nightvision", 0);
	SetDynamicObjectMaterial(bank_int, 0, 3272, "ele_substation", "des_substa_bit2", 0);
	bank_int= CreateDynamicObject(2007, 506.613068, 2615.954346, 1133.450439, 0.000007, 0.000000, -90.000084, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2615.954346, 1132.050781, 0.000007, 0.000000, -90.000084, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 507.182678, 2612.617920, 1133.734863, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(2007, 506.613068, 2614.984619, 1133.450439, 0.000007, -0.000007, -90.000130, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2614.984619, 1132.050781, 0.000007, -0.000007, -90.000130, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2613.994873, 1133.450439, 0.000007, -0.000014, -90.000175, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2613.994873, 1132.050781, 0.000007, -0.000014, -90.000175, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 505.612976, 2625.060791, 1133.450439, 0.000000, -0.000037, -0.000243, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 505.612976, 2625.060791, 1132.050781, 0.000000, -0.000037, -0.000243, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(975, 505.702576, 2621.391846, 1135.402710, 89.999992, 3.388787, -93.388641, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 10023, "bigwhitesfe", "sfe_arch6", 0xFF808080);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFF696969);
	bank_int= CreateDynamicObject(2007, 506.612793, 2613.055664, 1133.450439, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.612793, 2613.055664, 1132.050781, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2613.005127, 1133.450439, 0.000007, -0.000022, -90.000221, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2613.005127, 1132.050781, 0.000007, -0.000022, -90.000221, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2612.025635, 1133.450439, 0.000007, -0.000029, -90.000267, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2612.025635, 1132.050781, 0.000007, -0.000029, -90.000267, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2611.025879, 1133.450439, 0.000007, -0.000037, -90.000313, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 506.613068, 2611.025879, 1132.050781, 0.000007, -0.000037, -90.000313, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 504.633392, 2625.060791, 1133.450439, 0.000000, -0.000029, -0.000197, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 504.633392, 2625.060791, 1132.050781, 0.000000, -0.000029, -0.000197, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 505.622803, 2613.055664, 1133.450439, 0.000000, -0.000007, 179.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 505.622803, 2613.055664, 1132.050781, 0.000000, -0.000007, 179.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(975, 505.702576, 2612.692139, 1135.402710, 89.999992, 3.388787, -93.388641, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 10023, "bigwhitesfe", "sfe_arch6", 0xFF808080);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFF696969);
	bank_int= CreateDynamicObject(19377, 503.810181, 2623.780029, 1131.928955, 0.000000, 90.000023, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14700, "vgshs2int2", "ah_SCMFLR", 0);
	bank_int= CreateDynamicObject(19379, 504.045654, 2618.337891, 1136.255127, 0.000000, 90.000008, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3621, "dockcargo1_las", "dt_ceiling1", 0);
	bank_int= CreateDynamicObject(2007, 503.643616, 2625.060791, 1133.450439, 0.000000, -0.000022, -0.000151, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 503.643616, 2625.060791, 1132.050781, 0.000000, -0.000022, -0.000151, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 504.653015, 2613.055664, 1133.450439, 0.000000, -0.000014, 179.999908, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 504.653015, 2613.055664, 1132.050781, 0.000000, -0.000014, 179.999908, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2418, 503.359924, 2622.864746, 1132.050781, 0.000000, -0.000007, 179.999954, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19377, 503.810181, 2614.150391, 1131.928955, 0.000000, 90.000023, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14700, "vgshs2int2", "ah_SCMFLR", 0);
	bank_int= CreateDynamicObject(2418, 503.359924, 2616.471924, 1132.050781, 0.000000, 0.000000, 180.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(2007, 502.653931, 2625.060791, 1133.450439, 0.000000, -0.000014, -0.000104, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2005, 502.761047, 2620.354248, 1132.680420, 0.000006, 0.000003, 49.400204, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2005, 502.762634, 2620.353271, 1132.410156, 0.000011, 0.000033, 49.400146, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 502.653931, 2625.060791, 1132.050781, 0.000000, -0.000014, -0.000104, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 503.663330, 2613.055664, 1133.450439, 0.000000, -0.000022, 179.999863, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 503.663330, 2613.055664, 1132.050781, 0.000000, -0.000022, 179.999863, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(975, 502.672791, 2621.391846, 1135.402710, 89.999992, 3.388754, -93.388641, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 10023, "bigwhitesfe", "sfe_arch6", 0xFF808080);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFF696969);
	bank_int= CreateDynamicObject(2994, 502.651672, 2620.466553, 1132.510132, 0.000012, -0.000031, 139.400131, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14629, "ab_chande", "ab_goldpipe", 0);
	bank_int= CreateDynamicObject(2005, 502.525452, 2620.556885, 1132.680420, -0.000012, -0.000012, -130.599777, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2005, 502.525452, 2620.556641, 1132.410156, -0.000012, -0.000012, -130.599777, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2418, 502.439972, 2621.533447, 1132.050781, 0.000000, 0.000007, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(19456, 502.362732, 2625.561279, 1133.734863, 0.000000, 0.000000, 270.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(19378, 501.922211, 2626.888672, 1131.964844, 0.000000, 90.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 13724, "docg01_lahills", "chr_flags_256", 0);
	bank_int= CreateDynamicObject(2418, 502.439972, 2615.140625, 1132.050781, 0.000000, 0.000000, 360.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0);
	bank_int= CreateDynamicObject(2007, 501.684143, 2625.060791, 1133.450439, 0.000000, -0.000007, -0.000059, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 501.684143, 2625.060791, 1132.050781, 0.000000, -0.000007, -0.000059, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 502.673553, 2613.055664, 1133.450439, 0.000000, -0.000029, 179.999817, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 502.673553, 2613.055664, 1132.050781, 0.000000, -0.000029, 179.999817, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19378, 501.922211, 2617.277588, 1131.964844, 0.000000, 90.000000, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 13724, "docg01_lahills", "chr_flags_256", 0);
	bank_int= CreateDynamicObject(975, 502.672791, 2612.692139, 1135.402710, 89.999992, 3.388754, -93.388641, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 10023, "bigwhitesfe", "sfe_arch6", 0xFF808080);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFF696969);
	bank_int= CreateDynamicObject(19456, 502.362732, 2612.510254, 1133.734863, 0.000000, 0.000000, 270.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(2005, 501.520996, 2617.132568, 1132.680420, -0.000012, -0.000029, 111.200195, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2005, 501.520905, 2617.132813, 1132.410156, -0.000012, -0.000029, 111.200195, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2994, 501.381622, 2617.063721, 1132.510132, 0.000029, -0.000031, 21.200176, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(bank_int, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 0, 14629, "ab_chande", "ab_goldpipe", 0);
	bank_int= CreateDynamicObject(2005, 501.231049, 2617.020508, 1132.680420, 0.000006, 0.000018, -68.799690, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2005, 501.229553, 2617.019775, 1132.410156, 0.000011, 0.000049, -68.799744, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14581, "ab_mafiasuitea", "goldPillar", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 500.694153, 2625.060791, 1133.450439, 0.000000, 0.000000, -0.000014, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 500.694153, 2625.060791, 1132.050781, 0.000000, 0.000000, -0.000014, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 501.693970, 2613.055664, 1133.450439, 0.000000, -0.000037, 179.999771, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 501.693970, 2613.055664, 1132.050781, 0.000000, -0.000037, 179.999771, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.704224, 2625.060791, 1133.450439, 0.000000, 0.000007, -0.000014, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.704224, 2625.060791, 1132.050781, 0.000000, 0.000007, -0.000014, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 500.694183, 2613.055664, 1133.450439, 0.000000, -0.000045, 179.999725, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 500.694183, 2613.055664, 1132.050781, 0.000000, -0.000045, 179.999725, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(975, 499.652771, 2621.391846, 1135.402710, 89.999992, 3.388754, -93.388641, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 10023, "bigwhitesfe", "sfe_arch6", 0xFF808080);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFF696969);
	bank_int= CreateDynamicObject(2007, 499.202972, 2624.456787, 1133.450439, 0.000007, -0.000037, 89.999657, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2623.457031, 1133.450439, 0.000007, -0.000029, 89.999702, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2624.456787, 1132.050781, 0.000007, -0.000037, 89.999657, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2623.457031, 1132.050781, 0.000007, -0.000029, 89.999702, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2622.477539, 1133.450439, 0.000007, -0.000022, 89.999748, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2622.477539, 1132.050781, 0.000007, -0.000022, 89.999748, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2621.487793, 1133.450439, 0.000007, -0.000014, 89.999794, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2621.487793, 1132.050781, 0.000007, -0.000014, 89.999794, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2620.498047, 1133.450439, 0.000007, -0.000007, 89.999840, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2620.498047, 1132.050781, 0.000007, -0.000007, 89.999840, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2619.528320, 1133.450439, 0.000007, 0.000000, 89.999886, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2619.528320, 1132.050781, 0.000007, 0.000000, 89.999886, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2618.538330, 1133.450439, 0.000007, 0.000007, 89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2618.538330, 1132.050781, 0.000007, 0.000007, 89.999931, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2617.544922, 1133.450439, 0.000014, -0.000037, 89.999634, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2617.544922, 1132.050781, 0.000014, -0.000037, 89.999634, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2616.545166, 1133.450439, 0.000014, -0.000029, 89.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2616.545166, 1132.050781, 0.000014, -0.000029, 89.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.714233, 2613.055664, 1133.450439, 0.000000, -0.000051, 179.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.714233, 2613.055664, 1132.050781, 0.000000, -0.000051, 179.999680, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 498.702850, 2625.447754, 1133.441040, 0.000007, -0.000037, 269.999664, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 498.702850, 2625.447754, 1132.050781, 0.000007, -0.000037, 269.999664, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19545, 499.603668, 2613.549805, 1135.420410, 0.000000, 0.000007, 0.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 18835, "mickytextures", "whiteforletters", 0);
	bank_int= CreateDynamicObject(2007, 499.202972, 2615.565674, 1133.450439, 0.000014, -0.000022, 89.999725, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2615.565674, 1132.050781, 0.000014, -0.000022, 89.999725, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 498.662567, 2620.661377, 1133.734863, 0.000000, 0.000000, 360.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	bank_int= CreateDynamicObject(975, 499.652771, 2612.692139, 1135.402710, 89.999992, 3.388754, -93.388641, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(bank_int, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(bank_int, 1, 10023, "bigwhitesfe", "sfe_arch6", 0xFF808080);
	SetDynamicObjectMaterial(bank_int, 0, 19962, "samproadsigns", "materialtext1", 0xFF696969);
	bank_int= CreateDynamicObject(2007, 499.202972, 2614.575928, 1133.450439, 0.000014, -0.000014, 89.999771, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2614.575928, 1132.050781, 0.000014, -0.000014, 89.999771, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(1213, 499.422974, 2613.316162, 1134.927979, 0.000000, 179.999985, -179.999847, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 19941, "goldbar1", "chrome", 0xFFCDCDCD);
	bank_int= CreateDynamicObject(19871, 499.423218, 2613.309814, 1134.996094, 0.000044, 0.000014, 89.999863, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 3961, "lee_kitch", "metal1", 0xFFE2E2E2);
	bank_int= CreateDynamicObject(2007, 499.202972, 2613.586182, 1133.450439, 0.000014, -0.000007, 89.999817, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2613.586182, 1132.050781, 0.000014, -0.000007, 89.999817, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2612.616455, 1133.450439, 0.000014, 0.000000, 89.999863, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2612.616455, 1132.050781, 0.000014, 0.000000, 89.999863, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2611.626465, 1133.450439, 0.000014, 0.000007, 89.999908, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(2007, 499.202972, 2611.626465, 1132.050781, 0.000014, 0.000007, 89.999908, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 14708, "labig1int2", "vgsclubdoor01_128", 0xFFFFFFFF);
	bank_int= CreateDynamicObject(19456, 498.662567, 2611.031982, 1133.734863, 0.000000, 0.000000, 360.000000, -1, 3, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(bank_int, 0, 4829, "airport_las", "liftdoorsac256", 0);
	CreateDynamicObject(1654, 508.078003, 2619.098145, 1082.634033, 0.000000, 0.000000, 90.000000, -1, 3, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
}