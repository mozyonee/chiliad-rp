#include <YSI\y_hooks>

enum pra_info {
	pra_skin,
	Float:pra_x, Float:pra_y, Float:pra_z, Float:pra_rz,
	pra_lib[32], pra_anim[32], pra_weapon,
}

new prison_actor[][pra_info] = {
	{ 302, 89.6677,-249.7951,1.6863,90.8653, "", "", 0 }, // // NPC 1
	{ 311, 131.1753,-291.3459,1.6863,188.9863, "", "", 0 }, // // NPC 2
	{ 310, 171.6570,-304.1579,9.1417,221.5734, "", "", 356 }, // // NPC 3 с оружие
	{ 302, 166.1282,-300.5553,17.5401,89.9488, "", "", 356 }, // // NPC 4 с оружие
	{ 302, 166.8815,-325.2666,1.6863,356.9345, "", "", 0 }, // // NCP 5
	{ 302, 194.1611,-313.9362,1.6613,192.1430, "", "", 0 }, // // NCP 6
	{ 310, 172.0994,-332.9743,9.1367,305.8607, "", "", 356 }, // // NCP 7 or
	{ 302, 166.1102,-333.7108,17.5351,40.4413, "", "", 356 }, // // NCP 8 or
	{ 302, 26.3504,-327.6594,9.7097,359.7074, "", "", 356 }, // // NCP 9 or
	{ 311, 28.0912,-329.9388,18.1081,357.4906, "", "", 356 }, // // NCP 10 or
	{ 302, 42.9792,-338.4122,5.9580,58.1561, "", "", 356 }, // // NCP 11 sit
	{ 302, 26.3226,-265.0814,6.9557,182.6722, "", "", 356 }, // // NCP 12 or
	{ 310, 37.1874,-265.2202,8.3698,173.5855, "", "", 356 }, // // NCP 13 or
	{ 311, 48.2616,-262.4507,6.9557,7.5407, "", "", 356 }, // // NCP 14 or
	{ 302, 60.9490,-251.2117,9.1287,94.6481, "", "", 356 }, // // NCP 15 or
	{ 302, 66.7517,-255.1578,17.5271,306.4399, "", "", 356 }, // // NCP 15 or
	{ 310, 28.4015,-230.7255,9.8301,222.1992, "", "", 356 }, // // NCP 17 or
	{ 302, 25.0193,-229.4499,18.2076,210.2690, "", "", 356 }, // // NCP 18 or
	{ 311, 52.4204,-322.3007,3101.0859,4.7672, "", "", 356 }, // // NPC 19
	{ 310, 51.6634,-315.5743,2601.0859,2.5972, "", "", 356 }, // // NPC 20
	{ 302, 69.4921,-340.6702,2601.0859,86.6930, "", "", 356 }, // // NPC 21 sit
	{ 311, 76.0545,-307.5627,2101.0859,268.5965, "", "", 356 }, // // NPC 22 sit
	{ 310, 48.0363,-315.9632,1601.0859,96.8883, "", "", 356 } // // NPC 23 sit
};
new pr_actor[ sizeof prison_actor ];

hook OnGameModeInit() {
	for( new a; a < sizeof prison_actor; a++ ) {
		/*format( gb_string, sizeof gb_string, "prison_%d", a );
		pr_actor[a] = ConnectNPC( gb_string, "bot" );
		SetSpawnInfo( pr_actor[a], 0, prison_actor[a][pra_skin],
			prison_actor[a][pra_x], prison_actor[a][pra_y], prison_actor[a][pra_z],
			prison_actor[a][pra_rz], prison_actor[a][pra_weapon], 1, 0, 0, 0, 0 );
		SpawnPlayer( pr_actor[a] );	
		*/
		pr_actor[a] = CreateActor( prison_actor[a][pra_skin], 
			prison_actor[a][pra_x], prison_actor[a][pra_y], prison_actor[a][pra_z], prison_actor[a][pra_rz] );
			
	}
	return true;
}
/*
hook OnPlayerConnect( playerid ) {
	if( IsPlayerNPC( playerid ) ) return true;
	return true;
}

hook OnPlayerSpawn( playerid ) {
	if( IsPlayerNPC( playerid ) ) return true;
	return true;
}

hook OnPlayerRequestSpawn( playerid, classid ) {
	if( IsPlayerNPC( playerid ) ) return true;
	return true;
}

hook OnPlayerRequestClass( playerid, classid ) {
	if( IsPlayerNPC( playerid ) ) return true;
	return true;
}*/