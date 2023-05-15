/*
	Criminal System - Vovanm93
	GamBit Role Play 2015
*/
#define MAX_CRIMINAL	50
#define MAX_RANK		20
#define MAX_CRIME_CAR	10

#define d_crime_cr		3050
#define d_crime			3070

new crime_type[][32] = {
	"Банда", "Мафия", "Байкерский клуб", "Колхоз"
};

enum c_int_info {
	ciName[64],
	Float:ciPos[4],
	ciInt
}

new crime_int[][c_int_info] = {
	{ "Особняк русской мафии", { 2622.4534, -823.9682, 883.0959, 89.0543 }, 22 },
	{ "Интерьер банды", { 2603.9453, -212.0127, 883.0859, 1.0848 }, 22 },
	{ "Интерьер байкеров", { -2726.0747, 831.3345, 1000.1409, 85.5408 }, 22 },
	{ "Особняк итальянцев", { -2823.6189, -54.7790, 1002.4500, 0.0 }, 22 },
	{ "Особняк японцев", { 2808.4438, -735.5784, 883.0959, 358.9845 }, 22 },
	{ "Бар ( индивидуальный )", { 566.1437, 79.7531, 1133.9813, 6.6033 }, 22 },
	{ "Итальяснкий ресторан", { -2519.1938, 768.4037, 1001.6030, 179.8317 }, 22 },
	{ "Meat factory", { 965.0652, 2107.7698, 1011.0303, 88.4249 }, 1 },
	{ "Woozie's office", { -2158.8867, 642.8259, 1052.3750, 177.2376 }, 1 },
	{ "Crack factory", { 2541.8611,-1304.1260,1025.0703,268.1052 }, 2 },
	{ "Big spread ranch", { 1211.9652,-26.0137,1000.9531,176.7154 }, 3 },
	{ "Strip club", { 1204.6045,-13.4970,1000.9219,356.5470 }, 2	},
	{ "Pleasure domes", { -2636.7861,1402.7711,906.4609,2.2916 }, 3 }
};

enum c_acc_info {
	caText[128],
	caData[32]
}

new crime_access[][c_acc_info] = {
	{ "Доступ к оружию |", "Create:Gun" },
	{ "Доступ к наркотикам |", "Create:Drugs" },
	{ "Доступ к угону |", "Create:Jack" }
};

enum crInfo {
	crID, // Ид фракции в бд
	crName[128], // Название банды
	crType, // Префикс
	crInt, // Ид интерьера из crime_int
	crSettings[10],// Настройки крайма
	
	Float:crPos[4], // Вход в интерьер
	crPickup, // Пикап входа
	Text3D:crText // Текст над входом
}
new CrimeInfo[ MAX_CRIMINAL ][ crInfo ];

enum cr_info {
	raID,
	raCrime,
	raRank,
	raName[64],
	raSettings[10]
}
new CrimeRank[MAX_CRIMINAL][ MAX_RANK ][ cr_info ];
new list_rank[MAX_PLAYERS][MAX_RANK];

enum cr_v_info { 
	cr_vID,
	cr_vCrime,
	cr_vModel,
	cr_vColor[2],
	Float:cr_vPos[4],
	
	cr_vCar
}
new CrimeCar[MAX_CRIMINAL][MAX_CRIME_CAR][ cr_v_info ];

// Function's



stock getCrimeName( id ) {
	format( gb_string, sizeof gb_string, "None" );
	for( new i; i < MAX_CRIMINAL; i++ ) {
		if( CrimeInfo[i][crID] == id ) {
			format( gb_string, sizeof gb_string, "%s", CrimeInfo[i][crName] );
			break;
		}	
	}
	return gb_string;
}

stock getCrimeID( id ) {
	for( new i; i < MAX_CRIMINAL; i++ ) {
		if( CrimeInfo[i][crID] == id ) return i;
	}
	return -1;
}