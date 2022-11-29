#include <a_samp>
#include <streamer>

public  OnGameModeInit()
{
	LSPDExterior();
	LSFDExterior();
    CPExterior();
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