
new gb_string[256], query[512], vb_string[2048];

stock clear_massive() gb_string[0] = 0, query[0] = 0, vb_string[0] = 0;


new 
	stop_time		[MAX_PLAYERS];

new 
	server_weather_list[ 48 ] = { 
	12, 12, 15, 15, 20, 20, 15, 15, 12, 12, 6, 6, 
	5, 5, 6, 11, 11, 11, 11, 11, 11, 11, 2, 2, 
	14, 14, 14, 14, 11, 11, 11, 11, 1, 1, 1, 1, 
	17, 17, 17, 17, 18, 18, 2, 1, 1, 0, 3, 3 };

new 
	user_update_weather[MAX_PLAYERS],
	server_update_weather,
	server_weather;

new 
	Text: blind_background;
	
new const
	users_roles[][] = {
		"",
		"Обычный житель", 
		"Бездомный", 
		"Прилетевший", 
		"Приплывший", 
		"Сельский житель", 
		"Осужденный"
	},

	users_sex[][] = {
		"", 
		"Мужской",
		"Женский"
	},
	
	users_color[][] = {
		"",
		"Тёмный",
		"Светлый"
	},
	
	users_nation[][] = {
		"",
		"Американец",
		"Латиноамериканец",
		"Русский",
		"Француз",
		"Итальянец",
		"Испанец",
		"Немец",
		"Португалец",
		"Австралиец",
		"Колумбиец",
		"Мексиканец",
		"Китаец",
		"Японец",
		"Бразилец",
		"Кореец",
		"Въетнамец",
		"Чех",
		"Британец",
		"Голландец",
		"Поляк"
	},
	
	user_premium[][] = {
		"Нет",
		"Light",
		"Medium",
		"Hard",
		"Platinum"
	};

	
enum uInfo 
{
	uID,
	uName			[MAX_PLAYER_NAME],
	uRPName			[MAX_PLAYER_NAME],
	uSex,
	uColor,
	uNation,
	uCountry,
	uRole,
	uAge,
	uSettings[9],
	uMoney,
	uJob,
	Float:uP[3],
	uLastTime,
	uInt[2],
	uSuspect,
	uTaxiNoZp,
	uHunger,
	uFermNoZp,
	uBusNoZp,
	uBusSkill,
	uDalnNoZp,
	uDalnSkill,
	uWoodsNoZp,
	uJobDouble[7],
	uLastIP[16],
	uNumber,
	uContacts[10],
	uLeader,
	uMember,
	uRank,
	uJailSettings[5],
 	uLicenses[4],
	uAdmin,
	uWarn,
	uMute,
	uRegDate,
	uBank,
	uAdminPassword[10],
	uEmail[64],
	Float:uHP,
	Float:uArmor,
	uLevel,
	uPM,
	uOOC,
	uRO,
	uEther,
	uBanPlayer,
	uRenturn[2],
	uRenturn1[2],
	uRadio,
	uDMJail,
	uEvictID,
    uGMoney,
    uLimitOtmis,
	uJobValue,
	uJobValueDate,
	uCheck,
	uShowJobValue,
	uStyle[5],
	uChangeStyle,
	uStyleDate[3],
	uValueSt,
	uTicket,
	uTicketPay,
	uLicensesTake[4],
	uRadioChanel,
	uRadioSubChanel,
	uIsPlayerJob[3],
	uJobSkin,
	uRetest,
	uLicGiveDate,
	uSupport,
	uSubFrac,
	uBMute,
	uPayTime,
	uPinCode,
	
	// Vovanm93
	uAnimList[10],
	uAnimListParam[10],
	uDeath,
	uCrimeL,// Лидерка крайма
	uCrimeM,// Состоит в крайме
	uCrimeRank,// Ранг
	uCrimeSet[10],// Настройки игрока
	
	uHouse,// Дом
	uPremium,// Премиум аккаунт
	uPremiumDate,// Дата начала премиум аккаунта
	// Тюрьма
	uArrest, // Игрок отбывает заключение
	uArrestCamera, // Камера игрока
	uArrestTime,// Время которое будет сидеть игрок
	uArrestStatDate,// Дата сколько сидит игрок
	uArrestStat,// Статистика пишет сколько раз отбывал наказание игрок
	uArrestReason[64],// Статья по которой сидит
	uIP[32], // IP игрока
	uArrestCooler,// Карцер
	
	uJail,// Посадить у копов и Шерифов
	uJailTime,// Время сколько сидеть у копов и шерифов
	uRegIP[32],// IP при регистрации
	
	uPame[144],
	Text3D: uAction,
	
	tVehicleSpeed,
	tSpeed,
	tPing,
}

new Player[MAX_PLAYERS][uInfo];

new 
	player_rent_timer	 [ MAX_PLAYERS ],
	player_microphone	 [ MAX_PLAYERS char ];

new 
	strobelight_timer	 [ MAX_VEHICLES ] = { -1, ... },
	strobelight_time_out [ MAX_VEHICLES ] = { -1, ... },
	strobelight_flash	 [ MAX_VEHICLES char ];

stock timec(timestamp, compare = -1) {
    if (compare == -1) compare = gettime();
    new n,
        Float:d = (timestamp > compare) ? timestamp - compare : compare - timestamp,
        returnstr[32];
    if (d < 60) {
        format(returnstr, sizeof(returnstr), "< 1 minute");
        return returnstr;
    } else if (d < 3600) { // 3600 = 1 hour
        n = floatround(floatdiv(d, 60.0), floatround_floor);
        format(returnstr, sizeof(returnstr), "minute");
    } else if (d < 86400) { // 86400 = 1 day
        n = floatround(floatdiv(d, 3600.0), floatround_floor);
        format(returnstr, sizeof(returnstr), "hour");
    } else if (d < 2592000) { // 2592000 = 1 month
        n = floatround(floatdiv(d, 86400.0), floatround_floor);
        format(returnstr, sizeof(returnstr), "day");
    } else if (d < 31536000) { // 31536000 = 1 year
        n = floatround(floatdiv(d, 2592000.0), floatround_floor);
        format(returnstr, sizeof(returnstr), "month");
    } else {
        n = floatround(floatdiv(d, 31536000.0), floatround_floor);
        format(returnstr, sizeof(returnstr), "year");
    }
    if (n == 1) {
        format(returnstr, sizeof(returnstr), "1 %s", returnstr);
    } else {
        format(returnstr, sizeof(returnstr), "%d %ss", n, returnstr);
    }
    return returnstr;
}