#include <a_samp>
#include <streamer>

public OnGameModeInit()
{
	LSPDExterior();
	LSFDExterior();
    CPExterior();
    LSFDInterior();
    BankInterior();
    BikerInt();
    BikerInt2();
    AS_Int();
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

BikerInt()
{
	new biker;
	biker = CreateDynamicObject(19378, 281.955383, -87.681969, 1600.000000, 0.000000, 90.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "carpbroth1", 0);
	biker = CreateDynamicObject(19378, 281.955414, -78.049797, 1600.000000, 0.000000, 90.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "carpbroth1", 0);
	biker = CreateDynamicObject(19378, 281.955414, -68.416496, 1600.000000, 0.000000, 90.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 16322, "a51_stores", "des_ghotwood1", 0);
	biker = CreateDynamicObject(19378, 299.713715, -81.712006, 1600.040039, 0.000000, 90.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14420, "dr_gsbits", "mp_gs_carpet", 0);
	biker = CreateDynamicObject(19378, 292.453796, -68.416496, 1600.000000, 0.000000, 90.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 16322, "a51_stores", "des_ghotwood1", 0);
	biker = CreateDynamicObject(19446, 297.492493, -89.563202, 1601.796143, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 286.438080, -89.563171, 1601.796143, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 289.741608, -93.527802, 1601.796143, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 291.262909, -88.794502, 1601.796143, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 292.781311, -93.527100, 1601.796143, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 297.432983, -85.706779, 1601.796143, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 285.511475, -86.608681, 1601.796143, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 280.779205, -81.877998, 1601.796143, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(14387, 282.994598, -70.771103, 1602.548584, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(19446, 279.316528, -77.640167, 1601.796143, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 297.433014, -76.073402, 1601.796143, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(19378, 282.727814, -84.405602, 1603.482910, 0.000000, 90.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 17005, "farmhouse", "sjmbigold2", 0);
	biker = CreateDynamicObject(19378, 276.386902, -74.799591, 1603.482910, 0.000000, 90.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 17005, "farmhouse", "sjmbigold2", 0);
	biker = CreateDynamicObject(14387, 285.824310, -70.798103, 1600.584839, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(19446, 282.025330, -73.122437, 1601.796143, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0);
	biker = CreateDynamicObject(19378, 293.222504, -90.826797, 1603.482910, 0.000000, 90.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 17005, "farmhouse", "sjmbigold2", 0);
	biker = CreateDynamicObject(14726, 288.710999, -83.153397, 1602.234619, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(14726, 286.384308, -83.506401, 1602.234619, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(14726, 291.512695, -87.873596, 1602.234619, 0.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(14726, 290.576996, -85.548103, 1602.234619, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(14726, 284.515015, -81.073303, 1602.234619, 0.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(14726, 283.710907, -78.754799, 1602.234619, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(14726, 281.851990, -76.171402, 1602.234619, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(14726, 279.515808, -76.698799, 1602.234619, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(19446, 284.938110, -89.563202, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 297.492493, -89.563202, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 291.262909, -88.794502, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 292.781311, -93.527100, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 289.741608, -93.527802, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 297.433014, -85.706802, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 285.512299, -93.027298, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 280.779205, -81.877998, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 277.949127, -79.350327, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 297.433014, -76.073402, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 298.641846, -71.269478, 1601.796143, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(19442, 286.759186, -73.842796, 1601.796143, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0);
	biker = CreateDynamicObject(19446, 282.025604, -74.560699, 1601.796143, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 285.238312, -74.560699, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 285.238312, -73.122398, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 282.028198, -73.122398, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 282.028198, -74.560699, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19386, 279.349335, -74.559036, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0);
	biker = CreateDynamicObject(19442, 286.759186, -73.842796, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0);
	biker = CreateDynamicObject(19442, 280.507294, -73.839798, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0);
	biker = CreateDynamicObject(19386, 292.225891, -71.269501, 1601.796143, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0);
	biker = CreateDynamicObject(19446, 285.806000, -71.269501, 1601.796143, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 298.641815, -71.269501, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 285.806000, -71.269501, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 292.225891, -71.269501, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 276.178589, -71.269501, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19386, 277.741150, -72.947403, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0);
	biker = CreateDynamicObject(19446, 277.741089, -79.366898, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 272.959717, -79.283173, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 271.588593, -75.440842, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 285.512299, -83.399101, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(3498, 287.589813, -80.073219, 1604.518066, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 1, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(3498, 280.637390, -79.788963, 1604.518066, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 1, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(3498, 287.506592, -86.606339, 1604.518066, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 1, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(3498, 294.528748, -86.813499, 1604.518066, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 1, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(19386, 285.512299, -86.607498, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0);
	biker = CreateDynamicObject(19378, 282.727814, -94.037598, 1603.482910, 0.000000, 90.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 17005, "farmhouse", "sjmbigold2", 0);
	biker = CreateDynamicObject(19377, 280.313110, -87.053459, 1603.488892, 0.000000, 90.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 17005, "farmhouse", "sjmbigold2", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 280.670563, -89.251297, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 280.708282, -82.866859, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 278.872437, -87.009003, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(11686, 294.568268, -84.619324, 1600.039795, 0.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 5
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 19480, "signsurf", "sign", 0);
	SetDynamicObjectMaterial(biker, 2, 19480, "signsurf", "sign", 0);
	SetDynamicObjectMaterial(biker, 3, 14771, "int_brothelint3", "Bow_bar_panelfront", 0);
	SetDynamicObjectMaterial(biker, 4, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(11686, 294.568298, -79.828400, 1600.039795, 0.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 5
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 19480, "signsurf", "sign", 0);
	SetDynamicObjectMaterial(biker, 2, 19480, "signsurf", "sign", 0);
	SetDynamicObjectMaterial(biker, 3, 14771, "int_brothelint3", "Bow_bar_panelfront", 0);
	SetDynamicObjectMaterial(biker, 4, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(11686, 296.567413, -86.727097, 1600.037842, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 5
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 19480, "signsurf", "sign", 0);
	SetDynamicObjectMaterial(biker, 2, 19480, "signsurf", "sign", 0);
	SetDynamicObjectMaterial(biker, 3, 14771, "int_brothelint3", "Bow_bar_panelfront", 0);
	SetDynamicObjectMaterial(biker, 4, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(19446, 298.883545, -77.429443, 1601.796143, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 294.149811, -72.696098, 1601.796143, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 298.883514, -77.429398, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 294.149811, -72.696098, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 293.978424, -66.491257, 1601.796143, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 286.697388, -66.466225, 1601.796143, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 290.612274, -65.318199, 1601.796143, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 287.464905, -61.090401, 1601.794067, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19442, 286.746887, -65.821938, 1601.794067, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19442, 293.945801, -65.821899, 1601.794067, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19442, 290.384888, -65.821899, 1601.794067, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 289.665588, -61.088902, 1601.794067, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 291.102997, -61.088299, 1601.794067, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 293.226593, -61.089802, 1601.794067, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19442, 272.162292, -75.345200, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19442, 272.162292, -71.168297, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19442, 272.162292, -79.373001, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 267.424408, -71.886002, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 267.429810, -74.627197, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 267.428894, -76.064003, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 267.427185, -78.654800, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19442, 279.466461, -83.015541, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19442, 279.466492, -89.122803, 1605.295288, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 274.733704, -83.733902, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 274.733887, -88.406998, 1605.295288, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19378, 299.372528, -81.195213, 1603.482910, 0.000000, 90.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 17005, "farmhouse", "sjmbigold2", 0);
	biker = CreateDynamicObject(14726, 295.781219, -82.926270, 1602.234619, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(14726, 293.448517, -83.792847, 1602.234619, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(14726, 295.786285, -79.451080, 1602.234619, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(1502, 291.439301, -71.295799, 1600.028687, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 1, 14738, "whorebar", "AH_whoredoor", 0);
	biker = CreateDynamicObject(1502, 285.531189, -87.356400, 1603.527832, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	biker = CreateDynamicObject(1502, 277.771393, -73.694504, 1603.527832, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	biker = CreateDynamicObject(1502, 278.563293, -74.589302, 1603.527832, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 1, 8423, "pirateship01", "tislandwdbox01_128", 0);
	biker = CreateDynamicObject(1569, 287.804016, -65.363876, 1600.563354, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3241, "conhooses", "des_whitewin1", 0xFFFFFFFF);
	biker = CreateDynamicObject(1569, 291.405487, -65.363747, 1600.563354, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3241, "conhooses", "des_whitewin1", 0xFFFFFFFF);
	biker = CreateDynamicObject(1569, 271.643463, -78.131317, 1604.103882, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3241, "conhooses", "des_whitewin1", 0xFFFFFFFF);
	biker = CreateDynamicObject(1569, 271.631958, -74.000687, 1604.103882, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3241, "conhooses", "des_whitewin1", 0xFFFFFFFF);
	biker = CreateDynamicObject(1569, 278.910065, -85.820351, 1604.103882, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 17503, "furniture_lae2", "inwindow4", 0xFFFFFFFF);
	biker = CreateDynamicObject(1569, 278.919403, -87.822884, 1604.103882, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 17503, "furniture_lae2", "inwindow4", 0xFFFFFFFF);
	biker = CreateDynamicObject(3260, 283.847748, -81.469337, 1604.506836, -10.200002, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3900, "station", "ledge2_64H", 0xFFFFFFFF);
	biker = CreateDynamicObject(11688, 297.249298, -79.311028, 1602.107544, 0.000000, 270.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 14500, "imm_roomss", "Bow_bar_top", 0);
	SetDynamicObjectMaterial(biker, 3, 14537, "pdomebar", "club_bottles1_SFW", 0);
	biker = CreateDynamicObject(19071, 286.444427, -73.722694, 1599.108398, 180.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 17005, "farmhouse", "sjmbigold2", 0xFFFFFFFF);
	biker = CreateDynamicObject(19325, 290.041687, -81.873817, 1608.925903, 180.000000, 90.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 16326, "des_byoffice", "des_bywin1", 0xFFFFFFFF);
	biker = CreateDynamicObject(11714, 291.255249, -88.701248, 1601.303955, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3187, "cxref_quarrytest", "gs_door1", 0xFFFFFFFF);
	biker = CreateDynamicObject(2588, 297.280945, -84.829628, 1602.088501, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18028, "cj_bar2", "GB_nastybar17", 0xFFFFFFFF);
	biker = CreateDynamicObject(11714, 285.605225, -84.161301, 1601.303955, 0.000007, -0.000007, 179.999908, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 2988, "kcomp_gx", "kmwood_gate", 0xFFFFFFFF);
	biker = CreateDynamicObject(11714, 285.605225, -87.161301, 1601.303955, -0.000007, 0.000007, -0.000007, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 2988, "kcomp_gx", "kmwood_gate", 0xFFFFFFFF);
	biker = CreateDynamicObject(19071, 314.074615, -73.722694, 1607.947510, 360.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 17005, "farmhouse", "sjmbigold2", 0xFFFFFFFF);
	biker = CreateDynamicObject(19071, 267.434662, -73.722694, 1607.947510, 360.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 17005, "farmhouse", "sjmbigold2", 0xFFFFFFFF);
	biker = CreateDynamicObject(19071, 275.784729, -115.202629, 1607.950439, 360.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 17005, "farmhouse", "sjmbigold2", 0xFFFFFFFF);
	biker = CreateDynamicObject(19071, 267.564667, -73.722694, 1608.007568, 360.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0xFFFFFFFF);
	biker = CreateDynamicObject(19071, 313.984833, -73.722694, 1608.007568, 360.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0xFFFFFFFF);
	biker = CreateDynamicObject(19071, 268.384735, -106.102684, 1608.007568, 360.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0xFFFFFFFF);
	biker = CreateDynamicObject(19071, 268.384735, -54.792679, 1608.007568, 360.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0xFFFFFFFF);
	biker = CreateDynamicObject(19325, 290.041687, -85.993851, 1608.925903, 180.000000, 90.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 16326, "des_byoffice", "des_bywin1", 0xFFFFFFFF);
	biker = CreateDynamicObject(19325, 290.041687, -87.063835, 1608.915894, 180.000000, 90.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 16326, "des_byoffice", "des_bywin1", 0xFFFFFFFF);
	biker = CreateDynamicObject(19325, 290.041687, -77.763809, 1608.925903, 180.000000, 90.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 16326, "des_byoffice", "des_bywin1", 0xFFFFFFFF);
	biker = CreateDynamicObject(2799, 291.278137, -82.748474, 1600.601318, 0.000000, 0.000007, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker, 0, 13590, "kickstart", "ah_logend", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 3895, "inditaly", "Plaindoor_64V", 0);
	SetDynamicObjectMaterial(biker, 2, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2799, 291.278137, -82.748474, 1600.599365, 0.000007, 0.000000, 93.599953, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker, 0, 13590, "kickstart", "ah_logend", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 3895, "inditaly", "Plaindoor_64V", 0);
	SetDynamicObjectMaterial(biker, 2, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2799, 289.548309, -79.858490, 1600.601318, 0.000000, 0.000014, -37.100002, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker, 0, 13590, "kickstart", "ah_logend", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 3895, "inditaly", "Plaindoor_64V", 0);
	SetDynamicObjectMaterial(biker, 2, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2799, 289.548309, -79.858490, 1600.599365, 0.000014, 0.000000, 56.499935, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker, 0, 13590, "kickstart", "ah_logend", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 3895, "inditaly", "Plaindoor_64V", 0);
	SetDynamicObjectMaterial(biker, 2, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2799, 292.308380, -79.038506, 1600.601318, -0.000003, 0.000019, -11.199995, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker, 0, 13590, "kickstart", "ah_logend", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 3895, "inditaly", "Plaindoor_64V", 0);
	SetDynamicObjectMaterial(biker, 2, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2799, 292.308380, -79.038506, 1600.599365, 0.000019, 0.000003, 82.399918, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker, 0, 13590, "kickstart", "ah_logend", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 3895, "inditaly", "Plaindoor_64V", 0);
	SetDynamicObjectMaterial(biker, 2, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2799, 282.772766, -77.639397, 1600.601318, -0.000006, 0.000028, 24.499989, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker, 0, 13590, "kickstart", "ah_logend", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 3895, "inditaly", "Plaindoor_64V", 0);
	SetDynamicObjectMaterial(biker, 2, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2799, 282.806580, -77.672119, 1600.599365, 0.000029, 0.000003, 118.099884, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker, 0, 13590, "kickstart", "ah_logend", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 3895, "inditaly", "Plaindoor_64V", 0);
	SetDynamicObjectMaterial(biker, 2, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2799, 285.188538, -76.358444, 1600.601318, -0.000000, 0.000035, 53.399975, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker, 0, 13590, "kickstart", "ah_logend", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 3895, "inditaly", "Plaindoor_64V", 0);
	SetDynamicObjectMaterial(biker, 2, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2799, 285.188538, -76.358444, 1600.599365, 0.000035, 0.000000, 146.999863, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker, 0, 13590, "kickstart", "ah_logend", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 3895, "inditaly", "Plaindoor_64V", 0);
	SetDynamicObjectMaterial(biker, 2, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(19325, 290.041687, -81.873817, 1608.925903, 180.000000, 90.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 16326, "des_byoffice", "des_bywin1", 0xFFFFFFFF);
	biker = CreateDynamicObject(19325, 290.041687, -77.763809, 1608.925903, 180.000000, 90.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 16326, "des_byoffice", "des_bywin1", 0xFFFFFFFF);
	biker = CreateDynamicObject(19325, 279.432159, -78.253830, 1601.414917, 720.000000, 180.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 16098, "des_boneyard", "Was_meshfence", 0xFFFFFFFF);
	biker = CreateDynamicObject(19325, 292.991730, -81.843811, 1606.836182, 540.000000, 180.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 8423, "pirateship01", "tislndshpmast", 0xFFFFFFFF);
	biker = CreateDynamicObject(19325, 292.991730, -81.843811, 1606.836182, 540.000000, 180.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 8423, "pirateship01", "tislndshpmast", 0xFFFFFFFF);
	biker = CreateDynamicObject(19325, 292.991730, -81.843811, 1606.836182, 540.000000, 180.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 8423, "pirateship01", "tislndshpmast", 0xFFFFFFFF);
	biker = CreateDynamicObject(19325, 292.991730, -81.843811, 1606.836182, 540.000000, 180.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 8423, "pirateship01", "tislndshpmast", 0xFFFFFFFF);
	biker = CreateDynamicObject(19325, 292.991730, -81.843811, 1606.836182, 540.000000, 180.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 8423, "pirateship01", "tislndshpmast", 0xFFFFFFFF);
	biker = CreateDynamicObject(11688, 297.249298, -80.301010, 1602.107544, 0.000000, 270.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 14500, "imm_roomss", "Bow_bar_top", 0);
	SetDynamicObjectMaterial(biker, 3, 12844, "cos_liquorstore", "cos_beercab", 0);
	biker = CreateDynamicObject(11688, 297.249298, -81.300972, 1602.107544, 0.000000, 270.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 14500, "imm_roomss", "Bow_bar_top", 0);
	SetDynamicObjectMaterial(biker, 3, 14537, "pdomebar", "club_bottles1_SFW", 0);
	biker = CreateDynamicObject(19378, 291.196930, -65.999580, 1603.603027, 0.000000, 90.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 17005, "farmhouse", "sjmbigold2", 0);
	biker = CreateDynamicObject(19446, 298.048584, -71.241257, 1601.796143, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(19446, 286.358582, -71.241257, 1601.796143, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14407, "carter_block", "mp_carter_sep", 0xFFFFFFFF);
	biker = CreateDynamicObject(2641, 287.698212, -89.419441, 1605.711914, 0.000000, 270.000000, 179.999954, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 3900, "station", "ledge2_64H", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 17503, "furniture_lae2", "inwindow4", 0);
	biker = CreateDynamicObject(2641, 287.698212, -89.419441, 1604.881104, 0.000000, 270.000000, 179.999954, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 3900, "station", "ledge2_64H", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 17503, "furniture_lae2", "inwindow4", 0);
	biker = CreateDynamicObject(2641, 295.298157, -89.419441, 1605.711914, 0.000000, 270.000000, 179.999908, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 3900, "station", "ledge2_64H", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 17503, "furniture_lae2", "inwindow4", 0);
	biker = CreateDynamicObject(2641, 295.298157, -89.419441, 1604.881104, 0.000000, 270.000000, 179.999908, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 3900, "station", "ledge2_64H", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 17503, "furniture_lae2", "inwindow4", 0);
	biker = CreateDynamicObject(2641, 297.298035, -79.609398, 1605.711914, -0.000007, 270.000000, -90.000053, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 3900, "station", "ledge2_64H", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 17503, "furniture_lae2", "inwindow4", 0);
	biker = CreateDynamicObject(2641, 297.298035, -79.609398, 1604.881104, -0.000007, 270.000000, -90.000053, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 3900, "station", "ledge2_64H", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 17503, "furniture_lae2", "inwindow4", 0);
	biker = CreateDynamicObject(2641, 297.298035, -87.399391, 1605.711914, -0.000014, 270.000000, -90.000031, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 3900, "station", "ledge2_64H", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 17503, "furniture_lae2", "inwindow4", 0);
	biker = CreateDynamicObject(2641, 297.298035, -87.399391, 1604.881104, -0.000014, 270.000000, -90.000031, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 3900, "station", "ledge2_64H", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 17503, "furniture_lae2", "inwindow4", 0);
	biker = CreateDynamicObject(2641, 297.298035, -83.659401, 1605.711914, -0.000022, 270.000000, -90.000008, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 3900, "station", "ledge2_64H", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 17503, "furniture_lae2", "inwindow4", 0);
	biker = CreateDynamicObject(2641, 297.298035, -83.659401, 1604.881104, -0.000022, 270.000000, -90.000008, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 3900, "station", "ledge2_64H", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 17503, "furniture_lae2", "inwindow4", 0);
	biker = CreateDynamicObject(19968, 291.873077, -85.944435, 1602.022583, 0.000000, 179.999985, 144.700012, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 6865, "vgndwntwn23", "steaksign1_256", 0xFFFFFFFF);
	biker = CreateDynamicObject(2948, 297.355835, -83.820358, 1600.099243, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18028, "cj_bar2", "GB_nastybar15", 0xFFFFFFFF);
	biker = CreateDynamicObject(2660, 294.095612, -78.500549, 1600.743164, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18081, "cj_barb", "barberschr3", 0xFFFFFFFF);
	biker = CreateDynamicObject(2660, 294.095612, -78.500549, 1600.743164, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18081, "cj_barb", "barberschr3", 0xFFFFFFFF);
	biker = CreateDynamicObject(2660, 294.095612, -78.500549, 1600.743164, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18081, "cj_barb", "barberschr3", 0xFFFFFFFF);
	biker = CreateDynamicObject(2660, 294.095612, -78.500549, 1600.743164, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18081, "cj_barb", "barberschr3", 0xFFFFFFFF);
	biker = CreateDynamicObject(2660, 294.525574, -78.720543, 1601.173584, 270.000000, 0.000000, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18081, "cj_barb", "barberschr3", 0xFFFFFFFF);
	biker = CreateDynamicObject(2660, 294.525574, -78.720543, 1601.173584, 270.000000, 0.000000, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18081, "cj_barb", "barberschr3", 0xFFFFFFFF);
	biker = CreateDynamicObject(2660, 294.525574, -78.720543, 1601.173584, 270.000000, 0.000000, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18081, "cj_barb", "barberschr3", 0xFFFFFFFF);
	biker = CreateDynamicObject(2660, 294.525574, -78.720543, 1601.173584, 270.000000, 0.000000, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18081, "cj_barb", "barberschr3", 0xFFFFFFFF);
	biker = CreateDynamicObject(1486, 294.561707, -81.194252, 1601.270142, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "BeerGlass", 0xFFFFFFFF);
	biker = CreateDynamicObject(1486, 294.321594, -79.974266, 1601.270142, 0.000000, 0.000000, -48.099998, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "BeerGlass", 0xFFFFFFFF);
	biker = CreateDynamicObject(1486, 294.347015, -83.686287, 1601.270142, 0.000000, 0.000000, 25.099997, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "BeerGlass", 0xFFFFFFFF);
	biker = CreateDynamicObject(1486, 294.613068, -85.527283, 1601.270142, 0.000000, 0.000000, 125.699997, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "BeerGlass", 0xFFFFFFFF);
	biker = CreateDynamicObject(1486, 294.478943, -85.340523, 1601.270142, 0.000000, 0.000000, 50.099998, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "BeerGlass", 0xFFFFFFFF);
	biker = CreateDynamicObject(1486, 294.395081, -82.572243, 1601.270142, 0.000000, 0.000000, -15.900005, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "BeerGlass", 0xFFFFFFFF);
	biker = CreateDynamicObject(1520, 294.386963, -79.836670, 1601.181641, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "BeerGlass2", 0xFFFFFFFF);
	biker = CreateDynamicObject(1520, 294.386963, -79.836670, 1601.181641, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "BeerGlass2", 0xFFFFFFFF);
	biker = CreateDynamicObject(1520, 294.596985, -84.546677, 1601.181641, 0.000000, 0.000000, 66.599998, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "BeerGlass2", 0xFFFFFFFF);
	biker = CreateDynamicObject(1520, 294.481567, -86.022255, 1601.181641, 0.000000, 0.000000, 144.899994, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "BeerGlass2", 0xFFFFFFFF);
	biker = CreateDynamicObject(2588, 297.280945, -82.069641, 1602.088501, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18028, "cj_bar2", "bbar_stuff2", 0xFFFFFFFF);
	biker = CreateDynamicObject(1541, 294.934357, -81.973572, 1601.296509, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 5, 3961, "lee_kitch", "SinkL", 0);
	biker = CreateDynamicObject(1541, 294.934357, -85.053574, 1601.296509, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 2, 14811, "lee_strip2_1", "VodkaBottle", 0);
	SetDynamicObjectMaterial(biker, 5, 3961, "lee_kitch", "SinkL", 0);
	biker = CreateDynamicObject(2662, 294.002136, -73.148590, 1605.332275, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 12937, "sw_oldshack", "sw_cabshut01", 0xFFFFFFFF);
	biker = CreateDynamicObject(2685, 297.238312, -79.988792, 1602.784912, -13.600000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 12960, "sw_church", "sw_confess", 0xFFFFFFFF);
	biker = CreateDynamicObject(2661, 297.249969, -79.114876, 1602.855713, -9.800000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 6865, "vgndwntwn23", "steaksign1_256", 0xFFFFFFFF);
	biker = CreateDynamicObject(2894, 294.531219, -83.178177, 1601.134277, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14802, "lee_bdupsflat", "Bdup_punters", 0xFFFFFFFF);
	biker = CreateDynamicObject(19325, 290.272186, -71.393875, 1606.025879, 900.000000, 180.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 16098, "des_boneyard", "Was_meshfence", 0xFFFFFFFF);
	biker = CreateDynamicObject(2662, 294.002136, -75.418587, 1605.332275, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 12937, "sw_oldshack", "sw_cabshut01", 0xFFFFFFFF);
	biker = CreateDynamicObject(2404, 293.696350, -73.970154, 1601.226074, 13.400003, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 15046, "svcunthoose", "ab_flakeywall", 0xFFFFFFFF);
	biker = CreateDynamicObject(2715, 285.439606, -88.253380, 1605.400269, 0.000000, -2.999999, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14737, "whorewallstuff", "ah_painting1", 0xFFFFFFFF);
	biker = CreateDynamicObject(1759, 283.221985, -83.682465, 1603.552979, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 13003, "ce_racestart", "CJ_TARTAN", 0);
	SetDynamicObjectMaterial(biker, 1, 1453, "break_farm", "CJ_DarkWood", 0);
	biker = CreateDynamicObject(2069, 287.067352, -70.789352, 1600.207764, 0.000000, 12.899996, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker, 1, 2903, "kmb_chute", "parachute", 0);
	SetDynamicObjectMaterial(biker, 2, 14707, "labig3int2", "Soil", 0);
	SetDynamicObjectMaterial(biker, 3, 14708, "labig1int2", "HS_vase", 0);
	biker = CreateDynamicObject(2063, 288.753754, -70.836777, 1600.946777, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 12937, "sw_oldshack", "sw_cabshut01", 0);
	SetDynamicObjectMaterial(biker, 1, 8423, "pirateship01", "tislandwall01_128", 0);
	biker = CreateDynamicObject(2065, 290.577271, -70.701820, 1600.080811, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 18265, "w_town3cs_t", "inddoor5", 0);
	SetDynamicObjectMaterial(biker, 1, 14760, "sfhosemed2", "ah_marcorn1", 0);
	biker = CreateDynamicObject(2060, 288.741638, -70.880539, 1600.972168, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3904, "libertyfar", "redbuild06a", 0);
	biker = CreateDynamicObject(2058, 288.709320, -70.429260, 1600.133667, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 7981, "vgssairport02", "drivecare_64", 0);
	biker = CreateDynamicObject(2057, 289.302704, -70.846443, 1601.897827, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 1, 17944, "lngblok_lae2", "downtsign14_LA", 0);
	biker = CreateDynamicObject(2056, 288.843201, -67.558350, 1600.901123, 270.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2060, 287.754242, -70.382072, 1600.491699, 6.899989, -70.300011, -78.000015, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1328, "labins01_la", "bins7_LAe2", 0);
	biker = CreateDynamicObject(2043, 289.469391, -70.814865, 1600.484375, 0.000000, 0.000000, 94.600006, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 2936, "kmb_rckx", "larock256", 0);
	SetDynamicObjectMaterial(biker, 1, 2942, "kmb_atmx", "kmb_chip1", 0);
	biker = CreateDynamicObject(2029, 288.562866, -68.587578, 1600.081909, 0.000000, 0.000000, 76.799934, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 2988, "kcomp_gx", "kmwood_gate", 0);
	biker = CreateDynamicObject(2056, 288.843201, -67.558350, 1600.901123, 270.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 288.843201, -67.558350, 1600.901123, 270.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 288.413239, -68.558350, 1600.901123, 270.000000, 0.000000, -54.200001, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 288.413239, -68.558350, 1600.901123, 270.000000, 0.000000, -54.200001, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 288.413239, -68.558350, 1600.901123, 270.000000, 0.000000, -54.200001, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 288.413239, -68.558350, 1600.901123, 270.000000, 0.000000, -54.200001, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(3111, 288.895111, -67.677834, 1600.118042, 0.000000, 0.000000, 24.500004, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14735, "newcrak", "ab_rug", 0xFFFFFFFF);
	biker = CreateDynamicObject(1758, 287.062012, -67.405357, 1600.078491, 0.000000, 0.000000, 52.899994, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 18058, "mp_diner2", "mp_diner_table", 0);
	SetDynamicObjectMaterial(biker, 1, 14482, "motel_skuzwin", "motel_curt1", 0);
	biker = CreateDynamicObject(19371, 293.952820, -68.464523, 1601.796143, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 4849, "ground3_las", "rubbish", 0xFFFFFFFF);
	biker = CreateDynamicObject(14875, 292.409363, -68.419960, 1600.918823, 0.000000, 0.000000, 630.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 2891, "kmb_packet", "kmb_packet", 0xFFFFFFFF);
	biker = CreateDynamicObject(19918, 288.728333, -68.298714, 1600.881714, 0.000000, 0.000000, 103.699997, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 2891, "kmb_packet", "kmb_packet", 0xFFFFFFFF);
	biker = CreateDynamicObject(1851, 288.510956, -67.888527, 1601.015991, 3.799998, -3.399997, -37.100014, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14802, "lee_bdupsflat", "mp_Gen_Bin_Bag", 0);
	biker = CreateDynamicObject(1951, 288.617584, -67.222435, 1601.055786, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "BeerGlass2", 0xFFFFFFFF);
	biker = CreateDynamicObject(1956, 288.704468, -68.825264, 1600.882813, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 5
	SetDynamicObjectMaterial(biker, 0, 14832, "lee_stripclub", "Strip_wood_floor", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 14735, "newcrak", "AH_flrwllM", 0);
	SetDynamicObjectMaterial(biker, 2, 14832, "lee_stripclub", "Strip_wood_floor", 0);
	SetDynamicObjectMaterial(biker, 3, 14832, "lee_stripclub", "Strip_wood_floor", 0);
	SetDynamicObjectMaterial(biker, 4, 14832, "lee_stripclub", "Strip_wood_floor", 0);
	biker = CreateDynamicObject(2050, 286.834991, -69.843475, 1601.876709, 0.000000, 0.000000, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 8421, "pirateland", "tislndskullrock_256", 0);
	biker = CreateDynamicObject(1736, 287.105408, -67.614838, 1602.449341, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 8423, "pirateship01", "tislandwdbox02_64", 0xFFFFFFFF);
	biker = CreateDynamicObject(2055, 286.851013, -68.519997, 1601.540527, 0.000000, -15.399997, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 5716, "sunrise02_lawn", "manndoorc_law", 0);
	biker = CreateDynamicObject(2120, 289.877594, -67.689919, 1600.666138, 0.000000, 0.000000, 69.000008, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14754, "sfhsb3", "ah_wpaper10", 0);
	SetDynamicObjectMaterial(biker, 1, 3900, "station", "ledge2_64H", 0);
	biker = CreateDynamicObject(2120, 289.949066, -69.484802, 1600.666138, 0.000000, 0.000000, -56.599995, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14754, "sfhsb3", "ah_wpaper10", 0);
	SetDynamicObjectMaterial(biker, 1, 3900, "station", "ledge2_64H", 0);
	biker = CreateDynamicObject(3077, 276.494568, -76.290230, 1603.519165, 0.000000, 0.000000, 81.599983, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 5154, "dkcargoshp_las2", "bandingblue_64", 0);
	SetDynamicObjectMaterial(biker, 1, 14859, "gf1", "mp_cooch_frame", 0);
	biker = CreateDynamicObject(1670, 291.275513, -82.829468, 1600.795166, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "Liquer", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 6, 14811, "lee_strip2_1", "BeerGlass2", 0);
	biker = CreateDynamicObject(1670, 292.405640, -79.079498, 1600.795166, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "Liquer", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 6, 14811, "lee_strip2_1", "BeerGlass2", 0);
	biker = CreateDynamicObject(1670, 289.685699, -79.979515, 1600.795166, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "Liquer", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 6, 14811, "lee_strip2_1", "BeerGlass2", 0);
	biker = CreateDynamicObject(1670, 285.255676, -76.369514, 1600.795166, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "Liquer", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 6, 14811, "lee_strip2_1", "BeerGlass2", 0);
	biker = CreateDynamicObject(1670, 282.885681, -77.649506, 1600.795166, 0.000000, 0.000000, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14811, "lee_strip2_1", "Liquer", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 6, 14811, "lee_strip2_1", "BeerGlass2", 0);
	biker = CreateDynamicObject(2350, 293.751099, -85.151802, 1600.451294, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	SetDynamicObjectMaterial(biker, 1, 14500, "imm_roomss", "motel_wall2", 0);
	biker = CreateDynamicObject(2350, 293.391113, -83.301811, 1600.451294, 0.000000, 0.000000, -27.999998, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	SetDynamicObjectMaterial(biker, 1, 14500, "imm_roomss", "motel_wall2", 0);
	biker = CreateDynamicObject(2350, 293.751099, -81.411789, 1600.451294, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	SetDynamicObjectMaterial(biker, 1, 14500, "imm_roomss", "motel_wall2", 0);
	biker = CreateDynamicObject(3017, 292.725311, -77.063728, 1601.778809, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18901, "matclothes", "bandanared", 0xFFFFFFFF);
	biker = CreateDynamicObject(11289, 283.889221, -74.662346, 1604.548340, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18901, "matclothes", "bandanaflag", 0xFFFFFFFF);
	biker = CreateDynamicObject(19442, 283.829163, -73.942802, 1605.576172, 180.000000, 90.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0);
	biker = CreateDynamicObject(11289, 291.249176, -88.642769, 1605.319092, 0.000007, 0.000000, 179.999878, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 11469, "des_steakhouse", "des_bullsign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19442, 291.309235, -89.362312, 1606.346924, 0.000007, -89.999992, 179.999908, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14771, "int_brothelint3", "Bow_bar_panelfront", 0);
	biker = CreateDynamicObject(2599, 294.477478, -80.472549, 1601.588257, 0.000000, 0.000000, -77.099960, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 18055, "genintsmlrst_split", "GB_restaursmll22", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 1211, "dynhydrent", "firehydrant_yell", 0);
	biker = CreateDynamicObject(19836, 291.764374, -85.876328, 1601.871704, 89.999992, 89.999992, -125.299957, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 291.960205, -86.014992, 1601.871704, 89.999992, -90.000000, -125.299973, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 291.792938, -86.043564, 1601.871704, 89.999992, 154.471191, -99.771202, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 291.931610, -85.847717, 1601.871704, 89.999992, -25.528778, -99.771179, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 291.764374, -85.876312, 1600.201538, -89.999992, 103.368477, 68.068512, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 291.960205, -86.014977, 1600.201538, -89.999992, -84.355019, 60.344906, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 291.931610, -85.847710, 1600.201538, -89.999992, 191.817825, 66.517876, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 291.792938, -86.043571, 1600.201538, -89.999992, 11.817858, 66.517876, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19968, 291.873077, -85.944435, 1602.022583, 0.000000, 179.999985, 144.700012, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 6865, "vgndwntwn23", "steaksign1_256", 0xFFFFFFFF);
	biker = CreateDynamicObject(19836, 291.764374, -85.876328, 1601.871704, 89.999992, 89.999992, -125.299957, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 291.960205, -86.014992, 1601.871704, 89.999992, -90.000000, -125.299973, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 291.792938, -86.043564, 1601.871704, 89.999992, 154.471191, -99.771202, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 291.931610, -85.847717, 1601.871704, 89.999992, -25.528778, -99.771179, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 291.764374, -85.876312, 1600.201538, -89.999992, 103.368477, 68.068512, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 291.960205, -86.014977, 1600.201538, -89.999992, -84.355019, 60.344906, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 291.931610, -85.847710, 1600.201538, -89.999992, 191.817825, 66.517876, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 291.931610, -85.847717, 1601.871704, 89.999992, -25.528778, -99.771179, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 291.764374, -85.876312, 1600.201538, -89.999992, 103.368477, 68.068512, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 291.960205, -86.014977, 1600.201538, -89.999992, -84.355019, 60.344906, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 291.931610, -85.847710, 1600.201538, -89.999992, 191.817825, 66.517876, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 291.792938, -86.043571, 1600.201538, -89.999992, 11.817858, 66.517876, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19968, 288.217773, -76.936340, 1602.022583, 0.000003, 179.999985, -162.399948, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 6865, "vgndwntwn23", "steaksign1_256", 0xFFFFFFFF);
	biker = CreateDynamicObject(19836, 288.097870, -76.981956, 1601.871704, 89.999992, 73.884483, -56.284435, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 288.326630, -76.909401, 1601.871704, 89.999992, -106.115517, -56.284443, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 288.248505, -77.060051, 1601.871704, 89.999992, 149.620865, -42.020863, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 288.175964, -76.831314, 1601.871704, 89.999992, -30.379099, -42.020851, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 288.097870, -76.981949, 1600.201538, -89.999992, 113.946548, 131.546555, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 288.326599, -76.909393, 1600.201538, -89.999992, -70.459671, 127.140228, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 288.175964, -76.831306, 1600.201538, -89.999992, 203.085403, 130.685440, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 288.248505, -77.060059, 1600.201538, -89.999992, 23.085445, 130.685440, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 288.175964, -76.831306, 1600.201538, -89.999992, 203.085403, 130.685440, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 288.326599, -76.909393, 1600.201538, -89.999992, -70.459671, 127.140228, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 288.097870, -76.981949, 1600.201538, -89.999992, 113.946548, 131.546555, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(2705, 288.123871, -76.842224, 1601.430664, 0.000000, 0.000000, 40.899986, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14760, "sfhosemed2", "ah_marcorn1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 2819, "gb_bedroomclths01", "GB_clothesbed01", 0);
	biker = CreateDynamicObject(19475, 297.304413, -85.737305, 1601.817627, 360.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14654, "ab_trukstpe", "bbar_stuff9", 0);
	biker = CreateDynamicObject(2588, 295.950928, -77.629639, 1602.088501, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18081, "cj_barb", "barberspic3", 0xFFFFFFFF);
	biker = CreateDynamicObject(11744, 295.698669, -79.329498, 1603.052002, 0.000000, 179.999985, -179.999985, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14650, "ab_trukstpc", "bras_base", 0xFFFFFFFF);
	biker = CreateDynamicObject(2074, 295.684143, -79.328362, 1603.154419, 0.000000, 0.000007, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14651, "ab_trukstpd", "Bow_bar_metal_cabinet", 0xFFFFFFFF);
	biker = CreateDynamicObject(11744, 295.698669, -84.749451, 1603.052002, 0.000000, 179.999985, -179.999939, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14650, "ab_trukstpc", "bras_base", 0xFFFFFFFF);
	biker = CreateDynamicObject(2074, 295.684143, -84.748314, 1603.154419, 0.000000, 0.000014, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14651, "ab_trukstpd", "Bow_bar_metal_cabinet", 0xFFFFFFFF);
	biker = CreateDynamicObject(11744, 295.698669, -82.169426, 1603.052002, 0.000000, 179.999985, -179.999893, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14650, "ab_trukstpc", "bras_base", 0xFFFFFFFF);
	biker = CreateDynamicObject(2074, 295.684143, -82.168289, 1603.154419, 0.000000, 0.000022, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14651, "ab_trukstpd", "Bow_bar_metal_cabinet", 0xFFFFFFFF);
	biker = CreateDynamicObject(1759, 284.931915, -84.532448, 1603.552979, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 13003, "ce_racestart", "CJ_TARTAN", 0);
	SetDynamicObjectMaterial(biker, 1, 1453, "break_farm", "CJ_DarkWood", 0);
	biker = CreateDynamicObject(2120, 274.896576, -77.829376, 1604.155273, 0.000000, 0.000000, -76.299988, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14754, "sfhsb3", "ah_wpaper10", 0);
	SetDynamicObjectMaterial(biker, 1, 3900, "station", "ledge2_64H", 0);
	biker = CreateDynamicObject(2188, 274.166473, -75.436058, 1604.524170, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 5
	SetDynamicObjectMaterial(biker, 2, 14738, "whorebar", "AH_cheapwhoremainwall", 0);
	SetDynamicObjectMaterial(biker, 3, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 4, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 5, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 6, 14859, "gf1", "mp_cooch_frame", 0);
	biker = CreateDynamicObject(2188, 274.216492, -75.426056, 1604.524170, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 7
	SetDynamicObjectMaterial(biker, 0, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 1, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 2, 14738, "whorebar", "AH_cheapwhoremainwall", 0);
	SetDynamicObjectMaterial(biker, 3, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 4, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 5, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 6, 14859, "gf1", "mp_cooch_frame", 0);
	biker = CreateDynamicObject(2120, 273.469086, -77.572227, 1604.155273, 0.000000, 0.000000, -111.899979, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14754, "sfhsb3", "ah_wpaper10", 0);
	SetDynamicObjectMaterial(biker, 1, 3900, "station", "ledge2_64H", 0);
	biker = CreateDynamicObject(2120, 273.229858, -73.369354, 1604.155273, 0.000000, 0.000000, 119.700012, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14754, "sfhsb3", "ah_wpaper10", 0);
	SetDynamicObjectMaterial(biker, 1, 3900, "station", "ledge2_64H", 0);
	biker = CreateDynamicObject(2120, 275.297516, -73.421829, 1604.155273, 0.000000, 0.000000, 61.000027, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14754, "sfhsb3", "ah_wpaper10", 0);
	SetDynamicObjectMaterial(biker, 1, 3900, "station", "ledge2_64H", 0);
	biker = CreateDynamicObject(14455, 271.533112, -79.061287, 1605.197266, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2588, 272.351257, -75.439629, 1605.649536, 0.000000, -9.099994, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18081, "cj_barb", "barberspic3", 0xFFFFFFFF);
	biker = CreateDynamicObject(1417, 276.635712, -71.705780, 1603.817749, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(1759, 274.872192, -71.872505, 1603.552979, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 13003, "ce_racestart", "CJ_TARTAN", 0);
	SetDynamicObjectMaterial(biker, 1, 1453, "break_farm", "CJ_DarkWood", 0);
	biker = CreateDynamicObject(1416, 273.607391, -71.644341, 1604.073486, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(3052, 273.968994, -71.683067, 1604.754639, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 2925, "dyno_box", "dyno_crate", 0);
	biker = CreateDynamicObject(3052, 273.478546, -71.683067, 1604.916016, 0.000000, -27.899975, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 2925, "dyno_box", "dyno_crate", 0);
	biker = CreateDynamicObject(2660, 273.665771, -71.380524, 1605.804810, 360.000000, 90.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14420, "dr_gsbits", "mp_apt1_pic2", 0xFFFFFFFF);
	biker = CreateDynamicObject(2386, 276.609741, -71.671585, 1604.963379, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18901, "matclothes", "bandanared", 0);
	biker = CreateDynamicObject(2029, 281.412903, -86.599220, 1603.550659, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 15041, "bigsfsave", "ah_wrnplnks", 0);
	biker = CreateDynamicObject(1821, 283.265350, -89.284805, 1603.526489, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(1822, 283.254791, -85.402969, 1603.522949, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	SetDynamicObjectMaterial(biker, 1, 2212, "burger_tray", "drinktop_cb", 0);
	biker = CreateDynamicObject(1823, 282.916107, -85.406548, 1603.093628, 0.000000, 0.000000, 16.600000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19882, "marcossteak2", "cj_steak", 0);
	biker = CreateDynamicObject(2803, 282.437164, -88.250610, 1603.647461, -25.800003, 51.799995, 110.700020, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 1706, "kbcouch1", "kb_sofa_256", 0);
	SetDynamicObjectMaterial(biker, 2, 1827, "kbmiscfrn2", "man_mny1", 0);
	SetDynamicObjectMaterial(biker, 12, 1826, "kbmiscfrn1", "bank_mny_LR", 0);
	biker = CreateDynamicObject(2281, 281.228210, -83.476295, 1605.025513, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 18368, "cs_mountaintop", "des_flatlogs", 0);
	SetDynamicObjectMaterial(biker, 1, 14420, "dr_gsbits", "mp_apt1_pic1", 0);
	biker = CreateDynamicObject(1735, 279.737915, -86.071526, 1603.545532, 0.000000, 0.000000, 71.500015, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 1716, "cj_seating", "cj_cushion1", 0);
	SetDynamicObjectMaterial(biker, 1, 3241, "conhooses", "des_woodfence1", 0);
	biker = CreateDynamicObject(2124, 282.369934, -86.762428, 1604.392456, 0.000000, 0.000000, -88.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2124, 282.435669, -85.209229, 1604.392456, 0.000000, 0.000000, 76.500008, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2661, 283.453491, -83.033264, 1605.481201, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14603, "bikeskool", "lw_pistol_128", 0xFFFFFFFF);
	biker = CreateDynamicObject(2660, 285.346710, -84.407303, 1605.501831, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14603, "bikeskool", "artish1", 0xFFFFFFFF);
	biker = CreateDynamicObject(11744, 281.236206, -86.147636, 1604.356445, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14805, "bdupsfurn", "Bdup_Ashtray", 0xFFFFFFFF);
	biker = CreateDynamicObject(2804, 281.298157, -86.178680, 1604.448364, 0.000000, 0.000000, 24.699997, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14668, "711c", "forumstand1_LAe", 0);
	SetDynamicObjectMaterial(biker, 1, 19882, "marcossteak2", "cj_steak", 0);
	biker = CreateDynamicObject(11704, 283.445831, -83.002686, 1606.251099, 0.000000, -4.999998, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 7088, "casinoshops1", "GB_nastybar19", 0);
	biker = CreateDynamicObject(1742, 281.007233, -82.884659, 1602.360596, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 2, 8423, "pirateship01", "tislandwdbox01_128", 0);
	biker = CreateDynamicObject(2023, 284.779907, -83.626091, 1603.526367, 0.000000, 0.000000, 33.099998, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3502, "vgsncircon", "woodsuport2_128", 0);
	biker = CreateDynamicObject(2803, 282.404907, -88.275581, 1603.653442, -165.900024, 112.900024, 114.700035, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 1706, "kbcouch1", "kb_sofa_256", 0);
	SetDynamicObjectMaterial(biker, 2, 1827, "kbmiscfrn2", "man_mny1", 0);
	SetDynamicObjectMaterial(biker, 12, 1826, "kbmiscfrn1", "bank_mny_LR", 0);
	biker = CreateDynamicObject(2803, 282.373962, -88.233704, 1603.611450, -165.900024, 112.900024, 114.700035, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 1706, "kbcouch1", "kb_sofa_256", 0);
	SetDynamicObjectMaterial(biker, 2, 1827, "kbmiscfrn2", "man_mny1", 0);
	SetDynamicObjectMaterial(biker, 12, 1826, "kbmiscfrn1", "bank_mny_LR", 0);
	biker = CreateDynamicObject(2803, 282.481415, -88.210289, 1603.669922, -165.900024, 160.399979, 114.700035, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 1706, "kbcouch1", "kb_sofa_256", 0);
	SetDynamicObjectMaterial(biker, 2, 1827, "kbmiscfrn2", "man_mny1", 0);
	SetDynamicObjectMaterial(biker, 12, 1826, "kbmiscfrn1", "bank_mny_LR", 0);
	biker = CreateDynamicObject(2803, 282.261169, -88.332504, 1603.271851, -165.900024, 91.700035, 128.900070, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 1827, "kbmiscfrn2", "man_mny1", 0);
	SetDynamicObjectMaterial(biker, 2, 1827, "kbmiscfrn2", "man_mny1", 0);
	SetDynamicObjectMaterial(biker, 12, 1826, "kbmiscfrn1", "bank_mny_LR", 0);
	biker = CreateDynamicObject(2056, 281.827484, -87.770836, 1603.590942, 270.000000, 0.000000, -54.200001, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 281.827484, -87.770836, 1603.590942, 270.000000, 0.000000, -54.200001, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 281.827484, -87.770836, 1603.590942, 270.000000, 0.000000, -54.200001, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 282.283478, -87.565308, 1603.590942, 270.000000, 0.000000, -178.299988, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 282.283478, -87.565308, 1603.590942, 270.000000, 0.000000, -178.299988, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 282.283478, -87.565308, 1603.590942, 270.000000, 0.000000, -178.299988, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(14875, 284.449341, -89.069962, 1603.267212, 0.000000, 0.000000, 630.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 2925, "dyno_box", "dyno_crate", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 280.768402, -77.950691, 1605.295288, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 280.768402, -76.140709, 1605.295288, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 282.578308, -79.890701, 1605.295288, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 285.758331, -79.890701, 1605.295288, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 287.698334, -81.950699, 1605.295288, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 287.698334, -84.880730, 1605.295288, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 289.328278, -86.580719, 1605.295288, 0.000000, 0.000000, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 292.588287, -86.580719, 1605.295288, 0.000000, 0.000000, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 294.598358, -85.010712, 1605.295288, 0.000000, 0.000000, 540.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 294.598358, -81.660690, 1605.295288, 0.000000, 0.000000, 540.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 294.598358, -78.420677, 1605.295288, 0.000000, 0.000000, 540.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	CreateDynamicObject(14875, 288.939301, -84.579910, 1600.918823, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(14875, 292.359375, -76.139915, 1600.918823, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(14875, 281.119324, -75.859940, 1600.918823, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(14875, 281.179321, -77.379875, 1599.967896, 0.000000, 0.000000, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(14875, 283.829407, -80.689964, 1600.918823, 0.000000, 0.000000, 540.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(14875, 288.599396, -74.419914, 1599.937866, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1665, 294.515900, -80.940048, 1601.152954, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1665, 294.515900, -84.030052, 1601.152954, 0.000000, 0.000000, -129.800003, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1833, 287.285919, -69.834999, 1600.101563, 0.000000, 0.000000, 120.400002, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1667, 288.759827, -68.683022, 1600.984863, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1665, 288.686005, -68.910042, 1600.912720, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1833, 293.479309, -72.763657, 1600.101563, 0.000000, 0.000000, -77.099976, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1665, 281.448547, -86.689484, 1604.368164, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2061, 290.553650, -70.838966, 1601.749146, 0.000000, 0.000000, -37.799995, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2059, 290.456329, -70.063309, 1600.128296, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19583, 288.712219, -68.161751, 1601.308105, 79.100021, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(11745, 289.149933, -66.766525, 1600.230225, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(11745, 289.771637, -66.656281, 1600.230225, 0.000000, 0.000000, 47.299995, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2318, 288.202576, -70.795891, 1602.001587, 0.000000, 0.000000, -171.800049, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2286, 284.338226, -74.689499, 1601.978760, 0.000000, -7.099998, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19626, 293.634583, -77.415916, 1600.838501, -10.599998, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1902, 273.982635, -74.563576, 1604.508545, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1902, 274.772552, -75.963570, 1604.508545, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1901, 273.531525, -74.920044, 1604.495728, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1901, 274.841431, -75.840004, 1604.495728, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1900, 274.383484, -74.624527, 1604.532959, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2726, 274.564178, -71.697929, 1603.902710, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2048, 275.550171, -71.370049, 1605.789795, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19823, 281.418762, -85.582291, 1604.346436, 0.000000, 0.000000, -59.999985, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19819, 281.226257, -86.501312, 1604.422607, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	biker = CreateDynamicObject(19371, 382.376648, -86.836853, 1605.296021, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0);
	biker = CreateDynamicObject(19836, 291.792938, -86.043571, 1600.201538, -89.999992, 11.817858, 66.517876, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19968, 291.873077, -85.944435, 1602.022583, 0.000000, 179.999985, 144.700012, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 6865, "vgndwntwn23", "steaksign1_256", 0xFFFFFFFF);
	biker = CreateDynamicObject(19836, 291.764374, -85.876328, 1601.871704, 89.999992, 89.999992, -125.299957, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 291.960205, -86.014992, 1601.871704, 89.999992, -90.000000, -125.299973, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 291.792938, -86.043564, 1601.871704, 89.999992, 154.471191, -99.771202, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 291.931610, -85.847717, 1601.871704, 89.999992, -25.528778, -99.771179, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 291.764374, -85.876312, 1600.201538, -89.999992, 103.368477, 68.068512, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 291.960205, -86.014977, 1600.201538, -89.999992, -84.355019, 60.344906, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 291.931610, -85.847710, 1600.201538, -89.999992, 191.817825, 66.517876, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 291.792938, -86.043571, 1600.201538, -89.999992, 11.817858, 66.517876, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19968, 288.217773, -76.936340, 1602.022583, 0.000003, 179.999985, -162.399948, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 6865, "vgndwntwn23", "steaksign1_256", 0xFFFFFFFF);
	biker = CreateDynamicObject(19836, 288.097870, -76.981956, 1601.871704, 89.999992, 73.884483, -56.284435, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 288.326630, -76.909401, 1601.871704, 89.999992, -106.115517, -56.284443, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 288.248505, -77.060051, 1601.871704, 89.999992, 149.620865, -42.020863, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 288.175964, -76.831314, 1601.871704, 89.999992, -30.379099, -42.020851, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3801, "sfxref", "sfxref_lite2a", 0);
	biker = CreateDynamicObject(19836, 288.097870, -76.981949, 1600.201538, -89.999992, 113.946548, 131.546555, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 288.326599, -76.909393, 1600.201538, -89.999992, -70.459671, 127.140228, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 288.175964, -76.831306, 1600.201538, -89.999992, 203.085403, 130.685440, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 288.248505, -77.060059, 1600.201538, -89.999992, 23.085445, 130.685440, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 288.175964, -76.831306, 1600.201538, -89.999992, 203.085403, 130.685440, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 288.326599, -76.909393, 1600.201538, -89.999992, -70.459671, 127.140228, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(19836, 288.097870, -76.981949, 1600.201538, -89.999992, 113.946548, 131.546555, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14533, "pleas_dome", "ws_corner_iron1", 0);
	biker = CreateDynamicObject(2705, 288.123871, -76.842224, 1601.430664, 0.000000, 0.000000, 40.899986, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14760, "sfhosemed2", "ah_marcorn1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 2819, "gb_bedroomclths01", "GB_clothesbed01", 0);
	biker = CreateDynamicObject(19475, 297.304413, -85.737305, 1601.817627, 360.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14654, "ab_trukstpe", "bbar_stuff9", 0);
	biker = CreateDynamicObject(2588, 295.950928, -77.629639, 1602.088501, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18081, "cj_barb", "barberspic3", 0xFFFFFFFF);
	biker = CreateDynamicObject(11744, 295.698669, -79.329498, 1603.052002, 0.000000, 179.999985, -179.999985, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14650, "ab_trukstpc", "bras_base", 0xFFFFFFFF);
	biker = CreateDynamicObject(2074, 295.684143, -79.328362, 1603.154419, 0.000000, 0.000007, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14651, "ab_trukstpd", "Bow_bar_metal_cabinet", 0xFFFFFFFF);
	biker = CreateDynamicObject(11744, 295.698669, -84.749451, 1603.052002, 0.000000, 179.999985, -179.999939, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14650, "ab_trukstpc", "bras_base", 0xFFFFFFFF);
	biker = CreateDynamicObject(2074, 295.684143, -84.748314, 1603.154419, 0.000000, 0.000014, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14651, "ab_trukstpd", "Bow_bar_metal_cabinet", 0xFFFFFFFF);
	biker = CreateDynamicObject(11744, 295.698669, -82.169426, 1603.052002, 0.000000, 179.999985, -179.999893, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14650, "ab_trukstpc", "bras_base", 0xFFFFFFFF);
	biker = CreateDynamicObject(2074, 295.684143, -82.168289, 1603.154419, 0.000000, 0.000022, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14651, "ab_trukstpd", "Bow_bar_metal_cabinet", 0xFFFFFFFF);
	biker = CreateDynamicObject(1759, 284.931915, -84.532448, 1603.552979, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 13003, "ce_racestart", "CJ_TARTAN", 0);
	SetDynamicObjectMaterial(biker, 1, 1453, "break_farm", "CJ_DarkWood", 0);
	biker = CreateDynamicObject(2120, 274.896576, -77.829376, 1604.155273, 0.000000, 0.000000, -76.299988, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14754, "sfhsb3", "ah_wpaper10", 0);
	SetDynamicObjectMaterial(biker, 1, 3900, "station", "ledge2_64H", 0);
	biker = CreateDynamicObject(2188, 274.166473, -75.436058, 1604.524170, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 5
	SetDynamicObjectMaterial(biker, 2, 14738, "whorebar", "AH_cheapwhoremainwall", 0);
	SetDynamicObjectMaterial(biker, 3, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 4, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 5, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 6, 14859, "gf1", "mp_cooch_frame", 0);
	biker = CreateDynamicObject(2188, 274.216492, -75.426056, 1604.524170, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 7
	SetDynamicObjectMaterial(biker, 0, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 1, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 2, 14738, "whorebar", "AH_cheapwhoremainwall", 0);
	SetDynamicObjectMaterial(biker, 3, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 4, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 5, 14859, "gf1", "mp_cooch_frame", 0);
	SetDynamicObjectMaterial(biker, 6, 14859, "gf1", "mp_cooch_frame", 0);
	biker = CreateDynamicObject(2120, 273.469086, -77.572227, 1604.155273, 0.000000, 0.000000, -111.899979, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14754, "sfhsb3", "ah_wpaper10", 0);
	SetDynamicObjectMaterial(biker, 1, 3900, "station", "ledge2_64H", 0);
	biker = CreateDynamicObject(2120, 273.229858, -73.369354, 1604.155273, 0.000000, 0.000000, 119.700012, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14754, "sfhsb3", "ah_wpaper10", 0);
	SetDynamicObjectMaterial(biker, 1, 3900, "station", "ledge2_64H", 0);
	biker = CreateDynamicObject(2120, 275.297516, -73.421829, 1604.155273, 0.000000, 0.000000, 61.000027, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14754, "sfhsb3", "ah_wpaper10", 0);
	SetDynamicObjectMaterial(biker, 1, 3900, "station", "ledge2_64H", 0);
	biker = CreateDynamicObject(14455, 271.533112, -79.061287, 1605.197266, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2588, 272.351257, -75.439629, 1605.649536, 0.000000, -9.099994, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18081, "cj_barb", "barberspic3", 0xFFFFFFFF);
	biker = CreateDynamicObject(1417, 276.635712, -71.705780, 1603.817749, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(1759, 274.872192, -71.872505, 1603.552979, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 13003, "ce_racestart", "CJ_TARTAN", 0);
	SetDynamicObjectMaterial(biker, 1, 1453, "break_farm", "CJ_DarkWood", 0);
	biker = CreateDynamicObject(1416, 273.607391, -71.644341, 1604.073486, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(3052, 273.968994, -71.683067, 1604.754639, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 2925, "dyno_box", "dyno_crate", 0);
	biker = CreateDynamicObject(3052, 273.478546, -71.683067, 1604.916016, 0.000000, -27.899975, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 2925, "dyno_box", "dyno_crate", 0);
	biker = CreateDynamicObject(2660, 273.665771, -71.380524, 1605.804810, 360.000000, 90.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14420, "dr_gsbits", "mp_apt1_pic2", 0xFFFFFFFF);
	biker = CreateDynamicObject(2386, 276.609741, -71.671585, 1604.963379, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 18901, "matclothes", "bandanared", 0);
	biker = CreateDynamicObject(2029, 281.412903, -86.599220, 1603.550659, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 15041, "bigsfsave", "ah_wrnplnks", 0);
	biker = CreateDynamicObject(1821, 283.265350, -89.284805, 1603.526489, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(1822, 283.254791, -85.402969, 1603.522949, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	SetDynamicObjectMaterial(biker, 1, 2212, "burger_tray", "drinktop_cb", 0);
	biker = CreateDynamicObject(1823, 282.916107, -85.406548, 1603.093628, 0.000000, 0.000000, 16.600000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19882, "marcossteak2", "cj_steak", 0);
	biker = CreateDynamicObject(2803, 282.437164, -88.250610, 1603.647461, -25.800003, 51.799995, 110.700020, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 1706, "kbcouch1", "kb_sofa_256", 0);
	SetDynamicObjectMaterial(biker, 2, 1827, "kbmiscfrn2", "man_mny1", 0);
	SetDynamicObjectMaterial(biker, 12, 1826, "kbmiscfrn1", "bank_mny_LR", 0);
	biker = CreateDynamicObject(2281, 281.228210, -83.476295, 1605.025513, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 18368, "cs_mountaintop", "des_flatlogs", 0);
	SetDynamicObjectMaterial(biker, 1, 14420, "dr_gsbits", "mp_apt1_pic1", 0);
	biker = CreateDynamicObject(1735, 279.737915, -86.071526, 1603.545532, 0.000000, 0.000000, 71.500015, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 1716, "cj_seating", "cj_cushion1", 0);
	SetDynamicObjectMaterial(biker, 1, 3241, "conhooses", "des_woodfence1", 0);
	biker = CreateDynamicObject(2124, 282.369934, -86.762428, 1604.392456, 0.000000, 0.000000, -88.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2124, 282.435669, -85.209229, 1604.392456, 0.000000, 0.000000, 76.500008, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker = CreateDynamicObject(2661, 283.453491, -83.033264, 1605.481201, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14603, "bikeskool", "lw_pistol_128", 0xFFFFFFFF);
	biker = CreateDynamicObject(2660, 285.346710, -84.407303, 1605.501831, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14603, "bikeskool", "artish1", 0xFFFFFFFF);
	biker = CreateDynamicObject(11744, 281.236206, -86.147636, 1604.356445, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 14805, "bdupsfurn", "Bdup_Ashtray", 0xFFFFFFFF);
	biker = CreateDynamicObject(2804, 281.298157, -86.178680, 1604.448364, 0.000000, 0.000000, 24.699997, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker, 0, 14668, "711c", "forumstand1_LAe", 0);
	SetDynamicObjectMaterial(biker, 1, 19882, "marcossteak2", "cj_steak", 0);
	biker = CreateDynamicObject(11704, 283.445831, -83.002686, 1606.251099, 0.000000, -4.999998, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 7088, "casinoshops1", "GB_nastybar19", 0);
	biker = CreateDynamicObject(1742, 281.007233, -82.884659, 1602.360596, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 2, 8423, "pirateship01", "tislandwdbox01_128", 0);
	biker = CreateDynamicObject(2023, 284.779907, -83.626091, 1603.526367, 0.000000, 0.000000, 33.099998, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 3502, "vgsncircon", "woodsuport2_128", 0);
	biker = CreateDynamicObject(2803, 282.404907, -88.275581, 1603.653442, -165.900024, 112.900024, 114.700035, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 1706, "kbcouch1", "kb_sofa_256", 0);
	SetDynamicObjectMaterial(biker, 2, 1827, "kbmiscfrn2", "man_mny1", 0);
	SetDynamicObjectMaterial(biker, 12, 1826, "kbmiscfrn1", "bank_mny_LR", 0);
	biker = CreateDynamicObject(2803, 282.373962, -88.233704, 1603.611450, -165.900024, 112.900024, 114.700035, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 1706, "kbcouch1", "kb_sofa_256", 0);
	SetDynamicObjectMaterial(biker, 2, 1827, "kbmiscfrn2", "man_mny1", 0);
	SetDynamicObjectMaterial(biker, 12, 1826, "kbmiscfrn1", "bank_mny_LR", 0);
	biker = CreateDynamicObject(2803, 282.481415, -88.210289, 1603.669922, -165.900024, 160.399979, 114.700035, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 1706, "kbcouch1", "kb_sofa_256", 0);
	SetDynamicObjectMaterial(biker, 2, 1827, "kbmiscfrn2", "man_mny1", 0);
	SetDynamicObjectMaterial(biker, 12, 1826, "kbmiscfrn1", "bank_mny_LR", 0);
	biker = CreateDynamicObject(2803, 282.261169, -88.332504, 1603.271851, -165.900024, 91.700035, 128.900070, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 4
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker, 1, 1827, "kbmiscfrn2", "man_mny1", 0);
	SetDynamicObjectMaterial(biker, 2, 1827, "kbmiscfrn2", "man_mny1", 0);
	SetDynamicObjectMaterial(biker, 12, 1826, "kbmiscfrn1", "bank_mny_LR", 0);
	biker = CreateDynamicObject(2056, 281.827484, -87.770836, 1603.590942, 270.000000, 0.000000, -54.200001, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 281.827484, -87.770836, 1603.590942, 270.000000, 0.000000, -54.200001, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 281.827484, -87.770836, 1603.590942, 270.000000, 0.000000, -54.200001, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 282.283478, -87.565308, 1603.590942, 270.000000, 0.000000, -178.299988, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 282.283478, -87.565308, 1603.590942, 270.000000, 0.000000, -178.299988, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(2056, 282.283478, -87.565308, 1603.590942, 270.000000, 0.000000, -178.299988, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 1827, "kbmiscfrn2", "man_mny1", 0);
	biker = CreateDynamicObject(14875, 284.449341, -89.069962, 1603.267212, 0.000000, 0.000000, 630.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 2925, "dyno_box", "dyno_crate", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 280.768402, -77.950691, 1605.295288, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 280.768402, -76.140709, 1605.295288, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 282.578308, -79.890701, 1605.295288, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 285.758331, -79.890701, 1605.295288, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 287.698334, -81.950699, 1605.295288, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 287.698334, -84.880730, 1605.295288, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 289.328278, -86.580719, 1605.295288, 0.000000, 0.000000, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 292.588287, -86.580719, 1605.295288, 0.000000, 0.000000, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 294.598358, -85.010712, 1605.295288, 0.000000, 0.000000, 540.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 294.598358, -81.660690, 1605.295288, 0.000000, 0.000000, 540.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	biker = CreateDynamicObject(19371, 294.598358, -78.420677, 1605.295288, 0.000000, 0.000000, 540.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0xFFFFFFFF);
	CreateDynamicObject(14875, 288.939301, -84.579910, 1600.918823, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(14875, 292.359375, -76.139915, 1600.918823, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(14875, 281.119324, -75.859940, 1600.918823, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(14875, 281.179321, -77.379875, 1599.967896, 0.000000, 0.000000, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(14875, 283.829407, -80.689964, 1600.918823, 0.000000, 0.000000, 540.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(14875, 288.599396, -74.419914, 1599.937866, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1665, 294.515900, -80.940048, 1601.152954, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1665, 294.515900, -84.030052, 1601.152954, 0.000000, 0.000000, -129.800003, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1833, 287.285919, -69.834999, 1600.101563, 0.000000, 0.000000, 120.400002, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1667, 288.759827, -68.683022, 1600.984863, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1665, 288.686005, -68.910042, 1600.912720, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1833, 293.479309, -72.763657, 1600.101563, 0.000000, 0.000000, -77.099976, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1665, 281.448547, -86.689484, 1604.368164, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2061, 290.553650, -70.838966, 1601.749146, 0.000000, 0.000000, -37.799995, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2059, 290.456329, -70.063309, 1600.128296, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19583, 288.712219, -68.161751, 1601.308105, 79.100021, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(11745, 289.149933, -66.766525, 1600.230225, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(11745, 289.771637, -66.656281, 1600.230225, 0.000000, 0.000000, 47.299995, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2318, 288.202576, -70.795891, 1602.001587, 0.000000, 0.000000, -171.800049, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2286, 284.338226, -74.689499, 1601.978760, 0.000000, -7.099998, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19626, 293.634583, -77.415916, 1600.838501, -10.599998, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1902, 273.982635, -74.563576, 1604.508545, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1902, 274.772552, -75.963570, 1604.508545, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1901, 273.531525, -74.920044, 1604.495728, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1901, 274.841431, -75.840004, 1604.495728, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1900, 274.383484, -74.624527, 1604.532959, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2726, 274.564178, -71.697929, 1603.902710, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2048, 275.550171, -71.370049, 1605.789795, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19823, 281.418762, -85.582291, 1604.346436, 0.000000, 0.000000, -59.999985, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19819, 281.226257, -86.501312, 1604.422607, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19802, 279.687988, -81.856003, 1600.067993, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	biker = CreateDynamicObject(19371, 382.376648, -86.836853, 1605.296021, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(biker, 0, 19480, "signsurf", "sign", 0);
}

BikerInt2()
{
	new biker2;
	biker2 = CreateDynamicObject(8661, 2208.505127, 2078.046143, 99.373505, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14407, "carter_block", "ab_stripped_floor2", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(19445, 2209.907715, 2076.081299, 101.093483, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(19445, 2214.722656, 2076.081299, 101.093483, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(19445, 2214.722656, 2073.266357, 101.093483, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFAAAAAA);
	biker2 = CreateDynamicObject(14877, 2213.563232, 2067.376465, 97.283562, 0.000014, 0.000000, 89.999954, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14407, "carter_block", "ab_stripped_floor2", 0);
	biker2 = CreateDynamicObject(14877, 2210.565186, 2067.376465, 97.283562, 0.000014, 0.000000, 89.999954, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14407, "carter_block", "ab_stripped_floor2", 0);
	biker2 = CreateDynamicObject(19445, 2209.907715, 2066.451416, 101.093483, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(19445, 2214.722656, 2066.451416, 101.093483, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(19445, 2209.907715, 2066.451416, 97.593483, 180.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(19445, 2214.722656, 2066.451416, 97.593483, 180.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(8661, 2212.224609, 2053.775146, 95.873505, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14407, "carter_block", "ab_stripped_floor2", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(8661, 2208.505127, 2076.641357, 102.873505, 180.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 13081, "ce_ground13", "dustyconcrete", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(8661, 2208.505127, 2069.940186, 105.039536, -145.199753, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 13081, "ce_ground13", "dustyconcrete", 0xFFDDDDDD);
	biker2 = CreateDynamicObject(19479, 2212.720703, 2066.072998, 102.863495, 180.000000, 90.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x80000000);
	biker2 = CreateDynamicObject(19479, 2212.720703, 2074.338867, 102.863495, 180.000000, 90.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x80000000);
	biker2 = CreateDynamicObject(19479, 2214.632568, 2074.578613, 102.863495, 270.000000, 90.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x80000000);
	biker2 = CreateDynamicObject(19479, 2210.002441, 2074.578613, 102.863495, 270.000000, 90.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x80000000);
	biker2 = CreateDynamicObject(19479, 2214.632080, 2066.785889, 103.588470, -145.099991, 180.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x80000000);
	biker2 = CreateDynamicObject(19479, 2210.002197, 2066.638916, 103.801712, -145.099991, 180.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x80000000);
	biker2 = CreateDynamicObject(19479, 2212.720703, 2067.128174, 103.068542, 180.000000, 124.799911, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x80000000);
	biker2 = CreateDynamicObject(19479, 2212.720703, 2073.173828, 99.383469, 180.000000, 90.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x80000000);
	biker2 = CreateDynamicObject(19479, 2212.720703, 2073.157227, 104.083588, 180.000000, 180.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x80000000);
	biker2 = CreateDynamicObject(19426, 2209.907715, 2061.713379, 97.593475, 180.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2210.628418, 2060.992676, 97.593475, 180.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19426, 2209.907715, 2060.271973, 97.593475, 180.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2209.187012, 2060.992676, 97.593475, 180.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19426, 2214.722656, 2061.713379, 97.593475, 180.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2215.443359, 2060.992676, 97.593475, 180.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19426, 2214.722656, 2060.271973, 97.593475, 180.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2214.001953, 2060.992676, 97.593475, 180.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19445, 2204.335693, 2061.062744, 97.593475, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11092, "burgalrystore_sfse", "ws_altz_wall2bluetop", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(19426, 2203.487793, 2061.713379, 97.593475, 180.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2204.208496, 2060.992676, 97.593475, 180.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19426, 2203.487793, 2060.271973, 97.593475, 180.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2202.767090, 2060.992676, 97.593475, 180.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19426, 2221.142578, 2061.713379, 97.593475, 180.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2221.863281, 2060.992676, 97.593475, 180.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19426, 2221.142578, 2060.271973, 97.593475, 180.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2220.421875, 2060.992676, 97.593475, 180.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19482, 2203.982178, 2060.959961, 97.473541, 89.999992, 179.999985, -89.999985, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x60000000);
	biker2 = CreateDynamicObject(19482, 2203.459229, 2060.499023, 99.303589, 360.000000, 270.000000, -89.999985, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x40000000);
	biker2 = CreateDynamicObject(19445, 2219.883545, 2061.062744, 97.593475, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11092, "burgalrystore_sfse", "ws_altz_wall2bluetop", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(19482, 2215.197998, 2060.959961, 97.473541, 89.999992, 179.999985, -90.000008, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x60000000);
	biker2 = CreateDynamicObject(19482, 2220.668701, 2060.959961, 97.473541, 89.999992, 179.999985, -90.000008, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x60000000);
	biker2 = CreateDynamicObject(19445, 2207.471436, 2060.029785, 99.403503, 0.000000, 270.000000, -90.000008, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14846, "genintintpoliceb", "p_floor2", 0xFF707070);
	biker2 = CreateDynamicObject(19482, 2209.540771, 2060.499023, 99.303589, -0.000000, 270.000000, -89.999962, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x40000000);
	biker2 = CreateDynamicObject(19482, 2215.122803, 2060.499023, 99.303589, -0.000000, 270.000000, -89.999962, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x40000000);
	biker2 = CreateDynamicObject(19445, 2217.101318, 2060.029785, 99.403503, 0.000000, 270.000000, -90.000008, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14846, "genintintpoliceb", "p_floor2", 0xFF707070);
	biker2 = CreateDynamicObject(19445, 2207.471436, 2058.368164, 101.073593, -0.000000, 180.000000, 89.999977, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11100, "bendytunnel_sfse", "ws_altz_wall10b", 0xFF909090);
	biker2 = CreateDynamicObject(19445, 2217.101318, 2058.368164, 101.073593, -0.000000, 180.000000, 89.999977, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11100, "bendytunnel_sfse", "ws_altz_wall10b", 0xFF909090);
	biker2 = CreateDynamicObject(19482, 2209.452881, 2060.959961, 97.473541, 89.999992, 179.999985, -89.999985, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x60000000);
	biker2 = CreateDynamicObject(19482, 2210.103271, 2049.892578, 97.473541, 89.999992, 269.960419, 0.039518, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x60000000);
	biker2 = CreateDynamicObject(19445, 2202.604004, 2055.403564, 97.593483, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11092, "burgalrystore_sfse", "ws_altz_wall2bluetop", 0xFFDDDDDD);
	biker2 = CreateDynamicObject(19445, 2222.013672, 2055.403564, 97.593483, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11092, "burgalrystore_sfse", "ws_altz_wall2bluetop", 0xFFDDDDDD);
	biker2 = CreateDynamicObject(14578, 2212.808594, 2050.512451, 100.413452, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10226, "sfeship1", "sf_ship_generic8", 0);
	biker2 = CreateDynamicObject(19426, 2215.122803, 2049.139160, 97.593475, -0.000007, 179.999985, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2214.402100, 2049.859863, 97.593475, -0.000000, 179.999985, -0.000045, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19426, 2215.122803, 2050.580566, 97.593475, -0.000007, 179.999985, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2215.843506, 2049.859863, 97.593475, -0.000000, 179.999985, -0.000045, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19426, 2209.507568, 2049.139160, 97.593475, -0.000007, 179.999985, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2208.786865, 2049.859863, 97.593475, -0.000000, 179.999985, -0.000045, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19426, 2209.507568, 2050.580566, 97.593475, -0.000007, 179.999985, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2210.228271, 2049.859863, 97.593475, -0.000000, 179.999985, -0.000045, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19445, 2220.294678, 2049.789795, 97.593475, 0.000000, 0.000000, -89.999969, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11092, "burgalrystore_sfse", "ws_altz_wall2bluetop", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(19426, 2221.142578, 2049.139160, 97.593475, -0.000007, 179.999985, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2220.421875, 2049.859863, 97.593475, -0.000000, 179.999985, -0.000045, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19426, 2221.142578, 2050.580566, 97.593475, -0.000007, 179.999985, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2221.863281, 2049.859863, 97.593475, -0.000000, 179.999985, -0.000045, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19426, 2203.487793, 2049.139160, 97.593475, -0.000007, 179.999985, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2202.767090, 2049.859863, 97.593475, -0.000000, 179.999985, -0.000045, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19426, 2203.487793, 2050.580566, 97.593475, -0.000007, 179.999985, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFFCCCCCC);
	biker2 = CreateDynamicObject(19426, 2204.208496, 2049.859863, 97.593475, -0.000000, 179.999985, -0.000045, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10891, "bakery_sfse", "ws_altz_wall4", 0xFF808080);
	biker2 = CreateDynamicObject(19482, 2220.644775, 2049.892578, 97.473541, 89.999992, 269.950500, 0.049418, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x60000000);
	biker2 = CreateDynamicObject(19482, 2215.694336, 2049.892578, 97.473541, 89.999992, 269.950500, 0.049418, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x60000000);
	biker2 = CreateDynamicObject(19445, 2204.746826, 2049.789795, 97.593475, 0.000000, 0.000000, -89.999969, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11092, "burgalrystore_sfse", "ws_altz_wall2bluetop", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(19482, 2208.952148, 2049.892578, 97.473541, 89.999992, 269.960419, 0.039518, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x60000000);
	biker2 = CreateDynamicObject(19482, 2203.961670, 2049.892578, 97.473541, 89.999992, 269.960419, 0.039518, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x60000000);
	biker2 = CreateDynamicObject(19445, 2217.158936, 2050.822754, 99.403503, 0.000000, 270.000000, 89.999931, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14846, "genintintpoliceb", "p_floor2", 0xFF707070);
	biker2 = CreateDynamicObject(19482, 2203.459229, 2050.134521, 99.303589, -0.000000, 270.000000, -89.999962, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x40000000);
	biker2 = CreateDynamicObject(19445, 2207.529053, 2050.822754, 99.403503, 0.000000, 270.000000, 89.999931, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14846, "genintintpoliceb", "p_floor2", 0xFF707070);
	biker2 = CreateDynamicObject(19445, 2217.158936, 2052.484375, 101.073593, 0.000000, 180.000000, -89.999992, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11100, "bendytunnel_sfse", "ws_altz_wall10b", 0xFF909090);
	biker2 = CreateDynamicObject(19445, 2207.529053, 2052.484375, 101.073593, 0.000000, 180.000000, -89.999992, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11100, "bendytunnel_sfse", "ws_altz_wall10b", 0xFF909090);
	biker2 = CreateDynamicObject(19482, 2209.540771, 2050.134521, 99.303589, -0.000007, 270.000000, -89.999939, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x40000000);
	biker2 = CreateDynamicObject(19482, 2215.122803, 2050.134521, 99.303589, -0.000007, 270.000000, -89.999939, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x40000000);
	biker2 = CreateDynamicObject(19479, 2202.699219, 2055.057861, 100.573547, 180.000000, 179.999985, 0.000015, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x60000000);
	biker2 = CreateDynamicObject(19479, 2221.915283, 2055.057861, 100.573547, 180.000000, 179.999985, 0.000015, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x60000000);
	biker2 = CreateDynamicObject(19445, 2202.945068, 2056.496338, 99.408501, -0.000007, 270.000000, -0.000015, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14846, "genintintpoliceb", "p_floor2", 0xFF707070);
	biker2 = CreateDynamicObject(19445, 2204.606689, 2056.496338, 101.078590, 0.000007, 180.000000, 179.999832, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11100, "bendytunnel_sfse", "ws_altz_wall10b", 0xFFAAAAAA);
	biker2 = CreateDynamicObject(19445, 2221.675049, 2056.496338, 99.408501, -0.000007, 270.000000, 179.999878, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14846, "genintintpoliceb", "p_floor2", 0xFF707070);
	biker2 = CreateDynamicObject(19445, 2220.013428, 2056.496338, 101.078590, 0.000007, 180.000000, -0.000183, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11100, "bendytunnel_sfse", "ws_altz_wall10b", 0xFFAAAAAA);
	biker2 = CreateDynamicObject(14578, 2220.915283, 2054.463135, 100.413452, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10226, "sfeship1", "sf_ship_generic8", 0);
	biker2 = CreateDynamicObject(14578, 2214.114746, 2053.552246, 100.413452, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10226, "sfeship1", "sf_ship_generic8", 0);
	biker2 = CreateDynamicObject(14578, 2206.843262, 2050.432129, 100.413452, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10226, "sfeship1", "sf_ship_generic8", 0);
	biker2 = CreateDynamicObject(8661, 2212.224609, 2053.034424, 100.253510, 180.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11100, "bendytunnel_sfse", "ws_altz_wall10b", 0xFF404040);
	biker2 = CreateDynamicObject(971, 2208.552979, 2055.546143, 99.453545, 89.999992, 179.999985, -90.000008, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(biker2, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(biker2, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(biker2, 2, 4003, "cityhall_tr_lan", "sl_griddyfence_sml", 0xFF505050);
	SetDynamicObjectMaterial(biker2, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(biker2, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(biker2, 5, 19962, "samproadsigns", "materialtext1", 0);
	biker2 = CreateDynamicObject(14397, 2205.671387, 2057.218506, 99.153511, 270.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0);
	biker2 = CreateDynamicObject(14397, 2218.933350, 2043.588135, 99.153511, 270.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0);
	biker2 = CreateDynamicObject(14397, 2215.444824, 2057.218506, 99.153511, 270.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0);
	biker2 = CreateDynamicObject(14397, 2210.671387, 2057.218506, 99.153511, 270.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0);
	biker2 = CreateDynamicObject(971, 2215.552979, 2055.546143, 99.453545, 89.999992, 179.999985, -90.000008, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(biker2, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(biker2, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(biker2, 2, 4003, "cityhall_tr_lan", "sl_griddyfence_sml", 0xFF505050);
	SetDynamicObjectMaterial(biker2, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(biker2, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(biker2, 5, 19962, "samproadsigns", "materialtext1", 0);
	biker2 = CreateDynamicObject(14397, 2204.753906, 2053.547119, 99.151512, 270.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0);
	biker2 = CreateDynamicObject(14397, 2204.753906, 2058.818604, 99.151512, 270.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0);
	biker2 = CreateDynamicObject(971, 2222.552979, 2055.546143, 99.453545, 89.999992, 179.999985, -90.000008, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 6
	SetDynamicObjectMaterial(biker2, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(biker2, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(biker2, 2, 4003, "cityhall_tr_lan", "sl_griddyfence_sml", 0xFF505050);
	SetDynamicObjectMaterial(biker2, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(biker2, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(biker2, 5, 19962, "samproadsigns", "materialtext1", 0);
	biker2 = CreateDynamicObject(14578, 2217.880615, 2054.200928, 100.408455, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10226, "sfeship1", "sf_ship_generic8", 0);
	biker2 = CreateDynamicObject(14578, 2209.435547, 2057.183594, 100.408455, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10226, "sfeship1", "sf_ship_generic8", 0);
	biker2 = CreateDynamicObject(19445, 2211.968994, 2049.779785, 97.593475, 0.000000, 0.000000, -89.999969, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11092, "burgalrystore_sfse", "ws_altz_wall2bluetop", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(19482, 2221.405029, 2060.499023, 99.303589, -0.000000, 270.000000, -89.999962, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x40000000);
	biker2 = CreateDynamicObject(19482, 2214.366211, 2049.892578, 97.473541, 89.999992, 269.960419, 0.039518, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x60000000);
	biker2 = CreateDynamicObject(19482, 2221.405029, 2050.134521, 99.303589, -0.000007, 270.000000, -89.999939, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x40000000);
	biker2 = CreateDynamicObject(19479, 2208.291260, 2054.997314, 100.223480, 180.000000, 90.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 19063, "xmasorbs", "sphere", 0x80FFFFFF);
	biker2 = CreateDynamicObject(19479, 2215.342529, 2054.997314, 100.223480, 180.000000, 90.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 19063, "xmasorbs", "sphere", 0x80FFFFFF);
	biker2 = CreateDynamicObject(937, 2218.008545, 2056.151855, 96.343460, 0.000000, -0.000015, 179.999908, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(936, 2216.127197, 2056.131836, 96.343460, 0.000000, -0.000015, 179.999908, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(937, 2214.237549, 2056.151855, 96.343460, 0.000000, -0.000015, 179.999908, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(937, 2214.217529, 2054.910645, 96.343460, -0.000000, 0.000000, -0.000061, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(936, 2216.098877, 2054.930664, 96.343460, -0.000000, 0.000000, -0.000061, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(937, 2217.988525, 2054.910645, 96.343460, -0.000000, 0.000000, -0.000061, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(937, 2210.424805, 2056.151855, 96.343460, 0.000000, -0.000022, 179.999863, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(936, 2208.543457, 2056.131836, 96.343460, 0.000000, -0.000022, 179.999863, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(937, 2206.653809, 2056.151855, 96.343460, 0.000000, -0.000022, 179.999863, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(937, 2206.633789, 2054.910645, 96.343460, -0.000000, 0.000007, -0.000061, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(936, 2208.515137, 2054.930664, 96.343460, -0.000000, 0.000007, -0.000061, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(937, 2210.404785, 2054.910645, 96.343460, -0.000000, 0.000007, -0.000061, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(2431, 2216.651611, 2056.594238, 98.950043, 89.999992, 89.999992, -89.999992, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker2, 0, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 1, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 2, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	biker2 = CreateDynamicObject(2431, 2213.781250, 2056.594238, 98.950043, 89.999992, 89.999992, -89.999977, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker2, 0, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 1, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 2, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	biker2 = CreateDynamicObject(2431, 2209.014160, 2056.594238, 98.950043, 89.999992, 89.999992, -89.999977, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker2, 0, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 1, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 2, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	biker2 = CreateDynamicObject(2431, 2206.143799, 2056.594238, 98.950043, 89.999992, 90.000000, -89.999969, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker2, 0, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 1, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 2, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	biker2 = CreateDynamicObject(2431, 2208.085693, 2054.590820, 98.950043, 89.999992, 224.950516, -44.950569, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker2, 0, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 1, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 2, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	biker2 = CreateDynamicObject(2431, 2210.956055, 2054.590820, 98.950043, 89.999992, 224.934021, -44.934055, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker2, 0, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 1, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 2, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	biker2 = CreateDynamicObject(2431, 2215.723145, 2054.590820, 98.950043, 89.999992, 224.934021, -44.934055, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker2, 0, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 1, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 2, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	biker2 = CreateDynamicObject(2431, 2218.593506, 2054.590820, 98.950043, 89.999992, 224.934021, -44.934055, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 3
	SetDynamicObjectMaterial(biker2, 0, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 1, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	SetDynamicObjectMaterial(biker2, 2, 17555, "eastbeach3c_lae2", "eastwall1_LAe2", 0);
	biker2 = CreateDynamicObject(19480, 2212.390137, 2055.584229, 95.880493, 180.000000, 90.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 3694, "ryderholes", "ryd_holes", 0x90000000);
	biker2 = CreateDynamicObject(2972, 2218.176025, 2049.241943, 97.653526, 0.000000, 0.000000, 450.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3355, "cxref_savhus", "sw_wind07", 0);
	SetDynamicObjectMaterial(biker2, 1, 15034, "genhotelsave", "AH_windows", 0);
	biker2 = CreateDynamicObject(2975, 2218.156006, 2049.271973, 97.423492, 0.000000, 0.000000, 360.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 10864, "bridgeland_sfse", "ws_altz_wall1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker2, 1, 15034, "genhotelsave", "AH_windows", 0);
	biker2 = CreateDynamicObject(2972, 2212.241943, 2049.241943, 97.653526, 0.000007, 0.000000, 89.999977, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3355, "cxref_savhus", "sw_wind07", 0);
	SetDynamicObjectMaterial(biker2, 1, 15034, "genhotelsave", "AH_windows", 0);
	biker2 = CreateDynamicObject(2975, 2212.221924, 2049.271973, 97.423492, -0.000000, 0.000007, -0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 10864, "bridgeland_sfse", "ws_altz_wall1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker2, 1, 15034, "genhotelsave", "AH_windows", 0);
	biker2 = CreateDynamicObject(2972, 2206.479004, 2049.241943, 97.653526, 0.000015, 0.000000, 89.999954, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3355, "cxref_savhus", "sw_wind07", 0);
	SetDynamicObjectMaterial(biker2, 1, 15034, "genhotelsave", "AH_windows", 0);
	biker2 = CreateDynamicObject(2975, 2206.458984, 2049.271973, 97.423492, -0.000000, 0.000015, -0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 10864, "bridgeland_sfse", "ws_altz_wall1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker2, 1, 15034, "genhotelsave", "AH_windows", 0);
	biker2 = CreateDynamicObject(16734, 2206.338379, 2037.008545, 96.323563, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10765, "airportgnd_sfse", "white", 0);
	biker2 = CreateDynamicObject(16734, 2212.061768, 2037.008545, 96.323563, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10765, "airportgnd_sfse", "white", 0);
	biker2 = CreateDynamicObject(14578, 2211.268311, 2071.072510, 102.913422, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10226, "sfeship1", "sf_ship_generic8", 0);
	biker2 = CreateDynamicObject(2558, 2218.641846, 2050.284180, 97.563515, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(biker2, 1, 14443, "ganghoos", "ah_curtains1", 0);
	biker2 = CreateDynamicObject(18766, 2212.045410, 2050.282959, 96.133484, 180.000000, 90.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 19962, "samproadsigns", "materialtext1", 0);
	biker2 = CreateDynamicObject(2559, 2206.969971, 2050.284180, 97.563515, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(biker2, 1, 14443, "ganghoos", "ah_curtains1", 0);
	biker2 = CreateDynamicObject(14578, 2209.977051, 2069.964844, 104.053360, 90.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 10226, "sfeship1", "sf_ship_generic8", 0);
	biker2 = CreateDynamicObject(936, 2207.342285, 2060.433105, 96.343460, -0.000000, 0.000000, -0.000122, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(936, 2205.460449, 2060.433105, 96.343460, -0.000000, 0.000000, -0.000122, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(19172, 2206.737061, 2060.980225, 97.833458, 0.000000, -1.299999, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14853, "gen_pol_vegas", "mp_cop_pinboard", 0);
	biker2 = CreateDynamicObject(2924, 2211.612549, 2073.230713, 100.573509, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 12805, "ce_loadbay", "sw_waredoor", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(3111, 2207.353027, 2060.956055, 97.664055, 87.699974, 90.000000, -90.199997, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 65535, "none", "none", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(3761, 2202.927490, 2055.195801, 97.123482, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker2, 3, 2589, "ab_ab", "ab_sheetSteel", 0xFFAAAAAA);
	biker2 = CreateDynamicObject(3761, 2201.966553, 2055.195801, 97.123482, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker2, 3, 2589, "ab_ab", "ab_sheetSteel", 0xFFAAAAAA);
	biker2 = CreateDynamicObject(3761, 2221.691650, 2055.195801, 97.123482, 0.000000, 0.000000, 179.999893, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker2, 3, 2589, "ab_ab", "ab_sheetSteel", 0xFFAAAAAA);
	biker2 = CreateDynamicObject(3761, 2222.652588, 2055.195801, 97.123482, 0.000000, 0.000000, 179.999893, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker2, 3, 2589, "ab_ab", "ab_sheetSteel", 0xFFAAAAAA);
	biker2 = CreateDynamicObject(1431, 2203.083252, 2057.081055, 95.943542, 0.000000, 0.000000, 275.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 12821, "alleystuff", "Gen_Crate", 0);
	biker2 = CreateDynamicObject(1431, 2203.083252, 2055.149170, 95.943542, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 9583, "bigshap_sfw", "freight_crate5", 0);
	biker2 = CreateDynamicObject(1431, 2203.083252, 2053.427490, 95.943542, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 1414, "break_street1", "cj_crates", 0);
	biker2 = CreateDynamicObject(1348, 2203.178955, 2059.162842, 96.533447, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 2, 3241, "conhooses", "ws_corr_metal1", 0);
	biker2 = CreateDynamicObject(930, 2209.850098, 2059.890381, 96.343513, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 2, 3241, "conhooses", "ws_corr_metal1", 0);
	biker2 = CreateDynamicObject(2478, 2203.187744, 2057.428223, 97.833496, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 9583, "bigshap_sfw", "freight_crate5", 0);
	biker2 = CreateDynamicObject(2478, 2203.187744, 2053.738037, 97.833496, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14612, "ab_abattoir_box", "ab_boxStack2", 0);
	biker2 = CreateDynamicObject(2478, 2203.187744, 2055.459473, 97.013535, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 2567, "ab", "Box_Texturepage", 0);
	biker2 = CreateDynamicObject(922, 2217.933594, 2060.437744, 96.763466, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 65535, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(biker2, 1, 14800, "gen_otb_bits", "ab_boxStack", 0);
	biker2 = CreateDynamicObject(930, 2217.981201, 2060.460205, 97.283463, 0.000000, 0.000000, -171.999985, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 2, 3241, "conhooses", "ws_corr_metal1", 0);
	biker2 = CreateDynamicObject(1756, 2219.766113, 2050.467773, 95.873505, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 18028, "cj_bar2", "GB_nastybar09", 0);
	biker2 = CreateDynamicObject(2648, 2221.225586, 2052.749512, 97.013512, 0.000000, 0.000000, -60.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 2, 14859, "gf1", "mp_apt1_pos1", 0);
	biker2 = CreateDynamicObject(2234, 2217.792969, 2051.508057, 95.873505, 0.000000, 0.000000, -15.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14500, "imm_roomss", "Bow_bar_top", 0);
	biker2 = CreateDynamicObject(1670, 2218.362061, 2051.942871, 96.403526, 0.000000, 0.000000, 75.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(biker2, 3, 19962, "samproadsigns", "materialtext1", 0);
	biker2 = CreateDynamicObject(1670, 2218.797363, 2051.826172, 96.403526, 0.000000, 0.000000, 2.999976, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(biker2, 3, 19962, "samproadsigns", "materialtext1", 0);
	biker2 = CreateDynamicObject(2674, 2217.154785, 2051.162354, 95.883507, 0.000000, 0.000000, 155.400009, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 65535, "none", "none", 0xFFFFFFFF);
	biker2 = CreateDynamicObject(1767, 2216.947754, 2050.499023, 95.873505, 0.000000, 0.000000, 131.699982, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 18028, "cj_bar2", "GB_nastybar09", 0);
	biker2 = CreateDynamicObject(936, 2207.453125, 2050.450684, 96.343460, -0.000000, -0.000007, 179.999832, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(936, 2205.572998, 2050.450684, 96.343460, -0.000000, -0.000007, 179.999832, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 3988, "civic06_lan", "Bow_stained_wall", 0);
	SetDynamicObjectMaterial(biker2, 1, 8391, "ballys01", "CJ_blackplastic", 0);
	biker2 = CreateDynamicObject(1650, 2206.386230, 2060.627930, 97.123466, 0.000000, 0.000000, 1115.300049, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 12986, "sw_well1", "Bio_64", 0);
	biker2 = CreateDynamicObject(19328, 2214.726074, 2060.177734, 97.861778, 0.000000, -1.700000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14802, "lee_bdupsflat", "Bdup_Poster", 0);
	biker2 = CreateDynamicObject(19328, 2215.116455, 2050.687012, 97.850174, 0.000000, -1.700000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14742, "mp3", "GB_rapposter05", 0);
	biker2 = CreateDynamicObject(17969, 2210.040527, 2064.829834, 98.697220, -35.900017, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 5998, "sunstr_lawn", "ganggraf02_LA", 0);
	biker2 = CreateDynamicObject(19328, 2209.461914, 2050.687012, 97.787956, 0.000000, -1.700000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14801, "lee_bdupsmain", "Bdup_graf1", 0);
	biker2 = CreateDynamicObject(19477, 2217.960449, 2060.972168, 98.453468, -5.000002, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14801, "lee_bdupsmain", "Bdup_graf5", 0);
	biker2 = CreateDynamicObject(1431, 2221.588867, 2053.427734, 95.943542, -0.000015, 0.000001, 94.999985, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 12821, "alleystuff", "Gen_Crate", 0);
	biker2 = CreateDynamicObject(1431, 2221.588867, 2055.359619, 95.943542, -0.000015, 0.000000, 89.999985, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 9583, "bigshap_sfw", "freight_crate5", 0);
	biker2 = CreateDynamicObject(1431, 2221.588867, 2057.081299, 95.943542, -0.000015, 0.000000, 89.999985, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 1414, "break_street1", "cj_crates", 0);
	biker2 = CreateDynamicObject(19893, 2208.005371, 2060.238281, 96.813507, 0.000000, 0.000000, -40.799999, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 1, 3881, "apsecurity_sfxrf", "WIN_DESKTOP", 0);
	biker2 = CreateDynamicObject(2922, 2214.602783, 2070.624268, 100.573524, 0.000015, 0.000000, 89.999954, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 18646, "matcolours", "grey-80-percent", 0);
	SetDynamicObjectMaterial(biker2, 1, 10765, "airportgnd_sfse", "white", 0);
	biker2 = CreateDynamicObject(2002, 2213.395020, 2055.546387, 95.573502, 0.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 19962, "samproadsigns", "materialtext1", 0);
	biker2 = CreateDynamicObject(2002, 2210.673584, 2055.546387, 95.573502, 0.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 19962, "samproadsigns", "materialtext1", 0);
	biker2 = CreateDynamicObject(2002, 2205.702393, 2055.546387, 95.573502, 0.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 19962, "samproadsigns", "materialtext1", 0);
	biker2 = CreateDynamicObject(2002, 2221.136719, 2054.365234, 96.303497, 0.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 19962, "samproadsigns", "materialtext1", 0);
	biker2 = CreateDynamicObject(2002, 2221.136719, 2052.753662, 96.303497, 0.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 19962, "samproadsigns", "materialtext1", 0);
	biker2 = CreateDynamicObject(2002, 2221.366943, 2053.604248, 96.303497, 0.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 19962, "samproadsigns", "materialtext1", 0);
	biker2 = CreateDynamicObject(1431, 2214.219971, 2071.983887, 99.893517, 0.000000, 0.000000, 270.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 9583, "bigshap_sfw", "freight_crate5", 0);
	biker2 = CreateDynamicObject(19482, 2212.157227, 2061.039063, 97.613510, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 14481, "sweets_bit2", "ab_curtain_shwr", 0);
	biker2 = CreateDynamicObject(1348, 2221.490723, 2059.162842, 96.533447, 0.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 2, 3241, "conhooses", "ws_corr_metal1", 0);
	biker2 = CreateDynamicObject(1219, 2212.242188, 2049.714844, 98.133499, 270.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 11631, "mp_ranchcut", "mpCJ_DarkWood", 0);
	biker2 = CreateDynamicObject(2345, 2208.681152, 2056.718262, 96.552208, 26.000002, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 726, "gtatreesh", "oakleaf2", 0xFF808080);
	biker2 = CreateDynamicObject(2345, 2217.794678, 2056.718262, 96.552208, 26.000002, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 726, "gtatreesh", "oakleaf2", 0xFF808080);
	biker2 = CreateDynamicObject(2255, 2214.137695, 2068.768066, 100.693527, 0.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 16146, "des_ufoinn", "electricbox256", 0);
	SetDynamicObjectMaterial(biker2, 1, 18646, "matcolours", "grey-80-percent", 0);
	biker2 = CreateDynamicObject(2255, 2214.142578, 2067.987305, 100.693527, 0.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 14392, "dr_gsstudio", "rec_mix2", 0);
	SetDynamicObjectMaterial(biker2, 1, 18646, "matcolours", "grey-80-percent", 0);
	biker2 = CreateDynamicObject(2255, 2213.967773, 2067.521973, 100.693527, 0.000000, 0.000000, -45.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 16146, "des_ufoinn", "electricbox256", 0);
	SetDynamicObjectMaterial(biker2, 1, 18646, "matcolours", "grey-80-percent", 0);
	biker2 = CreateDynamicObject(2255, 2214.654297, 2068.208496, 100.693527, 0.000000, 0.000000, 135.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 2
	SetDynamicObjectMaterial(biker2, 0, 16146, "des_ufoinn", "electricbox256", 0xFF808080);
	SetDynamicObjectMaterial(biker2, 1, 18646, "matcolours", "grey-80-percent", 0);
	biker2 = CreateDynamicObject(19478, 2214.602783, 2068.963379, 101.063492, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 1
	SetDynamicObjectMaterial(biker2, 0, 18365, "sawmillcs_t", "electricity_64", 0xFFCCCCCC);
	CreateDynamicObject(1893, 2211.807373, 2069.652832, 103.063492, 0.000000, 0.000007, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1893, 2211.807373, 2064.301514, 101.403519, 0.000000, 0.000007, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1893, 2206.205566, 2059.530273, 99.533585, 0.000000, 0.000037, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1893, 2217.417969, 2059.530273, 99.533585, 0.000000, 0.000029, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1893, 2212.783447, 2051.322266, 99.533585, 0.000000, 0.000037, 179.999893, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1893, 2218.624756, 2051.322266, 99.533585, 0.000000, 0.000037, 179.999893, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1893, 2207.012451, 2051.322266, 99.533585, 0.000000, 0.000029, 179.999893, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1687, 2205.816406, 2055.239990, 100.373421, 180.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1687, 2218.229004, 2055.430176, 100.373421, 180.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1687, 2210.916504, 2055.520264, 100.373421, 180.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(18074, 2214.752197, 2056.012451, 98.928932, 180.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(18074, 2209.818604, 2056.012451, 98.928932, 180.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(18074, 2209.823975, 2056.012451, 99.188919, -0.000030, 359.999939, 89.999985, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(18074, 2214.757568, 2056.012451, 99.188919, -0.000030, 359.999939, 89.999985, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(18074, 2209.985107, 2055.172607, 98.928932, 0.000015, 179.999985, 89.999947, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(18074, 2214.918701, 2055.172607, 98.928932, 0.000015, 179.999985, 89.999947, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(18074, 2214.913330, 2055.172607, 99.188919, -0.000038, 359.999939, -89.999962, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(18074, 2209.979736, 2055.172607, 99.188919, -0.000038, 359.999939, -89.999962, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2066, 2208.812988, 2060.488525, 95.873505, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2066, 2208.812988, 2060.488525, 97.263466, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(3017, 2205.394043, 2060.109375, 96.833504, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(3633, 2203.437988, 2051.388428, 96.343452, -0.000000, -0.000000, 0.000068, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(3633, 2203.437988, 2051.388428, 97.283424, -0.000000, -0.000000, 0.000068, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(3632, 2221.502197, 2057.373047, 97.043503, 90.000000, 180.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(3632, 2221.440186, 2055.908936, 97.043503, 90.000000, -176.399994, 5.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(935, 2215.351074, 2051.071045, 96.433472, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(935, 2214.380127, 2051.191162, 96.223450, 90.000000, -14.500000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1430, 2214.292480, 2059.789795, 96.173424, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1430, 2215.209717, 2059.701416, 96.173424, 0.000000, 0.000000, 10.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1650, 2207.927246, 2060.673340, 97.123466, 0.000000, 0.000000, -21.199999, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19328, 2209.896973, 2060.177734, 98.013504, 0.000000, 1.799999, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(17969, 2214.601563, 2064.453613, 98.252777, 34.599998, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1577, 2207.380859, 2060.761230, 96.793503, 0.000000, 0.000000, -10.400000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2976, 2205.464600, 2060.475830, 96.813477, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1644, 2206.505615, 2060.174072, 96.953453, 90.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1644, 2206.944580, 2060.613037, 96.953453, 90.000000, 0.000000, 45.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2059, 2207.166504, 2060.300537, 96.833504, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2059, 2205.587402, 2060.300537, 96.843483, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2059, 2205.997803, 2050.325195, 96.843483, 0.000000, 0.000000, -156.800018, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(2690, 2215.329834, 2050.970215, 97.293526, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(918, 2204.856201, 2050.219482, 97.163498, 0.000000, 0.000000, 0.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(927, 2214.635010, 2069.932617, 100.833511, 0.000015, 0.000000, 89.999954, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(927, 2214.636475, 2068.486084, 98.963348, 0.000015, 180.000000, 89.999954, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(18074, 2210.078857, 2061.044434, 98.928932, 180.000000, 0.000000, 90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(14600, 2210.053223, 2050.069580, 95.853500, 0.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19583, 2207.060791, 2060.263672, 96.833511, 0.000000, 0.000000, 180.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19583, 2207.060791, 2056.353027, 96.823509, 0.000000, 0.000000, 109.799973, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19583, 2209.959229, 2056.576904, 96.823509, 0.000000, 0.000000, 68.199966, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19583, 2214.380127, 2056.540527, 96.823509, 0.000000, 0.000000, 68.199966, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(19583, 2217.148926, 2054.604004, 96.823509, 0.000000, 0.000000, 68.199966, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(1462, 2221.407959, 2051.866699, 95.873505, 0.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(3092, 2204.894043, 2056.366699, 99.817032, 33.399960, 449.999939, -89.999954, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
	CreateDynamicObject(18706, 2215.770996, 2068.150879, 99.903717, 45.000000, 0.000000, -90.000000, -1, 102, -1, STREAMER_OBJECT_SD, 150.0); // 0
}

AS_Int()
{

	new auto;
	auto = CreateDynamicObject(6959, 1506.649414, 1462.375732, 9.883185, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15055, "svlamid", "AH_flroortile3", 0xFFAAAAAA);
	auto = CreateDynamicObject(19929, 1513.508179, 1460.745483, 9.869047, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(auto, 1, 18029, "genintintsmallrest", "GB_restaursmll15", 0);
	auto = CreateDynamicObject(19353, 1521.477661, 1457.176270, 11.603181, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFFFFFFF);
	auto = CreateDynamicObject(19353, 1519.956787, 1458.695923, 11.603181, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFDDDDDD);
	auto = CreateDynamicObject(19937, 1513.545776, 1459.714844, 9.957022, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19929, 1514.501099, 1458.886597, 9.869047, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(auto, 1, 18029, "genintintsmallrest", "GB_restaursmll15", 0);
	auto = CreateDynamicObject(19929, 1517.361328, 1458.886597, 9.869047, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(auto, 1, 18029, "genintintsmallrest", "GB_restaursmll15", 0);
	auto = CreateDynamicObject(19353, 1513.567017, 1463.436768, 11.603181, -0.000007, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19353, 1512.036377, 1464.957520, 11.603181, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19353, 1506.948364, 1447.546265, 11.603181, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFB09200);
	auto = CreateDynamicObject(7913, 1523.458496, 1454.695068, 13.740748, -0.000022, 270.000000, -89.999939, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 13461, "ce_nitelite", "ws_boxhouse_wins6nite", 0);
	auto = CreateDynamicObject(7913, 1523.468506, 1448.256348, 13.740748, -0.000022, 270.000000, -89.999939, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 13461, "ce_nitelite", "ws_boxhouse_wins6nite", 0);
	auto = CreateDynamicObject(7913, 1520.637329, 1445.602417, 13.740748, 0.000000, 270.000000, -179.999893, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 13461, "ce_nitelite", "ws_boxhouse_wins6nite", 0);
	auto = CreateDynamicObject(19426, 1505.537964, 1455.571167, 11.603181, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19353, 1513.368286, 1447.546265, 11.603181, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFB09200);
	auto = CreateDynamicObject(7913, 1517.498047, 1445.592407, 13.740748, 0.000000, 270.000000, -179.999893, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 13461, "ce_nitelite", "ws_boxhouse_wins6nite", 0);
	auto = CreateDynamicObject(19426, 1511.833008, 1446.825562, 11.603181, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(19426, 1514.894043, 1446.825562, 11.603181, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(19426, 1508.472290, 1446.825562, 11.603181, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(19757, 1515.074707, 1446.027588, 9.855398, 0.000000, 0.000000, 720.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1522.935059, 1446.067627, 9.855398, 0.000000, 0.000000, 720.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1520.485107, 1446.067627, 9.855398, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1517.334595, 1446.067627, 9.855398, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1522.935059, 1448.116943, 9.855398, 0.000000, 0.000000, 720.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1522.935059, 1457.004883, 9.855398, 0.000000, 0.000000, 720.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1522.935059, 1454.630981, 9.855398, 0.000000, 0.000000, 720.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19866, 1517.537720, 1456.360352, 13.342956, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 3979, "civic01_lan", "airportwall_256128", 0xFFE8C100);
	auto = CreateDynamicObject(19866, 1519.938354, 1458.770752, 13.342956, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 3979, "civic01_lan", "airportwall_256128", 0xFFB09200);
	auto = CreateDynamicObject(19866, 1512.537720, 1456.360352, 13.342956, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 3979, "civic01_lan", "airportwall_256128", 0xFFE8C100);
	auto = CreateDynamicObject(19866, 1507.537720, 1456.360352, 13.342956, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 3979, "civic01_lan", "airportwall_256128", 0xFFE8C100);
	auto = CreateDynamicObject(19353, 1521.477661, 1457.176270, 15.103181, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFFFFFFF);
	auto = CreateDynamicObject(19353, 1519.956787, 1458.695923, 15.103181, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFDDDDDD);
	auto = CreateDynamicObject(19353, 1521.477661, 1457.176270, 18.603184, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFFFFFFF);
	auto = CreateDynamicObject(19353, 1519.956787, 1458.695923, 18.603184, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFDDDDDD);
	auto = CreateDynamicObject(19866, 1522.908203, 1454.620483, 13.342956, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFDDDDDD);
	auto = CreateDynamicObject(19866, 1522.908203, 1449.620483, 13.342956, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFDDDDDD);
	auto = CreateDynamicObject(19866, 1517.306274, 1446.105591, 13.342956, 0.000000, -0.000007, 269.999939, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFFFFFFF);
	auto = CreateDynamicObject(19866, 1522.306274, 1446.105591, 13.342956, 0.000000, -0.000007, 269.999939, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFFFFFFF);
	auto = CreateDynamicObject(19757, 1522.935059, 1446.067627, 9.905399, 90.000000, 0.000000, 720.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1522.935059, 1446.067627, 13.325405, 90.000000, 0.000000, 720.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1522.935059, 1446.067627, 13.325405, 90.000000, 0.000000, 990.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1522.935059, 1446.067627, 9.905397, 90.000000, 0.000000, 990.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1522.935059, 1446.067627, 14.145401, 89.999992, 89.999992, -89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1522.935059, 1446.067627, 14.145401, 89.999992, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1522.935059, 1446.067627, 18.335402, 89.999992, 89.999992, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1522.935059, 1446.067627, 18.335400, 89.999992, 0.000011, -89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19426, 1510.092407, 1446.825562, 13.383188, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFB09200);
	auto = CreateDynamicObject(19445, 1510.158325, 1447.546265, 15.103181, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFB09200);
	auto = CreateDynamicObject(19353, 1505.427856, 1445.941284, 15.103181, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFFFFFFF);
	auto = CreateDynamicObject(19426, 1514.894043, 1446.825562, 15.103181, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(19445, 1510.158325, 1447.546265, 18.603184, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFB09200);
	auto = CreateDynamicObject(19353, 1505.427856, 1445.941284, 18.603184, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFFFFFFF);
	auto = CreateDynamicObject(19426, 1514.894043, 1446.825562, 18.603184, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(16734, 1528.415649, 1442.711914, 10.362912, 0.000000, 0.000000, 135.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-30-percent", 0);
	auto = CreateDynamicObject(975, 1505.353149, 1449.141724, 13.170928, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19426, 1506.252808, 1456.291870, 11.603181, 0.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19426, 1505.537964, 1457.011230, 15.088182, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19445, 1506.252808, 1452.256958, 15.088182, 0.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19325, 1505.343018, 1448.721680, 10.057112, 89.999992, -89.999992, -90.000023, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF808080);
	auto = CreateDynamicObject(975, 1505.353149, 1453.811646, 13.170928, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19325, 1505.343018, 1454.392578, 10.057112, 89.999992, -90.000000, -89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF808080);
	auto = CreateDynamicObject(975, 1505.353149, 1447.601318, 13.170928, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1505.353149, 1455.402710, 13.170928, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19445, 1501.507202, 1457.011230, 11.603181, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(2004, 1505.376099, 1450.797852, 12.936408, 0.000014, 179.999969, -89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0xFF505050);
	SetDynamicObjectMaterial(auto, 1, 9515, "bigboxtemp1", "sf_concrete1", 0xFF505050);
	auto = CreateDynamicObject(975, 1505.353149, 1449.141724, 5.470912, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1505.353149, 1453.811646, 5.470912, -0.000007, 270.000000, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19426, 1505.532959, 1453.751709, 13.423177, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19426, 1505.532959, 1450.251709, 13.423177, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19426, 1505.532959, 1446.751709, 13.423177, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19426, 1505.537964, 1457.011230, 18.588182, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19445, 1506.252808, 1452.256958, 18.588182, 0.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19866, 1522.908203, 1444.620483, 13.342956, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFDDDDDD);
	auto = CreateDynamicObject(19757, 1522.935059, 1451.360596, 9.855398, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19940, 1505.351440, 1449.805298, 10.549350, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19940, 1505.351440, 1447.804932, 10.549350, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19940, 1505.351440, 1455.325928, 10.549350, 0.000000, -89.999985, -0.000029, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19940, 1505.351440, 1453.325562, 10.549350, 0.000000, -89.999985, -0.000029, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19325, 1506.642700, 1451.852417, 16.157124, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF606060);
	auto = CreateDynamicObject(19757, 1523.105225, 1445.957520, 17.635401, 89.999992, 90.000000, -89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1523.105225, 1445.957520, 17.635399, 89.999992, 0.000025, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1523.105225, 1445.957520, 14.895350, 89.999992, 90.000015, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1523.105225, 1445.957520, 14.895347, 89.999992, 0.000045, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1523.105225, 1445.957520, 12.575343, 89.999992, 90.000031, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1523.105225, 1445.957520, 12.575341, 89.999992, 0.000063, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1523.105225, 1445.957520, 10.645318, 89.999992, 90.000046, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19757, 1523.105225, 1445.957520, 10.645316, 89.999992, 0.000082, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "CsCrackpipe01", 0xFFAAAAAA);
	auto = CreateDynamicObject(19325, 1506.352417, 1451.852417, 15.907116, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 17588, "lae2coast_alpha", "LAShad1", 0xFF606060);
	auto = CreateDynamicObject(2393, 1505.171143, 1455.078613, 14.879793, 89.999992, 179.999985, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14584, "ab_abbatoir01", "cj_sheetmetal", 0);
	auto = CreateDynamicObject(2393, 1505.171143, 1455.078613, 15.879793, 89.999992, 179.999985, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14584, "ab_abbatoir01", "cj_sheetmetal", 0);
	auto = CreateDynamicObject(2393, 1505.171143, 1455.078613, 16.879793, 89.999992, 179.999985, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14584, "ab_abbatoir01", "cj_sheetmetal", 0);
	auto = CreateDynamicObject(2393, 1505.171143, 1455.078613, 17.879793, 89.999992, 179.999985, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14584, "ab_abbatoir01", "cj_sheetmetal", 0);
	auto = CreateDynamicObject(2393, 1505.171143, 1449.136719, 14.879793, 89.999992, 179.999985, -89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14584, "ab_abbatoir01", "cj_sheetmetal", 0);
	auto = CreateDynamicObject(19866, 1522.908203, 1454.620483, 18.342957, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFDDDDDD);
	auto = CreateDynamicObject(19866, 1522.908203, 1449.620483, 18.342957, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFDDDDDD);
	auto = CreateDynamicObject(19866, 1517.306274, 1446.105591, 18.342957, 0.000000, -0.000007, 269.999939, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFFFFFFF);
	auto = CreateDynamicObject(19866, 1522.306274, 1446.105591, 18.342957, 0.000000, -0.000007, 269.999939, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFFFFFFF);
	auto = CreateDynamicObject(19866, 1522.908203, 1444.620483, 18.342957, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFDDDDDD);
	auto = CreateDynamicObject(2393, 1505.171143, 1449.136719, 15.879793, 89.999992, 179.999985, -89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14584, "ab_abbatoir01", "cj_sheetmetal", 0);
	auto = CreateDynamicObject(2393, 1505.171143, 1449.136719, 16.879793, 89.999992, 179.999985, -89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14584, "ab_abbatoir01", "cj_sheetmetal", 0);
	auto = CreateDynamicObject(2393, 1505.171143, 1449.136719, 17.879793, 89.999992, 179.999985, -89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14584, "ab_abbatoir01", "cj_sheetmetal", 0);
	auto = CreateDynamicObject(2790, 1506.553345, 1451.862061, 16.157772, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-95-percent", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-20-percent", 0);
	auto = CreateDynamicObject(19482, 1506.708130, 1451.835815, 15.650618, -0.000007, 0.000022, -0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "LICENSE CENTER OF", 130, "Trebuchet MS", 62, 0, 0xFF000000, 0, 1);
	auto = CreateDynamicObject(19482, 1506.708130, 1451.855835, 15.090670, -0.000007, 0.000022, -0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "SAN ANDREAS", 130, "Trebuchet MS", 88, 1, 0xFF000000, 0, 1);
	auto = CreateDynamicObject(19482, 1506.708130, 1451.885864, 16.730753, -0.000007, 0.000022, -0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "v", 130, "Webdings", 130, 1, 0xFF000000, 0, 1);
	auto = CreateDynamicObject(19482, 1506.708130, 1450.214966, 16.990725, -0.000007, 0.000022, -0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "o", 130, "Webdings", 130, 1, 0xFF000000, 0, 1);
	auto = CreateDynamicObject(19482, 1506.708130, 1453.486206, 16.680752, -0.000007, 0.000022, -0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "j", 130, "Webdings", 120, 0, 0xFF000000, 0, 1);
	auto = CreateDynamicObject(19482, 1506.708130, 1450.224976, 16.750586, -0.000007, 0.000022, -0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "c", 130, "Webdings", 140, 0, 0xFF000000, 0, 1);
	auto = CreateDynamicObject(19482, 1506.708130, 1453.495850, 16.750586, -0.000007, 0.000022, -0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "c", 130, "Webdings", 140, 0, 0xFF000000, 0, 1);
	auto = CreateDynamicObject(19482, 1506.708130, 1451.854614, 16.750586, -0.000007, 0.000022, -0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "c", 130, "Webdings", 140, 0, 0xFF000000, 0, 1);
	auto = CreateDynamicObject(18980, 1510.400146, 1456.266724, 19.569790, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFF909090);
	auto = CreateDynamicObject(3850, 1519.943848, 1458.025513, 14.618367, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10871, "blacksky_sfse", "ws_glass_balustrade", 0);
	auto = CreateDynamicObject(3850, 1518.222900, 1456.305054, 14.618367, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10871, "blacksky_sfse", "ws_glass_balustrade", 0);
	auto = CreateDynamicObject(3850, 1514.762939, 1456.305054, 14.618367, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10871, "blacksky_sfse", "ws_glass_balustrade", 0);
	auto = CreateDynamicObject(3850, 1511.302979, 1456.305054, 14.618367, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10871, "blacksky_sfse", "ws_glass_balustrade", 0);
	auto = CreateDynamicObject(3850, 1507.843018, 1456.305054, 14.618367, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10871, "blacksky_sfse", "ws_glass_balustrade", 0);
	auto = CreateDynamicObject(19426, 1505.537964, 1465.041138, 11.603182, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(975, 1505.353149, 1458.611694, 13.170928, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19426, 1506.252808, 1465.761841, 11.603182, 0.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19325, 1505.343018, 1458.191650, 10.057112, 89.999992, -89.999992, -90.000023, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF808080);
	auto = CreateDynamicObject(975, 1505.353149, 1463.281616, 13.170928, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19325, 1505.343018, 1463.862549, 10.057112, 89.999992, -90.000000, -89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF808080);
	auto = CreateDynamicObject(975, 1505.353149, 1457.071289, 13.170928, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1505.353149, 1464.872681, 13.170928, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19445, 1501.517944, 1466.481201, 11.603182, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(2004, 1505.371094, 1451.488525, 12.936408, 0.000014, 179.999969, -89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0xFF505050);
	SetDynamicObjectMaterial(auto, 1, 9515, "bigboxtemp1", "sf_concrete1", 0xFF505050);
	auto = CreateDynamicObject(975, 1505.353149, 1458.611694, 5.470912, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1505.353149, 1463.281616, 5.470912, -0.000007, 270.000000, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19940, 1505.351440, 1459.275269, 10.549349, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19940, 1505.351440, 1457.274902, 10.549349, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19940, 1505.351440, 1464.795898, 10.549349, 0.000000, -89.999985, -0.000029, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19940, 1505.351440, 1462.795532, 10.549349, 0.000000, -89.999985, -0.000029, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19426, 1505.537964, 1471.374023, 11.603182, -0.000007, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(975, 1505.353149, 1468.071655, 13.170928, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19426, 1512.766357, 1466.478394, 11.603181, -0.000007, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19325, 1505.343018, 1467.651611, 10.057112, 270.000000, -89.999992, -90.000023, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF808080);
	auto = CreateDynamicObject(975, 1505.353149, 1472.741577, 13.170928, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19325, 1505.343018, 1473.322510, 10.057112, 89.999992, -90.000000, -89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF808080);
	auto = CreateDynamicObject(975, 1505.353149, 1466.531250, 13.170928, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1505.353149, 1474.332642, 13.170928, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19353, 1513.485962, 1464.957520, 11.603181, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(2004, 1505.376099, 1460.267090, 12.936408, 0.000014, 179.999969, -89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0xFF505050);
	SetDynamicObjectMaterial(auto, 1, 9515, "bigboxtemp1", "sf_concrete1", 0xFF505050);
	auto = CreateDynamicObject(975, 1505.353149, 1468.071655, 5.470912, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1505.355103, 1449.143677, 8.900914, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19940, 1505.351440, 1468.735229, 10.549349, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19940, 1505.351440, 1466.734863, 10.549349, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19426, 1505.537964, 1465.041138, 15.838183, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19426, 1506.252808, 1465.761841, 15.838183, 0.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19445, 1512.036377, 1476.107910, 11.603182, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19426, 1512.750244, 1471.379028, 11.603182, -0.000014, 0.000000, -89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(975, 1512.565430, 1468.071655, 13.170928, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19445, 1506.256104, 1476.107910, 11.603182, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19325, 1512.555298, 1467.651611, 10.057111, 89.999992, -90.000000, -89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF808080);
	auto = CreateDynamicObject(975, 1512.565430, 1472.741577, 13.170928, -0.000007, 270.000000, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19445, 1505.387939, 1461.083618, 13.429289, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(3089, 1505.341431, 1450.811035, 11.143421, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14665, "genintint711_1", "interiorwindowglow", 0);
	auto = CreateDynamicObject(3089, 1505.341431, 1460.281006, 15.378418, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14665, "genintint711_1", "interiorwindowglow", 0);
	auto = CreateDynamicObject(975, 1512.565430, 1466.531250, 13.170928, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19445, 1505.387939, 1470.713623, 13.429289, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1512.919678, 1461.083618, 13.429289, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(2004, 1505.371094, 1460.957764, 12.936408, 0.000014, 179.999969, -89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0xFF505050);
	SetDynamicObjectMaterial(auto, 1, 9515, "bigboxtemp1", "sf_concrete1", 0xFF505050);
	auto = CreateDynamicObject(975, 1512.565430, 1468.071655, 5.470912, -0.000007, 270.000000, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1505.355103, 1453.813599, 8.900914, -0.000007, 270.000000, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19940, 1512.563721, 1468.735229, 10.549350, 0.000000, -89.999985, -0.000029, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19940, 1512.563721, 1466.734863, 10.549350, 0.000000, -89.999985, -0.000029, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19445, 1516.419678, 1461.083618, 13.429289, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1518.259766, 1461.083618, 13.424288, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19426, 1509.419678, 1457.063721, 13.429289, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19426, 1508.419678, 1457.063721, 13.424288, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(14397, 1511.503174, 1473.242310, 14.347955, 180.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1506.783325, 1459.300659, 14.347955, 180.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1522.503418, 1457.480347, 14.347955, 180.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(19445, 1508.744507, 1474.502930, 11.603182, 0.000000, 0.000007, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(19445, 1512.919678, 1470.083618, 13.429289, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(14397, 1508.652954, 1473.232300, 14.347955, 180.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(19426, 1509.419678, 1473.665894, 13.429289, 0.000000, 270.000000, -179.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19426, 1508.419678, 1473.665894, 13.424288, 0.000000, 270.000000, -179.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(3037, 1509.217041, 1462.463013, 13.671648, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(3037, 1509.217041, 1469.543701, 13.671648, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(971, 1509.082520, 1462.285522, 17.857876, 89.999992, 180.000061, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(971, 1509.082520, 1470.995239, 17.857876, 89.999992, 180.000061, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(971, 1516.086548, 1462.285522, 17.857876, 89.999992, 180.000061, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(16734, 1488.772461, 1478.044434, 10.362912, 0.000000, 0.000000, -45.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-30-percent", 0);
	auto = CreateDynamicObject(19480, 1509.076416, 1464.496948, 9.855040, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0x80FFFFFF);
	auto = CreateDynamicObject(19866, 1517.537720, 1456.360352, 17.587959, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 3979, "civic01_lan", "airportwall_256128", 0xFFE8C100);
	auto = CreateDynamicObject(19866, 1519.938354, 1458.770752, 17.587959, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 3979, "civic01_lan", "airportwall_256128", 0xFFB09200);
	auto = CreateDynamicObject(19866, 1512.537720, 1456.360352, 17.587959, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 3979, "civic01_lan", "airportwall_256128", 0xFFE8C100);
	auto = CreateDynamicObject(19866, 1507.537720, 1456.360352, 17.587959, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 3979, "civic01_lan", "airportwall_256128", 0xFFE8C100);
	auto = CreateDynamicObject(19445, 1505.387939, 1461.083618, 17.674294, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1505.387939, 1470.713623, 17.674294, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1515.985474, 1464.184570, 17.669294, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19426, 1511.919678, 1457.063721, 17.669292, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19426, 1515.419678, 1457.063721, 17.669292, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19426, 1518.269043, 1457.063721, 17.664293, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19426, 1508.419678, 1457.063721, 17.669292, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(14397, 1511.503174, 1477.812622, 18.592958, 180.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1506.783325, 1459.300659, 18.592958, 180.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1522.503418, 1457.510376, 18.592958, 180.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(19445, 1512.919678, 1469.645020, 17.674294, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(14397, 1508.652954, 1473.232300, 18.592958, 180.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(19426, 1509.419678, 1473.665894, 17.674294, 0.000000, 270.000000, -179.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19426, 1508.419678, 1473.665894, 17.669292, 0.000000, 270.000000, -179.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(3037, 1509.217041, 1462.463013, 17.916653, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(3037, 1509.217041, 1469.543701, 17.916653, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(971, 1510.126099, 1452.476196, 19.457909, 89.999992, 180.000076, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(971, 1517.129639, 1452.476196, 19.457909, 89.999992, 180.000076, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(971, 1524.134277, 1452.476196, 19.457909, 89.999992, 180.000076, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(7666, 1511.929565, 1464.949341, 12.501951, 60.000000, -89.999969, 89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "License Cost", 140, "Trebuchet MS", 40, 1, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(6959, 1500.038940, 1476.933594, 14.123185, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15055, "svlamid", "AH_flroortile3", 0xFFAAAAAA);
	auto = CreateDynamicObject(19480, 1509.076416, 1467.309692, 14.095037, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0x80FFFFFF);
	auto = CreateDynamicObject(975, 1505.355103, 1458.613647, 8.900914, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1505.355103, 1463.283569, 8.900914, -0.000007, 270.000000, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1505.355103, 1468.073608, 8.900914, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1512.567383, 1468.073608, 8.900914, -0.000007, 270.000000, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(2004, 1505.376099, 1469.727783, 12.936408, 0.000000, 179.999969, -89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0xFF505050);
	SetDynamicObjectMaterial(auto, 1, 9515, "bigboxtemp1", "sf_concrete1", 0xFF505050);
	auto = CreateDynamicObject(2004, 1505.371094, 1470.418457, 12.936408, 0.000000, 179.999969, -89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0xFF505050);
	SetDynamicObjectMaterial(auto, 1, 9515, "bigboxtemp1", "sf_concrete1", 0xFF505050);
	auto = CreateDynamicObject(2004, 1512.598755, 1469.727783, 12.936408, 0.000022, -179.999969, -89.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0xFF505050);
	SetDynamicObjectMaterial(auto, 1, 9515, "bigboxtemp1", "sf_concrete1", 0xFF505050);
	auto = CreateDynamicObject(2004, 1512.593750, 1470.418457, 12.936408, 0.000022, -179.999969, -89.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0xFF505050);
	SetDynamicObjectMaterial(auto, 1, 9515, "bigboxtemp1", "sf_concrete1", 0xFF505050);
	auto = CreateDynamicObject(11714, 1509.216187, 1474.419434, 11.082228, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "dts_elevator_door", 0xFFFFFFFF);
	auto = CreateDynamicObject(19482, 1506.319580, 1474.407349, 11.462158, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xAA000000);
	auto = CreateDynamicObject(19482, 1511.940063, 1474.407349, 11.462158, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xAA000000);
	auto = CreateDynamicObject(19482, 1511.940063, 1474.622559, 11.462158, 90.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xAA000000);
	auto = CreateDynamicObject(19482, 1506.349487, 1474.622559, 11.462158, 90.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xAA000000);
	auto = CreateDynamicObject(19445, 1501.506470, 1466.481201, 15.838183, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19940, 1505.351440, 1459.275269, 14.784350, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19940, 1505.351440, 1457.274902, 14.784350, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19940, 1505.351440, 1464.795898, 14.784350, 0.000000, -89.999985, -0.000029, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19940, 1505.351440, 1462.795532, 14.784350, 0.000000, -89.999985, -0.000029, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19426, 1505.537964, 1471.379028, 15.838183, -0.000007, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(2004, 1505.376099, 1460.267090, 17.171412, 0.000014, 179.999969, -89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0xFF505050);
	SetDynamicObjectMaterial(auto, 1, 9515, "bigboxtemp1", "sf_concrete1", 0xFF505050);
	auto = CreateDynamicObject(19940, 1505.351440, 1468.735229, 14.784350, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19940, 1505.351440, 1466.734863, 14.784350, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14569, "traidman", "darkgrey_carpet_256", 0);
	auto = CreateDynamicObject(19445, 1512.036377, 1476.107910, 15.838183, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19426, 1512.750244, 1471.379028, 15.838183, -0.000014, 0.000000, -89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19445, 1506.256104, 1476.107910, 15.838183, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(2004, 1505.371094, 1460.957764, 17.171412, 0.000014, 179.999969, -89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0xFF505050);
	SetDynamicObjectMaterial(auto, 1, 9515, "bigboxtemp1", "sf_concrete1", 0xFF505050);
	auto = CreateDynamicObject(19445, 1511.064941, 1474.502930, 15.838183, 0.000000, 0.000007, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(11714, 1509.216187, 1474.419434, 15.317229, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "dts_elevator_door", 0xFFFFFFFF);
	auto = CreateDynamicObject(19482, 1506.319580, 1474.412354, 15.697156, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xAA000000);
	auto = CreateDynamicObject(19482, 1511.940063, 1474.412354, 15.697155, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xAA000000);
	auto = CreateDynamicObject(19482, 1511.940063, 1474.622559, 15.697156, 90.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xAA000000);
	auto = CreateDynamicObject(19482, 1506.349487, 1474.622559, 15.697156, 90.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xAA000000);
	auto = CreateDynamicObject(19325, 1505.343018, 1458.191650, 17.327122, 89.999992, -90.000000, -89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF808080);
	auto = CreateDynamicObject(19325, 1505.343018, 1463.862549, 17.327122, 89.999992, -90.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF808080);
	auto = CreateDynamicObject(19325, 1505.343018, 1467.651611, 17.327122, 89.999992, -90.000000, -89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF808080);
	auto = CreateDynamicObject(975, 1505.353149, 1458.611694, 18.520969, -0.000037, 449.999969, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1505.353149, 1463.281616, 18.520969, -0.000007, 809.999878, 89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1505.353149, 1468.071655, 18.520969, -0.000037, 449.999969, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19866, 1517.537720, 1456.360352, 18.337959, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 3979, "civic01_lan", "airportwall_256128", 0xFFE8C100);
	auto = CreateDynamicObject(19866, 1519.938354, 1458.770752, 18.337959, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 3979, "civic01_lan", "airportwall_256128", 0xFFB09200);
	auto = CreateDynamicObject(19866, 1512.537720, 1456.360352, 18.337959, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 3979, "civic01_lan", "airportwall_256128", 0xFFE8C100);
	auto = CreateDynamicObject(19866, 1507.537720, 1456.360352, 18.337959, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 3979, "civic01_lan", "airportwall_256128", 0xFFE8C100);
	auto = CreateDynamicObject(19480, 1523.979492, 1457.076660, 13.778911, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0x90000000);
	auto = CreateDynamicObject(2004, 1505.376099, 1469.739380, 17.171412, 0.000007, 179.999969, -89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0xFF505050);
	SetDynamicObjectMaterial(auto, 1, 9515, "bigboxtemp1", "sf_concrete1", 0xFF505050);
	auto = CreateDynamicObject(2004, 1505.371094, 1470.430054, 17.171412, 0.000007, 179.999969, -89.999947, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0xFF505050);
	SetDynamicObjectMaterial(auto, 1, 9515, "bigboxtemp1", "sf_concrete1", 0xFF505050);
	auto = CreateDynamicObject(18980, 1510.400146, 1457.266724, 19.569790, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFF909090);
	auto = CreateDynamicObject(18980, 1510.400146, 1456.256714, 19.579790, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFCCCCCC);
	auto = CreateDynamicObject(18980, 1506.323608, 1456.261719, 19.564791, 89.999992, 224.999985, -45.000027, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFF909090);
	auto = CreateDynamicObject(18980, 1506.333618, 1456.261719, 19.579790, 89.999992, 224.999985, -45.000027, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFCCCCCC);
	auto = CreateDynamicObject(18980, 1522.844849, 1456.261719, 19.564791, 89.999992, 154.471191, -154.471268, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFF909090);
	auto = CreateDynamicObject(18980, 1522.834839, 1456.261719, 19.579790, 89.999992, 154.471191, -154.471268, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFCCCCCC);
	auto = CreateDynamicObject(18980, 1510.400146, 1447.595337, 19.569790, 89.999992, 269.802124, 0.197833, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFF909090);
	auto = CreateDynamicObject(18980, 1510.400146, 1447.605347, 19.579790, 89.999992, 269.802124, 0.197833, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFCCCCCC);
	auto = CreateDynamicObject(18980, 1510.400146, 1446.595337, 19.569790, 89.999992, 269.802124, 0.197833, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFF909090);
	auto = CreateDynamicObject(19480, 1520.568359, 1445.307007, 19.063908, 360.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0x90000000);
	auto = CreateDynamicObject(3037, 1509.076904, 1452.568359, 19.516687, 0.000000, 270.000000, -179.999939, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(3037, 1513.476440, 1452.568359, 19.516687, 0.000000, 270.000000, -179.999939, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(3037, 1517.805542, 1452.568359, 19.516687, 0.000000, 270.000000, -179.999939, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(3037, 1520.396362, 1452.568359, 19.516687, 0.000000, 270.000000, -179.999939, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(3037, 1515.147827, 1452.568359, 19.516687, 0.000000, 270.000000, -179.999847, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(3037, 1521.218628, 1452.568359, 19.516687, 0.000000, 270.000000, -179.999802, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19480, 1520.948486, 1458.457153, 19.063908, 360.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0x90000000);
	auto = CreateDynamicObject(19426, 1512.270264, 1454.023804, 19.534302, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19426, 1512.270264, 1450.523804, 19.534302, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19426, 1512.270264, 1447.023804, 19.534302, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19426, 1516.851563, 1454.023804, 19.534302, -0.000007, 270.000000, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19426, 1516.851563, 1450.523804, 19.534302, -0.000007, 270.000000, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19426, 1516.851563, 1447.023804, 19.534302, -0.000007, 270.000000, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1523.951294, 1451.244507, 19.534302, -0.000007, 270.000000, 0.000014, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1505.219482, 1451.244507, 19.534302, -0.000007, 270.000000, 0.000014, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1511.538452, 1457.375000, 19.529303, -0.000007, 270.000000, 90.000015, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1521.168457, 1457.375000, 19.529303, -0.000007, 270.000000, 90.000015, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1511.538452, 1446.481934, 19.529303, 0.000000, 270.000000, 89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1521.168457, 1446.481934, 19.529303, 0.000000, 270.000000, 89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19606, 1512.298096, 1450.459351, 16.962765, 0.000000, 179.999985, -179.999893, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-50-percent", 0);
	auto = CreateDynamicObject(1362, 1512.304321, 1450.438843, 17.697424, 0.000000, 540.000000, 0.000052, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 8618, "ceasersign", "ceaserspillar01_128", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(1362, 1512.304321, 1450.438843, 16.592422, 0.000007, 179.999969, 0.000052, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 8618, "ceasersign", "ceaserspillar01_128", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(16101, 1512.304321, 1450.438843, 28.697424, 0.000000, 540.000000, 0.000052, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19606, 1512.298096, 1453.459351, 15.962763, 0.000000, 179.999985, -179.999893, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-50-percent", 0);
	auto = CreateDynamicObject(1362, 1512.304321, 1453.438843, 16.697424, 0.000000, 540.000000, 0.000052, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 8618, "ceasersign", "ceaserspillar01_128", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(1362, 1512.304321, 1453.438843, 15.592421, 0.000007, 179.999969, 0.000052, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 8618, "ceasersign", "ceaserspillar01_128", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(16101, 1512.304321, 1453.438843, 27.697424, 0.000000, 540.000000, 0.000051, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19606, 1516.846802, 1453.438843, 16.962765, 0.000000, 179.999985, 0.000091, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-50-percent", 0);
	auto = CreateDynamicObject(1362, 1516.840576, 1453.459351, 17.697424, 0.000000, 540.000000, -179.999878, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 8618, "ceasersign", "ceaserspillar01_128", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(1362, 1516.840576, 1453.459351, 16.592422, 360.000000, 540.000000, 540.000122, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 8618, "ceasersign", "ceaserspillar01_128", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(16101, 1516.840576, 1453.459351, 28.697424, 0.000000, 540.000000, -179.999878, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19606, 1516.846802, 1450.438843, 15.962763, 0.000000, 179.999985, 0.000091, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-50-percent", 0);
	auto = CreateDynamicObject(1362, 1516.840576, 1450.459351, 16.697424, 0.000000, 540.000000, -179.999878, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 8618, "ceasersign", "ceaserspillar01_128", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(1362, 1516.840576, 1450.459351, 15.592421, 0.000007, 179.999969, -179.999878, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 8618, "ceasersign", "ceaserspillar01_128", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(16101, 1516.840576, 1450.459351, 27.697424, 0.000000, 540.000000, -179.999878, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19527, 1512.309204, 1450.449341, 17.062765, 0.000000, 179.999985, -179.999893, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19527, 1512.309204, 1453.449341, 16.062765, 0.000000, 179.999985, -179.999893, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19527, 1516.835693, 1453.450806, 17.062765, 0.000000, 179.999985, 0.000091, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19527, 1516.835693, 1450.450806, 16.062765, 0.000000, 179.999985, 0.000091, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19479, 1510.234009, 1450.509521, 9.867582, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0x80FFFFFF);
	auto = CreateDynamicObject(19477, 1516.788940, 1453.374634, 19.437593, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xFF000000);
	auto = CreateDynamicObject(19477, 1516.788940, 1450.443848, 19.437593, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xFF000000);
	auto = CreateDynamicObject(19477, 1512.318237, 1453.374634, 19.437593, 0.000000, 270.000000, -179.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xFF000000);
	auto = CreateDynamicObject(19477, 1512.318237, 1450.443848, 19.437593, 0.000000, 270.000000, -179.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xFF000000);
	auto = CreateDynamicObject(19929, 1520.220947, 1458.886597, 9.869047, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(auto, 1, 18029, "genintintsmallrest", "GB_restaursmll15", 0);
	auto = CreateDynamicObject(19930, 1513.508179, 1462.765869, 9.869047, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(auto, 1, 18029, "genintintsmallrest", "GB_restaursmll15", 0);
	auto = CreateDynamicObject(19937, 1514.286255, 1458.954712, 9.957022, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19937, 1516.186768, 1458.954712, 9.957022, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19937, 1518.096802, 1458.954712, 9.957022, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19937, 1519.986206, 1458.954712, 9.957022, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19937, 1513.545776, 1461.624512, 9.957022, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19937, 1513.545776, 1462.385254, 9.957022, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19929, 1513.508179, 1461.935059, 13.739076, -0.000014, -1979.999878, 0.000319, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19929, 1517.361206, 1458.886597, 13.739076, 0.000052, -899.999878, -90.000038, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19929, 1514.500977, 1458.886597, 13.739076, 0.000052, -899.999878, -90.000038, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19929, 1520.220947, 1458.886597, 13.739076, 0.000045, -899.999878, -89.999939, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19930, 1513.508179, 1459.914673, 13.739076, -0.000014, -1979.999878, 0.000319, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(2707, 1513.498047, 1460.373901, 12.795708, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(2707, 1513.498047, 1461.873901, 12.795708, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(2707, 1513.498047, 1458.873901, 12.795708, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(957, 1512.218872, 1457.424438, 13.321696, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(957, 1514.218872, 1457.424438, 13.321696, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(2707, 1514.998047, 1458.873901, 12.795708, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(2707, 1516.498047, 1458.873901, 12.795708, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(2707, 1517.998047, 1458.873901, 12.795708, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(957, 1516.218872, 1457.424438, 13.321696, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(957, 1518.218872, 1457.424438, 13.321696, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(957, 1512.218872, 1459.424438, 13.321696, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(957, 1512.218872, 1461.424438, 13.321696, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(19482, 1515.063477, 1458.568726, 13.330827, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xAAFFFFFF);
	auto = CreateDynamicObject(19482, 1519.564209, 1458.568726, 13.330827, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xAAFFFFFF);
	auto = CreateDynamicObject(19482, 1513.203491, 1461.108398, 13.330827, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xAAFFFFFF);
	auto = CreateDynamicObject(19353, 1519.946777, 1460.864868, 11.603181, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14661, "int_tatoo", "tattoo_wall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19383, 1516.776978, 1463.426758, 11.603181, -0.000007, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14661, "int_tatoo", "tattoo_wall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19353, 1519.986938, 1463.426758, 11.603181, -0.000007, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14661, "int_tatoo", "tattoo_wall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19930, 1520.741333, 1458.886597, 12.269054, 270.000000, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(auto, 1, 18029, "genintintsmallrest", "GB_restaursmll15", 0);
	auto = CreateDynamicObject(19930, 1513.508179, 1464.205200, 12.269056, 630.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19930, 1513.510132, 1464.207153, 11.369049, 630.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19930, 1520.743286, 1458.888550, 11.359043, 270.000000, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19595, "lsappartments1", "carpet4-256x256", 0);
	SetDynamicObjectMaterial(auto, 1, 18029, "genintintsmallrest", "GB_restaursmll15", 0);
	auto = CreateDynamicObject(19353, 1519.951782, 1461.935913, 11.603181, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14661, "int_tatoo", "tattoo_wall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19426, 1514.366333, 1463.426758, 11.603181, -0.000007, 0.000000, 90.000023, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14661, "int_tatoo", "tattoo_wall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(2165, 1513.954346, 1461.027588, 9.872594, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 4
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(2165, 1518.705322, 1459.396851, 9.872594, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 4
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(2165, 1516.765747, 1459.396851, 9.872594, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 4
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(2263, 1517.754028, 1459.476318, 11.157705, -9.999964, -0.000068, 164.999680, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 19894, "laptopsamp1", "laptopscreen3", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-90-percent", 0);
	SetDynamicObjectMaterialText(auto, 0, "License Center\nof\nSAN ANDREAS", 140, "Arial", 60, 1, 0xFFFFFFFF, 0xFF002D63, 1);
	auto = CreateDynamicObject(2263, 1517.464478, 1458.533936, 10.983877, 9.999964, 0.000043, -14.999984, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19787, "samplcdtvs1", "samplcdtv1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-80-percent", 0);
	auto = CreateDynamicObject(19829, 1517.599731, 1458.990967, 10.984853, -89.999992, 272.820831, 77.820793, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-90-percent", 0);
	auto = CreateDynamicObject(19829, 1517.597168, 1458.981323, 11.064930, 0.000006, -0.000044, 164.999741, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-93-percent", 0);
	auto = CreateDynamicObject(2263, 1515.753784, 1459.476318, 11.157705, -9.999961, -0.000075, 164.999634, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 19894, "laptopsamp1", "laptopscreen3", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-90-percent", 0);
	SetDynamicObjectMaterialText(auto, 0, "License Center\nof\nSAN ANDREAS", 140, "Arial", 60, 1, 0xFFFFFFFF, 0xFF002D63, 1);
	auto = CreateDynamicObject(2263, 1515.464233, 1458.533936, 10.983877, 9.999961, 0.000050, -14.999984, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19787, "samplcdtvs1", "samplcdtv1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-80-percent", 0);
	auto = CreateDynamicObject(19829, 1515.599487, 1458.990967, 10.984853, -89.999992, 278.842407, 83.842361, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-90-percent", 0);
	auto = CreateDynamicObject(19829, 1515.596924, 1458.981323, 11.064930, 0.000007, -0.000050, 164.999695, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-93-percent", 0);
	auto = CreateDynamicObject(2263, 1514.039185, 1461.999756, 11.157705, -9.999952, -0.000080, 74.999603, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 19894, "laptopsamp1", "laptopscreen3", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-90-percent", 0);
	SetDynamicObjectMaterialText(auto, 0, "License Center\nof\nSAN ANDREAS", 140, "Arial", 60, 1, 0xFFFFFFFF, 0xFF002D63, 1);
	auto = CreateDynamicObject(2263, 1513.096802, 1462.289307, 10.983877, 9.999952, 0.000056, -104.999931, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19787, "samplcdtvs1", "samplcdtv1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-80-percent", 0);
	auto = CreateDynamicObject(19829, 1513.553833, 1462.154053, 10.984853, -89.999992, 326.870728, 41.870705, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-90-percent", 0);
	auto = CreateDynamicObject(19829, 1513.544189, 1462.156616, 11.064930, 0.000018, -0.000057, 74.999687, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-93-percent", 0);
	auto = CreateDynamicObject(1715, 1516.297363, 1460.606812, 9.870768, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(1715, 1518.227539, 1460.606812, 9.870768, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(1715, 1515.216919, 1461.517212, 9.870768, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(2161, 1514.450195, 1463.339966, 9.872147, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(2161, 1514.450195, 1463.339966, 11.222148, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(2161, 1518.571045, 1463.339966, 9.872147, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(2161, 1518.571045, 1463.339966, 11.222148, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(2161, 1519.821045, 1462.849487, 9.872147, -0.000014, 0.000014, -89.999924, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(2161, 1519.821045, 1462.849487, 11.222148, -0.000014, 0.000014, -89.999924, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(19172, 1519.845215, 1460.671265, 11.631052, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14842, "genintintpolicea", "cop_notice", 0);
	auto = CreateDynamicObject(19482, 1516.844116, 1461.329224, 13.330827, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0xAAFFFFFF);
	auto = CreateDynamicObject(2714, 1515.708374, 1461.285645, 13.311207, 89.999992, 179.999985, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(2714, 1518.208374, 1461.285645, 13.311207, 89.999992, 179.999985, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19483, 1514.179565, 1458.515625, 9.866621, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0);
	auto = CreateDynamicObject(19483, 1516.479614, 1458.515625, 9.866621, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0);
	auto = CreateDynamicObject(957, 1516.448853, 1458.365356, 9.851685, 0.000000, 179.999985, -179.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-80-percent", 0);
	auto = CreateDynamicObject(957, 1514.148804, 1458.365356, 9.851685, 0.000000, 179.999985, -179.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-80-percent", 0);
	auto = CreateDynamicObject(19483, 1518.779663, 1458.515625, 9.866621, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0);
	auto = CreateDynamicObject(957, 1518.748901, 1458.365356, 9.851685, 0.000000, 179.999985, -179.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-80-percent", 0);
	auto = CreateDynamicObject(19483, 1513.063354, 1462.086426, 9.866621, 0.000014, 0.000007, -0.000014, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0);
	auto = CreateDynamicObject(19483, 1513.063354, 1459.786377, 9.866621, 0.000014, 0.000007, -0.000014, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0);
	auto = CreateDynamicObject(957, 1512.913086, 1459.817139, 9.851685, 0.000007, 179.999985, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-80-percent", 0);
	auto = CreateDynamicObject(957, 1512.913086, 1462.117188, 9.851685, 0.000007, 179.999985, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-80-percent", 0);
	auto = CreateDynamicObject(19426, 1504.812744, 1456.291870, 11.603181, 0.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19426, 1504.527588, 1447.550781, 11.603181, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19426, 1503.807129, 1446.830566, 11.603181, 0.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19445, 1489.317139, 1447.051880, 11.603181, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFB09200);
	auto = CreateDynamicObject(19445, 1493.528442, 1442.735107, 11.603181, -0.000007, -0.000007, -179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(19445, 1498.947144, 1447.051880, 11.603181, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFB09200);
	auto = CreateDynamicObject(19795, 1503.185791, 1447.052856, 11.561949, -0.000029, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19795, 1500.734863, 1447.072876, 11.561949, -0.000022, 0.000000, -89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19795, 1498.174927, 1447.052856, 11.561949, -0.000029, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(16734, 1490.475830, 1442.477417, 10.362912, 0.000000, 0.000000, 45.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-30-percent", 0);
	auto = CreateDynamicObject(19445, 1493.528442, 1452.365112, 11.603181, -0.000007, -0.000007, -179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(19795, 1493.529419, 1448.126465, 11.561949, -0.000037, -0.000007, -179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19795, 1493.549438, 1450.577393, 11.561949, -0.000029, -0.000007, -179.999893, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19795, 1493.529419, 1453.137329, 11.561949, -0.000037, -0.000007, -179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19445, 1491.877197, 1457.011230, 11.603181, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(3077, 1499.662109, 1456.913330, 9.854389, 0.000007, 0.000029, 0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(2163, 1498.486328, 1457.056274, 9.825337, 0.000007, 0.000045, 0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2163, 1501.092407, 1457.059204, 9.825339, 0.000007, 0.000045, 0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2430, 1494.242188, 1457.069702, 11.816257, -14.900006, 0.000007, 0.000001, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "arrownoleftsign", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "arrownorightsign", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "chevronrightsign2", 0);
	SetDynamicObjectMaterial(auto, 3, 14577, "casinovault01", "cof_wood1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "arrownostraightsign", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "chevronleftsign2", 0);
	auto = CreateDynamicObject(3077, 1503.012573, 1456.913330, 9.854389, 0.000007, 0.000029, 0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(1715, 1503.397827, 1456.705322, 9.870768, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(2163, 1499.791748, 1457.064209, 9.827337, 0.000007, 0.000045, 0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(18066, 1503.091919, 1456.942871, 12.991935, 450.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 1736, "cj_ammo", "CJ_Black_metal", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(18066, 1499.650757, 1456.942871, 12.991935, 450.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 1736, "cj_ammo", "CJ_Black_metal", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(2166, 1504.240601, 1456.442993, 9.851935, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2430, 1494.242188, 1457.069702, 10.846248, -14.900004, 0.000014, 0.000003, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "leftcurvesign", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "leftturnsign", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "crossinterssign", 0);
	SetDynamicObjectMaterial(auto, 3, 14577, "casinovault01", "cof_wood1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "rightturnsign", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "chevronleftsign2", 0);
	auto = CreateDynamicObject(2430, 1494.242188, 1457.069702, 9.876242, -14.900003, 0.000023, 0.000006, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "speedlimit5sign", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "speedlimit10sign", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "stopsign", 0);
	SetDynamicObjectMaterial(auto, 3, 14577, "casinovault01", "cof_wood1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "speedlimit15sign", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "chevronleftsign2", 0);
	auto = CreateDynamicObject(18066, 1495.810669, 1456.942871, 12.991935, 450.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 1736, "cj_ammo", "CJ_Black_metal", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(19997, 1498.808716, 1449.200317, 9.851935, 0.000014, 0.000000, 89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(1715, 1498.858643, 1447.422729, 9.870768, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(19997, 1498.808716, 1452.560669, 9.851935, 0.000022, 0.000000, 89.999931, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(1715, 1498.858643, 1450.783081, 9.870768, 0.000000, -0.000022, 179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(19997, 1496.808716, 1449.200317, 9.851935, 0.000014, 0.000000, 89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(1715, 1496.858643, 1447.422729, 9.870768, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(19482, 1499.243652, 1456.872070, 12.291154, -0.000037, 0.000007, -89.999855, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "f", 130, "Webdings", 50, 0, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19482, 1500.294678, 1456.872070, 11.901263, -0.000037, 0.000007, -89.999855, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "h", 130, "Webdings", 50, 0, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19482, 1500.395020, 1456.872070, 11.811176, -0.000037, 0.000007, -89.999855, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "_ _ _ _ _ _ _", 130, "Calibri", 20, 0, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19482, 1499.394531, 1456.872070, 12.381242, 89.999992, 3.398883, -93.398750, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "_ _ _ _", 130, "Calibri", 20, 0, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19482, 1499.885010, 1456.872070, 12.461320, 89.999992, 3.398883, -93.398750, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "________", 130, "Calibri", 20, 0, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19482, 1499.885010, 1456.872070, 11.041154, 89.999992, 3.398883, -93.398750, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "________", 130, "Calibri", 20, 0, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19482, 1498.914795, 1456.872070, 12.461320, 89.999992, 3.398883, -93.398750, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "________", 130, "Calibri", 20, 0, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19482, 1499.394531, 1456.872070, 11.161273, 89.999992, 3.398883, -93.398750, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "_ _ _ _", 130, "Calibri", 20, 0, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19482, 1498.914063, 1456.872070, 11.041154, 89.999992, 3.398883, -93.398750, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "________", 130, "Calibri", 20, 0, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19482, 1500.324463, 1456.872070, 12.031146, 0.000037, 179.999985, 89.999901, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "________", 130, "Calibri", 20, 0, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19482, 1498.523682, 1456.872070, 11.811176, -0.000037, 0.000007, -89.999855, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "_ _ _ _ _ _ _", 130, "Calibri", 20, 0, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19482, 1499.764893, 1456.872070, 11.871232, -0.000037, 0.000007, -89.999855, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "c", 130, "Wingdings", 20, 0, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19482, 1499.134521, 1456.872070, 11.971331, -0.000037, 0.000007, -89.999855, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "i", 130, "Wingdings", 20, 0, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19482, 1499.424805, 1456.872070, 11.621232, -15.300032, 0.000006, -91.799858, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterialText(auto, 0, "?", 130, "Calibri", 30, 0, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19997, 1496.808716, 1452.560669, 9.851935, 0.000022, 0.000000, 89.999931, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(1715, 1496.858643, 1450.783081, 9.870768, 0.000000, -0.000022, 179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(19997, 1494.808716, 1449.200317, 9.851935, 0.000014, 0.000000, 89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(1715, 1494.858643, 1447.422729, 9.870768, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(19997, 1494.808716, 1452.560669, 9.851935, 0.000022, 0.000000, 89.999931, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(1715, 1494.858643, 1450.783081, 9.870768, 0.000000, -0.000022, 179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(19997, 1500.808716, 1449.200317, 9.851935, 0.000014, 0.000000, 89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(1715, 1500.858643, 1447.422729, 9.870768, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(19997, 1500.808716, 1452.560669, 9.851935, 0.000022, 0.000000, 89.999931, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(1715, 1500.858643, 1450.783081, 9.870768, 0.000000, -0.000022, 179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(19997, 1502.808716, 1449.200317, 9.851935, 0.000014, 0.000000, 89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(1715, 1502.858643, 1447.422729, 9.870768, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(19997, 1502.808716, 1452.560669, 9.851935, 0.000022, 0.000000, 89.999931, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(1715, 1502.858643, 1450.783081, 9.870768, 0.000000, -0.000022, 179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(19426, 1504.821533, 1465.761841, 11.603182, 0.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19445, 1499.922607, 1456.302979, 13.413178, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19445, 1490.292603, 1456.302979, 13.413178, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19445, 1499.922607, 1446.459839, 13.423177, 0.000000, -89.999985, 90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19445, 1490.292603, 1446.459839, 13.423177, 0.000000, -89.999985, 90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19445, 1492.611450, 1449.771973, 13.418177, 0.000000, -89.999985, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(14397, 1494.024780, 1438.959961, 14.347955, 180.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1505.044800, 1453.080444, 14.347955, 180.000000, 0.000000, 450.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1503.035278, 1447.887573, 14.347955, 180.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1489.065674, 1454.889282, 14.347955, 180.000000, 0.000000, 540.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(2938, 1498.621460, 1451.798340, 13.691942, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(2938, 1498.621460, 1450.817993, 13.691942, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(971, 1501.213379, 1451.413696, 13.627861, 89.999992, 180.000031, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(971, 1494.210083, 1451.413696, 13.627861, 89.999992, 180.000031, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(984, 1498.026123, 1455.721436, 13.311938, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 10
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 6, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 7, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 8, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 9, 14561, "triad_neon", "kbneon", 0);
	auto = CreateDynamicObject(19445, 1493.538452, 1461.854980, 11.603181, -0.000007, -0.000014, -179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(19795, 1493.539429, 1457.616333, 11.561949, -0.000037, -0.000014, -179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19795, 1493.559448, 1460.067261, 11.561949, -0.000029, -0.000014, -179.999847, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19795, 1493.539429, 1462.627197, 11.561949, -0.000037, -0.000014, -179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19445, 1491.887939, 1466.481201, 11.603182, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19426, 1504.513306, 1456.302979, 13.418177, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19426, 1504.523926, 1459.803833, 13.418177, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19426, 1504.523926, 1463.303833, 13.418177, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19445, 1499.922607, 1465.696533, 13.423177, 0.000000, -89.999985, 90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19445, 1490.292603, 1465.696533, 13.423177, 0.000000, -89.999985, 90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19445, 1492.611450, 1461.817383, 13.418177, 0.000000, -89.999985, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(14397, 1502.187012, 1457.712280, 14.337956, 180.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1494.024780, 1459.669556, 14.337956, 180.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1504.025391, 1473.569092, 14.337956, 180.000000, 0.000000, 450.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1488.075562, 1464.266846, 14.337956, 180.000000, 0.000000, 540.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(2938, 1498.621460, 1461.350952, 13.691942, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(2938, 1498.621460, 1460.370605, 13.691942, 0.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(971, 1501.213379, 1460.966309, 13.627861, 89.999992, 180.000046, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(971, 1494.210083, 1460.966309, 13.627861, 89.999992, 180.000046, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(984, 1498.026123, 1465.142456, 13.311938, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 10
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 6, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 7, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 8, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 9, 14561, "triad_neon", "kbneon", 0);
	auto = CreateDynamicObject(7709, 1499.411011, 1457.091919, 11.601930, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14842, "genintintpolicea", "cop_notice", 0);
	auto = CreateDynamicObject(2164, 1504.712891, 1457.107544, 9.851935, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1503.917114, 1457.112549, 13.351943, 0.000000, 180.000000, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1502.937378, 1457.107544, 9.851935, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1502.141602, 1457.112549, 13.351943, 0.000000, 180.000000, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1496.681396, 1457.107544, 9.851935, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1495.885620, 1457.112549, 13.351943, 0.000000, 180.000000, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1494.905884, 1457.107544, 9.851935, 0.000000, -0.000022, 179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1494.110107, 1457.112549, 13.351943, 0.000000, 180.000000, 179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(19445, 1499.266968, 1466.471191, 11.603182, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFB09200);
	auto = CreateDynamicObject(2707, 1502.003784, 1464.508667, 12.988763, -0.000000, 290.000000, 89.999886, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 1736, "cj_ammo", "CJ_Black_metal", 0);
	auto = CreateDynamicObject(1897, 1501.840820, 1465.414185, 13.287144, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14581, "ab_mafiasuitea", "barbersmir1", 0);
	auto = CreateDynamicObject(19811, 1501.846069, 1464.300537, 13.335811, -0.000014, 179.999985, -89.999924, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 1736, "cj_ammo", "CJ_Black_metal", 0);
	SetDynamicObjectMaterial(auto, 1, 14581, "ab_mafiasuitea", "barbersmir1", 0);
	auto = CreateDynamicObject(19128, 1501.830200, 1466.420776, 11.111933, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14530, "estate2", "ab_SFmap", 0);
	auto = CreateDynamicObject(16734, 1483.336426, 1461.927002, 10.362912, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-30-percent", 0);
	auto = CreateDynamicObject(3077, 1497.009644, 1465.871216, 9.841938, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 1714, "cj_office", "white32", 0);
	SetDynamicObjectMaterial(auto, 1, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(630, 1504.165527, 1465.669434, 10.851935, 0.000000, 0.000000, 990.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 17958, "burnsalpha", "plantb256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 14665, "genintint711_1", "interiorwindowglow", 0);
	SetDynamicObjectMaterial(auto, 2, 9920, "anotherbuildsfe", "grassgrn256", 0);
	auto = CreateDynamicObject(630, 1494.303833, 1465.669434, 10.851935, 0.000000, 0.000000, 990.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 17958, "burnsalpha", "plantb256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 14665, "genintint711_1", "interiorwindowglow", 0);
	SetDynamicObjectMaterial(auto, 2, 9920, "anotherbuildsfe", "grassgrn256", 0);
	auto = CreateDynamicObject(2714, 1505.365479, 1453.100098, 11.581940, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterialText(auto, 0, "Theory Exam\n--------\nLC SA", 130, "Courier New", 55, 1, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(2714, 1505.365479, 1462.560913, 11.581940, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterialText(auto, 0, "Briefing Room\n--------\nLC SA", 130, "Courier New", 55, 1, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(2714, 1512.535645, 1468.970581, 11.581939, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterialText(auto, 0, "Staff Room\n--------\nLC SA", 130, "Courier New", 55, 1, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19445, 1513.485962, 1476.108398, 11.603181, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19383, 1516.776978, 1463.604736, 11.603181, -0.000007, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19426, 1514.376221, 1463.604736, 11.603181, -0.000007, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19353, 1519.986938, 1463.604736, 11.603181, -0.000007, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19445, 1521.620850, 1468.451172, 11.603181, -0.000007, -0.000007, 0.000121, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(19795, 1521.619873, 1470.709106, 11.561949, -0.000037, 0.000000, 0.000121, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19795, 1521.619873, 1467.468750, 11.561949, -0.000037, 0.000000, 0.000121, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19383, 1515.159546, 1471.379028, 11.603182, -0.000014, 0.000000, -89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19445, 1521.579468, 1471.379028, 11.603182, -0.000014, 0.000000, -89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(1499, 1516.037964, 1463.546875, 9.834424, 0.000007, 0.000007, 0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-70-percent", 0);
	SetDynamicObjectMaterialText(auto, 1, "gggg\ngggg\ngggg\ngggg\ngggg", 100, "Webdings", 56, 0, 0xFF222222, 0, 1);
	auto = CreateDynamicObject(1499, 1514.416626, 1471.378296, 9.834424, 0.000007, 0.000007, 0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-70-percent", 0);
	SetDynamicObjectMaterialText(auto, 1, "gggg\ngggg\ngggg\ngggg\ngggg", 100, "Webdings", 56, 0, 0xFF222222, 0, 1);
	auto = CreateDynamicObject(2135, 1519.045654, 1470.816162, 9.834337, 0.000000, 0.000029, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 3, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	auto = CreateDynamicObject(2136, 1520.015381, 1470.816162, 9.834337, 0.000000, 0.000029, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 4, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	auto = CreateDynamicObject(2728, 1517.604370, 1471.685181, 10.539157, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0);
	auto = CreateDynamicObject(2138, 1518.065186, 1470.811157, 9.834337, 0.000000, 0.000029, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 3, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	auto = CreateDynamicObject(2137, 1517.066040, 1470.811157, 9.834337, 0.000000, 0.000029, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 2, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	SetDynamicObjectMaterial(auto, 3, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	auto = CreateDynamicObject(2138, 1520.045898, 1470.811157, 9.834337, 0.000000, 0.000029, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 3, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	auto = CreateDynamicObject(2137, 1521.022583, 1470.811157, 9.834337, 0.000000, 0.000029, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	SetDynamicObjectMaterial(auto, 3, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	auto = CreateDynamicObject(18066, 1521.060303, 1471.328125, 11.285856, 44.999992, 0.000031, -0.000022, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-80-percent", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(18066, 1517.569092, 1471.328125, 11.285856, 44.999992, 0.000031, -0.000022, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-80-percent", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(2728, 1520.614746, 1471.685181, 10.539157, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0);
	auto = CreateDynamicObject(19445, 1521.259155, 1471.369019, 11.603182, -0.000014, 0.000000, -89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFB09200);
	auto = CreateDynamicObject(2691, 1513.609863, 1465.094482, 11.869594, 0.000000, 0.000000, 450.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 2266, "picture_frame", "CJ_PAINTING30", 0);
	auto = CreateDynamicObject(19445, 1521.749390, 1468.462280, 13.429289, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1517.417236, 1472.364502, 13.424289, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(14397, 1520.353882, 1481.391357, 14.347955, 180.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1530.143677, 1465.582642, 14.347955, 180.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1514.322754, 1467.472168, 14.347955, 180.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1516.262573, 1470.952759, 14.347955, 180.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(2938, 1515.551514, 1468.203125, 13.691942, -0.000014, 270.000000, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(971, 1518.143433, 1468.798828, 13.627861, 89.999992, 180.000076, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(984, 1519.957397, 1464.972290, 13.321937, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 10
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 6, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 7, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 8, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 9, 14561, "triad_neon", "kbneon", 0);
	auto = CreateDynamicObject(1827, 1519.352905, 1467.494751, 9.853103, 0.000000, 0.000022, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	auto = CreateDynamicObject(1827, 1519.352905, 1467.494751, 10.263109, 0.000000, 0.000022, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 18065, "ab_sfammumain", "shelf_glas", 0xFFFFFFFF);
	auto = CreateDynamicObject(1811, 1517.671875, 1467.482666, 10.370174, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14665, "genintint711_1", "interiorwindowglow", 0);
	auto = CreateDynamicObject(1811, 1519.347656, 1465.806885, 10.370174, -0.000014, -0.000007, -89.999939, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14665, "genintint711_1", "interiorwindowglow", 0);
	auto = CreateDynamicObject(1820, 1518.862793, 1466.993042, 10.188559, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(1811, 1521.023560, 1467.482666, 10.370174, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14665, "genintint711_1", "interiorwindowglow", 0);
	auto = CreateDynamicObject(1811, 1519.347656, 1469.158569, 10.370174, 0.000014, 0.000007, 89.999924, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14665, "genintint711_1", "interiorwindowglow", 0);
	auto = CreateDynamicObject(16734, 1533.026245, 1467.742310, 10.362912, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-30-percent", 0);
	auto = CreateDynamicObject(2691, 1514.835205, 1463.723389, 11.869594, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 2266, "picture_frame", "CJ_PAINTING28", 0);
	auto = CreateDynamicObject(2164, 1521.033936, 1463.729492, 9.851935, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1520.238159, 1463.734497, 13.351943, 0.000000, 180.000000, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1519.265259, 1463.729492, 9.851935, 0.000000, -0.000022, 179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1518.469482, 1463.734497, 13.351943, 0.000000, 180.000000, 179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(11683, 1515.593628, 1464.322388, 9.868122, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 14708, "labig1int2", "HS2_Artex5", 0);
	SetDynamicObjectMaterial(auto, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(11685, 1513.082031, 1467.473877, 9.868122, 0.000014, 0.000000, 89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 14708, "labig1int2", "HS2_Artex5", 0);
	SetDynamicObjectMaterial(auto, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(11685, 1513.082031, 1468.764038, 9.868122, 0.000014, 0.000000, 89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 14708, "labig1int2", "HS2_Artex5", 0);
	SetDynamicObjectMaterial(auto, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(11683, 1514.792847, 1464.322388, 9.868122, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 14708, "labig1int2", "HS2_Artex5", 0);
	SetDynamicObjectMaterial(auto, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(11683, 1513.983154, 1464.322388, 9.868122, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 14708, "labig1int2", "HS2_Artex5", 0);
	SetDynamicObjectMaterial(auto, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(2315, 1514.827515, 1465.879639, 9.866856, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(2315, 1514.832520, 1467.466187, 9.868857, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(950, 1514.776489, 1467.519409, 10.539750, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 1, 17146, "cuntwroad", "Tar_blenddrtwhiteline", 0);
	SetDynamicObjectMaterial(auto, 2, 728, "gtatreeshi", "berrybush1", 0);
	auto = CreateDynamicObject(19445, 1521.620850, 1478.081177, 11.603181, -0.000007, -0.000007, 0.000121, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(19795, 1521.619873, 1477.380737, 11.561949, -0.000037, 0.000007, 0.000121, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19445, 1518.347778, 1477.658813, 11.603182, -0.000014, 0.000000, -89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFB09200);
	auto = CreateDynamicObject(19795, 1521.629883, 1474.890869, 11.561949, -0.000037, 0.000007, 0.000121, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(2200, 1514.604736, 1477.613037, 9.869696, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2200, 1516.834473, 1477.613037, 9.869696, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2200, 1519.054565, 1477.613037, 9.869696, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(19445, 1517.417236, 1475.864502, 13.424289, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(14793, 1517.539429, 1477.362549, 13.232712, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(2200, 1513.683838, 1475.991455, 9.871697, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2200, 1513.683838, 1471.949585, 9.869696, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2200, 1518.223877, 1471.548462, 9.869696, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2200, 1520.444214, 1471.548462, 9.869696, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(19172, 1513.568970, 1474.601807, 11.387329, 180.000000, 90.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 14581, "ab_mafiasuitea", "barbersmir1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-80-percent", 0);
	auto = CreateDynamicObject(2315, 1519.913452, 1473.836182, 9.718852, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(2315, 1516.913452, 1473.836182, 9.718852, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(16734, 1533.616821, 1474.713501, 10.362912, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-30-percent", 0);
	auto = CreateDynamicObject(19858, 1512.735107, 1471.303711, 11.590882, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 981, "helixbarrier", "colourboxes", 0);
	auto = CreateDynamicObject(19795, 1511.799194, 1446.131226, 11.584392, 0.000000, 0.000000, 630.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10610, "fedmint_sfs", "ws_security_door", 0);
	auto = CreateDynamicObject(19426, 1512.766357, 1463.437378, 15.843180, -0.000007, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19353, 1512.036377, 1464.957520, 15.843180, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19426, 1512.766357, 1466.478394, 15.843180, -0.000007, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19353, 1513.486938, 1464.957520, 15.843180, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(975, 1512.565430, 1468.071655, 18.520929, 180.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19325, 1512.555298, 1467.651611, 17.387133, 89.999992, -90.000000, -89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF808080);
	auto = CreateDynamicObject(2004, 1512.598755, 1469.727783, 17.176409, 0.000022, -179.999969, -89.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0xFF505050);
	SetDynamicObjectMaterial(auto, 1, 9515, "bigboxtemp1", "sf_concrete1", 0xFF505050);
	auto = CreateDynamicObject(2004, 1512.593750, 1470.418457, 17.176409, 0.000022, -179.999969, -89.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 6312, "beacliff_law2", "concretebigblu4256128", 0xFF505050);
	SetDynamicObjectMaterial(auto, 1, 9515, "bigboxtemp1", "sf_concrete1", 0xFF505050);
	auto = CreateDynamicObject(975, 1515.256714, 1464.000000, 18.520929, 180.000000, 270.000000, -0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1518.377441, 1464.000000, 18.520929, 180.000000, 270.000000, -0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1516.827271, 1464.005005, 18.522928, 180.000000, 270.000000, -0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19353, 1519.956787, 1461.905884, 15.103180, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFDDDDDD);
	auto = CreateDynamicObject(19353, 1519.956787, 1461.905884, 18.603182, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 6095, "shops01_law", "hotwall1_law", 0xFFDDDDDD);
	auto = CreateDynamicObject(19426, 1519.137573, 1463.437378, 15.843180, -0.000007, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19426, 1518.417480, 1464.166748, 15.843180, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19795, 1519.949097, 1461.996216, 15.841940, -0.000029, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19480, 1520.997192, 1460.458740, 14.095037, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19063, "xmasorbs", "sphere", 0x80FFFFFF);
	auto = CreateDynamicObject(19445, 1513.467407, 1476.107910, 15.838183, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19426, 1519.137573, 1464.888672, 15.843180, -0.000007, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19445, 1518.344238, 1474.482910, 15.838183, 0.000000, 0.000007, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFB09200);
	auto = CreateDynamicObject(19325, 1516.874634, 1464.010254, 16.157104, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0xFF808080);
	auto = CreateDynamicObject(975, 1515.256714, 1464.000000, 21.965929, 180.000000, 270.000000, -0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1518.377441, 1464.000000, 21.965929, 180.000000, 270.000000, -0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(975, 1516.827271, 1464.005005, 21.967928, 180.000000, 270.000000, -0.000007, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 5
	SetDynamicObjectMaterial(auto, 0, 11391, "hubprops2_sfse", "blackbag", 0xFFCCCCCC);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19445, 1519.959351, 1469.672363, 15.853180, -0.000006, 0.000000, 0.000120, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(19795, 1519.958374, 1473.951172, 15.811948, -0.000037, 0.000007, 0.000120, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19795, 1519.958374, 1468.689941, 15.811948, -0.000037, 0.000007, 0.000120, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19445, 1520.440308, 1462.663452, 17.674294, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1517.899536, 1474.703491, 17.669294, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19795, 1519.948364, 1471.179688, 15.811948, -0.000037, 0.000007, 0.000120, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(14397, 1514.355103, 1467.251831, 18.592958, 180.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1519.016724, 1473.421997, 18.592958, 180.000000, 0.000000, 450.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1529.766846, 1465.580811, 18.592958, 180.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(2938, 1516.481079, 1471.552124, 17.871960, -0.000022, 270.000000, 0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(971, 1517.511841, 1468.848877, 17.807880, 89.999992, 180.000092, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(16734, 1531.095703, 1470.033081, 14.542913, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-30-percent", 0);
	auto = CreateDynamicObject(14397, 1512.557007, 1462.792114, 18.592958, 180.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(19445, 1520.440308, 1472.293457, 17.674294, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(3037, 1516.218140, 1460.162964, 17.916653, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(2184, 1515.683716, 1471.495483, 14.091935, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	auto = CreateDynamicObject(19466, 1516.721680, 1470.664673, 14.861932, 0.000000, -89.999985, -0.000029, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0);
	auto = CreateDynamicObject(2209, 1516.778076, 1469.125854, 14.171936, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(2209, 1516.778076, 1469.125854, 14.081933, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(1735, 1516.788452, 1473.905029, 14.091935, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 14805, "bdupsfurn", "blacksofa01", 0);
	SetDynamicObjectMaterial(auto, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(2164, 1514.043579, 1474.374512, 14.091945, 0.000000, -0.000007, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1514.839355, 1474.369507, 17.591953, 0.000000, 180.000000, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1518.584839, 1474.374512, 14.091945, 0.000000, 0.000000, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1519.380615, 1474.369507, 17.591953, 0.000000, 180.000000, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2612, 1516.285156, 1474.350952, 16.331951, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 4
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 1239, "icons6", "lyellow32", 0);
	SetDynamicObjectMaterial(auto, 3, 15040, "cuntcuts", "csnewspaper02", 0);
	auto = CreateDynamicObject(19796, 1516.611084, 1474.478882, 17.131950, 90.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 2028, "cj_games", "CJ_speaker4", 0);
	auto = CreateDynamicObject(18066, 1516.722168, 1474.315796, 17.391937, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-80-percent", 0);
	SetDynamicObjectMaterial(auto, 1, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(2611, 1516.989502, 1474.332886, 15.491930, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 8
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 10249, "ottos2_sfw", "ottos_pics_sfe", 0);
	SetDynamicObjectMaterial(auto, 6, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(auto, 7, 14489, "carlspics", "AH_picture2", 0);
	SetDynamicObjectMaterial(auto, 8, 14489, "carlspics", "AH_picture2", 0);
	auto = CreateDynamicObject(19466, 1516.721680, 1468.424561, 14.861932, 0.000000, -89.999985, -0.000029, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18065, "ab_sfammumain", "shelf_glas", 0);
	auto = CreateDynamicObject(19940, 1516.721680, 1469.345337, 14.851932, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14650, "ab_trukstpc", "sa_wood08_128", 0);
	auto = CreateDynamicObject(2209, 1516.778076, 1468.305054, 14.171936, 0.000014, 0.000000, 89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(2209, 1516.778076, 1468.305054, 14.081933, 0.000014, 0.000000, 89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(1715, 1514.540894, 1470.617676, 14.081926, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(1715, 1514.540894, 1469.317627, 14.081926, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(1715, 1514.540894, 1468.017578, 14.081926, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(1715, 1518.821045, 1468.017578, 14.081926, 0.000007, 0.000000, -89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(1715, 1518.821045, 1469.317627, 14.081926, 0.000007, 0.000000, -89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(1715, 1518.821045, 1470.617676, 14.081926, 0.000007, 0.000000, -89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(1715, 1516.690552, 1467.266846, 14.081926, 0.000007, 0.000000, -180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(11685, 1517.211792, 1464.516846, 14.061924, 0.000029, -0.000029, 179.999695, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 14708, "labig1int2", "HS2_Artex5", 0);
	SetDynamicObjectMaterial(auto, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(11685, 1515.921631, 1464.516846, 14.061924, 0.000029, -0.000029, 179.999695, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 14708, "labig1int2", "HS2_Artex5", 0);
	SetDynamicObjectMaterial(auto, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(11685, 1514.651367, 1464.516846, 14.061924, 0.000029, -0.000029, 179.999695, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 14708, "labig1int2", "HS2_Artex5", 0);
	SetDynamicObjectMaterial(auto, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(2234, 1515.448242, 1465.283936, 14.091935, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(19787, 1519.286133, 1465.502930, 16.583063, 2.900002, -0.000018, -135.000076, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "GB_phone02", 0);
	SetDynamicObjectMaterial(auto, 1, 10938, "skyscrap_sfse", "ws_skyscraperwin1", 0);
	auto = CreateDynamicObject(630, 1519.241943, 1465.605591, 15.091935, 0.000000, 0.000000, 1080.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 17958, "burnsalpha", "plantb256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 14665, "genintint711_1", "interiorwindowglow", 0);
	SetDynamicObjectMaterial(auto, 2, 9920, "anotherbuildsfe", "grassgrn256", 0);
	auto = CreateDynamicObject(19858, 1513.570923, 1466.057129, 15.831939, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 2266, "picture_frame", "CJ_PAINTING11", 0);
	auto = CreateDynamicObject(19858, 1513.570923, 1473.377441, 15.831939, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 2266, "picture_frame", "CJ_PAINTING14", 0);
	auto = CreateDynamicObject(2059, 1516.185303, 1468.079102, 14.871945, 0.000000, 0.000000, 37.999989, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 4
	SetDynamicObjectMaterial(auto, 0, 8589, "lwbldstuff03", "filmcase01_64", 0);
	SetDynamicObjectMaterial(auto, 1, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(auto, 2, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(auto, 3, 1736, "cj_ammo", "CJ_Black_metal", 0);
	auto = CreateDynamicObject(2059, 1517.052490, 1470.153076, 14.871945, 0.000000, 0.000000, 127.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 4
	SetDynamicObjectMaterial(auto, 0, 8589, "lwbldstuff03", "filmcase01_64", 0);
	SetDynamicObjectMaterial(auto, 1, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(auto, 2, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(auto, 3, 1736, "cj_ammo", "CJ_Black_metal", 0);
	auto = CreateDynamicObject(2263, 1517.112915, 1472.195557, 15.038848, -9.999960, -0.000090, -165.000305, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 19894, "laptopsamp1", "laptopscreen3", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-90-percent", 0);
	SetDynamicObjectMaterialText(auto, 0, "License Center\nof\nSAN ANDREAS", 140, "Arial", 60, 1, 0xFFFFFFFF, 0xFF002D63, 1);
	auto = CreateDynamicObject(2263, 1517.333130, 1471.234619, 14.865020, 9.999960, 0.000065, 15.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19787, "samplcdtvs1", "samplcdtv1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-80-percent", 0);
	auto = CreateDynamicObject(19829, 1517.221924, 1471.697998, 14.865998, -89.999992, 264.996033, 99.995941, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-90-percent", 0);
	auto = CreateDynamicObject(19829, 1517.224365, 1471.688354, 14.946075, 0.000006, -0.000066, -165.000214, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-93-percent", 0);
	auto = CreateDynamicObject(1964, 1517.204590, 1472.028809, 15.011933, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 65535, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 3, 2669, "cj_chris", "Bow_Fence_Metal", 0);
	SetDynamicObjectMaterial(auto, 6, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(2714, 1512.535645, 1468.970581, 15.901944, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterialText(auto, 0, "Head of LC\n--------\nLC SA", 130, "Courier New", 55, 1, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19426, 1504.812012, 1465.761841, 15.838183, 0.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19445, 1504.816284, 1476.107910, 15.838183, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(19445, 1497.578003, 1471.219727, 15.853180, -0.000006, 0.000000, -179.999756, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFB09200);
	auto = CreateDynamicObject(19795, 1497.588989, 1467.942505, 15.811948, -0.000037, 0.000007, -179.999756, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19445, 1499.966919, 1472.901123, 15.838183, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(19795, 1497.978638, 1472.902222, 15.811948, -0.000029, 0.000007, 90.000221, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19795, 1501.208618, 1472.902222, 15.811948, -0.000029, 0.000007, 90.000221, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(2161, 1504.804688, 1466.602173, 14.091935, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2161, 1504.804688, 1466.602173, 15.441939, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 2813, "gb_books01", "GB_novels05", 0);
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2161, 1498.518311, 1466.602173, 14.091935, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2161, 1498.518311, 1466.602173, 15.441939, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2161, 1503.478882, 1466.602173, 14.091935, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 2813, "gb_books01", "GB_novels04", 0);
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2161, 1503.478882, 1466.602173, 15.441939, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2161, 1499.845459, 1466.602173, 14.091935, 0.000000, -0.000022, 179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 2813, "gb_books01", "GB_novels01", 0);
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2161, 1499.845459, 1466.602173, 15.441939, 0.000000, -0.000022, 179.999863, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 2813, "gb_books01", "GB_novels02", 0);
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2173, 1499.517944, 1470.126953, 14.091935, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(1715, 1498.241699, 1469.626831, 14.081926, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(630, 1504.061035, 1472.016235, 15.091935, 0.000000, 0.000000, 1080.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 17958, "burnsalpha", "plantb256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 14665, "genintint711_1", "interiorwindowglow", 0);
	SetDynamicObjectMaterial(auto, 2, 9920, "anotherbuildsfe", "grassgrn256", 0);
	auto = CreateDynamicObject(2263, 1499.199707, 1469.947388, 15.063845, -9.999990, -0.000073, -75.000282, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 19894, "laptopsamp1", "laptopscreen3", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-90-percent", 0);
	SetDynamicObjectMaterialText(auto, 0, "License Center\nof\nSAN ANDREAS", 140, "Arial", 60, 1, 0xFFFFFFFF, 0xFF002D63, 1);
	auto = CreateDynamicObject(2263, 1500.160645, 1470.167603, 14.890018, 9.999990, 0.000048, 104.999901, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19787, "samplcdtvs1", "samplcdtv1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-80-percent", 0);
	auto = CreateDynamicObject(19829, 1499.697266, 1470.056396, 14.890995, -89.999992, 179.154099, 104.153984, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-90-percent", 0);
	auto = CreateDynamicObject(19829, 1499.706909, 1470.058838, 14.971072, -0.000020, -0.000048, -75.000191, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-93-percent", 0);
	auto = CreateDynamicObject(2059, 1499.736938, 1469.136597, 14.901946, 0.000000, 0.000000, -141.899933, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 4
	SetDynamicObjectMaterial(auto, 0, 8589, "lwbldstuff03", "filmcase01_64", 0);
	SetDynamicObjectMaterial(auto, 1, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(auto, 2, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(auto, 3, 1736, "cj_ammo", "CJ_Black_metal", 0);
	auto = CreateDynamicObject(19445, 1500.609253, 1465.733521, 17.669294, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1500.609253, 1473.535278, 17.669294, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1496.820068, 1468.117310, 17.674294, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(14397, 1503.942871, 1470.332520, 18.592958, 180.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1488.262817, 1472.102783, 18.592958, 180.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1502.133911, 1467.163086, 18.592958, 180.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1498.262451, 1456.193237, 18.592958, 180.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(2938, 1500.889771, 1472.282837, 17.871960, -0.000022, 270.000000, 0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(971, 1501.920532, 1469.579590, 17.807880, 89.999992, 180.000107, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(2714, 1505.364990, 1468.930542, 15.901944, 0.000000, 0.000000, 450.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterialText(auto, 0, "License\nDepartment\n--------\nLC SA", 130, "Courier New", 55, 1, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(19445, 1500.526489, 1457.030640, 15.838183, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFDDDDDD);
	auto = CreateDynamicObject(19445, 1497.578003, 1461.589722, 15.853180, -0.000006, 0.000000, -179.999756, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFB09200);
	auto = CreateDynamicObject(19795, 1497.588989, 1457.511719, 15.811948, -0.000037, 0.000007, -179.999756, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19795, 1497.588989, 1462.683105, 15.811948, -0.000037, 0.000007, -179.999756, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19795, 1497.598999, 1459.871826, 15.811948, -0.000037, 0.000007, -179.999756, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(16734, 1490.865845, 1479.342651, 14.542913, 0.000000, 0.000000, 315.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-30-percent", 0);
	auto = CreateDynamicObject(16734, 1486.714966, 1461.612793, 14.542913, 0.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-30-percent", 0);
	auto = CreateDynamicObject(19445, 1500.609253, 1456.630981, 17.669294, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(19445, 1496.820068, 1458.487305, 17.674294, 180.000000, 90.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14847, "mp_policesf", "mp_cop_carpet", 0xFF505050);
	auto = CreateDynamicObject(14397, 1502.133911, 1458.041382, 18.592958, 180.000000, 0.000000, 360.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1488.043579, 1464.321289, 18.592958, 180.000000, 0.000000, 540.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(2938, 1500.889771, 1463.299194, 17.871960, -0.000022, 270.000000, 0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(971, 1501.920532, 1460.595947, 17.807880, 89.999992, 180.000122, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(2164, 1498.172241, 1466.384766, 14.091945, 0.000000, 0.000000, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1498.968018, 1466.379761, 17.591953, 0.000000, 180.000000, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1503.433594, 1466.384766, 14.091945, 0.000000, 0.000007, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1504.229370, 1466.379761, 17.591953, 0.000000, 180.000000, -0.000060, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2162, 1501.661255, 1466.399536, 14.091935, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2162, 1499.940918, 1466.399536, 14.091935, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(19786, 1501.223022, 1466.384399, 16.343058, 2.900012, 0.000014, -0.000015, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 15040, "cuntcuts", "GB_phone02", 0);
	SetDynamicObjectMaterial(auto, 1, 6354, "sunset03_law2", "billLA02", 0);
	auto = CreateDynamicObject(630, 1504.841797, 1457.757935, 15.091935, 0.000000, 0.000000, 1125.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 65535, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 14665, "genintint711_1", "interiorwindowglow", 0);
	SetDynamicObjectMaterial(auto, 2, 9920, "anotherbuildsfe", "grassgrn256", 0);
	auto = CreateDynamicObject(630, 1498.219971, 1457.757935, 15.091935, 0.000004, 0.000004, 44.999989, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 65535, "none", "none", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 14665, "genintint711_1", "interiorwindowglow", 0);
	SetDynamicObjectMaterial(auto, 2, 9920, "anotherbuildsfe", "grassgrn256", 0);
	auto = CreateDynamicObject(19477, 1501.272827, 1466.350464, 16.250820, 0.000022, 0.000007, 89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 17588, "lae2coast_alpha", "LAShad1", 0);
	auto = CreateDynamicObject(2173, 1500.186401, 1463.553589, 14.091935, -0.000014, -0.000007, -179.999878, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(1715, 1499.686279, 1464.829834, 14.081926, 0.000022, 0.000007, -0.000037, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(2263, 1500.006836, 1463.871826, 15.063844, -10.000006, -0.000075, -165.000198, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 19894, "laptopsamp1", "laptopscreen3", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-90-percent", 0);
	SetDynamicObjectMaterialText(auto, 0, "License Center\nof\nSAN ANDREAS", 140, "Arial", 60, 1, 0xFFFFFFFF, 0xFF002D63, 1);
	auto = CreateDynamicObject(2263, 1500.227051, 1462.910889, 14.890018, 10.000006, 0.000050, 14.999878, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19787, "samplcdtvs1", "samplcdtv1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-80-percent", 0);
	auto = CreateDynamicObject(19829, 1500.115845, 1463.374268, 14.890995, -89.999992, 213.549088, 48.548954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-90-percent", 0);
	auto = CreateDynamicObject(19829, 1500.118286, 1463.364624, 14.971072, -0.000037, -0.000051, -165.000092, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-93-percent", 0);
	auto = CreateDynamicObject(2059, 1499.196045, 1463.334595, 14.901946, -0.000003, -0.000015, 128.100082, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 4
	SetDynamicObjectMaterial(auto, 0, 8589, "lwbldstuff03", "filmcase01_64", 0);
	SetDynamicObjectMaterial(auto, 1, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(auto, 2, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(auto, 3, 1736, "cj_ammo", "CJ_Black_metal", 0);
	auto = CreateDynamicObject(2173, 1503.686401, 1463.553589, 14.091935, -0.000014, -0.000007, -179.999878, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(1715, 1503.186279, 1464.829834, 14.081926, 0.000022, 0.000007, -0.000037, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(2263, 1503.506836, 1463.871826, 15.063844, -10.000006, -0.000075, -165.000198, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 19894, "laptopsamp1", "laptopscreen3", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-90-percent", 0);
	SetDynamicObjectMaterialText(auto, 0, "License Center\nof\nSAN ANDREAS", 140, "Arial", 60, 1, 0xFFFFFFFF, 0xFF002D63, 1);
	auto = CreateDynamicObject(2263, 1503.727051, 1462.910889, 14.890018, 10.000006, 0.000050, 14.999878, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19787, "samplcdtvs1", "samplcdtv1", 0);
	SetDynamicObjectMaterial(auto, 1, 18646, "matcolours", "grey-80-percent", 0);
	auto = CreateDynamicObject(19829, 1503.615845, 1463.374268, 14.890995, -89.999992, 213.549088, 48.548954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-90-percent", 0);
	auto = CreateDynamicObject(19829, 1503.618286, 1463.364624, 14.971072, -0.000037, -0.000051, -165.000092, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-93-percent", 0);
	auto = CreateDynamicObject(2059, 1502.696045, 1463.334595, 14.901946, -0.000003, -0.000015, 128.100082, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 4
	SetDynamicObjectMaterial(auto, 0, 8589, "lwbldstuff03", "filmcase01_64", 0);
	SetDynamicObjectMaterial(auto, 1, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(auto, 2, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(auto, 3, 1736, "cj_ammo", "CJ_Black_metal", 0);
	auto = CreateDynamicObject(2714, 1505.364990, 1462.599365, 15.901944, 0.000000, 0.000000, 450.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterialText(auto, 0, "Insurance\nDepartment\n--------\nLC SA", 130, "Courier New", 55, 1, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(2808, 1520.039551, 1454.171875, 10.470290, 89.999992, 235.588043, -55.588219, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2808, 1520.014893, 1453.361084, 10.472244, 89.999992, 55.747696, -55.747932, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2371, 1519.414063, 1453.821289, 9.069046, -0.000000, -0.000015, -90.000061, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(2808, 1520.039551, 1449.671875, 10.470290, 89.999992, 235.588043, -55.588219, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2808, 1520.014893, 1448.861084, 10.472244, 89.999992, 55.747696, -55.747932, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2371, 1519.414063, 1449.321289, 9.069046, -0.000000, -0.000015, -90.000061, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(2808, 1517.948975, 1454.173828, 10.472290, 89.999992, 251.366653, -71.366821, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2808, 1517.924316, 1453.363037, 10.474244, 89.999992, 71.465218, -71.465446, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2371, 1517.323486, 1453.823242, 9.071045, -0.000008, -0.000015, -90.000038, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(2808, 1517.948975, 1449.673828, 10.472290, 89.999992, 251.366653, -71.366821, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2808, 1517.924316, 1448.863037, 10.474244, 89.999992, 71.465218, -71.465446, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2371, 1517.323486, 1449.323242, 9.071045, -0.000008, -0.000015, -90.000038, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(2315, 1518.246826, 1451.549438, 9.870009, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(2249, 1518.916138, 1451.476685, 11.043442, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 18065, "ab_sfammumain", "shelf_glas", 0);
	auto = CreateDynamicObject(626, 1521.538940, 1455.839233, 11.899334, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 17958, "burnsalpha", "plantb256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 14665, "genintint711_1", "interiorwindowglow", 0);
	SetDynamicObjectMaterial(auto, 2, 9920, "anotherbuildsfe", "grassgrn256", 0);
	auto = CreateDynamicObject(626, 1521.418823, 1456.039429, 14.789331, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 17958, "burnsalpha", "plantb256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(626, 1516.367065, 1447.168213, 11.899334, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 17958, "burnsalpha", "plantb256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 14665, "genintint711_1", "interiorwindowglow", 0);
	SetDynamicObjectMaterial(auto, 2, 9920, "anotherbuildsfe", "grassgrn256", 0);
	auto = CreateDynamicObject(626, 1516.246948, 1447.368408, 14.789331, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 17958, "burnsalpha", "plantb256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(2808, 1513.055298, 1452.624512, 10.470290, 89.999992, 294.824982, -24.825180, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2808, 1513.866089, 1452.599854, 10.472244, 89.999992, 114.940109, -24.940363, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2371, 1513.405884, 1451.999023, 9.069046, -0.000008, -0.000007, -0.000068, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(2808, 1513.053345, 1450.533936, 10.472290, 89.999992, 305.042816, -35.043015, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2808, 1513.864136, 1450.509277, 10.474244, 89.999992, 125.100266, -35.100510, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2371, 1513.403931, 1449.908447, 9.071045, -0.000015, -0.000007, -0.000045, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(2808, 1514.651978, 1459.953735, 14.750294, 89.999992, 392.458923, -32.459141, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2808, 1514.676636, 1460.764526, 14.752248, 89.999992, 212.513351, -32.513615, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2371, 1515.277466, 1460.304321, 13.349050, -0.000000, 0.000007, 89.999878, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(2808, 1516.742554, 1459.951782, 14.752294, 89.999992, 386.049164, -26.049374, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2808, 1516.767212, 1460.762573, 14.754248, 89.999992, 206.079636, -26.079880, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 19598, "sfbuilding1", "darkwood1", 0);
	SetDynamicObjectMaterial(auto, 1, 15041, "bigsfsave", "carp11S", 0);
	auto = CreateDynamicObject(2371, 1517.368042, 1460.302368, 13.351050, -0.000008, 0.000007, 89.999901, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(630, 1519.241943, 1462.595459, 15.091935, 0.000000, 0.000000, 1080.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 17958, "burnsalpha", "plantb256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 14665, "genintint711_1", "interiorwindowglow", 0);
	SetDynamicObjectMaterial(auto, 2, 9920, "anotherbuildsfe", "grassgrn256", 0);
	auto = CreateDynamicObject(630, 1518.991699, 1457.994385, 15.091935, 0.000000, 0.000000, 1260.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 17958, "burnsalpha", "plantb256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 14665, "genintint711_1", "interiorwindowglow", 0);
	SetDynamicObjectMaterial(auto, 2, 9920, "anotherbuildsfe", "grassgrn256", 0);
	auto = CreateDynamicObject(11714, 1511.962280, 1464.952393, 15.821948, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14842, "genintintpolicea", "cop_notice", 0);
	auto = CreateDynamicObject(11714, 1511.962280, 1464.952393, 11.611942, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 2028, "cj_games", "CJ_speaker4", 0);
	auto = CreateDynamicObject(19445, 1504.806763, 1476.107910, 11.603182, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFFFFFFF);
	auto = CreateDynamicObject(14632, 1506.297974, 1486.207886, 11.131935, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(14632, 1506.302979, 1486.202881, 9.721938, 0.000007, 0.000000, 89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19445, 1499.967651, 1473.781494, 11.603182, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFB09200);
	auto = CreateDynamicObject(19445, 1499.922607, 1474.546875, 13.423177, 0.000000, -89.999985, 90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19426, 1504.523926, 1468.303589, 13.418177, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19426, 1504.523926, 1471.803589, 13.418177, 180.000000, 90.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19445, 1496.390015, 1471.214722, 11.603181, -0.000007, -0.000030, -179.999771, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14593, "papaerchaseoffice", "wall_stone3_256", 0xFFE8C100);
	auto = CreateDynamicObject(19795, 1496.411011, 1466.936401, 11.561949, -0.000030, -0.000037, -179.999710, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(19445, 1495.671875, 1471.215820, 13.418177, 0.000000, -89.999985, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 19853, "mihouse1", "brownwall1", 0xFFBBBBBB);
	auto = CreateDynamicObject(19795, 1496.411011, 1470.166016, 11.561949, -0.000030, -0.000037, -179.999710, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 15041, "bigsfsave", "windo_blinds", 0);
	auto = CreateDynamicObject(14397, 1488.116943, 1473.128662, 14.337956, 180.000000, 0.000000, 540.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1502.067871, 1467.087891, 14.337956, 180.000000, 0.000000, 720.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(14397, 1497.087524, 1469.037476, 14.337956, 180.000000, 0.000000, 630.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 18646, "matcolours", "grey-40-percent", 0);
	auto = CreateDynamicObject(2938, 1497.930786, 1470.044312, 13.691942, -0.000007, 270.000000, -89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 10765, "airportgnd_sfse", "white", 0);
	auto = CreateDynamicObject(971, 1500.522705, 1470.640015, 13.627861, 89.999992, 180.000061, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(984, 1498.186279, 1465.012329, 17.571934, 180.000000, 90.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 10
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 2, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 6, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 7, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 8, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 9, 14561, "triad_neon", "kbneon", 0);
	auto = CreateDynamicObject(936, 1499.962036, 1467.171509, 10.321931, 0.000000, -0.000015, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 3440, "airportpillar", "metalic_64", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(936, 1498.241455, 1467.173462, 10.323931, 0.000000, -0.000015, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 3440, "airportpillar", "metalic_64", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 19598, "sfbuilding1", "darkwood1", 0);
	auto = CreateDynamicObject(19812, 1499.071167, 1467.073120, 11.011929, -89.999992, 89.999992, 89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 18247, "cw_junkyarddigcs_t", "Was_scrpyd_crane_back", 0);
	SetDynamicObjectMaterial(auto, 1, 18247, "cw_junkyarddigcs_t", "Was_scrpyd_crane_back", 0);
	auto = CreateDynamicObject(2765, 1500.056885, 1466.130737, 12.061926, 0.000000, -0.000015, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 2028, "cj_games", "CJ_speaker4", 0);
	SetDynamicObjectMaterial(auto, 1, 14654, "ab_trukstpe", "bbar_plates2", 0);
	auto = CreateDynamicObject(2765, 1500.056885, 1466.130737, 10.981933, 0.000000, -0.000015, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 2028, "cj_games", "CJ_speaker4", 0);
	SetDynamicObjectMaterial(auto, 1, 14654, "ab_trukstpe", "bbar_plates2", 0);
	auto = CreateDynamicObject(19816, 1499.760132, 1467.363892, 11.051940, -89.999992, 89.999992, 89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(920, 1499.270630, 1466.907837, 11.011934, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 18247, "cw_junkyarddigcs_t", "Was_scrpyd_crane_back", 0);
	SetDynamicObjectMaterial(auto, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(920, 1498.390381, 1466.907837, 11.011934, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 0, 18247, "cw_junkyarddigcs_t", "Was_scrpyd_crane_back", 0);
	SetDynamicObjectMaterial(auto, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(19816, 1498.379517, 1467.363892, 11.231944, -89.999992, 89.999992, 89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 1560, "7_11_door", "CJ_CHROME2", 0);
	auto = CreateDynamicObject(2660, 1499.327759, 1467.163940, 10.821934, -89.999992, 89.999992, 89.999992, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14654, "ab_trukstpe", "bbar_plates2", 0);
	auto = CreateDynamicObject(19475, 1499.531860, 1467.313354, 10.952104, 40.000000, 270.000000, -90.000008, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0);
	auto = CreateDynamicObject(19475, 1498.590942, 1467.313354, 11.142108, 40.000004, -89.999985, 89.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 2669, "cj_chris", "Bow_Fence_Metal", 0);
	auto = CreateDynamicObject(630, 1503.975342, 1472.999023, 10.851935, 0.000000, 0.000000, 990.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 17958, "burnsalpha", "plantb256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 14665, "genintint711_1", "interiorwindowglow", 0);
	SetDynamicObjectMaterial(auto, 2, 9920, "anotherbuildsfe", "grassgrn256", 0);
	auto = CreateDynamicObject(630, 1497.075439, 1472.999023, 10.851935, 0.000000, 0.000000, 990.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 17958, "burnsalpha", "plantb256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 14665, "genintint711_1", "interiorwindowglow", 0);
	SetDynamicObjectMaterial(auto, 2, 9920, "anotherbuildsfe", "grassgrn256", 0);
	auto = CreateDynamicObject(2164, 1503.521729, 1466.576904, 9.851935, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(2164, 1502.725952, 1466.581909, 13.351943, 0.000000, 180.000000, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(630, 1504.656006, 1467.138184, 10.851935, 0.000000, 0.000000, 990.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 17958, "burnsalpha", "plantb256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 14665, "genintint711_1", "interiorwindowglow", 0);
	SetDynamicObjectMaterial(auto, 2, 9920, "anotherbuildsfe", "grassgrn256", 0);
	auto = CreateDynamicObject(630, 1501.525146, 1467.138184, 10.851935, 0.000000, 0.000000, 990.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 3
	SetDynamicObjectMaterial(auto, 0, 17958, "burnsalpha", "plantb256", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 1, 14665, "genintint711_1", "interiorwindowglow", 0);
	SetDynamicObjectMaterial(auto, 2, 9920, "anotherbuildsfe", "grassgrn256", 0);
	auto = CreateDynamicObject(2173, 1498.677124, 1470.627441, 9.831934, -0.000007, 0.000000, -89.999977, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14577, "casinovault01", "cof_wood1", 0);
	auto = CreateDynamicObject(1715, 1497.400879, 1470.127319, 9.821926, 0.000014, 0.000000, 89.999954, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 1, 14533, "pleas_dome", "sfw_clublight1", 0);
	auto = CreateDynamicObject(2059, 1498.896118, 1469.637085, 10.641945, -0.000004, -0.000006, -141.899918, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 4
	SetDynamicObjectMaterial(auto, 0, 8589, "lwbldstuff03", "filmcase01_64", 0);
	SetDynamicObjectMaterial(auto, 1, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(auto, 2, 15040, "cuntcuts", "csnewspaper02", 0);
	SetDynamicObjectMaterial(auto, 3, 1736, "cj_ammo", "CJ_Black_metal", 0);
	auto = CreateDynamicObject(2714, 1505.365479, 1468.881592, 11.581940, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 2
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterialText(auto, 0, "License Plates\n--------\nLC SA", 130, "Courier New", 55, 1, 0xFFFFFFFF, 0, 1);
	auto = CreateDynamicObject(971, 1509.082520, 1462.285522, 13.612869, 89.999992, 180.000046, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(971, 1509.082520, 1470.995239, 13.612869, 89.999992, 180.000046, -89.999962, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 6
	SetDynamicObjectMaterial(auto, 0, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 1, 19962, "samproadsigns", "materialtext1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(auto, 2, 10023, "bigwhitesfe", "sfe_arch6", 0xCC222222);
	SetDynamicObjectMaterial(auto, 3, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 4, 19962, "samproadsigns", "materialtext1", 0);
	SetDynamicObjectMaterial(auto, 5, 19962, "samproadsigns", "materialtext1", 0);
	auto = CreateDynamicObject(19865, 1516.363525, 1459.215210, 13.345092, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 16093, "a51_ext", "ws_whitewall2_bottom", 0xAA999999);
	auto = CreateDynamicObject(19865, 1521.363647, 1459.215210, 13.345092, 0.000000, 180.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 16093, "a51_ext", "ws_whitewall2_bottom", 0xAA999999);
	auto = CreateDynamicObject(19865, 1513.874023, 1461.715454, 13.345092, 0.000000, 180.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 16093, "a51_ext", "ws_whitewall2_bottom", 0xAA999999);
	CreateDynamicObject(19552, 1517.082520, 1465.289307, -29.074892, 180.000000, 180.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(19552, 1459.853394, 1465.289307, 15.036190, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(19552, 1516.573242, 1522.009033, 15.036190, 0.000000, 90.000008, 89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(19552, 1516.573242, 1408.569580, 15.036190, 0.000000, 90.000008, 89.999969, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(19552, 1517.082520, 1465.289307, 70.925110, 180.000000, 180.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(11743, 1520.063965, 1470.993652, 10.874314, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(2821, 1519.086548, 1467.420044, 10.691305, 0.000000, 0.000000, 24.499998, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(2826, 1514.761475, 1466.253418, 10.369426, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(2824, 1514.876221, 1468.588989, 10.369080, 0.000000, 0.000000, 62.299999, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(2819, 1519.289673, 1474.810669, 10.204484, 0.000000, 0.000000, -76.500015, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(1897, 1519.333130, 1464.474121, 16.471939, 90.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(2824, 1515.838135, 1465.751709, 14.621937, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(19808, 1516.813477, 1471.989380, 14.881933, 0.000000, 0.000000, -172.199951, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(2684, 1517.437012, 1474.348877, 16.371941, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(2684, 1517.837402, 1474.348877, 16.371941, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(1811, 1500.420654, 1469.138184, 14.561931, 0.000000, 0.000000, 270.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(1722, 1505.091187, 1469.208130, 14.091935, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(1722, 1505.091187, 1468.397949, 14.091935, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(19808, 1499.373413, 1469.632446, 14.901944, 0.000000, 0.000000, -84.099976, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(2007, 1501.464600, 1457.530762, 14.081916, 0.000000, 0.000000, 179.999786, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(2007, 1502.455566, 1457.530762, 14.081916, 0.000000, -0.000006, 179.999741, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(2007, 1500.473877, 1457.530762, 14.081916, 0.000000, 0.000006, 179.999786, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(14632, 1495.732666, 1444.572266, 15.591936, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(1811, 1499.197632, 1462.650879, 14.561930, -0.000014, -0.000007, -179.999878, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(19808, 1499.691895, 1463.698120, 14.901944, -0.000014, -0.000006, -174.099854, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(1811, 1502.697632, 1462.650879, 14.561930, -0.000014, -0.000007, -179.999878, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(19808, 1503.191895, 1463.698120, 14.901944, -0.000014, -0.000006, -174.099854, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(2826, 1518.415405, 1451.487793, 10.372535, 0.000000, 0.000000, 18.400003, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(18001, 1507.446289, 1447.659424, 15.086657, 0.000000, 270.000000, -179.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(18001, 1512.916138, 1447.659424, 15.086657, 0.000000, 270.000000, -179.999985, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(18001, 1511.045776, 1447.659424, 17.826658, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	CreateDynamicObject(18001, 1509.265869, 1447.659424, 17.826658, 180.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	auto = CreateDynamicObject(19477, 1497.081787, 1465.849487, 12.571936, 0.000000, 0.000000, -90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 2
	SetDynamicObjectMaterial(auto, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0);
	SetDynamicObjectMaterialText(auto, 0, "Lection Theme", 130, "Trebuchet MS", 60, 1, 0xFF000000, 0, 1);
	auto = CreateDynamicObject(7666, 1511.929565, 1464.068481, 9.931940, 60.000000, -89.999969, 89.999924, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 1
	SetDynamicObjectMaterialText(auto, 0, "1. Car Driving License\n2. Moto Driving License\n3. Truck Driving License\n4. Air Driving License\n5. Boat Driving License\n6. Weapon License", 140, "Trebuchet MS", 25, 0, 0xFFFFFFFF, 0, 0);
	CreateDynamicObject(2986, 1517.332520, 1451.922363, 19.431555, 360.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2986, 1517.332520, 1454.662476, 19.431555, 360.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2986, 1517.332520, 1449.171875, 19.431555, 360.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2986, 1512.801392, 1451.922363, 19.431555, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2986, 1512.801392, 1454.662476, 19.431555, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2986, 1512.801392, 1449.171875, 19.431555, 0.000000, 0.000007, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2066, 1514.244019, 1459.577148, 9.340799, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2066, 1514.244019, 1460.157593, 9.340799, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2066, 1519.513184, 1459.577148, 9.340799, 0.000000, 0.000000, 180.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2002, 1515.695435, 1462.880005, 9.872249, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(19552, 1573.292969, 1465.289307, 15.036190, 0.000000, 90.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1502.140259, 1458.854858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1500.840210, 1458.854858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1499.540161, 1458.854858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1498.240112, 1458.854858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1496.940063, 1458.854858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1502.140259, 1460.354858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1500.840210, 1460.354858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1499.540161, 1460.354858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1498.240112, 1460.354858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1496.940063, 1460.354858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1782, 1501.838745, 1464.312256, 13.075948, 20.000038, 180.000031, 179.999695, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1502.140259, 1461.854858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1500.840210, 1461.854858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1499.540161, 1461.854858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1498.240112, 1461.854858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(1721, 1496.940063, 1461.854858, 9.851935, 0.000000, 0.000014, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2007, 1500.984375, 1467.021118, 14.091935, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2007, 1500.984375, 1467.021118, 15.491935, 0.000000, -0.000007, 179.999954, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2007, 1501.975342, 1467.021118, 14.091935, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2007, 1501.975342, 1467.021118, 15.491935, 0.000000, -0.000014, 179.999908, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2007, 1498.113770, 1471.971924, 14.091935, 0.000007, -0.000014, 89.999916, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2007, 1498.113770, 1471.971924, 15.491935, 0.000007, -0.000014, 89.999916, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2007, 1501.464600, 1457.530762, 14.081916, 0.000000, 0.000000, 179.999786, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2007, 1502.455566, 1457.530762, 14.081916, 0.000000, -0.000006, 179.999741, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	CreateDynamicObject(2007, 1500.473877, 1457.530762, 14.081916, 0.000000, 0.000006, 179.999786, -1, -1, -1, STREAMER_OBJECT_SD, STREAMER_OBJECT_DD); // 0
	auto = CreateDynamicObject(3089, 1505.341431, 1460.281006, 11.143421, 0.000000, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14665, "genintint711_1", "interiorwindowglow", 0);
	CreateDynamicObject(0, 1505.341431, 1460.281006, 11.143421, 0.000000, 0.000000, 0.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 0
	auto = CreateDynamicObject(3089, 1512.543213, 1469.740967, 11.143421, 0.000007, 0.000000, 90.000000, -1, -1, -1, STREAMER_OBJECT_SD, 200.0); // 1
	SetDynamicObjectMaterial(auto, 0, 14665, "genintint711_1", "interiorwindowglow", 0);
}