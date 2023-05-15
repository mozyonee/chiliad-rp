
#define MAX_HOUSE 		1300
#define MAX_HOSTEL		50
#define MAX_FURNITURE   140
#define MAX_HFURN		120
#define MAX_EVICT		5
#define Furn::			FurnitureInfo
#define FURN_PAGE		15

// Дома

enum hInfo {
	hID, 
	hOwned,
	hOwner[32],
	Float:hEnterPos[4],
	Float:hExitPos[4],
	hPrice, 
	hSellDate, 
	hHouseTax, hHouseTaxTime,
	hMoney,
	
	hEnterInt, hEnterWorld,
	hExitInt,
	
	hInterior, hLock,
	
	hInvSlot[18],
	hInvSlotKol[18],
	
	hHouseWall[2], // Стены дома
	hHouseFloor[2], // Полы
	hHouseRoof[2], // Потолки
	hHouseDoor[2],
	
	hWall,
	hFloor,
	hRoof,
	hDoor,
	
	Text3D:hText[2],
	hPickup,
	hIcon
}
new HouseInfo[MAX_HOUSE][hInfo];
new house_object_interior[2];
// Падики

enum kInfo {
	kID,
	Float: kEnterPos[3],
	Float: kEnterPos_Two[3],
	Float: kExitPos[3],
	Float: kExitPos_Two[3],
	kInt,
	kCity,
	kVirtWorld,
	Float: kCamPos[3]
};
new Hostels[MAX_HOSTEL][kInfo];

// мебель 

enum furnHouse
{
	furnID,
	furnHID,
	furnModel,
	Float:furnX,
	Float:furnY,
	Float:furnZ,
	Float:furnRX,
	Float:furnRY,
	Float:furnRZ,
	furnClass,
	furnCount,
	furnObject,
	furnState,
	furnHType
};
new Furn::[MAX_HOUSE][MAX_FURNITURE][furnHouse];

new f_select[MAX_PLAYERS][FURN_PAGE];

enum evictInfo {
	ev_Name[32], 
	ev_ID, 
}
new HEvict[MAX_PLAYERS][MAX_EVICT][evictInfo];

	
enum ht_info {
	ht_id, 
	Float:ht_p[4], 
	ht_int, 
	ht_room, 
	ht_name[64],
	ht_list[256]
}	
	
new house_int[][ht_info] = {	
	{ 1, { 538.107, -421.34, 1002.28, 224.4 }, 5, 1, "Комната [ 1 ]", "Комната" },
	{ 2, { 115.799, 80.3908, 1046.32, 8.1976 }, 5, 1, "Комната [ 2 ]", "Комната"},
	{ 3, { -509.273, -78.4339, 1003.63, 183.979 }, 5, 1, "Комната [ 3 ]", "Комната" },
	{ 4, { 321.049, -759.664, 999.656, 185.523 }, 5, 3, "Дом [ 1 этаж ][ 3 комнаты ]", ""},
	{ 5, { -679.866, -85.5539, 1603.59, 275.474 }, 5, 3, "Дом [ 1 этаж ][ 3 комнаты ]", ""},
	{ 6, { -1865.96, 896.656, 1383.05, 89.0383 }, 5, 4, "Дом [ 1 этаж ][ 4 комнаты ]", ""},
	{ 7, { 2242.39, -671.352, 1084.08, 272.92 }, 5, 4, "Дом [ 1 этаж ][ 4 комнаты ]", ""},
	{ 8, { -679.803, -85.5618, 1003.59, 267.013 }, 5, 5, "Дом [ 1 этаж ][ 5 комант ]", ""},
	{ 9, { -1976.47, -607.488, 1200.66, 1.6176 }, 5, 5, "Дом [ 1 этаж ][ 5 комант ]", ""},
	{ 10, { 160.918, -1799.92, 1003.9, 359.737 }, 5, 5, "Дом [ 2 этажа ][ 5 комант ]", ""},
	{ 11, { -1618.64, 491.301, 1020.66, 270.123 }, 5, 5, "Дом [ 2 этажа ][ 5 комант ]", ""}
};	

enum int_wall_text_info {
	iwt_ob, iwt_texture[32], iwt_model[32]
}

new int_wall_textures[][int_wall_text_info] = {
	
	{ 19459, "all_walls", "stormdrain3_nt" },
	{ 6404, "beafron1_law2", "comptwall31" }, 
	{ 11092, "burgalrystore_sfse", "ws_altz_wall2bluetop" }, 
	{ 3098, "col_wall2x", "mp_burn_wall2" }, 
	{ 3063, "col_wall1x", "mp_burn_wall4" }, 
	{ 17566, "contachou1_lae2", "mp_apt1_woodpanel" }, 
	{ 4887, "downtown_las", "snpedwar4" }, 
	{ 14420, "dr_gsbits", "mp_gs_libwall" }, 
	{ 14708, "labig1int2", "GB_restaursmll32" }, 
	{ 14706, "labig2int2", "HS3_wall5" }, 
	{ 14701, "lahss2int2", "HS2_wall2" }, 
	{ 14709, "lamidint2", "mp_apt1_roomwall" }, 
	{ 14702, "masmall3int2", "HS3_wall3" }, 
	{ 5787, "melrose02_lawn", "melrgr01_law" }, 
	{ 18056, "mp_diner1", "mp_diner_wall" }, 
	{ 14847, "mp_policesf", "mp_tank_roomplain" }, 
	{ 14735, "newcrak", "kbdirty_wall1" }, 
	{ 14533, "pleas_dome", "ab_clubloungewall" }, 
	{ 14533, "pleas_dome", "club_zeb_SFW2" },
	{ 14533, "pleas_dome", "club_zeb_SFW2" }, 
	{ 14745, "rystuff", "mp_apt1_bathwall1" }, 
	{ 14495, "sweetshall", "AH_dirtywalls8bit2" }, 
	{ 12962, "sw_apartflat", "wal0256hi" }, 
	{ 13007, "sw_bankint", "bank_wall1" }, 
	{ 13065, "sw_fact02alt", "ws_oldwall1" }, 
	{ 14711, "vgshm2int2", "HSV_wall4" }, 
	{ 7416, "vgnbball", "actopblank_256" }, 
	{ 14711, "vgshm2int2", "HSV_wall2" }, 
	{ 14711, "vgshm2int2", "HSV_wall1" }, 
	{ 19853, "mihouse1", "bluewall1" }
};

new int_roof_textures[][int_wall_text_info] = {
	{ 10101, "2notherbuildsfe", "ferry_build14" }, 
	{ 14668, "711c", "forumstand1_LAe" }, 
	{ 16640, "a51", "vgs_shopwall01_128" }, 
	{ 16640, "a51", "ws_stationfloor" }, 
	{ 14581, "ab_mafiasuitea", "mp_burn_ceiling" }, 
	{ 14847, "mp_policesf", "mp_cop_floor" }, 
	{ 17547, "eastbeach4a_lae2", "sand256" }, 
	{ 18029, "genintintsmallrest", "GB_restaursmll13" }, 
	{ 14708, "labig1int2", "StudioWall" }, 
	{ 14534, "ab_wooziea", "ab_tileDiamond" }
};

new int_floor_textures[][int_wall_text_info] = {
	{ 19378, "all_walls", "mp_diner_woodwall" },
	{ 2755, "ab_dojowall", "mp_apt1_roomfloor" }, 
	{ 14581, "ab_mafiasuitea", "cof_wood2" }, 
	{ 14581, "ab_mafiasuitea", "wood02S" }, 
	{ 14581, "ab_mafiasuitea", "walp45S" }, 
	{ 14786, "ab_sfgymbeams", "gym_floor5" }, 
	{ 14786, "ab_sfgymbeams", "knot_wood128" }, 
	{ 14789, "ab_sfgymmain", "gym_floor6" }, 
	{ 14652, "ab_trukstpa", "CJ_WOOD6" }, 
	{ 14652, "ab_trukstpa", "mp_diner_wood" }, 
	{ 14651, "ab_trukstpd", "Bow_bar_flooring" }, 
	{ 14650, "ab_trukstpc", "mp_CJ_WOOD5" }, 
	{ 14534, "ab_wooziea", "walp72S" }, 
	{ 14534, "ab_wooziea", "carp02S" }, 
	{ 10370, "alleys_sfs", "ws_asphalt" }, 
	{ 14387, "dr_gsnew", "la_flair1" }, 
	{ 18882, "hugebowls", "woodpanel1" }, 
	{ 14392, "dr_gsstudio", "la_flair2" }, 
	{ 14777, "int_casinoint3", "GB_midbar05" }, 
	{ 14706, "labig2int2", "wood14S" }, 
	{ 18058, "mp_diner2", "mp_diner_table" }, 
	{ 14710, "vgshm3int2", "HSV_3carpet2" }, 
	{ 15041, "bigsfsave", "AH_flrdiamonds" }, 
	{ 15041, "bigsfsave", "AH_flroortile5" }, 
	{ 15041, "bigsfsave", "AH_flroortile9" }, 
	{ 15041, "bigsfsave", "AH_walltile6" }, 
	{ 10023, "bigwhitesfe", "archgrnd1_SFE" }, 
	{ 3653, "beachapts_lax", "eastwall4_LAe2" }, 
	{ 3922, "bistro", "DinerFloor" }, 
	{ 14383, "burg_1", "carpet4kb" }, 
	{ 6094, "canalsg_law", "ws_sheetwood_clean" }
};

new int_door_textures[][int_wall_text_info] = {
	{ 1502, "int_doors", "CJ_WOODDOOR5" },
	{ 1502, "int_doors", "CJ_WOODDOOR3" },
	{ 1502, "int_doors", "CJ_WOODDOOR2" },
	{ 1502, "int_doors", "CJ_WOODDOOR1" },
	{ 1502, "int_doors", "CJ_SCOR_DOOR" },
	{ 2755, "ab_dojowall", "mp_apt1_roomfloor" }, 
	{ 14581, "ab_mafiasuitea", "cof_wood2" }, 
	{ 14581, "ab_mafiasuitea", "barbersmir1" }, 
	{ 14581, "ab_mafiasuitea", "ab_blind" }, 
	{ 8394, "ballysign01", "ws_airpassage" }, 
	{ 3629, "arprtxxref_las", "dirtywhite" }, 
	{ 3629, "arprtxxref_las", "dirtywhite" }, 
	{ 16640, "a51", "ws_stationfloor" }, 
	{ 9583, "bigshap_sfw", "bridge_walls2_sfw" }
};

