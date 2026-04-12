SET SQL_MODE = "NO_ENGINE_SUBSTITUTION";
SET default_storage_engine = InnoDB;
SET time_zone = "+00:00";

START TRANSACTION;


-- Table structure for table `accounts`
CREATE TABLE IF NOT EXISTS `accounts` (`pID` int NOT NULL, `pName` varchar(24) CHARACTER
	SET cp1251 COLLATE cp1251_general_ci DEFAULT NULL, `pPassword` varchar(69) CHARACTER
	SET cp1251 COLLATE cp1251_general_ci DEFAULT NULL, `pKey` varchar(5) CHARACTER
	SET cp1251 COLLATE cp1251_general_ci DEFAULT '-', `pEmail` varchar(64) CHARACTER
	SET cp1251 COLLATE cp1251_general_ci DEFAULT NULL, `pGoogleCode` varchar(50) CHARACTER
	SET cp1251 COLLATE cp1251_general_ci DEFAULT '0', `pGoogleSec` int DEFAULT '0', 
	`pGenGoogle` varchar(17) NOT NULL DEFAULT '0', `pDiscord` varchar(20) NOT NULL DEFAULT '0', `pDiscordName` varchar(33) DEFAULT NULL, `pTelegram` varchar(20) NOT NULL DEFAULT '0', `pFriend` varchar(24) CHARACTER
	SET cp1251 COLLATE cp1251_general_ci DEFAULT NULL, `pRegDate` varchar(128) CHARACTER
	SET cp1251 COLLATE cp1251_general_ci DEFAULT NULL, `pRegIP` varchar(17) CHARACTER
	SET cp1251 COLLATE cp1251_general_ci DEFAULT NULL, `pLastIP` varchar(17) CHARACTER
	SET cp1251 COLLATE cp1251_general_ci DEFAULT NULL, `pCharactersLimit` int NOT NULL DEFAULT '3') ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `accounts`
INSERT INTO `accounts` (`pID`, `pName`, `pPassword`, `pKey`, `pEmail`, `pGoogleCode`, `pGoogleSec`, `pGenGoogle`, `pDiscord`, `pDiscordName`, `pTelegram`, `pFriend`, `pRegDate`, `pRegIP`, `pLastIP`, `pCharactersLimit`)
VALUES (1, 'macr0n', '94C73C08FE7333F46E61CFE2DA09EF690060DB1D6C4FB2061DBD98E855F6E6D4', '-', NULL, '0', 0, '0', '0', NULL, '0', NULL, '22/03/2023', '127.0.0.1', '127.0.0.1', 4), (22, 'Brian_Randall', '372C246A6E0C8E606DD61D12BC897E116019616B93D8E8A06E8C184D9EDAD816', '-', NULL, '0', 0, '0', '0', NULL, '0', NULL, '28/04/2023', '5.199.232.99', '127.0.0.1', 3);

-- Table structure for table `actors`
CREATE TABLE IF NOT EXISTS `actors` (`id` int NOT NULL, `skin` int NOT NULL, `text` varchar(150) DEFAULT NULL, `anim_actors` int NOT NULL DEFAULT '-1', `x` float NOT NULL, `y` float NOT NULL, `z` float NOT NULL, `a` float NOT NULL, `vw` int NOT NULL DEFAULT '-1', `i` int NOT NULL DEFAULT '-1') ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `actors`
INSERT INTO `actors` (`id`, `skin`, `text`, `anim_actors`, `x`, `y`, `z`, `a`, `vw`, `i`)
VALUES (21, 71, '', 51, 1353.65, -819.26, 1080.57, 0, 15, -1);

-- Table structure for table `admins`
CREATE TABLE IF NOT EXISTS `admins` (`id` int NOT NULL, `Name` varchar(32) CHARACTER
	SET utf8mb3 COLLATE utf8mb3_bin NOT NULL, `rank` int NOT NULL, `password` varchar(37) DEFAULT 'default', `online_connection` datetime DEFAULT NULL, `date_start` datetime DEFAULT NULL, `kick` int DEFAULT '0', `ban` int NOT NULL DEFAULT '0', `mute` int NOT NULL DEFAULT '0', `pm` int NOT NULL DEFAULT '0', `warn` int NOT NULL DEFAULT '0', `jail` int NOT NULL DEFAULT '0', `vig` int NOT NULL DEFAULT '0', `blockadmin` int NOT NULL DEFAULT '0', `rep` int NOT NULL DEFAULT '0', `online_status` int NOT NULL DEFAULT '0', `online_monday` int NOT NULL DEFAULT '0', `online_tuesday` int NOT NULL DEFAULT '0', `online_wednesday` int NOT NULL DEFAULT '0', `online_thursday` int NOT NULL DEFAULT '0', `online_friday` int NOT NULL DEFAULT '0', `online_saturday` int NOT NULL DEFAULT '0', `online_sunday` int NOT NULL DEFAULT '0', `CheckName` varchar(32) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Dumping data for table `admins`
INSERT INTO `admins` (`id`, `Name`, `rank`, `password`, `online_connection`, `date_start`, `kick`, `ban`, `mute`, `pm`, `warn`, `jail`, `vig`, `blockadmin`, `rep`, `online_status`, `online_monday`, `online_tuesday`, `online_wednesday`, `online_thursday`, `online_friday`, `online_saturday`, `online_sunday`, `CheckName`)
VALUES (36, 'macr0n', 7, '4297f44b13955235245b2497399d7a93', '2024-02-04 06:01:09', '2023-03-25 14:56:07', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'macr0n');

-- Table structure for table `anticheats`
CREATE TABLE IF NOT EXISTS `anticheats` (`chID` int NOT NULL, `cheatname` varchar(64) CHARACTER
	SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL, `cheatvalue` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- Dumping data for table `anticheats`
INSERT INTO `anticheats` (`chID`, `cheatname`, `cheatvalue`)
VALUES (1, 'Air Break (Пішки)', 0), (2, 'Air Break (В автомобілі)', 0), (3, 'Телепорт (Пішки)', 0), (4, 'Телепорт (В автомобілі)', 0), (5, 'Телепорт (into/between vehicles)', 0), (6, 'Телепорт (vehicle to player)', 0), (7, 'Телепорт (pickups)', 0), (8, 'Fly Hack (Пішки)', 0), (9, 'Fly Hack (В автомобілі)', 0), (10, 'Speed Hack (Пішки)', 0), (11, 'Speed Hack (В автомобілі)', 0), (12, 'Відновлення здоров\'я - Veh', 0), (13, 'Відновлення здоров\'я - Foot', 0), (14, 'Відновлення броні', 0), (15, 'Чит на гроші', 0), (16, 'Чит на зброю', 0), (17, 'Чит на патрони', 0), (18, 'Чит на нескінченні патрони', 0), (19, 'Спеціальні анімації', 0), (20, 'God Mode (Пішки)', 0), (21, 'God Mode (В автомобілі)', 0), (22, 'Невидимка', 0), (23, 'LagComp Spoof', 0), (24, 'Чит на тюнінг', 0), (25, 'Паркур мод', 0), (26, 'Швидкий розворот', 0), (27, 'Прискорена стрільба', 0), (28, 'Фальшивий спавн', 0), (29, 'Фальшива смерть', 0), (30, 'Pro Aim', 0), (31, 'Біг CJ', 0), (32, 'Car Shot', 0), (33, 'Антивикидання з транспорту', 0), (34, 'Антифриз', 0), (35, 'Ghost Hack', 0), (36, 'Silent Aim', 0), (37, 'Ракбот', 0), (38, 'Швидкий реконнект', 0), (39, 'Високий пінг', 0), (40, 'Підміна діалогу', 0), (41, 'Пісочниця', 0), (42, 'Неправильна версія', 0), (43, 'Ркон авторизація', 0), (44, 'Тюнинг крашер', 0), (45, 'Крашер неправильної посадки', 0), (46, 'Діалог крашер', 0), (47, 'Attach крашер', 0), (48, 'Weapon крашер', 0), (49, 'Підключення в 1 слот', 0), (50, 'Флуд функціями', 0), (51, 'Флуд змін позиції', 0), (52, 'DDoS', 0), (53, 'Ігнорування функції', 0);

-- Table structure for table `apartment`
CREATE TABLE IF NOT EXISTS `apartment` (`id` int NOT NULL, `pID` int NOT NULL, `owner` varchar(24) NOT NULL, `x` float NOT NULL, `y` float NOT NULL, `z` float NOT NULL, `money` int NOT NULL, `lock` int NOT NULL, `day` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Table structure for table `atms`
CREATE TABLE IF NOT EXISTS `atms` (`ID` int UNSIGNED NOT NULL, `ATM_X` float(12, 6) NOT NULL, `ATM_Y` float(12, 6) NOT NULL, `ATM_Z` float(12, 6) NOT NULL, `ATM_ROTX` float(12, 6) NOT NULL, `ATM_ROTY` float(12, 6) NOT NULL, `ATM_ROTZ` float(12, 6) NOT NULL, `ATM_VW` tinyint NOT NULL, `ATM_INT` int NOT NULL, `ATM_BANK` int NOT NULL DEFAULT '0', `ATM_BANKTIME` int NOT NULL DEFAULT '0', `cash` int NOT NULL, `atm_active` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- Dumping data for table `atms`
INSERT INTO `atms` (`ID`, `ATM_X`, `ATM_Y`, `ATM_Z`, `ATM_ROTX`, `ATM_ROTY`, `ATM_ROTZ`, `ATM_VW`, `ATM_INT`, `ATM_BANK`, `ATM_BANKTIME`, `cash`, `atm_active`)
VALUES (1, 1834.406006, -1850.338013, 12.883000, 27.500000, 0.000000, 0.000000, 0, 0, 0, 0, 24849, 0), (2, 1466.394043, -1750.542969, 14.843000, 26.100000, 0.000000, 180.000000, 0, 0, 0, 0, 8849, 0), (3, 1304.338989, -1367.265015, 12.945000, 25.700001, 0.000000, 0.000000, 0, 0, 0, 0, 5000000, 0), (4, 1499.160034, -1278.032959, 14.034000, 28.500000, 0.000000, 90.000000, 0, 0, 0, 0, 5055000, 0), (5, 1267.739990, -1158.965942, 23.323000, 28.299999, 0.000000, 180.000000, 0, 0, 0, 0, 5000000, 0), (6, -83.651001, -298.566986, 2.329000, 34.898998, 0.000000, 0.000000, 0, 0, 0, 0, 5000000, 0), (7, 663.447021, -577.315002, 15.833000, 27.400000, 0.000000, 0.000000, 0, 0, 0, 0, 5000000, 0);

-- Table structure for table `ban`
CREATE TABLE IF NOT EXISTS `ban` (`ID` int NOT NULL, `Name` varchar(24) NOT NULL, `Admin` varchar(24) NOT NULL, `Reason` varchar(100) NOT NULL, `Seconds` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = cp1251;

-- Dumping data for table `ban`
INSERT INTO `ban` (`ID`, `Name`, `Admin`, `Reason`, `Seconds`)
VALUES (12, 'Erik_Toretto', 'Waldemar_Lopez', 'Clown', 1687547783);

-- Table structure for table `banip`
CREATE TABLE IF NOT EXISTS `banip` (`id` int UNSIGNED NOT NULL, `IP` varchar(16) CHARACTER
	SET cp1251 COLLATE cp1251_general_ci NOT NULL, `admin` varchar(25) CHARACTER
	SET cp1251 COLLATE cp1251_general_ci NOT NULL, `reason` varchar(36) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Table structure for table `bank_accounts`
CREATE TABLE IF NOT EXISTS `bank_accounts` (`ID` int NOT NULL, `OwnerID` int NOT NULL, `PinCode` int NOT NULL DEFAULT '1111', `Name` varchar(30) NOT NULL, `Money` int NOT NULL DEFAULT '0', `Creation` varchar(128) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `bank_accounts`
INSERT INTO `bank_accounts` (`ID`, `OwnerID`, `PinCode`, `Name`, `Money`, `Creation`)
VALUES (1, 47, 1111, 'Randall', 498650, '2023-06-29 10:56:25'), (3, 47, 4444, 'Randall12', 70859, '2023-06-29 10:57:18'), (4, 58, 1234, 'Основний.', 1199, '2023-07-02 18:23:57'), (6, 52, 1234, 'matkazhopi', 4050, '2024-02-04 04:27:01');

-- Table structure for table `bank_operations`
CREATE TABLE IF NOT EXISTS `bank_operations` (`AccountID` int NOT NULL, `OwnerID` int NOT NULL, `Operation` varchar(300) NOT NULL, `time` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `bank_operations`
INSERT INTO `bank_operations` (`AccountID`, `OwnerID`, `Operation`, `time`)
VALUES (3, 47, 'Зняття коштів з рахунку в сумі $30000 ($550000 -> $-30000).', 1688032941), (3, 47, 'Зміна пін-коду з 2222 на 4444.', 1688033168), (6, 52, 'Поповнення рахунку на суму $5000 ($25 -> $5025).', 1707015151);

-- Table structure for table `betting_odds`
CREATE TABLE IF NOT EXISTS `betting_odds` (`id` int NOT NULL, `sport` varchar(255) NOT NULL, `home_team` varchar(255) NOT NULL, `away_team` varchar(255) NOT NULL, `event_date` int NOT NULL, `bookmaker` varchar(255) NOT NULL, `odds_home` float NOT NULL, `odds_away` float NOT NULL, `odds_draw` float NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `betting_odds`
INSERT INTO `betting_odds` (`id`, `sport`, `home_team`, `away_team`, `event_date`, `bookmaker`, `odds_home`, `odds_away`, `odds_draw`)
VALUES (1, 'aussierules_afl', 'West Coast Eagles', 'North Melbourne Kangaroos', 1690699200, 'Betfair', 4.4, 1.03, 0);

-- Table structure for table `betting_results`
CREATE TABLE IF NOT EXISTS `betting_results` (`id` int NOT NULL, `sport_key` varchar(255) NOT NULL, `commence_time` int NOT NULL, `home_team` varchar(255) NOT NULL, `away_team` varchar(255) NOT NULL, `home_score` int DEFAULT '0', `away_score` int DEFAULT '0', `status` varchar(10) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `betting_results`
INSERT INTO `betting_results` (`id`, `sport_key`, `commence_time`, `home_team`, `away_team`, `home_score`, `away_score`, `status`)
VALUES (1, 'americanfootball_cfl', 1690587600, 'Ottawa Redblacks', 'Hamilton Tiger-Cats', 12, 16, 'completed'), (1041, 'soccer_uefa_champs_league_qualification', 1691514000, 'SC Braga', 'FK TSC Bačka Topola', 0, 0, 'future'), (1042, 'soccer_uefa_champs_league_qualification', 1691514000, 'PSV Eindhoven', 'SK Sturm Graz', 0, 0, 'future');

-- Table structure for table `betting_sports`
CREATE TABLE IF NOT EXISTS `betting_sports` (`id` int NOT NULL, `sport_key` varchar(255) NOT NULL, `sport_group` varchar(255) NOT NULL, `title` varchar(255) NOT NULL, `description` varchar(255) NOT NULL, `active` tinyint (1) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `betting_sports`
INSERT INTO `betting_sports` (`id`, `sport_key`, `sport_group`, `title`, `description`, `active`)
VALUES (1, 'americanfootball_cfl', 'American Football', 'CFL', 'Canadian Football League', 1), (57, 'soccer_turkey_super_league', 'Soccer', 'Turkey Super League', 'Turkish Soccer', 1), (58, 'soccer_uefa_champs_league_qualification', 'Soccer', 'UEFA Champions League Qualification', 'European Champions League Qualification', 1);

-- Table structure for table `billboards`
CREATE TABLE IF NOT EXISTS `billboards` (`newid` int UNSIGNED NOT NULL, `id` int NOT NULL, `bModel` int NOT NULL, `PosX` float NOT NULL, `PosY` float NOT NULL, `PosZ` float NOT NULL, `PosA` float NOT NULL, `bText` varchar(144) NOT NULL, `bPosText` varchar(32) NOT NULL, `bOwner` varchar(24) NOT NULL, `bOwned` int NOT NULL DEFAULT '0', `bBackColor` int NOT NULL, `bFontFace` int NOT NULL, `bAligment` int NOT NULL, `bFontSize` int NOT NULL, `bDay` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = cp1251;

-- Dumping data for table `billboards`
INSERT INTO `billboards` (`newid`, `id`, `bModel`, `PosX`, `PosY`, `PosZ`, `PosA`, `bText`, `bPosText`, `bOwner`, `bOwned`, `bBackColor`, `bFontFace`, `bAligment`, `bFontSize`, `bDay`)
VALUES (1, 0, 7910, 1415.3, -1719.9, 33.8, 137.5, '-', 'Билборд №1', '-', 0, 1, 0, 1, 25, 0), (50, 49, 7910, 619.1, -1297.1, 33.8, 77.5, '-', 'Билборд №50', '-', 0, 1, 0, 1, 25, 0);

-- Table structure for table `bints`
CREATE TABLE IF NOT EXISTS `bints` (`id` int NOT NULL, `interior` int NOT NULL, `x` float NOT NULL, `y` float NOT NULL, `z` float NOT NULL, `r` float NOT NULL, `xb` float NOT NULL, `yb` float NOT NULL, `zb` float NOT NULL, `name` varchar(32) CHARACTER
	SET cp1251 COLLATE cp1251_bin NOT NULL, `sid` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = cp1251 COLLATE = cp1251_bin;

-- Dumping data for table `bints`
INSERT INTO `bints` (`id`, `interior`, `x`, `y`, `z`, `r`, `xb`, `yb`, `zb`, `name`, `sid`)
VALUES (1, 3, 1212.11, -25.8792, 1000.95, 180.26, 1207.25, -30.8732, 1000.95, 'Бар 1 | Big SR', 1), (2, 2, 1204.89, -13.8464, 1000.92, 356.029, 1216.01, -13.3525, 1000.92, 'Бар 2 | Pig Pen', 2), (3, 18, -229.292, 1401.32, 27.7656, 271.5, -224.782, 1403.8, 27.7734, 'Бар 3 | LPL', 3), (4, 11, 501.784, -67.8887, 998.758, 177.288, 494.407, -76.0353, 998.758, 'Бар 4 | Bike', 4), (5, 5, 227.299, -8.1967, 1002.21, 94.338, 209.83, -8.2969, 1005.21, 'SkinShop | 1', 5), (6, 1, 203.699, -50.653, 1001.8, 356.89, 209.468, -33.8782, 1001.93, 'SkinShop | 2', 6), (7, 18, 161.442, -96.8098, 1001.8, 0.0237, 148.453, -74.2944, 1001.8, 'SkinShop | 3', 7), (8, 14, 204.306, -168.587, 1000.52, 0.3137, 214.911, -156.171, 1000.52, 'SkinShop | 4', 8), (9, 15, 207.696, -110.918, 1005.13, 359.582, 207.663, -100.813, 1005.26, 'SkinShop | 5', 9), (10, 3, 207.076, -140.022, 1003.51, 0.9874, 207.054, -129.182, 1003.51, 'SkinShop | 6', 10), (11, 3, -2636.61, 1402.51, 906.461, 1.1104, -2653.7, 1408.01, 906.273, 'Jizzy', 11), (12, 17, 493.42, -24.8393, 1000.68, 358.267, 499.736, -20.7157, 1000.68, 'Клуб | Alhambra', 12), (13, 5, 318.614, 1114.5, 1083.88, 0.2812, 0, 0, 0, 'Наркопритон', 13), (14, 10, 1381.2, -28.7427, 1000.92, 89.7551, 1379.2, -24.8516, 1000.95, '24-7 | 2', 14), (15, 6, -2240.74, 137.22, 1035.41, 265.686, -2237.2, 130.177, 1035.41, 'Fish | Int', 15), (16, 10, 362.934, -75.1487, 1001.51, 303.263, 377.112, -67.5704, 1001.52, 'Закусочная | Бургер', 16), (17, 9, 364.966, -11.7609, 1001.85, 358.7, 369.467, -6.0708, 1001.85, 'Закусочная | Колок', 17), (18, 5, 372.324, -133.463, 1001.49, 1.4964, 374.694, -119.157, 1001.5, 'Закусочная | Пицца', 18), (19, 7, 315.763, -143.609, 999.602, 358.004, 314.259, -133.821, 999.602, 'Аммо | 1', 19), (20, 1, 285.564, -41.7604, 1001.52, 310.666, 295.414, -38.3791, 1001.52, 'Аммо | 2', 20), (21, 4, 285.837, -86.7015, 1001.52, 354.487, 295.572, -80.8112, 1001.52, 'Аммо | 3', 21), (22, 2, 1411.71, -10.1375, 1010.37, 87.6928, 0, 0, 0, 'Transportation of products', 22), (23, 12, 855.019, -230.699, 1001.19, 358.364, 852.985, -223.489, 1001.19, 'Computer Club', 23), (24, 1, 2247.94, 764.34, 1153.95, 86.2376, 2235.87, 761.44, 1153.95, 'риэлторка', 24), (25, 5, 772.327, -5.4651, 1000.73, 2.9704, 756.362, 5.4068, 1000.7, 'Спорт-Зал', 25), (26, 0, 566.395, -4784.89, 2.0859, 88.7112, 566.395, -4784.89, 2.0859, 'Яхт-клуб', 26), (27, 6, 1999.06, 1348.26, 878.491, 178.346, 0, 0, 0, 'Магазин трейлеров', 27), (28, 58, 926.853, 329.167, 1500.05, 267.982, 0, 0, 0, 'Кальянная', 28), (29, 7, 296.415, -127.768, 1029.38, 182.788, 0, 0, 0, 'Казино', 29), (30, 2, 37.6098, -3.5147, 1225.51, 269.133, 0, 0, 0, 'Автосалон', 30), (31, 31, 1190.1, 744.114, 1020.42, 268.23, 0, 0, 0, 'Мікрозайм', 31), (32, 32, 1078.78, 407.017, 1857.29, 181.147, 0, 0, 0, 'Аукціон Гаражів', 32);

-- Table structure for table `blackmarket`
CREATE TABLE IF NOT EXISTS `blackmarket` (`id` int UNSIGNED NOT NULL, `gang` int NOT NULL, `drugs` int NOT NULL, `mats` int NOT NULL, `armour` int NOT NULL, `skin` int NOT NULL, `drugsprice` int NOT NULL, `matsprice` int NOT NULL, `armourprice` int NOT NULL, `skinprice` int NOT NULL, `time` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- Dumping data for table `blackmarket`
INSERT INTO `blackmarket` (`id`, `gang`, `drugs`, `mats`, `armour`, `skin`, `drugsprice`, `matsprice`, `armourprice`, `skinprice`, `time`)
VALUES (1, 18, 976, 446919, 93, 97, 30, 15, 10000, 10000, 1661695848);

-- Table structure for table `business`
CREATE TABLE IF NOT EXISTS `business` (`id` int NOT NULL, `name` varchar(64) CHARACTER
	SET cp1251 COLLATE cp1251_bin NOT NULL, `type` int NOT NULL, `bint` int NOT NULL, `ownerid` int NOT NULL, `sellprice` int NOT NULL, `bank` int NOT NULL, `price` int NOT NULL, `enter` int NOT NULL DEFAULT '0', `product` int NOT NULL, `visitors` int NOT NULL, `upgrade` varchar(64) CHARACTER
	SET cp1251 COLLATE cp1251_bin NOT NULL DEFAULT '5000|0|0', `order` int NOT NULL, `orderprice` int NOT NULL, `status` tinyint (1) NOT NULL, `x` float NOT NULL, `y` float NOT NULL, `z` float NOT NULL, `r` float NOT NULL, `deliving` int NOT NULL DEFAULT '0', `mafia` int NOT NULL, `owner` varchar(64) CHARACTER
	SET cp1251 COLLATE cp1251_bin NOT NULL, `bankday` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = cp1251 COLLATE = cp1251_bin;

-- Dumping data for table `business`
INSERT INTO `business` (`id`, `name`, `type`, `bint`, `ownerid`, `sellprice`, `bank`, `price`, `enter`, `product`, `visitors`, `upgrade`, `order`, `orderprice`, `status`, `x`, `y`, `z`, `r`, `deliving`, `mafia`, `owner`, `bankday`)
VALUES (1, 'Fishing Business', 9, 15, 0, 3500000, 300000, 5, 0, 460, 2, '5000|0|0', 0, 0, 1, 841.667, -1743.58, 14.0598, 358.472, 1675603368, 15, '', 180), (56, 'Наркопритон', 22, 13, 0, 52000, 52580, 20, 0, 1, 0, '5000|0|0', 0, 0, 1, 2165.99, -1671.16, 15.0732, 226.342, 0, 17, '', 0), (57, 'Казино', 23, 29, 0, 15000000, 191026, 5, 5000, 7510, 2, '5000|0|0', 0, 0, 1, 1287.52, -1158.2, 23.8281, 0, 1675756012, 17, '', 1800), (58, 'Автосалон', 8, 30, 0, 10000000, 60300, 5, 0, 490, 1, '5000|0|0', 0, 0, 1, 1251.14, -1486.47, 13.5469, 88.8192, 1678411455, 16, '', 9200), (59, 'Тюнінг центр', 18, 0, 0, 8000000, 13520, 5, 0, 5650, 4, '5000|0|0', 0, 0, 1, 1157.91, -1203.07, 19.7423, 0, 1636581691, 16, '', 3175), (60, 'Транспортна компанія', 14, 22, 0, 7000000, 1451, 5, 0, 480, 15, '5000|0|0', 0, 0, 1, -504.328, -522.55, 25.5234, 269.446, 1674393124, 15, '', 1451), (61, 'Аукціон Гаражів', 30, 32, 0, 10000000, 0, 5, 0, 500, 0, '5000|0|0', 0, 0, 1, 1025.55, -1770.82, 13.5469, 43.47, 1670236298, 16, '', 3150), (62, 'Мікрозайм', 31, 31, 0, 15000000, 0, 5, 0, 500, 0, '5000|0|0', 0, 0, 1, 1109.18, -1270.73, 13.5469, 359.085, 1669466641, 15, '', 3150);

-- Table structure for table `business_actors`
CREATE TABLE IF NOT EXISTS `business_actors` (`ID` int NOT NULL, `Business` int DEFAULT NULL, `Skin` int DEFAULT '171', `Name` varchar(64) DEFAULT 'Продавець') ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `business_actors`
INSERT INTO `business_actors` (`ID`, `Business`, `Skin`, `Name`)
VALUES (1, 1, 171, 'Продавець'), (2, 2, 171, 'Продавець'), (3, 3, 171, 'Продавець'), (4, 4, 171, 'Продавець'), (31, 2, 171, 'Продавець'), (32, 1, 171, 'Продавець'), (33, 1, 171, 'Продавець');

-- Table structure for table `business_articles`
CREATE TABLE IF NOT EXISTS `business_articles` (`ID` int NOT NULL, `Business` int DEFAULT NULL, `Article` varchar(56) DEFAULT NULL, `Price` int DEFAULT NULL, `Amount` int DEFAULT NULL, `Maximum` int DEFAULT NULL, `Order` int DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `business_articles`
INSERT INTO `business_articles` (`ID`, `Business`, `Article`, `Price`, `Amount`, `Maximum`, `Order`)
VALUES (1, 1, 'Кастет', 100, 30, 50, 0), (2, 1, 'Бита', 100, 30, 50, 0), (3, 1, 'Кольт 45', 100, 30, 50, 0), (4, 1, 'ТЕК-9', 100, 30, 50, 0), (5, 1, 'АК-47', 100, 30, 50, 0), (148, 1, 'Запальничка', 30, 30, 100, 0), (149, 1, 'Чипси', 20, 30, 100, 0), (150, 1, 'Вода', 15, 30, 100, 0), (151, 1, 'Содова', 30, 30, 100, 0);

-- Table structure for table `business_default_articles`
CREATE TABLE IF NOT EXISTS `business_default_articles` (`ID` int NOT NULL, `Type` int DEFAULT NULL, `Article` varchar(56) DEFAULT NULL, `Price` int DEFAULT NULL, `Amount` int DEFAULT NULL, `Maximum` int DEFAULT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `business_default_articles`
INSERT INTO `business_default_articles` (`ID`, `Type`, `Article`, `Price`, `Amount`, `Maximum`)
VALUES (1, 0, 'Сигарети', 50, 30, 100), (2, 0, 'Запальничка', 30, 30, 100), (4, 0, 'Чипси', 20, 30, 100), (5, 0, 'Вода', 15, 30, 100), (6, 0, 'Содова', 30, 30, 100), (7, 1, 'Одяг', 100, 30, 50), (8, 2, 'Телефон', 100, 30, 50), (21, 5, 'Відмичка', 50, 30, 100), (22, 5, 'Сигарети', 50, 30, 100), (23, 5, 'Запальничка', 30, 30, 100), (24, 6, 'Йобаная шаурма', 100, 30, 100);

-- Table structure for table `business_func`
CREATE TABLE IF NOT EXISTS `business_func` (`ID` int NOT NULL, `bizzID` int NOT NULL, `name` varchar(24) CHARACTER
	SET cp1251 COLLATE cp1251_general_ci NOT NULL DEFAULT '----', `name_car` varchar(13) CHARACTER
	SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'TAXI', `number` int NOT NULL DEFAULT '0', `car` varchar(256) CHARACTER
	SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', `tarif` varchar(128) CHARACTER
	SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0|0|0|0', `color` int NOT NULL DEFAULT '0', `color_shash` int NOT NULL DEFAULT '0', `percent` int NOT NULL DEFAULT '1', `percent2` float NOT NULL DEFAULT '0', `percent3` int NOT NULL DEFAULT '1', `members` int NOT NULL DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- Dumping data for table `business_func`
INSERT INTO `business_func` (`ID`, `bizzID`, `name`, `name_car`, `number`, `car`, `tarif`, `color`, `color_shash`, `percent`, `percent2`, `percent3`, `members`)
VALUES (1, 2, 'Банк Открытие', '---', 3330, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '200|300|300|500', 1, 1, 5, 1, 5, 0), (2, 3, '---', '---', 777, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '200|400|350|600', 11, 7, 50, 0, 1, 0), (3, 4, '---', '---', 1111, '514|514|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '200|400|250|450', 18, 19, 5, 0, 1, 0), (4, 5, '---', '---', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0', 18, 0, 20, 0, 1, 0), (5, 6, '---', '---', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0', 2, 0, 10, 0, 1, 0), (6, 7, '---', '---', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0', 16, 0, 20, 0, 1, 0), (7, 61, '---', '---', 0, '515|515|403|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0', 2, 0, 25, 1, 5, 0), (1, 2, 'Банк Открытие', '---', 3330, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '200|300|300|500', 1, 1, 5, 1, 5, 0), (2, 3, '---', '---', 777, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '200|400|350|600', 11, 7, 50, 0, 1, 0), (3, 4, '---', '---', 1111, '514|514|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '200|400|250|450', 18, 19, 5, 0, 1, 0), (4, 5, '---', '---', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0', 18, 0, 20, 0, 1, 0), (5, 6, '---', '---', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0', 2, 0, 10, 0, 1, 0), (6, 7, '---', '---', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0', 16, 0, 20, 0, 1, 0), (7, 61, '---', '---', 0, '515|515|403|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0', 2, 0, 25, 1, 5, 0);

-- Table structure for table `business_interior`
CREATE TABLE IF NOT EXISTS `business_interior` (`ID` int NOT NULL, `Type` int NOT NULL, `I` int NOT NULL DEFAULT '-1', `X` float NOT NULL, `Y` float NOT NULL, `Z` float NOT NULL, `R` float NOT NULL, `ActiveX` float NOT NULL, `ActiveY` float NOT NULL, `ActiveZ` float NOT NULL, `ActiveR` float NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `business_interior`
INSERT INTO `business_interior` (`ID`, `Type`, `I`, `X`, `Y`, `Z`, `R`, `ActiveX`, `ActiveY`, `ActiveZ`, `ActiveR`)
VALUES (1, 0, 1, 1381.21, -28.67, 1000.92, 90, 1380.64, -25.26, 1000.95, 90), (2, 0, -1, 1515.83, -1335.48, 837.96, 90, 1506.39, -1335.94, 837.96, 180), (3, 0, -1, 4610.42, -2238.32, 113.74, 0, 4160.98, -2231.42, 113.74, 180), (4, 1, 2, 1385.99, -14.72, 1001.66, 180, 1388.49, -28.48, 1001.4, 0), (5, 1, 2, 1538.89, 1556.36, 10.93, 180, 1538.82, 1545.46, 10.93, 0), (6, 2, -1, -2878.36, 784.2, 1001.08, 0, -2875.46, 785.76, 1001.08, 90), (7, 3, -1, -1504.43, 97.95, 3201.99, 270, -1499.8, 93.1, 3201.99, 0), (8, 4, -1, 1380.27, 1462.15, 2171.82, 90, 1355.88, 1461.81, 2171.82, 270), (9, 5, 1, 1381.21, -28.67, 1000.92, 90, 1380.64, -25.26, 1000.95, 90), (10, 5, -1, 1515.83, -1335.48, 837.96, 90, 1506.39, -1335.94, 837.96, 180), (11, 5, -1, 4610.42, -2238.32, 113.74, 0, 4160.98, -2231.42, 113.74, 180), (12, 6, -1, 202.21, 990.78, 828.64, 270, 203.83, 980.33, 828.64, 270), (13, 6, -1, -135.6, 1316.02, 832.58, 180, -134.8, 1305.81, 832.58, 90), (14, 6, 73, 30.66, -53.58, 2001.48, 90, 29.03, -40.44, 2001.04, 180);

-- Table structure for table `business_new`
CREATE TABLE IF NOT EXISTS `business_new` (`ID` int NOT NULL, `Name` varchar(64) DEFAULT NULL, `Type` int DEFAULT NULL, `Interior` int DEFAULT NULL, `X` float DEFAULT NULL, `Y` float DEFAULT NULL, `Z` float DEFAULT NULL, `Owner` int DEFAULT '0', `Price` int DEFAULT '0', `Bank` int DEFAULT '0', `Visitors` int DEFAULT '0', `Order` int DEFAULT '0', `OrderPrice` int DEFAULT '10', `Status` tinyint (1) DEFAULT '1', `MapIcon` int DEFAULT NULL, `GasX` float DEFAULT NULL, `GasY` float DEFAULT NULL, `GasZ` float DEFAULT NULL, `GasPrice` int DEFAULT '50', `GasTank` int DEFAULT '500', `Description` varchar(256) NOT NULL DEFAULT '-', `Warehouse` int DEFAULT '0', `WarehouseMax` int DEFAULT '0', `BankDay` int DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Table structure for table `business_objects`
CREATE TABLE IF NOT EXISTS `business_objects` (`ID` int NOT NULL, `oID` int NOT NULL, `businessID` int DEFAULT NULL, `oX` float NOT NULL, `oY` float NOT NULL, `oZ` float NOT NULL, `orX` float NOT NULL, `orY` float NOT NULL, `orz` float NOT NULL, `ObjectID` float NOT NULL, `Interior` float NOT NULL, `World` float NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Table structure for table `business_places`
CREATE TABLE IF NOT EXISTS `business_places` (`ID` int NOT NULL, `Type` int DEFAULT NULL, `X` float DEFAULT NULL, `Y` float DEFAULT NULL, `Z` float DEFAULT NULL, `Status` int NOT NULL DEFAULT '0', `Price` int NOT NULL DEFAULT '0', `Rent` int NOT NULL DEFAULT '0', `OwnerID` int DEFAULT NULL, `MinRentPrice` int NOT NULL DEFAULT '0', `MaxRentPrice` int NOT NULL DEFAULT '0', `PlaceType` int DEFAULT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `business_places`
INSERT INTO `business_places` (`ID`, `Type`, `X`, `Y`, `Z`, `Status`, `Price`, `Rent`, `OwnerID`, `MinRentPrice`, `MaxRentPrice`, `PlaceType`)
VALUES (1, 9, 1290.81, -1161.26, 23.96, 0, 0, 0, NULL, 0, 0, 1), (2, 7, 928.92, -1352.93, 13.34, 0, 0, 0, NULL, 0, 0, 1), (3, 7, 512.01, -1486.93, 14.51, 0, 0, 0, NULL, 0, 0, 1), (4, 1, 1352.37, -1759.25, 13.51, 0, 0, 0, NULL, 0, 0, 1), (5, 1, 1833.77, -1842.63, 13.58, 0, 0, 0, NULL, 0, 0, 1), (6, 10, 979.31, -1519.91, 2200.77, 0, 0, 0, NULL, 0, 0, 1);

-- Table structure for table `business_staff`
CREATE TABLE IF NOT EXISTS `business_staff` (`ID` int NOT NULL, `businessID` int NOT NULL, `cID` int NOT NULL, `cName` varchar(32) NOT NULL, `RankID` int NOT NULL, `RankName` varchar(56) NOT NULL, `Salary` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Table structure for table `business_stats`
CREATE TABLE IF NOT EXISTS `business_stats` (`ID` int NOT NULL, `businessID` int NOT NULL, `Money` int NOT NULL, `Date` date NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = cp1251;

-- Dumping data for table `business_stats`
INSERT INTO `business_stats` (`ID`, `businessID`, `Money`, `Date`)
VALUES (778, 0, 2500, '2021-09-21'), (783, 34, 500, '2021-09-21'), (789, 34, 1500, '2021-09-22'), (1535, 6, 100, '2023-06-27'), (1536, 26, 1700, '2023-06-28'), (1537, 13, 80, '2023-07-31'), (1538, 17, 1100, '2024-01-27'), (1539, 1, 120, '2024-02-03');

-- Table structure for table `bus_description`
CREATE TABLE IF NOT EXISTS `bus_description` (`ID` int NOT NULL, `RouteID` int NOT NULL, `RouteName` varchar(64) NOT NULL, `CheckPrice` int NOT NULL DEFAULT '1') ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `bus_description`
INSERT INTO `bus_description` (`ID`, `RouteID`, `RouteName`, `CheckPrice`)
VALUES (4, 101, 'Віллоуфілд - Блуббері', 1);

-- Table structure for table `bus_rating`
CREATE TABLE IF NOT EXISTS `bus_rating` (`ID` int NOT NULL, `Nickname` varchar(32) NOT NULL, `Trips` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `bus_rating`
INSERT INTO `bus_rating` (`ID`, `Nickname`, `Trips`)
VALUES (1, 'Brian_Randall', 50), (2, 'macr0n', 45), (3, 'Benjamin_Barker', 1);

-- Table structure for table `bus_routes`
CREATE TABLE IF NOT EXISTS `bus_routes` (`ID` int NOT NULL, `RouteID` int NOT NULL, `r_pos` varchar(128) NOT NULL, `IsStop` int NOT NULL, `StopPosObject` varchar(256) DEFAULT NULL, `StopPosName` varchar(64) DEFAULT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `bus_routes`
INSERT INTO `bus_routes` (`ID`, `RouteID`, `r_pos`, `IsStop`, `StopPosObject`, `StopPosName`)
VALUES (28, 101, '2391.77|-1905.82|13.21', 1, '2395.98|-1905.82|13.65|0.00|0.00|0.00', 'Станція Віллоуфілд'), (29, 101, '2400.78|-1922.09|13.20', 0, NULL, NULL), (30, 101, '2411.53|-1952.15|13.05', 0, NULL, NULL), (31, 101, '2388.38|-1970.05|13.05', 0, NULL, NULL), (32, 101, '2337.60|-1970.53|12.99', 0, NULL, NULL), (33, 101, '2227.16|-1970.00|13.05', 0, NULL, NULL), (100, 101, '2696.93|-1654.61|11.68', 0, NULL, NULL), (101, 101, '2660.81|-1654.58|10.37', 0, NULL, NULL), (102, 101, '2640.84|-1707.15|10.40', 0, NULL, NULL), (103, 101, '2597.46|-1730.12|12.83', 0, NULL, NULL), (104, 101, '2433.82|-1730.17|13.26', 0, NULL, NULL), (105, 101, '2411.98|-1785.38|13.05', 0, NULL, NULL), (106, 101, '2411.93|-1879.41|13.05', 0, NULL, NULL), (107, 101, '2391.69|-1905.86|13.21', 1, '2395.97|-1905.79|13.63|0.00|0.00|0.00', 'Станція Віллоуфілд');

-- Table structure for table `calls`
CREATE TABLE IF NOT EXISTS `calls` (`ID` int NOT NULL, `Description` varchar(200) NOT NULL, `Name` varchar(32) NOT NULL, `Place` varchar(40) NOT NULL, `Time` varchar(40) NOT NULL, `X` float NOT NULL, `Y` float NOT NULL, `Z` float NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Table structure for table `captchalog`
CREATE TABLE IF NOT EXISTS `captchalog` (`clID` int NOT NULL, `clName` varchar(64) NOT NULL, `clIP` varchar(64) NOT NULL, `clDate` varchar(64) NOT NULL, `clStatus` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Dumping data for table `captchalog`
INSERT INTO `captchalog` (`clID`, `clName`, `clIP`, `clDate`, `clStatus`)
VALUES (1, 'Nicandro_Montecristo', '81.163.137.116', '2021-3-19', 1), (2, 'Nicandro_Montecristo', '81.163.137.116', '2021-3-19', 1), (3, 'Nicandro_Montecristo', '81.163.137.116', '2021-3-19', 1), (4, 'Nicandro_Montecristo', '81.163.137.116', '2021-3-19', 1), (5944, '', '127.0.0.1', '2023-3-18', 0);

-- Table structure for table `cars`
CREATE TABLE IF NOT EXISTS `cars` (`id` int NOT NULL, `owner` varchar(36) NOT NULL, `model` int NOT NULL DEFAULT '481', `color_one` int NOT NULL DEFAULT '1', `color_two` int NOT NULL DEFAULT '1', `drived` float NOT NULL DEFAULT '0', `fuel` float NOT NULL DEFAULT '100', `components` varchar(128) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0', `kanistra` int NOT NULL DEFAULT '0', `narko` int NOT NULL DEFAULT '0', `mats` int NOT NULL DEFAULT '0', `deagle` int NOT NULL DEFAULT '0', `ak47` int NOT NULL DEFAULT '0', `m4` int NOT NULL DEFAULT '0', `shot` int NOT NULL DEFAULT '0', `number` varchar(32) CHARACTER
	SET cp1251 COLLATE cp1251_general_ci NOT NULL DEFAULT 'transit', `paintjob` int NOT NULL DEFAULT '-1', `Akum` float NOT NULL DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Dumping data for table `cars`
INSERT INTO `cars` (`id`, `owner`, `model`, `color_one`, `color_two`, `drived`, `fuel`, `components`, `kanistra`, `narko`, `mats`, `deagle`, `ak47`, `m4`, `shot`, `number`, `paintjob`, `Akum`)
VALUES (1, 'Brian_Randall', 559, 3, 3, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (2, 'Brian_Randall', 560, 6, 6, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (3, 'Ivan_Franko', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (4, 'Ivan_Franko', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (5, 'Test2', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (6, 'Test2', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (7, 'Test3', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (8, 'Test3', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (9, 'TestingBot', 419, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (10, 'TestingBot', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (11, 'Jason_Hernandez', 411, 220, 79, 0, 0, '0|0|0|0|0|0|0|1025|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'SA742LS', 0, 0), (12, 'Jason_Hernandez', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (13, 'Xavier_Blackwood', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (14, 'Xavier_Blackwood', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (15, 'Name_Surname', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (16, 'Name_Surname', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (17, 'macr0n', 587, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (18, 'Jane_Margolis', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (19, 'Benjamin_Barker', 481, 1, 1, 0, 15, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 30), (20, 'Benjamin_Barker', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (21, 'Brian_Randallssa', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (22, 'Brian_Randallssa', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (23, 'Brian_Randallssaa', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (24, 'Brian_Randallssaa', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (25, 'Randall_Brian', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (26, 'Randall_Brian', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (27, 'Rick_Slay', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (28, 'Rick_Slay', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (29, '123_12332312', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (30, '123_12332312', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (31, 'fencies', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (32, 'fencies', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (33, 'jesse', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (34, 'jesse', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (35, 'pinkman', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (36, 'pinkman', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (37, 'jesacg', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (38, 'jesacg', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (39, 'qweqwe', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (40, 'qweqwe', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (41, '', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (42, '', 481, 1, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (43, 'Vernon_Earles', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0), (44, 'Vernon_Earles', 481, 1, 1, 0, 100, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 'transit', -1, 0);

-- Table structure for table `characters`
CREATE TABLE IF NOT EXISTS `characters` (`cID` int NOT NULL, `cOwner` varchar(24) NOT NULL, `Name` varchar(24) NOT NULL, `cSex` int NOT NULL DEFAULT '0', `cAge` int DEFAULT '21', `cEthnos` int DEFAULT '0', `cPame` varchar(128) DEFAULT NULL, `cSkin` int NOT NULL DEFAULT '1', `cLastSpawn` int NOT NULL DEFAULT '0', `cExitPos` varchar(256) NOT NULL DEFAULT '0', `cRadioChannel` int NOT NULL DEFAULT '0', `cRadioSlot` int NOT NULL DEFAULT '0', `pvIp` varchar(17) NOT NULL DEFAULT 'no', `cJail` int NOT NULL DEFAULT '0', `cJailTime` int NOT NULL DEFAULT '0', `pArrested` int NOT NULL DEFAULT '0', `pVictim` varchar(24) DEFAULT NULL, `cWanted` int NOT NULL DEFAULT '0', `cWantedReason` varchar(50) DEFAULT NULL, `pCrimes` int NOT NULL DEFAULT '0', `pZakonp` int NOT NULL DEFAULT '0', `pLevel` int NOT NULL DEFAULT '1', `pHP` float NOT NULL DEFAULT '100', `cStage` int NOT NULL DEFAULT '0', `cDeathX` float NOT NULL DEFAULT '0', `cDeathY` float NOT NULL DEFAULT '0', `cDeathZ` float NOT NULL DEFAULT '0', `cDeathA` float NOT NULL DEFAULT '0', `cDeathI` float NOT NULL DEFAULT '0', `cDeathVW` float NOT NULL DEFAULT '0', `cDeathTimerSec` int NOT NULL DEFAULT '0', `pAdmin` int NOT NULL DEFAULT '0', `youtube` int NOT NULL DEFAULT '0', `bussiness` int NOT NULL DEFAULT '0', `apart` int NOT NULL DEFAULT '0', `house` int NOT NULL DEFAULT '0', `tempkey` int NOT NULL DEFAULT '0', `room` int NOT NULL DEFAULT '0', `plane` int NOT NULL DEFAULT '-1', `mute` int NOT NULL DEFAULT '0', `pExp` int NOT NULL DEFAULT '0', `pCash` int NOT NULL DEFAULT '200', `pDrugs` int NOT NULL DEFAULT '0', `pMats` int NOT NULL DEFAULT '0', `pLeader` int NOT NULL DEFAULT '0', `pMember` int NOT NULL DEFAULT '0', `pRank` int NOT NULL DEFAULT '0', `pJob` int NOT NULL DEFAULT '0', `pFracSkin` int NOT NULL DEFAULT '0', `pPhone` int NOT NULL DEFAULT '0', `licenses` varchar(64) NOT NULL DEFAULT '0,0,0,0', `pAddiction` int NOT NULL DEFAULT '0', `pMarried` varchar(25) NOT NULL DEFAULT '-', `pDrug` varchar(128) NOT NULL DEFAULT '-', `pBank` int NOT NULL DEFAULT '0', `pMobile` int NOT NULL DEFAULT '0', `pWeapons` varchar(64) NOT NULL DEFAULT '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', `pAmmos` varchar(64) CHARACTER
	SET cp1251 COLLATE cp1251_bin NOT NULL DEFAULT '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', `pGunSkills` varchar(50) NOT NULL DEFAULT '0, 0, 0, 0, 0, 0', `pOnline` varchar(128) NOT NULL DEFAULT '0', `pWarns` int NOT NULL DEFAULT '0', `warntime` int NOT NULL DEFAULT '0', `pEmail` varchar(64) NOT NULL DEFAULT 'no', `pPlayTime_one` int NOT NULL DEFAULT '0', `pPlayTime_two` int NOT NULL DEFAULT '0', `kill_capture` int NOT NULL DEFAULT '0', `pHospital` int NOT NULL DEFAULT '0', `pRod` int NOT NULL DEFAULT '0', `pRopes` int NOT NULL DEFAULT '0', `pWorms` int NOT NULL DEFAULT '0', `pFish` float NOT NULL DEFAULT '0', `family` int NOT NULL DEFAULT '0', `progress` int NOT NULL DEFAULT '0', `spawn` int NOT NULL DEFAULT '0', `salary` int NOT NULL DEFAULT '0', `book` int NOT NULL DEFAULT '0', `watch` int NOT NULL DEFAULT '0', `phonenumber` varchar(256) DEFAULT NULL, `phonename` varchar(1024) DEFAULT NULL, `MedCard` int NOT NULL DEFAULT '0', `Advert` int NOT NULL DEFAULT '0', `FracDuty` int NOT NULL DEFAULT '0', `Settings` varchar(48) NOT NULL DEFAULT '1|1|0|0|0|0|0|0|0|1', `online_status` int NOT NULL DEFAULT '0', `GoogleCode` varchar(50) DEFAULT NULL, `SecretCode` varchar(50) DEFAULT NULL, `pBlago` int NOT NULL DEFAULT '0', `donatemoney` int NOT NULL DEFAULT '0', `fwarn` int NOT NULL DEFAULT '0', `pSatiety` int NOT NULL DEFAULT '100', `pKills` int NOT NULL DEFAULT '0', `pWinArea` int NOT NULL DEFAULT '0', `pFamRank` int NOT NULL DEFAULT '0', `pBox` int NOT NULL DEFAULT '0', `pSnow` float NOT NULL DEFAULT '0', `pAdmMSG` int NOT NULL DEFAULT '0', `pAdmKL` int NOT NULL DEFAULT '0', `pGoogle` int NOT NULL DEFAULT '0', `homesell` int NOT NULL DEFAULT '0', `bizzsell` int NOT NULL DEFAULT '0', `airsell` int NOT NULL DEFAULT '0', `roomsell` int NOT NULL DEFAULT '0', `pLottery` int NOT NULL DEFAULT '0', `GunLic` int NOT NULL DEFAULT '0', `drunginv` int NOT NULL DEFAULT '0', `pSlotItem` varchar(64) NOT NULL DEFAULT '0|0|0|0|0|0|0|0', `pSlotItem_Use` varchar(64) NOT NULL DEFAULT '1|1|1|1|1|1|1|1', `fraction_date` varchar(64) NOT NULL DEFAULT '0/0/0', `fmute` int NOT NULL DEFAULT '0', `theftSkill` int NOT NULL DEFAULT '0', `theftExp` int NOT NULL DEFAULT '0', `theftTime` int NOT NULL DEFAULT '0', `pDonateBank` int NOT NULL DEFAULT '0', `pFight_on` int NOT NULL DEFAULT '0', `pFight_off` int NOT NULL DEFAULT '0', `MedHeal` int NOT NULL DEFAULT '0', `walk` int NOT NULL DEFAULT '0', `job_skill` varchar(40) NOT NULL DEFAULT '0,0,0,0,0,0,0,0', `premiumtime` int NOT NULL DEFAULT '0', `premium` int NOT NULL DEFAULT '0', `thrist` int NOT NULL DEFAULT '0', `Item` varchar(256) NOT NULL DEFAULT '0', `ItemAmount` varchar(256) NOT NULL DEFAULT '0', `acs_job` varchar(30) NOT NULL DEFAULT '0,0,0,0,0,0,0', `pMPromo` int NOT NULL DEFAULT '0', `activ` int NOT NULL DEFAULT '0', `casino_chips` int NOT NULL DEFAULT '0', `casino_lang` int NOT NULL DEFAULT '0', `dm_k` int NOT NULL DEFAULT '0', `dm_d` int NOT NULL DEFAULT '0', `lomka` int NOT NULL DEFAULT '0', `case_1` int NOT NULL DEFAULT '0', `case_2` int NOT NULL DEFAULT '0', `case_3` int NOT NULL DEFAULT '0', `talon_fam` int NOT NULL DEFAULT '0', `bizz_work` int NOT NULL DEFAULT '0', `bizz_status` int NOT NULL DEFAULT '0', `bizz_cash` int NOT NULL DEFAULT '0', `bizz_lcash` int NOT NULL DEFAULT '0', `zahvat` int NOT NULL DEFAULT '0', `metal` int NOT NULL DEFAULT '0', `cloth` int NOT NULL DEFAULT '0', `dress` int NOT NULL DEFAULT '0', `stone` int NOT NULL DEFAULT '0', `spawnData` varchar(64) DEFAULT NULL, `spawnTPPick` int NOT NULL DEFAULT '0', `event` int NOT NULL DEFAULT '0', `e_kills` int NOT NULL DEFAULT '0', `procent` int NOT NULL DEFAULT '0', `pPrefix_s` varchar(36) NOT NULL DEFAULT '0', `pPrefix_i` int NOT NULL DEFAULT '0', `pQuestHacker` varchar(36) NOT NULL DEFAULT '0', `pHacker` int NOT NULL DEFAULT '0', `pCredit` int NOT NULL DEFAULT '0', `pCreditDay` int NOT NULL DEFAULT '0', `pKeyCar` int NOT NULL DEFAULT '0', `pHackProg` int NOT NULL DEFAULT '0', `pBoost` int NOT NULL DEFAULT '0', `pMag` int NOT NULL DEFAULT '0', `pRope` int NOT NULL DEFAULT '0', `ahMenu0` int NOT NULL DEFAULT '0', `ahMenu1` int NOT NULL DEFAULT '0', `ahMenu2` int NOT NULL DEFAULT '0', `ahMenu3` int NOT NULL DEFAULT '0', `Akum` int NOT NULL DEFAULT '0', `pDiscord` varchar(20) NOT NULL DEFAULT '0', `pDiscordName` varchar(33) DEFAULT NULL, `pTelegram` varchar(20) NOT NULL DEFAULT '0', `TLicCar` int NOT NULL DEFAULT '0', `TLicAir` int NOT NULL DEFAULT '0', `TLicBoat` int NOT NULL DEFAULT '0', `TLicWeapon` int NOT NULL DEFAULT '0', `pDeposit` int DEFAULT '0', `pDepositMoney` int NOT NULL DEFAULT '0', `pDepositTime` int NOT NULL DEFAULT '0', `cSawmillExp` int NOT NULL DEFAULT '0', `cSawmillTree` int DEFAULT '0', `cSawmillWood` int DEFAULT '0', `cSawmillConv` int DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = cp1251;

-- Dumping data for table `characters`
INSERT INTO `characters` (`cID`, `cOwner`, `Name`, `cSex`, `cAge`, `cEthnos`, `cPame`, `cSkin`, `cLastSpawn`, `cExitPos`, `cRadioChannel`, `cRadioSlot`, `pvIp`, `cJail`, `cJailTime`, `pArrested`, `pVictim`, `cWanted`, `cWantedReason`, `pCrimes`, `pZakonp`, `pLevel`, `pHP`, `cStage`, `cDeathX`, `cDeathY`, `cDeathZ`, `cDeathA`, `cDeathI`, `cDeathVW`, `cDeathTimerSec`, `pAdmin`, `youtube`, `bussiness`, `apart`, `house`, `tempkey`, `room`, `plane`, `mute`, `pExp`, `pCash`, `pDrugs`, `pMats`, `pLeader`, `pMember`, `pRank`, `pJob`, `pFracSkin`, `pPhone`, `licenses`, `pAddiction`, `pMarried`, `pDrug`, `pBank`, `pMobile`, `pWeapons`, `pAmmos`, `pGunSkills`, `pOnline`, `pWarns`, `warntime`, `pEmail`, `pPlayTime_one`, `pPlayTime_two`, `kill_capture`, `pHospital`, `pRod`, `pRopes`, `pWorms`, `pFish`, `family`, `progress`, `spawn`, `salary`, `book`, `watch`, `phonenumber`, `phonename`, `MedCard`, `Advert`, `FracDuty`, `Settings`, `online_status`, `GoogleCode`, `SecretCode`, `pBlago`, `donatemoney`, `fwarn`, `pSatiety`, `pKills`, `pWinArea`, `pFamRank`, `pBox`, `pSnow`, `pAdmMSG`, `pAdmKL`, `pGoogle`, `homesell`, `bizzsell`, `airsell`, `roomsell`, `pLottery`, `GunLic`, `drunginv`, `pSlotItem`, `pSlotItem_Use`, `fraction_date`, `fmute`, `theftSkill`, `theftExp`, `theftTime`, `pDonateBank`, `pFight_on`, `pFight_off`, `MedHeal`, `walk`, `job_skill`, `premiumtime`, `premium`, `thrist`, `Item`, `ItemAmount`, `acs_job`, `pMPromo`, `activ`, `casino_chips`, `casino_lang`, `dm_k`, `dm_d`, `lomka`, `case_1`, `case_2`, `case_3`, `talon_fam`, `bizz_work`, `bizz_status`, `bizz_cash`, `bizz_lcash`, `zahvat`, `metal`, `cloth`, `dress`, `stone`, `spawnData`, `spawnTPPick`, `event`, `e_kills`, `procent`, `pPrefix_s`, `pPrefix_i`, `pQuestHacker`, `pHacker`, `pCredit`, `pCreditDay`, `pKeyCar`, `pHackProg`, `pBoost`, `pMag`, `pRope`, `ahMenu0`, `ahMenu1`, `ahMenu2`, `ahMenu3`, `Akum`, `pDiscord`, `pDiscordName`, `pTelegram`, `TLicCar`, `TLicAir`, `TLicBoat`, `TLicWeapon`, `pDeposit`, `pDepositMoney`, `pDepositTime`, `cSawmillExp`, `cSawmillTree`, `cSawmillWood`, `cSawmillConv`)
VALUES (52, 'macr0n', 'Jacob_Gerkens', 0, 26, 0, '23x4', 4, 1706986136, '132.00, -67.29, 1.57, 0.00, 28.00, 0.00, ', 1, 5, 'no', 0, 0, 2, 'Rick_Crown', 0, 'Водіння в нетверезому стані', 2, 100, 1, 261.728, 0, 579.2, -1248.61, 18.1268, 296.279, 0, 0, 300, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 70778027, 0, 0, 0, 2, 18, 0, 265, 3323321, '1,1,1,1', 0, '-', '-', 192437100, 2213, '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '1, 100, 100, 100, 100, 100', '03-02-2024', 0, 0, 'no', 0, 65, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', ' Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет', 0, 0, 1, '1|1|10|0|2|0|0|0|0|1|0|124', 1, NULL, NULL, 0, 0, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0', '1|1|1|1|1|1|1|1', '2023-06-27 20:21:31', 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0,0,0,0', 0, 0, 0, '575, 582, 581, 0, 583, 579, 571, 580, 571, 0, 0, 0, 0, 5, 0, ', '1, 1, 1, 0, 1, 1, 6, 1, 20, 0, 0, 0, 0, 1, 0, ', '0,0,0,0,0,0,0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '132.00,-67.29,1.58,0.00,28,0,1706986736', 0, 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', NULL, '0', 1708968657, 1708968657, 1708968657, 1708968657, 1, 1102500, 0, 3, 5, 20, 10), (3, 'macr0n', 'Jane_Margolis', 1, 17, 0, 'Готка, веде себе грубо. Часто тусується в барах зі швидким трахом та наркотиками.', 195, 1687982342, '-16.20, -83.41, 1029.92, 90.00, 0.00, 15.00, ', 0, 4, 'no', 0, 0, 0, 'Нет', 0, 'Нет', 0, 10, 24, 98.68, 0, 50, 50, 3.89863, 180.266, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, -1, 0, 0, 445557, 0, 0, 0, 0, 0, 0, 0, 1231231, '0,0,0,0', 0, '-', '-', 7659937, 0, '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '1, 0, 0, 0, 0, 0', '27-06-2023', 0, 0, 'no', 12, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', ' Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет', 0, 0, 0, '1|0|10|0|6|2|1|1|1|1|48|124', 1001, NULL, NULL, 0, 872842, 0, 65, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '0|0|0|0|0|0|0|0', '1|1|1|1|1|1|1|1', '2023-03-23 03:32:44', 0, 0, 0, 0, 876543, 0, 0, 0, 0, '0,0,0,0,0,0,0,0', 0, 0, 0, '573, 0, 0, 0, 0, 0, 0, 485, 573, 0, 196, 0, 329, 0, 0, ', '1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, ', '0,0,0,0,0,0,0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-16.21,-83.42,1029.92,90.00,0,15,1687881189', 0, 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', 1684855074, 1684855074, 1684855074, 1684855074, 0, 0, 0, 0, 0, 0, 0), (47, 'Brian_Randall', 'Brian_Randall', 0, 21, 0, NULL, 171, 1706416294, '50.00, 50.00, 50.00, 0.00, 0.00, 0.00, ', 1, 2, 'no', 0, 0, 0, 'Нет', 0, 'Нет', 0, 100, 1, 34.932, 0, 50, 50, 2.69959, -0, 0, 0, 300, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, 5544, 0, 0, 0, 2, 18, 0, 265, 2312312, '0,0,0,0', 0, '-', '-', 274445, 1000, '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0, 0, 0, 0, 0, 0', '28-01-2024', 0, 0, 'no', 21, 49, 0, 0, 0, 0, 0, 0, 0, 0, 2, 50, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', ' Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет', 0, 0, 1, '1|1|0|0|0|0|0|0|0|1', 1001, NULL, NULL, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0', '1|1|1|1|1|1|1|1', '2023-06-24 00:46:07', 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0,0,0,0', 0, 0, 0, '573, 572, 580, 574, 581, 0, 575, 583, 579, 571, 0, 0, 0, 0, 0, ', '1, 1, 1, 1, 1, 0, 1, 1, 1, 5, 0, 0, 0, 0, 0, ', '0,0,0,0,0,0,0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '50.00,50.00,50.00,0.00,0,0,0', 0, 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', NULL, '0', 1691445768, 1691445768, 1691445768, 1691445768, 1, 0, 2, 16, 17, 71, 25), (6, 'danang', 'Rick_Crown', 1, 30, 0, 'Молодий дід, дід в квадраті, просто дід', 123, 1690567254, '1061.80, -325.72, 74.94, 110.79, 0.00, 0.00, ', 0, 0, 'no', 0, 0, 9, 'Jacob_Gerkens', 0, 'Нанесення побоїв', 11, 11, 1, 65.35, 0, -1937.12, 2004.61, 1115.58, 323.412, 0, 0, 300, 5, 0, 0, 0, 0, 0, 0, -1, 0, 0, 87449, 0, 0, 0, 0, 0, 0, 0, 2521523, '1,1,0,1', 0, '-', '-', 149817347, 0, '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '1, 0, 0, 0, 0, 0', '28-07-2023', 0, 0, 'no', 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', ' Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет', 0, 0, 0, '1|1|10|0|0|0|0|0|0|1|48|124', 1001, NULL, NULL, 0, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0', '1|1|1|1|1|1|1|1', '2023-06-24 00:45:33', 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0,0,0,0', 0, 0, 0, '570, 579, 583, 579, 579, 585, 0, 0, 0, 0, 0, 0, 0, 0, 0, ', '1, 1, 1, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, ', '0,0,0,0,0,0,0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1061.81,-325.73,74.95,110.80,0,0,1690567854', 0, 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', NULL, '0', 1691445785, 1691445785, 1691445785, 1691445785, 1, 14071, 0, 8, 6, 10, 624), (7, 'Benjamin_Barker', 'Alan_Eisinger', 0, 30, 0, 'Працьовитий бізнесмен, любить займатись фітнесом і спортом, завжди ставить перед собою високі цілі, приємний у спілкуванні.', 98, 1684300454, '0', 0, 0, 'no', 0, 0, 0, 'Нет', 0, 'Нет', 0, 0, 1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0', 0, '-', '-', 0, 0, '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0, 0, 0, 0, 0, 0', '0', 0, 0, 'no', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', ' Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет', 0, 0, 0, '1|1|0|0|0|0|0|0|0|1', 1001, NULL, NULL, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0', '1|1|1|1|1|1|1|1', '0/0/0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0,0,0,0', 0, 0, 0, '0', '0', '0,0,0,0,0,0,0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), (42, 'Rick_Slay', 'Ruth_Crown', 0, 38, 0, 'Високий чоловік, з тату на руках', 181, 1684300454, '0', 0, 0, 'no', 0, 0, 0, 'Нет', 0, 'Нет', 0, 0, 1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0', 0, '-', '-', 0, 0, '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0, 0, 0, 0, 0, 0', '22-04-2023', 0, 0, 'no', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', ' Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет|Нет', 0, 0, 0, '1|1|0|0|0|0|0|0|0|1', 1001, NULL, NULL, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0', '1|1|1|1|1|1|1|1', '0/0/0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '0,0,0,0,0,0,0,0', 0, 0, 0, '0', '0', '0,0,0,0,0,0,0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '963.07,-1331.62,13.36,88.17,0,0,1682166589', 0, 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Table structure for table `diplomation`
CREATE TABLE IF NOT EXISTS `diplomation` (`f_id` int NOT NULL, `f_dip` varchar(32) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0') ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- Dumping data for table `diplomation`
INSERT INTO `diplomation` (`f_id`, `f_dip`)
VALUES (15, '0|1|1|1|2|1|1|2'), (16, '0|0|1|1|2|1|1|2'), (17, '0|0|0|1|2|1|1|2'), (18, '0|0|0|1|1|1|1|1'), (19, '0|0|0|0|1|3|1|2'), (20, '0|0|0|0|1|1|1|1'), (21, '0|0|0|1|1|3|1|1'), (22, '0|0|0|1|1|1|1|1');

-- Table structure for table `dm_arena`
CREATE TABLE IF NOT EXISTS `dm_arena` (`Name` varchar(25) NOT NULL, `kills_dm` int NOT NULL DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- Table structure for table `economy`
CREATE TABLE IF NOT EXISTS `economy` (`id` int UNSIGNED NOT NULL, `nalog_1` int NOT NULL, `nalog_2` int NOT NULL, `nalog_3` int NOT NULL, `nalog_4` int NOT NULL, `nalog_5` int NOT NULL, `nalog_6` int NOT NULL, `nalog_7` int NOT NULL, `price_car` int NOT NULL, `price_air` int NOT NULL, `price_boat` int NOT NULL, `price_weapon` int NOT NULL, `MeatWorkStatus` int NOT NULL, `MeatCowPrice` float NOT NULL, `MeatDeerPrice` float NOT NULL, `MeatPorkPrice` float NOT NULL, `MeatFactoryTotal` int NOT NULL, `MeatCowTime` float NOT NULL, `MeatDeerTime` float NOT NULL, `MeatPorkTime` float NOT NULL, `MeatWashInstr` int NOT NULL, `MeatRenewalTime` int NOT NULL, `DepositStatus` int NOT NULL, `DepositDef` float NOT NULL, `DepositStart` float NOT NULL, `DepositComf` float NOT NULL, `DepositOpti` float NOT NULL, `MinDepSum` int NOT NULL, `MaxDepSum` int NOT NULL, `SawmillStatus` int NOT NULL, `SawmillCutExp` int NOT NULL, `SawmillConvExp` int NOT NULL, `SawmillWarehouse` int NOT NULL, `SawmillWarehouseWood` int NOT NULL, `SawmillOutShovelTime` int NOT NULL, `SawmillOutBailerTime` int NOT NULL, `SawmillBailerPrice` int NOT NULL, `SawmillShovelPrice` int NOT NULL, `SawmillTreeRenewalTime` int NOT NULL, `SawmillTreeCutTime` int NOT NULL, `SawmillTreeCutPrice` int NOT NULL, `ConvBoxPrice` int NOT NULL, `ConvActionPrice` int NOT NULL, `ConvActionTime` int NOT NULL, `SawmillWoodPrice` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- Dumping data for table `economy`
INSERT INTO `economy` (`id`, `nalog_1`, `nalog_2`, `nalog_3`, `nalog_4`, `nalog_5`, `nalog_6`, `nalog_7`, `price_car`, `price_air`, `price_boat`, `price_weapon`, `MeatWorkStatus`, `MeatCowPrice`, `MeatDeerPrice`, `MeatPorkPrice`, `MeatFactoryTotal`, `MeatCowTime`, `MeatDeerTime`, `MeatPorkTime`, `MeatWashInstr`, `MeatRenewalTime`, `DepositStatus`, `DepositDef`, `DepositStart`, `DepositComf`, `DepositOpti`, `MinDepSum`, `MaxDepSum`, `SawmillStatus`, `SawmillCutExp`, `SawmillConvExp`, `SawmillWarehouse`, `SawmillWarehouseWood`, `SawmillOutShovelTime`, `SawmillOutBailerTime`, `SawmillBailerPrice`, `SawmillShovelPrice`, `SawmillTreeRenewalTime`, `SawmillTreeCutTime`, `SawmillTreeCutPrice`, `ConvBoxPrice`, `ConvActionPrice`, `ConvActionTime`, `SawmillWoodPrice`)
VALUES (1, 55, 1, 1000, 54, 54, 2, 1000, 500, 30000, 50000, 50000, 1, 1.41, 1.2, 0.71, 8107, 3.81, 2, 1.31, 7, 3, 1, 0.05, 0.1, 0.3, 0.7, 0, 1000000, 1, 0, 0, 2953, 1037, 2, 3, 5, 2, 30, 2, 2, 15, 3, 0, 0);

-- Table structure for table `email_success`
CREATE TABLE IF NOT EXISTS `email_success` (`id` int NOT NULL, `Account` varchar(36) NOT NULL, `Type` int NOT NULL DEFAULT '0', `HASH` varchar(70) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Table structure for table `factions`
CREATE TABLE IF NOT EXISTS `factions` (`ID` int NOT NULL, `Type` int NOT NULL, `Name` varchar(64) NOT NULL, `Color` varchar(16) NOT NULL DEFAULT '0xFFFFFFFF', `MapIcon` varchar(256) NOT NULL, `Spawn` varchar(256) NOT NULL, `Radio` int NOT NULL DEFAULT '0', `lRank` int NOT NULL DEFAULT '10', `sRank` int NOT NULL DEFAULT '7', `Leader` varchar(24) NOT NULL DEFAULT 'Назначити', `Bank` int NOT NULL DEFAULT '0', `StorageItem` varchar(256) NOT NULL, `StorageAmount` varchar(256) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Dumping data for table `factions`
INSERT INTO `factions` (`ID`, `Type`, `Name`, `Color`, `MapIcon`, `Spawn`, `Radio`, `lRank`, `sRank`, `Leader`, `Bank`, `StorageItem`, `StorageAmount`)
VALUES (3, 3, 'Los Santos Fire Department', '0xde2d2d00', '1316.08, -900.35, 39.57, ', '1392.94, -920.52, 647.16, 0.00, 15.00, 1.00, ', 0, 10, 7, 'Brian_Randall', 0, '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '), (1, 1, 'Los Santos City Hall', '0xDCAA1C00', '1481.05, -1772.43, 18.79, ', '1952.77, 1889.13, 2518.99, 270.00, 9.00, 4.00, ', 0, 10, 7, 'Назначити', 0, '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '), (4, 6, 'Los Santos Times', '0xD3540000', '649.30, -1357.32, 13.56, ', '785.44, -46.13, 852.46, 180.00, 15.00, 4.00, ', 0, 10, 7, 'Назначити', 0, '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '), (5, 4, 'Grove Street Families', '0x22995400', '2459.53, -1691.66, 13.54, ', '2596.29, -199.06, 3883.08, 270.00, 0.00, 15.00, ', 19, 10, 7, 'Назначити', 0, '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '), (6, 4, 'Ballas', '0x8E44AD00', '2036.34, -1316.79, 25.21, ', '-16.21, -83.42, 1029.92, 90.00, 0.00, 15.00, ', 14, 10, 7, 'Назначити', 0, '0, 0, 571, 374, 0, 571, 324, 571, 0, 571, 571, 571, 0, 0, 0, 0, 0, 0, 0, 0, ', '0, 0, 20, 2, 0, 2, 2, 10, 0, 20, 2, 10, 0, 0, 0, 0, 0, 0, 0, 0, '), (2, 2, 'Los Santos Police Department', '0x4ea9de00', '1553.85, -1691.64, 6.21, ', '1343.86, -815.90, 1080.57, 270.00, 15.00, 4.00, ', 1, 19, 7, 'Waldemar_Lopez', 0, '344, 0, 574, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ', '5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ');

-- Table structure for table `faction_fleets`
CREATE TABLE IF NOT EXISTS `faction_fleets` (`ID` int NOT NULL, `fID` int NOT NULL, `Faction` int NOT NULL, `Model` int NOT NULL, `Color1` int NOT NULL DEFAULT '0', `Color2` int NOT NULL DEFAULT '0', `Siren` int NOT NULL DEFAULT '0', `SpawnX` float NOT NULL DEFAULT '0', `SpawnY` float NOT NULL DEFAULT '0', `SpawnZ` float NOT NULL DEFAULT '0', `SpawnA` float NOT NULL DEFAULT '0', `SpawnVW` int NOT NULL DEFAULT '0', `SpawnI` int NOT NULL DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `faction_fleets`
INSERT INTO `faction_fleets` (`ID`, `fID`, `Faction`, `Model`, `Color1`, `Color2`, `Siren`, `SpawnX`, `SpawnY`, `SpawnZ`, `SpawnA`, `SpawnVW`, `SpawnI`)
VALUES (1, 1, 3, 407, 3, 1, 1, 1312.2, -874.85, 39.8, 270, 0, 0), (2, 2, 3, 544, 3, 1, 1, 1314.25, -865.845, 39.8, 270, 0, 0), (3, 3, 3, 416, 3, 1, 1, 1312.65, -856.825, 39.8, 270, 0, 0), (4, 4, 3, 490, 3, 1, 1, 1330.18, -892.5, 39.8, 0, 0, 0), (5, 5, 3, 552, 3, 1, 1, 1312.45, -883.925, 39.8, 270.769, 0, 0), (6, 1, 2, 599, 0, 1, 1, 1545.45, -1658.98, 6.03262, 90, 0, 0), (7, 2, 2, 596, 0, 1, 1, 1601.77, -1695.92, 5.58635, 89.8821, 0, 0), (8, 6, 3, 23, 32, 1, 0, 0.3, 24.3, 29.2, 129.2, 4, 2), (9, 3, 2, 475, 71, 0, 1, 1583.43, -1710.01, 5.96148, 0, 0, 0), (10, 4, 2, 596, 0, 1, 1, 1602.05, -1700.1, 5.58676, 92.34, 0, 0), (11, 5, 2, 599, 0, 1, 1, 1545.68, -1662.93, 6.0173, 90, 0, 0), (12, 6, 2, 438, 6, 4, 1, 1558.91, -1710.56, 5.84204, 0, 0, 0), (13, 7, 2, 597, 0, 1, 1, 1602, -1687.97, 5.59755, 90, 0, 0), (14, 8, 2, 596, 0, 1, 0, 1601.83, -1692.02, 5.58101, 90, 0, 0), (15, 9, 2, 482, 23, 53, 1, 1595.57, -1709.89, 5.61419, 0, 0, 0), (16, 10, 2, 426, 88, 35, 1, 1591.51, -1710.06, 5.61451, 0, 0, 0), (17, 11, 2, 507, 47, 0, 1, 1587.35, -1709.94, 5.97538, 0, 0, 0), (18, 12, 2, 597, 0, 1, 1, 1601.79, -1683.96, 5.58859, 90, 0, 0), (19, 13, 2, 525, 0, 0, 0, 1585.05, -1667.65, 5.71104, 270, 0, 0), (20, 14, 2, 598, 0, 1, 1, 1602.1, -1704.19, 5.57487, 90, 0, 0), (21, 15, 2, 541, 0, 1, 1, 1585.32, -1671.81, 5.49624, 270, 0, 0), (22, 16, 2, 510, 0, 1, 1, 1599.25, -1604.49, 13.1405, 180, 0, 0), (23, 17, 2, 510, 0, 1, 1, 1601.07, -1604.52, 13.1722, 180, 0, 0), (24, 18, 2, 510, 0, 1, 1, 1602.93, -1604.51, 13.1685, 180, 0, 0), (25, 19, 2, 510, 0, 1, 1, 1568.67, -1604.59, 13.1485, 270, 0, 0), (26, 20, 2, 598, 0, 1, 1, 1562.75, -1612.21, 13.2506, 180, 0, 0), (27, 21, 2, 596, 0, 1, 1, 1594.36, -1611.62, 13.2477, 180, 0, 0), (28, 22, 2, 596, 0, 1, 1, 1535.75, -1677.23, 13.0801, 0, 0, 0), (29, 23, 2, 497, 0, 1, 1, 1564.43, -1643.66, 28.6133, 90, 0, 0), (30, 24, 2, 447, 0, 1, 1, 1564.87, -1707.53, 28.3705, 90, 0, 0), (31, 25, 2, 528, 0, 1, 1, 1538.76, -1644.43, 5.89692, 180, 0, 0), (32, 26, 2, 596, 0, 1, 1, 1545.61, -1667.9, 6.01831, 90, 0, 0), (33, 27, 2, 601, 0, 1, 1, 1526.54, -1644.85, 5.60655, 180, 0, 0), (34, 28, 2, 427, 0, 1, 1, 1544.89, -1651, 5.99358, 90, 0, 0), (35, 29, 2, 522, 0, 1, 1, 1546.17, -1684.33, 5.4413, 90, 0, 0), (36, 30, 2, 601, 0, 1, 1, 1530.56, -1644.77, 5.60887, 180, 0, 0), (37, 31, 2, 528, 0, 1, 1, 1534.63, -1644.51, 5.89867, 180, 0, 0), (38, 32, 2, 427, 0, 1, 1, 1544.94, -1655.14, 5.99339, 90, 0, 0), (39, 33, 2, 523, 0, 1, 1, 1546.17, -1680.03, 5.43698, 90, 0, 0), (40, 34, 2, 523, 0, 1, 1, 1546.01, -1676, 5.43823, 90, 0, 0), (41, 35, 2, 596, 0, 1, 1, 1545.58, -1672.05, 5.58609, 90, 0, 0), (42, 36, 2, 490, 0, 1, 1, 1528.77, -1687.97, 5.96999, 270, 0, 0), (43, 37, 2, 490, 0, 1, 1, 1528.79, -1684.05, 5.97812, 270, 0, 0), (44, 38, 2, 492, 54, 23, 1, 1578.54, -1710.3, 5.64288, 0, 0, 0), (45, 39, 2, 567, 45, 23, 1, 1570.31, -1710.76, 5.73091, 0, 0, 0), (46, 40, 2, 566, 34, 86, 1, 1574.55, -1710.5, 5.64151, 0, 0, 0), (47, 1, 4, 582, 0, 0, 0, 737.862, -1337.47, 13.5645, 270, 0, 0), (48, 2, 4, 582, 0, 0, 0, 737.516, -1342.64, 13.442, 270, 0, 0), (49, 3, 4, 488, 0, 0, 0, 741.099, -1368.5, 25.8659, 180, 0, 0), (50, 4, 4, 582, 0, 0, 0, 737.849, -1348.34, 13.4299, 269.865, 0, 0);

-- Table structure for table `faction_ranks`
CREATE TABLE IF NOT EXISTS `faction_ranks` (`ID` int NOT NULL, `fID` int NOT NULL, `Faction` int NOT NULL, `Name` varchar(32) NOT NULL DEFAULT 'Вільний ранг', `Salary` int NOT NULL DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Dumping data for table `faction_ranks`
INSERT INTO `faction_ranks` (`ID`, `fID`, `Faction`, `Name`, `Salary`)
VALUES (1, 1, 1, 'Кадет', 483), (2, 2, 1, 'Офіцер І', 483), (3, 3, 1, 'Офіцер ІІ', 483), (4, 4, 1, 'Офіцер ІІІ', 483), (5, 5, 1, 'Детектив І', 483), (6, 6, 1, 'Детектив ІІ', 483), (7, 7, 1, 'Детектив ІІІ', 483), (8, 8, 1, 'Сержант', 483), (9, 9, 1, 'Політик', 483), (10, 1, 3, 'Кадет', 483), (11, 2, 3, 'Офіцер І', 483), (12, 3, 3, 'Офіцер ІІ', 483), (13, 4, 3, 'Офіцер ІІІ', 483), (14, 5, 3, 'Детектив І', 483), (15, 6, 3, 'Детектив ІІ', 483), (16, 7, 3, 'Детектив ІІІ', 483), (17, 8, 3, 'Сержант', 483), (18, 9, 3, 'Парамедик', 483), (19, 10, 3, 'Парамедик', 483), (20, 1, 4, 'Кадет', 483), (21, 2, 4, 'Офіцер І', 483), (22, 3, 4, 'Офіцер ІІ', 483), (23, 4, 4, 'Офіцер ІІІ', 483), (24, 5, 4, 'Детектив І', 483), (25, 6, 4, 'Детектив ІІ', 483), (26, 7, 4, 'Детектив ІІІ', 483), (27, 8, 4, 'Сержант', 483), (28, 9, 4, 'Журналіст', 483), (29, 10, 4, 'Журналіст', 483), (30, 1, 5, 'Кадет', 483), (31, 2, 5, 'Офіцер І', 483), (32, 3, 5, 'Офіцер ІІ', 483), (33, 4, 5, 'Офіцер ІІІ', 483), (34, 5, 5, 'Детектив І', 483), (35, 6, 5, 'Детектив ІІ', 483), (36, 7, 5, 'Детектив ІІІ', 483), (37, 8, 5, 'Сержант', 483), (38, 9, 5, 'Бандит', 483), (39, 10, 5, 'Бандит', 483), (40, 1, 6, 'Кадет', 483), (41, 2, 6, 'Офіцер І', 483), (42, 3, 6, 'Офіцер ІІ', 483), (43, 4, 6, 'Офіцер ІІІ', 483), (44, 5, 6, 'Детектив І', 483), (45, 6, 6, 'Детектив ІІ', 483), (46, 7, 6, 'Детектив ІІІ', 483), (47, 8, 6, 'Сержант', 483), (48, 9, 6, 'Бандит', 483), (49, 10, 6, 'Бандит', 483), (50, 1, 2, 'Recruit', 483), (51, 2, 2, 'Officer I', 483), (52, 3, 2, 'Officer II', 483), (53, 4, 2, 'Officer III', 483), (54, 5, 2, 'Officer III+I', 483), (55, 6, 2, 'Detective I', 483), (56, 7, 2, 'Detective II', 483), (1052, 8, 2, 'Detective III', 0), (1059, 9, 2, 'Sergeant I', 0), (1060, 10, 2, 'Sergeant II', 0), (1061, 11, 2, 'Lieutenant I', 0), (1062, 12, 2, 'Lieutenant II', 0), (1063, 13, 2, 'Captain I', 0), (1064, 14, 2, 'Captain II', 0), (1065, 15, 2, 'Captain III', 0), (1066, 16, 2, 'Commander', 0), (1067, 17, 2, 'Deputy Chief I', 0), (1068, 18, 2, 'Deputy Chief II', 0), (1069, 19, 2, 'Chief', 0);

-- Table structure for table `faction_skins`
CREATE TABLE IF NOT EXISTS `faction_skins` (`ID` int NOT NULL, `fID` int NOT NULL, `Faction` int NOT NULL, `Skin` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Dumping data for table `faction_skins`
INSERT INTO `faction_skins` (`ID`, `fID`, `Faction`, `Skin`)
VALUES (1, 1, 1, 57), (2, 1, 3, 274), (3, 1, 4, 261), (4, 1, 5, 106), (5, 1, 6, 104), (6, 3, 3, 233), (7, 2, 3, 23), (8, 4, 3, 25), (9, 5, 3, 53), (10, 1, 2, 265), (11, 2, 2, 266), (12, 3, 2, 267), (13, 4, 2, 280), (14, 5, 2, 284), (15, 6, 2, 285), (16, 7, 2, 301), (17, 8, 2, 306), (18, 9, 2, 307);

-- Table structure for table `fake_promo`
CREATE TABLE IF NOT EXISTS `fake_promo` (`id` int NOT NULL, `Code` varchar(50) CHARACTER
	SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL, `Money` int DEFAULT NULL, `Donate` int DEFAULT NULL, `UseCode` int DEFAULT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Бонус коды';

-- Dumping data for table `fake_promo`
INSERT INTO `fake_promo` (`id`, `Code`, `Money`, `Donate`, `UseCode`)
VALUES (2, '#CPSA', 1, 0, 1), (3, '#fix12', 1, 0, 1), (12, '#hallowen', 25000, 0, 15);

-- Table structure for table `fake_promo_use`
CREATE TABLE IF NOT EXISTS `fake_promo_use` (`ID` int NOT NULL, `Code` varchar(32) CHARACTER
	SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Кто юзал бонус коды';

-- Dumping data for table `fake_promo_use`
INSERT INTO `fake_promo_use` (`ID`, `Code`)
VALUES (2785, '#mltop'), (53, '#mltop'), (156, '#mltop'), (3000, '#hallowen'), (5237, '#hallowen'), (301, '#hallowen'), (14, '#hallowen'), (75, '#hallowen'), (4069, '#hallowen');

-- Table structure for table `family`
CREATE TABLE IF NOT EXISTS `family` (`id` int NOT NULL, `cname` varchar(32) NOT NULL DEFAULT 'None', `name` varchar(32) NOT NULL DEFAULT 'None', `time` varchar(22) NOT NULL DEFAULT 'None', `cowner` varchar(24) NOT NULL DEFAULT 'None', `owner` varchar(24) NOT NULL DEFAULT 'None', `color` int NOT NULL DEFAULT '0', `drugs` int NOT NULL DEFAULT '0', `mats` int NOT NULL DEFAULT '0', `invite` int NOT NULL DEFAULT '7', `uninvite` int NOT NULL DEFAULT '7', `giverank` int NOT NULL DEFAULT '7', `money_rank` int NOT NULL DEFAULT '0', `spawn_rank` int NOT NULL DEFAULT '0', `car_rank` int NOT NULL DEFAULT '0', `sklad` int NOT NULL DEFAULT '1', `Rank_1` varchar(25) CHARACTER
	SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'None', `Rank_2` varchar(25) CHARACTER
	SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'None', `Rank_3` varchar(25) CHARACTER
	SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'None', `Rank_4` varchar(25) CHARACTER
	SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'None', `Rank_5` varchar(25) CHARACTER
	SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'None', `Rank_6` varchar(25) CHARACTER
	SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'None', `Rank_7` varchar(25) CHARACTER
	SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'None', `Rank_8` varchar(25) CHARACTER
	SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'None', `message` varchar(71) NOT NULL DEFAULT 'None', `point` int NOT NULL DEFAULT '0', `house` int NOT NULL DEFAULT '0', `type` int NOT NULL DEFAULT '0', `sklad_status` int NOT NULL DEFAULT '0', `nation` int NOT NULL DEFAULT '0', `cars` varchar(20) NOT NULL DEFAULT '0|0|0|0|0', `talon` int NOT NULL DEFAULT '0', `ulush_car_1` int NOT NULL DEFAULT '0', `ulush_car_2` int NOT NULL DEFAULT '0', `ulush_car_3` int NOT NULL DEFAULT '0', `ulush_car_4` int NOT NULL DEFAULT '0', `ulush_house` int NOT NULL DEFAULT '0', `car_1` int NOT NULL DEFAULT '462', `car_2` int NOT NULL DEFAULT '462', `car_3` int NOT NULL DEFAULT '462', `car_4` int NOT NULL DEFAULT '462', `car_5` int NOT NULL DEFAULT '462', `poscar1` varchar(50) NOT NULL DEFAULT '0.0, 0.0, 0.0, 0.0', `poscar2` varchar(50) NOT NULL DEFAULT '0.0, 0.0, 0.0, 0.0', `poscar3` varchar(50) NOT NULL DEFAULT '0.0, 0.0, 0.0, 0.0', `poscar4` varchar(50) NOT NULL DEFAULT '0.0, 0.0, 0.0, 0.0', `poscar5` varchar(50) NOT NULL DEFAULT '0.0, 0.0, 0.0, 0.0', `components_0` varchar(86) NOT NULL DEFAULT '0', `components_1` varchar(86) CHARACTER
	SET cp1250 COLLATE cp1250_general_ci NOT NULL DEFAULT '0', `components_2` varchar(86) NOT NULL DEFAULT '0', `components_3` varchar(86) NOT NULL DEFAULT '0', `components_4` varchar(86) NOT NULL DEFAULT '0', `paint_0` varchar(36) NOT NULL DEFAULT '0', `paint_1` varchar(36) NOT NULL DEFAULT '0', `paint_2` varchar(36) NOT NULL DEFAULT '0', `paint_3` varchar(36) NOT NULL DEFAULT '0', `paint_4` varchar(36) NOT NULL DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = cp1251;

-- Table structure for table `family_blacklist`
CREATE TABLE IF NOT EXISTS `family_blacklist` (`bl_id` int NOT NULL, `bl_family` int NOT NULL, `bl_name` varchar(24) NOT NULL, `bl_reason` varchar(50) NOT NULL, `bl_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Table structure for table `fires`
CREATE TABLE IF NOT EXISTS `fires` (`ID` int NOT NULL, `fireID` int NOT NULL, `fireLevel` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `fires`
INSERT INTO `fires` (`ID`, `fireID`, `fireLevel`)
VALUES (1, 1, 3);

-- Table structure for table `fires_objects`
CREATE TABLE IF NOT EXISTS `fires_objects` (`ID` int NOT NULL, `fireID` int NOT NULL, `fireModel` int NOT NULL, `firePosX` float NOT NULL, `firePosY` float NOT NULL, `firePosZ` float NOT NULL, `firePosrX` float NOT NULL, `firePosrY` float NOT NULL, `firePosrZ` float NOT NULL, `fireTargetStatus` int NOT NULL, `ObjectModel` int NOT NULL, `ObjectPosX` float NOT NULL, `ObjectPosY` float NOT NULL, `ObjectPosZ` float NOT NULL, `ObjectPosrX` float NOT NULL, `ObjectPosrY` float NOT NULL, `ObjectPosrZ` float NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `fires_objects`
INSERT INTO `fires_objects` (`ID`, `fireID`, `fireModel`, `firePosX`, `firePosY`, `firePosZ`, `firePosrX`, `firePosrY`, `firePosrZ`, `fireTargetStatus`, `ObjectModel`, `ObjectPosX`, `ObjectPosY`, `ObjectPosZ`, `ObjectPosrX`, `ObjectPosrY`, `ObjectPosrZ`)
VALUES (1, 1, 18688, 1366.31, -1506.05, 13.449, 0, 0, -55.7, 0, 18691, 1350.57, -1493.39, 17.317, 0, 0, -24.7), (2, 1, 18688, 1368.9, -1509.85, 13.449, 0, 0, -55.7, 0, 18691, 1349.19, -1496.38, 22.597, 0, 0, -24.7), (3, 1, 18688, 1370.59, -1506.34, 13.449, 0, 0, -55.7, 0, 18691, 1347.94, -1499.11, 17.317, 0, 0, -24.7), (4, 1, 18688, 1368.97, -1497.32, 13.786, 0, 0, -19.5, 0, 18691, 1344.73, -1505.89, 17.317, 0, 0, -24.7), (5, 1, 18688, 1367.66, -1489.75, 13.786, 0, 0, -19.5, 0, 18691, 1343.41, -1508.78, 17.317, 0, 0, -24.7), (6, 1, 18688, 1347.69, -1505.6, 13.246, 0, 0, -21.4, 0, 18691, 1342.11, -1511.58, 22.687, 0, 0, -24.7), (7, 1, 18688, 1345.35, -1508.03, 13.246, 0, 0, -21.4, 0, 18691, 1338.7, -1518.06, 22.687, 0, 0, -24.7), (8, 1, 18688, 1345.07, -1512.94, 14.256, 0, 0, -21.4, 0, 18691, 1336.08, -1523.77, 22.687, 0, 0, -24.7);

-- Table structure for table `fracmorozed`
CREATE TABLE IF NOT EXISTS `fracmorozed` (`MOROZ_BALLAS` int NOT NULL DEFAULT '0', `MOROZ_VAGOS` int NOT NULL DEFAULT '0', `MOROZ_GROVE` int NOT NULL DEFAULT '0', `MOROZ_RIFA` int NOT NULL DEFAULT '0', `MOROZ_AZTECAS` int NOT NULL DEFAULT '0', `MOROZ_LCN` int NOT NULL DEFAULT '0', `MOROZ_YAKUZA` int NOT NULL DEFAULT '0', `MOROZ_RM` int NOT NULL DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = cp1251;

-- Dumping data for table `fracmorozed`
INSERT INTO `fracmorozed` (`MOROZ_BALLAS`, `MOROZ_VAGOS`, `MOROZ_GROVE`, `MOROZ_RIFA`, `MOROZ_AZTECAS`, `MOROZ_LCN`, `MOROZ_YAKUZA`, `MOROZ_RM`)
VALUES (0, 0, 0, 0, 0, 0, 0, 0);

-- Table structure for table `fractions_blacklist`
CREATE TABLE IF NOT EXISTS `fractions_blacklist` (`bl_id` int NOT NULL, `bl_fraction` int NOT NULL, `bl_name` varchar(24) NOT NULL, `bl_reason` varchar(50) NOT NULL, `bl_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Dumping data for table `fractions_blacklist`
INSERT INTO `fractions_blacklist` (`bl_id`, `bl_fraction`, `bl_name`, `bl_reason`, `bl_date`)
VALUES (142, 1, 'Indra_Uchiha', 'Нарушение устава ( Чс зеленый)', '2021-07-18 18:56:39'), (5554, 11, 'Pudge_Tagert', 'Уволен,ЧС потеря доверия', '2021-10-28 19:38:52');

-- Table structure for table `frac_weapon`
CREATE TABLE IF NOT EXISTS `frac_weapon` (`fwID` int NOT NULL, `Slot` int NOT NULL, `Fraction` int NOT NULL, `fwName` varchar(32) NOT NULL, `fwGunID` int NOT NULL DEFAULT '0', `fwGunAmmo` int NOT NULL DEFAULT '0', `fwArmor` int NOT NULL DEFAULT '0', `fwRank` int NOT NULL DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = cp1251;

-- Dumping data for table `frac_weapon`
INSERT INTO `frac_weapon` (`fwID`, `Slot`, `Fraction`, `fwName`, `fwGunID`, `fwGunAmmo`, `fwArmor`, `fwRank`)
VALUES (25, 6, 4, 'Бронежилет', 31, 1, 1, 1), (24, 5, 4, 'Спрей', 41, 100, 0, 1), (23, 4, 4, 'Димова граната', 17, 3, 0, 1), (21, 2, 4, 'MP5', 29, 70, 0, 1), (22, 3, 4, 'Rifle', 33, 20, 0, 1), (20, 1, 4, 'SD Pistol', 23, 21, 0, 1), (19, 0, 4, 'Desert Eagle', 24, 21, 0, 1), (18, 5, 3, 'Бронежилет', 31, 1, 1, 1), (17, 4, 3, 'Дубинка', 3, 1, 0, 1), (16, 3, 3, 'M4A1', 31, 100, 0, 1), (15, 2, 3, 'MP5', 29, 70, 0, 1), (14, 1, 3, 'Shotgun', 25, 30, 0, 1), (13, 0, 3, 'Desert Eagle', 24, 21, 0, 1), (12, 5, 2, 'Бронежилет', 31, 1, 1, 1), (11, 4, 2, 'Дубинка', 3, 1, 0, 1), (10, 3, 2, 'M4A1', 31, 100, 0, 1), (9, 2, 2, 'MP5', 29, 70, 0, 1), (8, 1, 2, 'Shotgun', 25, 30, 0, 1), (7, 0, 2, 'Desert Eagle', 24, 21, 0, 1), (6, 5, 1, 'Бронежилет', 31, 1, 1, 1), (5, 4, 1, 'Дубинка', 3, 1, 0, 1), (4, 3, 1, 'M4A1', 31, 100, 0, 1), (3, 2, 1, 'MP5', 29, 70, 0, 1), (2, 1, 1, 'Shotgun', 25, 30, 0, 1), (1, 0, 1, 'Desert Eagle', 24, 21, 0, 1), (26, 7, 4, 'Дубинка', 3, 1, 0, 1), (27, 8, 4, 'Маска', 99, 1, 0, 1), (28, 9, 4, 'M4A1', 31, 100, 0, 1), (29, 10, 4, 'Silenced 9mm', 23, 20, 0, 1), (30, 11, 4, 'ShotGun', 25, 100, 0, 1), (31, 0, 6, 'M4A1', 31, 100, 0, 1), (32, 1, 6, 'Desert Eagle', 24, 21, 0, 1), (33, 2, 6, 'MP5', 29, 70, 0, 1), (34, 3, 6, 'ShotGun', 25, 30, 0, 1), (35, 4, 6, 'Rifle', 33, 20, 0, 1), (36, 5, 6, 'Бронежилет', 31, 1, 1, 1), (37, 0, 5, 'Desert Eagle', 24, 21, 0, 1), (38, 1, 5, 'Shotgun', 25, 30, 0, 1), (39, 2, 5, 'MP5', 29, 70, 0, 1), (40, 3, 5, 'M4A1', 31, 100, 0, 1), (41, 4, 5, 'Дубинка', 3, 1, 0, 1), (42, 5, 5, 'Бронежилет', 31, 1, 0, 1);

-- Table structure for table `gangzone`
CREATE TABLE IF NOT EXISTS `gangzone` (`id` int NOT NULL, `coord_one` float NOT NULL, `coord_two` float NOT NULL, `coord_three` float NOT NULL, `coord_four` float NOT NULL, `gang_owner` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- Dumping data for table `gangzone`
INSERT INTO `gangzone` (`id`, `coord_one`, `coord_two`, `coord_three`, `coord_four`, `gang_owner`)
VALUES (0, 1642.71, -2174.57, 1770.71, -2073.57, 18), (1, 1770.71, -2174.57, 1898.71, -2073.57, 18), (2, 1898.71, -2174.57, 2026.71, -2073.57, 18), (123, 2666.71, -962.568, 2794.71, -861.568, 16), (124, 2794.71, -962.568, 2922.71, -861.568, 16), (125, 1898.71, -2073.57, 2026.71, -1971.57, 18), (126, 2026.71, -2073.57, 2154.71, -1972.57, 18), (127, 1642.71, -1972.57, 1770.71, -1871.57, 18), (128, 1770.71, -1972.57, 1898.71, -1871.57, 18), (129, 1642.71, -1871.57, 1770.71, -1770.57, 18);

-- Table structure for table `gates`
CREATE TABLE IF NOT EXISTS `gates` (`ID` int NOT NULL, `Faction` int NOT NULL DEFAULT '0', `Model` int NOT NULL, `Radius` float NOT NULL DEFAULT '2.5', `Speed` float NOT NULL DEFAULT '1', `OpenedPos` varchar(256) NOT NULL, `ClosedPos` varchar(256) NOT NULL, `World` int NOT NULL DEFAULT '-1', `Interior` int NOT NULL DEFAULT '-1', `Author` varchar(256) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `gates`
INSERT INTO `gates` (`ID`, `Faction`, `Model`, `Radius`, `Speed`, `OpenedPos`, `ClosedPos`, `World`, `Interior`, `Author`)
VALUES (1, 3, 19906, 5, 1, '1318.55, -883.91, 41.85, -87.50, 0.00, 90.00, ', '1320.05, -883.91, 41.80, 0.00, 0.00, 90.00, ', 0, 0, 'macr0n'), (2, 3, 19906, 5, 1, '1318.55, -874.91, 41.85, -87.50, 0.00, 90.00, ', '1320.05, -874.91, 41.80, 0.00, 0.00, 90.00, ', 0, 0, 'macr0n'), (3, 3, 19906, 5, 1, '1318.55, -865.91, 41.85, -87.50, 0.00, 90.00, ', '1320.05, -865.91, 41.80, 0.00, 0.00, 90.00, ', 0, 0, 'macr0n'), (4, 3, 19906, 5, 1, '1318.55, -856.91, 41.85, -87.50, 0.00, 90.00, ', '1320.05, -856.91, 41.80, 0.00, 0.00, 90.00, ', 0, 0, 'macr0n'), (5, 2, 968, 7.5, 0.25, '1544.69, -1630.78, 13.09, 0.00, 0.00, -90.00, ', '1544.69, -1630.99, 13.16, 0.00, -90.00, -90.00, ', 0, 0, 'macr0n'), (6, 2, 19906, 5, 1, '1553.93, -1616.86, 15.83, -87.50, 0.00, 0.00, ', '1553.93, -1618.39, 15.77, 0.00, 0.00, 0.00, ', 0, 0, 'macr0n'), (7, 2, 19906, 5, 1, '1562.93, -1616.86, 15.83, -87.50, 0.00, 0.00, ', '1562.93, -1618.39, 15.77, 0.00, 0.00, 0.00, ', 0, 0, 'macr0n'), (8, 2, 19906, 5, 1, '1594.60, -1616.86, 15.83, -87.50, 0.00, 0.00, ', '1594.60, -1618.39, 15.77, 0.00, 0.00, 0.00, ', 0, 0, 'danang'), (9, 2, 19906, 5, 1, '1603.60, -1616.86, 15.83, -87.50, 0.00, 0.00, ', '1603.60, -1618.39, 15.77, 0.00, 0.00, 0.00, ', 0, 0, 'danang'), (10, 1, 1495, 2, 0.025, '1958.31, 1885.66, 2517.95, 0.00, 0.00, -24.10, ', '1958.32, 1885.65, 2517.95, 0.00, 0.00, -90.09, ', 9, 4, 'macr0n'), (11, 2, 1495, 2.5, 0.025, '1582.60, -1638.09, 12.37, 0.00, 0.00, 89.99, ', '1582.60, -1638.10, 12.37, 0.00, 0.00, 0.00, ', 0, 0, 'macr0n'), (12, 2, 19302, 2.5, 1.5, '1366.77, -823.30, 1080.80, 0.00, 0.00, -0.00, ', '1368.19, -823.31, 1080.80, 0.00, 0.00, 0.01, ', 15, 4, 'macr0n'), (13, 2, 3055, 5, 1, '1588.50, -1638.73, 16.55, 89.98, 0.00, 0.00, ', '1588.54, -1638.25, 14.52, 0.00, 0.00, 0.00, ', 0, 0, 'macr0n'), (14, 2, 19302, 2.5, 1.5, '1371.38, -823.30, 1080.81, 0.00, 0.00, 0.00, ', '1372.83, -823.30, 1080.80, 0.00, 0.00, 0.00, ', 15, 4, 'macr0n');

-- Table structure for table `graffity`
CREATE TABLE IF NOT EXISTS `graffity` (`gID` int NOT NULL, `gGang` int NOT NULL, `coor0` float NOT NULL, `coor1` float NOT NULL, `coor2` float NOT NULL, `coor3` float NOT NULL, `coor4` float NOT NULL, `coor5` float NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Dumping data for table `graffity`
INSERT INTO `graffity` (`gID`, `gGang`, `coor0`, `coor1`, `coor2`, `coor3`, `coor4`, `coor5`)
VALUES (1, 6, 2195.66, -1822.36, 13.6997, 0, 0, 178.4), (2, 6, 2309.01, -1814.52, 14.1468, -1.1, 0, 92.3), (3, 20, 2452.21, -1833.96, 3.24463, 0, 33.1, 87.9), (4, 19, 2614.25, -1828.42, 2.64926, 0, 38.6, 0), (5, 19, 2738.98, -1832.27, 11.9953, 0, 0, 174.9), (109, 20, 2812.98, -2025.34, 11.3718, 0, 0, -179.7), (110, 0, 2801.68, -1951.61, 14.4269, 0, 0, -179.8), (117, 20, 1999.02, -1919.84, 14.1069, 0, 0, -179.9), (118, 0, 1828.01, -1811.98, 4.80438, 0, 0, -104.3), (119, 19, 1917.96, -1786.48, 14.2806, 0, 0, 86.4), (120, 0, 2113.61, -1822.33, 14.0768, 0, 0, 90.6);

-- Table structure for table `greenzone`
CREATE TABLE IF NOT EXISTS `greenzone` (`id` int NOT NULL, `grx` float NOT NULL, `gry` float NOT NULL, `grz` float NOT NULL, `grd` float NOT NULL, `grname` varchar(64) NOT NULL, `grvirt` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = cp1251;

-- Dumping data for table `greenzone`
INSERT INTO `greenzone` (`id`, `grx`, `gry`, `grz`, `grd`, `grname`, `grvirt`)
VALUES (1, 1783.33, -1893.75, 13.3917, 65, '', 0), (2, 826.478, 3.54707, 1004.18, 15, 'центр развлечений', 200), (3, 1481.56, -1724.74, 13.5469, 30, 'мэрия', 0), (4, 2041.38, 1731.49, 1026.75, 14, 'мэрия2', 4), (5, 14.2446, 1400.93, 1069.35, 18, 'стройка куча', 43), (44, 2390.65, -2547.05, 13.6641, 20, 'конт-2', 0), (45, 2390, -2594.35, 13.6641, 20, 'конт-3', 0), (46, 2392.21, -2559.06, 13.6641, 40, 'конт-4', 0), (51, 386.991, -1913.24, 7.83594, 60, 'рынок', 0), (53, 1763.18, -1894.21, 13.588, 100, 'AAAAAAAAAAAA', 0);

-- Table structure for table `houses`
CREATE TABLE IF NOT EXISTS `houses` (`id` int NOT NULL, `ownerid` int NOT NULL DEFAULT '0', `price` int NOT NULL DEFAULT '0', `class` int NOT NULL DEFAULT '0', `garage` int NOT NULL DEFAULT '0', `basement` int NOT NULL DEFAULT '0', `hint` int NOT NULL DEFAULT '0', `close` tinyint (1) NOT NULL DEFAULT '0', `day` int NOT NULL DEFAULT '0', `x` float NOT NULL DEFAULT '0', `y` float NOT NULL DEFAULT '0', `z` float NOT NULL DEFAULT '0', `r` float NOT NULL DEFAULT '0', `parkx` float NOT NULL DEFAULT '0', `parky` float NOT NULL DEFAULT '0', `parkz` float NOT NULL DEFAULT '0', `parkr` float NOT NULL DEFAULT '0', `peopleid1` int NOT NULL DEFAULT '0', `peopleid2` int NOT NULL DEFAULT '0', `peopleid3` int NOT NULL DEFAULT '0', `people1` varchar(24) CHARACTER
	SET cp1251 COLLATE cp1251_bin DEFAULT NULL, `people2` varchar(24) CHARACTER
	SET cp1251 COLLATE cp1251_bin DEFAULT NULL, `people3` varchar(24) CHARACTER
	SET cp1251 COLLATE cp1251_bin DEFAULT NULL, `family` int NOT NULL DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = cp1251 COLLATE = cp1251_bin;

-- Dumping data for table `houses`
INSERT INTO `houses` (`id`, `ownerid`, `price`, `class`, `garage`, `basement`, `hint`, `close`, `day`, `x`, `y`, `z`, `r`, `parkx`, `parky`, `parkz`, `parkr`, `peopleid1`, `peopleid2`, `peopleid3`, `people1`, `people2`, `people3`, `family`)
VALUES (3, 0, 30000, 0, 0, 0, 9, 0, 1635328706, 2297.63, -1053.16, 49.93, 161.29, 2305.53, -1057.54, 49.58, 0, 0, 0, 0, '', '', '', 0), (4, 0, 41250, 0, 0, 0, 39, 0, 1628353850, 2284.01, -1046.12, 49.88, 150.76, 2279.52, -1048.99, 49.14, 0, 0, 0, 0, '', '', '', 0), (393, 0, 412500, 1, 0, 0, 23, 0, 1671589307, 766.65, -556.66, 18.01, 3.08, 771.64, -549.66, 16.78, 0, 0, 0, 0, '', '', '', 0), (394, 0, 412500, 1, 0, 0, 19, 0, 1632484528, 745.18, -556.78, 18.01, 7.18, 750.26, -549.79, 16.79, 0, 0, 0, 0, '', '', '', 0), (395, 0, 412500, 1, 0, 0, 33, 0, 1631559527, 745.56, -590.94, 18.01, 83.84, 748.88, -582.31, 16.92, 0, 0, 0, 0, '', '', '', 0), (396, 0, 150000, 1, 0, 0, 24, 0, 1635699815, 1111.51, -976.44, 42.76, 359.76, 1115.29, -963.26, 42.46, 0, 0, 0, 0, '', '', '', 0), (431, 0, 123123, 2, 1, 0, 18, 0, 0, 2221.95, -1441.34, 24, 90, 2220.86, -1431.06, 24, 90, 0, 0, 0, NULL, NULL, NULL, 0);

-- Table structure for table `house_car`
CREATE TABLE IF NOT EXISTS `house_car` (`id` int NOT NULL, `owner` varchar(24) CHARACTER
	SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'None', `color_one` int NOT NULL DEFAULT '1', `color_two` int NOT NULL DEFAULT '1', `x` float NOT NULL DEFAULT '0', `y` float NOT NULL DEFAULT '0', `z` float NOT NULL DEFAULT '0', `angle` float NOT NULL DEFAULT '0', `interior` int NOT NULL DEFAULT '0', `world` int NOT NULL DEFAULT '0', `parked` int NOT NULL DEFAULT '0', `vehcom_1` int NOT NULL DEFAULT '0', `vehcom_2` int NOT NULL DEFAULT '0', `vehcom_3` int NOT NULL DEFAULT '0', `vehcom_4` int NOT NULL DEFAULT '0', `vehcom_5` int NOT NULL DEFAULT '0', `vehcom_6` int NOT NULL DEFAULT '0', `vehcom_7` int NOT NULL DEFAULT '0', `vehcom_8` int NOT NULL DEFAULT '0', `vehcom_9` int NOT NULL DEFAULT '0', `vehcom_10` int NOT NULL DEFAULT '0', `vehcom_11` int NOT NULL DEFAULT '0', `vehcom_12` int NOT NULL DEFAULT '0', `vehcom_13` int NOT NULL DEFAULT '0', `vehcom_14` int NOT NULL DEFAULT '0', `paintjob` int NOT NULL DEFAULT '-1', `gun` varchar(65) CHARACTER
	SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0', `drugs` int NOT NULL DEFAULT '0', `medkit` int NOT NULL DEFAULT '0', `safemoney` int NOT NULL DEFAULT '0', `day` int NOT NULL DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Дом на колесах';

-- Dumping data for table `house_car`
INSERT INTO `house_car` (`id`, `owner`, `color_one`, `color_two`, `x`, `y`, `z`, `angle`, `interior`, `world`, `parked`, `vehcom_1`, `vehcom_2`, `vehcom_3`, `vehcom_4`, `vehcom_5`, `vehcom_6`, `vehcom_7`, `vehcom_8`, `vehcom_9`, `vehcom_10`, `vehcom_11`, `vehcom_12`, `vehcom_13`, `vehcom_14`, `paintjob`, `gun`, `drugs`, `medkit`, `safemoney`, `day`)
VALUES (259, 'Ivan_Skilev', 1, 1, 204.57, -273.83, 1.93, 92.34, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, '0|0|0|0|0|0|0|0|0', 0, 0, 0, 1662328233), (260, 'Xavier_Blackwood', 1, 1, 1546.68, -1025.79, 24.26, 344.53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, '0|0|0|0|0|0|0|0|0', 0, 0, 0, 1671919210), (261, 'Jason_Hernandez', 1, 1, 1576.48, -1011.64, 24.26, 181.29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, '0|0|0|0|0|0|0|0|0', 0, 0, 0, 1678416901);

-- Table structure for table `invent_log`
CREATE TABLE IF NOT EXISTS `invent_log` (`id` int NOT NULL, `Name` varchar(24) NOT NULL DEFAULT 'None', `item` varchar(64) CHARACTER
	SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'None', `amount` int NOT NULL, `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- Dumping data for table `invent_log`
INSERT INTO `invent_log` (`id`, `Name`, `item`, `amount`, `date`)
VALUES (1, 'Mirrox_Xanax', 'Отмычка', 5, '2021-09-20 09:04:25'), (2, 'Mirrox_Xanax', 'Аптечка', 100, '2021-09-20 10:00:56'), (3, 'Mirrox_Xanax', 'Маска', 5, '2021-09-20 12:26:18'), (4, 'Mirrox_Xanax', 'Отмычка', 3, '2021-09-20 12:26:20'), (5, 'Mirrox_Xanax', 'Колпак (донат)', 1, '2021-09-20 15:23:53'), (4556, 'Jacob_Gerkens', 'Телефон', 1, '2024-01-27 18:06:11'), (4557, 'Jacob_Gerkens', 'Содова', 1, '2024-02-03 19:53:49');

-- Table structure for table `jobinfo`
CREATE TABLE IF NOT EXISTS `jobinfo` (`id` int NOT NULL, `uid` int NOT NULL, `rank` int NOT NULL DEFAULT '0', `faction` int NOT NULL DEFAULT '0', `warnings` int NOT NULL DEFAULT '0', `date_invite` date NOT NULL, `date_uninvite` date NOT NULL, `reason` varchar(64) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Dumping data for table `jobinfo`
INSERT INTO `jobinfo` (`id`, `uid`, `rank`, `faction`, `warnings`, `date_invite`, `date_uninvite`, `reason`)
VALUES (1, 6, 7, 5, 0, '2021-03-19', '2021-03-19', 'Снят с поста лидера'), (4451, 52, 7, 2, 0, '2023-06-27', '2023-07-31', 'Власне бажання'), (4452, 52, 18, 2, 0, '2023-06-27', '2024-01-28', 'Власне бажання');

-- Table structure for table `logs`
CREATE TABLE IF NOT EXISTS `logs` (`ID` int NOT NULL, `Date` datetime NOT NULL, `Action` int NOT NULL, `Name` varchar(256) NOT NULL, `Value` varchar(256) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `logs`
INSERT INTO `logs` (`ID`, `Date`, `Action`, `Name`, `Value`)
VALUES (1, '2022-11-07 00:00:00', 13, 'Xavier_Blackwood', 'Xavier_Blackwood'), (1985, '2021-09-22 00:00:00', 0, 'Andrei_Mix', '100000'), (1986, '2021-09-22 00:00:00', 0, 'Diego_Briggs', '1'), (1987, '2021-09-22 00:00:00', 0, 'Shimmer_Briggs', '-1'), (1988, '2021-09-22 00:00:00', 0, 'Amirka_Howkins', '-2250'), (84989, '2023-06-12 00:00:00', 1, 'Name_Surname', '150'), (84990, '2023-06-12 00:00:00', 1, 'Rick_Slay', '1000'), (84991, '2023-06-12 00:00:00', 11, 'Brian_Randall', 'Brian_Randall');

-- Table structure for table `log_zone`
CREATE TABLE IF NOT EXISTS `log_zone` (`Name` varchar(24) NOT NULL, `band_old` int NOT NULL, `band_new` int NOT NULL, `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- Dumping data for table `log_zone`
INSERT INTO `log_zone` (`Name`, `band_old`, `band_new`, `date`)
VALUES ('Mirrox_Xanax', 21, 20, '2021-10-18 19:46:04'), ('Mirrox_Xanax', 21, 20, '2021-10-18 19:46:08'), ('Mirrox_Xanax', 18, 19, '2021-10-18 19:53:41'), ('Ivan_Skilev', 20, 19, '2022-08-25 17:23:27');

-- Table structure for table `lotto`
CREATE TABLE IF NOT EXISTS `lotto` (`id` int NOT NULL, `bilet` int NOT NULL, `money` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `lotto`
INSERT INTO `lotto` (`id`, `bilet`, `money`)
VALUES (1, 0, 0);

-- Table structure for table `lottob`
CREATE TABLE IF NOT EXISTS `lottob` (`id` int NOT NULL, `lotto` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Table structure for table `market`
CREATE TABLE IF NOT EXISTS `market` (`id` int NOT NULL, `Name` varchar(24) NOT NULL, `item` int NOT NULL DEFAULT '0', `ammout` int NOT NULL DEFAULT '0', `cash` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- Dumping data for table `market`
INSERT INTO `market` (`id`, `Name`, `item`, `ammout`, `cash`)
VALUES (10, 'Jacob_Gerkens', 460, 1, 1000);

-- Table structure for table `objects`
CREATE TABLE IF NOT EXISTS `objects` (`ID` int NOT NULL, `Model` int NOT NULL, `Position` varchar(256) NOT NULL, `Author` varchar(24) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `objects`
INSERT INTO `objects` (`ID`, `Model`, `Position`, `Author`)
VALUES (1, 1271, '-531.002197, -64.958267, 1801.638183, 0.000000, 0.000000, 0.000000, ', 'Brian_Randall');

-- Table structure for table `online_player`
CREATE TABLE IF NOT EXISTS `online_player` (`id` int NOT NULL, `accountid` int NOT NULL, `date` date NOT NULL, `online_sec` int NOT NULL DEFAULT '0', `afk_sec` int NOT NULL DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = cp1251;

-- Dumping data for table `online_player`
INSERT INTO `online_player` (`id`, `accountid`, `date`, `online_sec`, `afk_sec`)
VALUES (1, 3, '2021-03-19', 11596, 4112), (17684, 0, '2024-02-03', 28, 4);

-- Table structure for table `others`
CREATE TABLE IF NOT EXISTS `others` (`id` int NOT NULL, `bonus_payday` int NOT NULL DEFAULT '1', `gun_mats` int NOT NULL DEFAULT '0', `bonus_donate` int NOT NULL DEFAULT '0', `bonus_skills` int NOT NULL DEFAULT '0', `casino` int NOT NULL DEFAULT '0', `woodsklad` int NOT NULL DEFAULT '0', `tk_unloading_0` int NOT NULL DEFAULT '0', `tk_unloading_1` int NOT NULL DEFAULT '0', `tk_unloading_2` int NOT NULL DEFAULT '0', `tk_unloading_3` int NOT NULL DEFAULT '0', `invite_frac0` int NOT NULL DEFAULT '1', `invite_frac1` int NOT NULL DEFAULT '1', `invite_frac2` int NOT NULL DEFAULT '1', `invite_frac3` int NOT NULL DEFAULT '1', `invite_frac4` int NOT NULL DEFAULT '1', `invite_frac5` int NOT NULL DEFAULT '1', `invite_frac6` int NOT NULL DEFAULT '1', `invite_frac7` int NOT NULL DEFAULT '1', `bandidos_benz` int NOT NULL, `angels_benz` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Dumping data for table `others`
INSERT INTO `others` (`id`, `bonus_payday`, `gun_mats`, `bonus_donate`, `bonus_skills`, `casino`, `woodsklad`, `tk_unloading_0`, `tk_unloading_1`, `tk_unloading_2`, `tk_unloading_3`, `invite_frac0`, `invite_frac1`, `invite_frac2`, `invite_frac3`, `invite_frac4`, `invite_frac5`, `invite_frac6`, `invite_frac7`, `bandidos_benz`, `angels_benz`)
VALUES (1, 1, 603062, 0, 1, 1, 7859, 1000, 760, 850, 850, 1, 1, 1, 1, 1, 1, 1, 1, 5000, 5000);

-- Table structure for table `phone_contacts`
CREATE TABLE IF NOT EXISTS `phone_contacts` (`cID` int NOT NULL, `Contact` varchar(40) NOT NULL, `Number` int NOT NULL, `IsFavorite` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `phone_contacts`
INSERT INTO `phone_contacts` (`cID`, `Contact`, `Number`, `IsFavorite`)
VALUES (52, 'nazar', 2312312, 0), (47, 'макрончік', 3323321, 0);

-- Table structure for table `phone_messages`
CREATE TABLE IF NOT EXISTS `phone_messages` (`Sender` int DEFAULT NULL, `Recipient` int DEFAULT NULL, `Message` varchar(40) NOT NULL, `time` int NOT NULL, `read` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `phone_messages`
INSERT INTO `phone_messages` (`Sender`, `Recipient`, `Message`, `time`, `read`)
VALUES (3323321, 2312312, 'hello world', 1706423617, 0), (2312312, 3323321, 'fghjk', 1706423763, 0), (2312312, 3323321, 'jjuj', 1706423994, 0), (2312312, 3323321, 'hyhy]', 1706423998, 0), (2312312, 3323321, 'hyhy', 1706424000, 0), (2312312, 3323321, 'hyhy', 1706424002, 0), (3323321, 2312312, 'sd', 1706428534, 1), (3323321, 2312312, 's', 1706428534, 1);

-- Table structure for table `phone_notifications`
CREATE TABLE IF NOT EXISTS `phone_notifications` (`cID` int NOT NULL, `Type` int NOT NULL, `Text` varchar(40) NOT NULL, `time` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Table structure for table `phone_settings`
CREATE TABLE IF NOT EXISTS `phone_settings` (`ID` int NOT NULL, `OwnerID` int DEFAULT NULL, `Status` int DEFAULT '0', `DesktopColor` int DEFAULT '7', `Ringtone` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `phone_settings`
INSERT INTO `phone_settings` (`ID`, `OwnerID`, `Status`, `DesktopColor`, `Ringtone`)
VALUES (3, 47, 0, 0, 20804), (4, 52, 0, 2, 20600), (5, 52, 0, 2, 20600);

-- Table structure for table `pickups`
CREATE TABLE IF NOT EXISTS `pickups` (`ID` int NOT NULL, `Type` int NOT NULL DEFAULT '1', `Text` varchar(256) NOT NULL DEFAULT 'Пікап', `Model` int NOT NULL DEFAULT '1318', `Faction` int DEFAULT '0', `X` float NOT NULL DEFAULT '0', `Y` float NOT NULL DEFAULT '0', `Z` float NOT NULL DEFAULT '0', `World` int NOT NULL DEFAULT '0', `Interior` int NOT NULL DEFAULT '0', `tpX` float NOT NULL DEFAULT '0', `tpY` float NOT NULL DEFAULT '0', `tpZ` float NOT NULL DEFAULT '0', `tpAngle` float NOT NULL DEFAULT '0', `tpWorld` int NOT NULL DEFAULT '0', `tpInt` int NOT NULL DEFAULT '0') ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `pickups`
INSERT INTO `pickups` (`ID`, `Type`, `Text`, `Model`, `Faction`, `X`, `Y`, `Z`, `World`, `Interior`, `tpX`, `tpY`, `tpZ`, `tpAngle`, `tpWorld`, `tpInt`)
VALUES (1, 0, 'Мерія', 1318, 0, 1481.05, -1772.43, 18.8, 0, 0, 1972.34, 1337.07, 2515.56, 0, 9, 4), (2, 1, 'Вихід', 1318, 0, 1972.32, 1336.45, 2515.56, 9, 4, 1481.05, -1771.5, 18.8, 0, 0, 0), (176, 0, 'Склад товарів', 19134, 0, 167.067, -44.5839, 1.5781, 0, 0, 0, 0, 0, 0, 0, 0);

-- Table structure for table `priz`
CREATE TABLE IF NOT EXISTS `priz` (`id` int NOT NULL, `accid` int NOT NULL DEFAULT '0', `prize` int NOT NULL DEFAULT '0', `type` int NOT NULL DEFAULT '0', `cash` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Dumping data for table `priz`
INSERT INTO `priz` (`id`, `accid`, `prize`, `type`, `cash`)
VALUES (6, 4, 1, 2, 228), (15, 4, 2, 2, 228), (28, 4, 4, 2, 228), (51, 142, 2, 2, 75000), (58, 188, 0, 8, 200000), (79, 2183, 108, 1, 35000), (159, 2319, 4, 2, 56000), (239, 2362, 4, 2, 56000), (361, 97, 2, 7, 45000), (369, 97, 2, 2, 75000), (453, 3297, 44, 1, 30000), (477, 3220, 100, 1, 15000), (569, 435, 4, 2, 56000), (603, 2784, 404, 5, 80000), (777, 153, 38, 1, 20000), (1155, 155, 125, 1, 210000), (1157, 155, 38, 1, 20000), (1473, 155, 100, 1, 15000), (1483, 155, 44, 1, 30000), (1663, 114, 1, 2, 40000), (1803, 114, 217, 3, 110000), (2323, 4340, 1, 2, 40000), (2462, 2196, 1, 2, 40000), (3833, 4790, 4, 2, 56000), (4124, 5512, 44, 1, 30000), (4268, 4340, 2, 2, 75000), (4375, 120, 1, 2, 40000), (4444, 5579, 6, 1, 25000), (5292, 2190, 123, 1, 220000), (5370, 5506, 4, 2, 56000), (5439, 3325, 123, 1, 220000), (5503, 5506, 125, 1, 210000), (5568, 5506, 128, 1, 300000), (5572, 5506, 131, 1, 50000), (5614, 5580, 100, 1, 15000), (5640, 5506, 217, 3, 110000), (5641, 5506, 131, 1, 50000), (5746, 1935, 123, 1, 220000), (5747, 15, 0, 5, 80000), (5748, 15, 3, 6, 30000);

-- Table structure for table `prods`
CREATE TABLE IF NOT EXISTS `prods` (`id` int NOT NULL, `business` int NOT NULL, `type` int NOT NULL, `amount` int NOT NULL, `cena_prod` int NOT NULL, `status` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Dumping data for table `prods`
INSERT INTO `prods` (`id`, `business`, `type`, `amount`, `cena_prod`, `status`)
VALUES (1, 40, 6, 2000, 4, 0), (2, 26, 7, 2000, 4, 0);

-- Table structure for table `promocode`
CREATE TABLE IF NOT EXISTS `promocode` (`code` varchar(32) NOT NULL, `money` int NOT NULL, `skills` int NOT NULL, `lics` int NOT NULL, `data` datetime NOT NULL, `Name` varchar(32) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `promocode`
INSERT INTO `promocode` (`code`, `money`, `skills`, `lics`, `data`, `Name`)
VALUES ('Randall', 50000, 1, 0, '0000-00-00 00:00:00', 'Brian_Randall');

-- Table structure for table `promocode_used`
CREATE TABLE IF NOT EXISTS `promocode_used` (`idacca` int NOT NULL, `code` varchar(32) NOT NULL, `used_count` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `promocode_used`
INSERT INTO `promocode_used` (`idacca`, `code`, `used_count`)
VALUES (2, 'Randall', 0);

-- Table structure for table `questsprogress`
CREATE TABLE IF NOT EXISTS `questsprogress` (`idquest` int NOT NULL, `progress` int NOT NULL, `accept` int NOT NULL, `name` varchar(24) NOT NULL, `day` int NOT NULL, `hallow` int NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Dumping data for table `questsprogress`
INSERT INTO `questsprogress` (`idquest`, `progress`, `accept`, `name`, `day`, `hallow`)
VALUES (1, 0, 1, 'Farmerr', 0, 0), (1, 100, 1, 'Sasha_Cretsan', 0, 0), (2, 5, 1, 'Sasha_Cretsan', 0, 0);

-- Table structure for table `roulette_prizes`
CREATE TABLE IF NOT EXISTS `roulette_prizes` (`id` int NOT NULL, `player_name` varchar(32) NOT NULL, `name` varchar(42) NOT NULL, `model` int NOT NULL, `type` int NOT NULL, `arrayid` int NOT NULL, `date` varchar(128) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

-- Dumping data for table `roulette_prizes`
INSERT INTO `roulette_prizes` (`id`, `player_name`, `name`, `model`, `type`, `arrayid`, `date`)
VALUES (6, 'Rick_Slay', 'CLOTHER(294)', 294, 7, 41, '2022.12.11 | 12:38:17'), (7, 'Mikky_Strange', '+2 LEVEL', 2, 4, 49, '2022.12.29 | 0:04:07'), (8, 'Xavier_Blackwood', '30 uah', 30, 2, 5, '2023.02.4 | 0:09:54');

-- Table structure for table `tickets`
CREATE TABLE IF NOT EXISTS `tickets` (	`id` int NOT NULL, `name` varchar(32) DEFAULT NULL, `officer` varchar(32) DEFAULT NULL, `total` int DEFAULT NULL, `reason` varchar(150) DEFAULT NULL, `date` int DEFAULT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `tickets`
INSERT INTO `tickets` (`id`, `name`, `officer`, `total`, `reason`, `date`)
VALUES (12, 'Brian_Randall', 'Jacob_Gerkens', 150, 'Невиконання вимог', 1688064168), (13, 'Brian_Randall', 'Jacob_Gerkens', 300, 'Проїзд на червоне світло', 1688064169), (14, 'Brian_Randall', 'Jacob_Gerkens', 50, 'Перехід у невстановленому місці', 1688064171), (15, 'Brian_Randall', 'Jacob_Gerkens', 200, 'Незакріплений вантаж', 1688064174);

-- Table structure for table `wanted`
CREATE TABLE IF NOT EXISTS `wanted` (`id` int NOT NULL, `name` varchar(32) DEFAULT NULL, `officer` varchar(32) DEFAULT NULL, `total` int DEFAULT NULL, `reason` varchar(150) DEFAULT NULL, `date` int DEFAULT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Dumping data for table `wanted`
INSERT INTO `wanted` (`id`, `name`, `officer`, `total`, `reason`, `date`)
VALUES (12, 'Brian_Randall', 'Jacob_Gerkens', 150, 'Невиконання вимог', 1688064168), (13, 'Brian_Randall', 'Jacob_Gerkens', 300, 'Проїзд на червоне світло', 1688064169), (14, 'Brian_Randall', 'Jacob_Gerkens', 50, 'Перехід у невстановленому місці', 1688064171), (15, 'Brian_Randall', 'Jacob_Gerkens', 200, 'Незакріплений вантаж', 1688064174);

-- Table structure for table `transport`
CREATE TABLE IF NOT EXISTS `transport` (`ID` int NOT NULL, `Model` int NOT NULL, `Name` varchar(35) NOT NULL, `Price` int NOT NULL, `Tank` int NOT NULL, `Consumption` int NOT NULL, `Class` int NOT NULL, `Fuelable` tinyint (1) NOT NULL DEFAULT '1', `Sellable` tinyint (1) NOT NULL DEFAULT '1') ENGINE = InnoDB DEFAULT CHARSET = utf8mb3 ROW_FORMAT = DYNAMIC;

-- Dumping data for table `transport`
INSERT INTO `transport` (`ID`, `Model`, `Name`, `Price`, `Tank`, `Consumption`, `Class`, `Fuelable`, `Sellable`)
VALUES (1, 400, 'Landstalker', 150000, 80, 8, 1, 1, 1), (2, 401, 'Bravura', 30000, 40, 6, 0, 1, 1), (3, 402, 'Buffalo', 900000, 50, 15, 2, 1, 1), (4, 403, 'Linerunner', 0, 140, 12, 9, 1, 0), (5, 404, 'Perenniel', 19000, 40, 6, 0, 1, 1), (6, 405, 'Sentinel', 160000, 50, 7, 1, 1, 1), (7, 406, 'Dumper', 0, 200, 12, 9, 1, 0), (212, 611, 'Utility Trailer', 0, 0, 0, 9, 0, 0);

-- Table structure for table `user`
CREATE TABLE IF NOT EXISTS `user` (`name` varchar(256) NOT NULL, `email` varchar(256) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Indexes for table `accounts`
ALTER TABLE `accounts` ADD PRIMARY KEY (`pID`);

-- Indexes for table `actors`
ALTER TABLE `actors` ADD PRIMARY KEY (`id`);

-- Indexes for table `admins`
ALTER TABLE `admins` ADD PRIMARY KEY (`id`);

-- Indexes for table `anticheats`
ALTER TABLE `anticheats` ADD PRIMARY KEY (`chID`);

-- Indexes for table `apartment`
ALTER TABLE `apartment` ADD PRIMARY KEY (`id`);

-- Indexes for table `atms`
ALTER TABLE `atms` ADD PRIMARY KEY (`ID`);

-- Indexes for table `ban`
ALTER TABLE `ban` ADD PRIMARY KEY (`ID`);

-- Indexes for table `banip`
ALTER TABLE `banip` ADD PRIMARY KEY (`id`);

-- Indexes for table `bank_accounts`
ALTER TABLE `bank_accounts` ADD PRIMARY KEY (`ID`);

-- Indexes for table `betting_odds`
ALTER TABLE `betting_odds` ADD PRIMARY KEY (`id`);

-- Indexes for table `betting_results`
ALTER TABLE `betting_results` ADD PRIMARY KEY (`id`);

-- Indexes for table `betting_sports`
ALTER TABLE `betting_sports` ADD PRIMARY KEY (`id`);

-- Indexes for table `billboards`
ALTER TABLE `billboards` ADD PRIMARY KEY (`newid`);

-- Indexes for table `bints`
ALTER TABLE `bints` ADD PRIMARY KEY (`sid`);

-- Indexes for table `blackmarket`
ALTER TABLE `blackmarket` ADD PRIMARY KEY (`id`);

-- Indexes for table `business`
ALTER TABLE `business` ADD PRIMARY KEY (`id`);

-- Indexes for table `business_actors`
ALTER TABLE `business_actors` ADD PRIMARY KEY (`ID`);

-- Indexes for table `business_articles`
ALTER TABLE `business_articles` ADD PRIMARY KEY (`ID`);

-- Indexes for table `business_default_articles`
ALTER TABLE `business_default_articles` ADD PRIMARY KEY (`ID`);

-- Indexes for table `business_interior`
ALTER TABLE `business_interior` ADD PRIMARY KEY (`ID`);

-- Indexes for table `business_new`
ALTER TABLE `business_new` ADD PRIMARY KEY (`ID`);

-- Indexes for table `business_objects`
ALTER TABLE `business_objects` ADD PRIMARY KEY (`ID`);

-- Indexes for table `business_places`
ALTER TABLE `business_places` ADD PRIMARY KEY (`ID`);

-- Indexes for table `business_staff`
ALTER TABLE `business_staff` ADD PRIMARY KEY (`ID`);

-- Indexes for table `business_stats`
ALTER TABLE `business_stats` ADD PRIMARY KEY (`ID`);

-- Indexes for table `bus_description`
ALTER TABLE `bus_description` ADD PRIMARY KEY (`ID`);

-- Indexes for table `bus_rating`
ALTER TABLE `bus_rating` ADD PRIMARY KEY (`ID`);

-- Indexes for table `bus_routes`
ALTER TABLE `bus_routes` ADD PRIMARY KEY (`ID`);

-- Indexes for table `calls`
ALTER TABLE `calls` ADD PRIMARY KEY (`ID`);

-- Indexes for table `captchalog`
ALTER TABLE `captchalog` ADD PRIMARY KEY (`clID`);

-- Indexes for table `cars`
ALTER TABLE `cars` ADD PRIMARY KEY (`id`);

-- Indexes for table `characters`
ALTER TABLE `characters` ADD PRIMARY KEY (`cID`);

-- Indexes for table `diplomation`
ALTER TABLE `diplomation` ADD PRIMARY KEY (`f_id`);

-- Indexes for table `economy`
ALTER TABLE `economy` ADD PRIMARY KEY (`id`);

-- Indexes for table `email_success`
ALTER TABLE `email_success` ADD PRIMARY KEY (`id`);

-- Indexes for table `factions`
ALTER TABLE `factions` ADD PRIMARY KEY (`ID`);

-- Indexes for table `faction_fleets`
ALTER TABLE `faction_fleets` ADD PRIMARY KEY (`ID`);

-- Indexes for table `faction_ranks`
ALTER TABLE `faction_ranks` ADD PRIMARY KEY (`ID`);

-- Indexes for table `faction_skins`
ALTER TABLE `faction_skins` ADD PRIMARY KEY (`ID`);

-- Indexes for table `fake_promo`
ALTER TABLE `fake_promo` ADD PRIMARY KEY (`id`);

-- Indexes for table `family`
ALTER TABLE `family` ADD PRIMARY KEY (`id`);

-- Indexes for table `fires`
ALTER TABLE `fires` ADD PRIMARY KEY (`ID`);

-- Indexes for table `fires_objects`
ALTER TABLE `fires_objects` ADD PRIMARY KEY (`ID`);

-- Indexes for table `frac_weapon`
ALTER TABLE `frac_weapon` ADD PRIMARY KEY (`fwID`);

-- Indexes for table `gates`
ALTER TABLE `gates` ADD PRIMARY KEY (`ID`);

-- Indexes for table `graffity`
ALTER TABLE `graffity` ADD PRIMARY KEY (`gID`);

-- Indexes for table `greenzone`
ALTER TABLE `greenzone` ADD PRIMARY KEY (`id`);

-- Indexes for table `houses`
ALTER TABLE `houses` ADD PRIMARY KEY (`id`);

-- Indexes for table `house_car`
ALTER TABLE `house_car` ADD PRIMARY KEY (`id`);

-- Indexes for table `invent_log`
ALTER TABLE `invent_log` ADD PRIMARY KEY (`id`);

-- Indexes for table `jobinfo`
ALTER TABLE `jobinfo` ADD PRIMARY KEY (`id`);

-- Indexes for table `logs`
ALTER TABLE `logs` ADD PRIMARY KEY (`ID`);

-- Indexes for table `market`
ALTER TABLE `market` ADD PRIMARY KEY (`id`);

-- Indexes for table `objects`
ALTER TABLE `objects` ADD PRIMARY KEY (`ID`);

-- Indexes for table `online_player`
ALTER TABLE `online_player` ADD PRIMARY KEY (`id`);

-- Indexes for table `others`
ALTER TABLE `others` ADD PRIMARY KEY (`id`);

-- Indexes for table `phone_settings`
ALTER TABLE `phone_settings` ADD PRIMARY KEY (`ID`);

-- Indexes for table `pickups`
ALTER TABLE `pickups` ADD PRIMARY KEY (`ID`);

-- Indexes for table `priz`
ALTER TABLE `priz` ADD PRIMARY KEY (`id`);

-- Indexes for table `prods`
ALTER TABLE `prods` ADD PRIMARY KEY (`id`);

-- Indexes for table `roulette_prizes`
ALTER TABLE `roulette_prizes` ADD PRIMARY KEY (`id`);
-- Indexes for table `tickets`
ALTER TABLE `tickets` ADD PRIMARY KEY (`id`);

-- Indexes for table `wanted`
ALTER TABLE `wanted` ADD PRIMARY KEY (`id`);

-- Indexes for table `transport`
ALTER TABLE `transport` ADD PRIMARY KEY (`ID`);

-- AUTO_INCREMENT for dumped tables
--
-- AUTO_INCREMENT for table `accounts`
ALTER TABLE `accounts` MODIFY `pID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 35;

-- AUTO_INCREMENT for table `actors`
ALTER TABLE `actors` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 42;

-- AUTO_INCREMENT for table `admins`
ALTER TABLE `admins` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 77;

-- AUTO_INCREMENT for table `apartment`
ALTER TABLE `apartment` MODIFY `id` int NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for table `atms`
ALTER TABLE `atms` MODIFY `ID` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 8;

-- AUTO_INCREMENT for table `ban`
ALTER TABLE `ban` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 13;

-- AUTO_INCREMENT for table `banip`
ALTER TABLE `banip` MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for table `bank_accounts`
ALTER TABLE `bank_accounts` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 7;

-- AUTO_INCREMENT for table `betting_odds`
ALTER TABLE `betting_odds` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 104;

-- AUTO_INCREMENT for table `betting_results`
ALTER TABLE `betting_results` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 1043;

-- AUTO_INCREMENT for table `betting_sports`
ALTER TABLE `betting_sports` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 59;

-- AUTO_INCREMENT for table `billboards`
ALTER TABLE `billboards` MODIFY `newid` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 51;

-- AUTO_INCREMENT for table `bints`
ALTER TABLE `bints` MODIFY `sid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 33;

-- AUTO_INCREMENT for table `blackmarket`
ALTER TABLE `blackmarket` MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

-- AUTO_INCREMENT for table `business`
ALTER TABLE `business` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 63;

-- AUTO_INCREMENT for table `business_actors`
ALTER TABLE `business_actors` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 34;

-- AUTO_INCREMENT for table `business_articles`
ALTER TABLE `business_articles` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 152;

-- AUTO_INCREMENT for table `business_default_articles`
ALTER TABLE `business_default_articles` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 25;

-- AUTO_INCREMENT for table `business_interior`
ALTER TABLE `business_interior` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 15;

-- AUTO_INCREMENT for table `business_new`
ALTER TABLE `business_new` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 29;

-- AUTO_INCREMENT for table `business_objects`
ALTER TABLE `business_objects` MODIFY `ID` int NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for table `business_places`
ALTER TABLE `business_places` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 7;

-- AUTO_INCREMENT for table `business_staff`
ALTER TABLE `business_staff` MODIFY `ID` int NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for table `business_stats`
ALTER TABLE `business_stats` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 1540;

-- AUTO_INCREMENT for table `bus_description`
ALTER TABLE `bus_description` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 5;

-- AUTO_INCREMENT for table `bus_rating`
ALTER TABLE `bus_rating` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 4;

-- AUTO_INCREMENT for table `bus_routes`
ALTER TABLE `bus_routes` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 108;

-- AUTO_INCREMENT for table `calls`
ALTER TABLE `calls` MODIFY `ID` int NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for table `captchalog`
ALTER TABLE `captchalog` MODIFY `clID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 5945;

-- AUTO_INCREMENT for table `cars`
ALTER TABLE `cars` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 45;

-- AUTO_INCREMENT for table `characters`
ALTER TABLE `characters` MODIFY `cID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 71;

-- AUTO_INCREMENT for table `diplomation`
ALTER TABLE `diplomation` MODIFY `f_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 23;

-- AUTO_INCREMENT for table `economy`
ALTER TABLE `economy` MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

-- AUTO_INCREMENT for table `email_success`
ALTER TABLE `email_success` MODIFY `id` int NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for table `factions`
ALTER TABLE `factions` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 10;

-- AUTO_INCREMENT for table `faction_fleets`
ALTER TABLE `faction_fleets` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 51;

-- AUTO_INCREMENT for table `faction_ranks`
ALTER TABLE `faction_ranks` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 1070;

-- AUTO_INCREMENT for table `faction_skins`
ALTER TABLE `faction_skins` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 19;

-- AUTO_INCREMENT for table `fake_promo`
ALTER TABLE `fake_promo` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 13;

-- AUTO_INCREMENT for table `family`
ALTER TABLE `family` MODIFY `id` int NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for table `fires`
ALTER TABLE `fires` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

-- AUTO_INCREMENT for table `fires_objects`
ALTER TABLE `fires_objects` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 9;

-- AUTO_INCREMENT for table `frac_weapon`
ALTER TABLE `frac_weapon` MODIFY `fwID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 44;

-- AUTO_INCREMENT for table `gates`
ALTER TABLE `gates` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 15;

-- AUTO_INCREMENT for table `graffity`
ALTER TABLE `graffity` MODIFY `gID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 121;

-- AUTO_INCREMENT for table `greenzone`
ALTER TABLE `greenzone` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 54;

-- AUTO_INCREMENT for table `houses`
ALTER TABLE `houses` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 436;

-- AUTO_INCREMENT for table `house_car`
ALTER TABLE `house_car` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 262;

-- AUTO_INCREMENT for table `invent_log`
ALTER TABLE `invent_log` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 4558;

-- AUTO_INCREMENT for table `jobinfo`
ALTER TABLE `jobinfo` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 4453;

-- AUTO_INCREMENT for table `logs`
ALTER TABLE `logs` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 84992;

-- AUTO_INCREMENT for table `market`
ALTER TABLE `market` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 11;

-- AUTO_INCREMENT for table `objects`
ALTER TABLE `objects` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

-- AUTO_INCREMENT for table `online_player`
ALTER TABLE `online_player` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 17685;

-- AUTO_INCREMENT for table `others`
ALTER TABLE `others` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

-- AUTO_INCREMENT for table `phone_settings`
ALTER TABLE `phone_settings` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 6;

-- AUTO_INCREMENT for table `pickups`
ALTER TABLE `pickups` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 177;

-- AUTO_INCREMENT for table `priz`
ALTER TABLE `priz` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 5749;

-- AUTO_INCREMENT for table `prods`
ALTER TABLE `prods` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 3;

-- AUTO_INCREMENT for table `roulette_prizes`
ALTER TABLE `roulette_prizes` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 9;
-- AUTO_INCREMENT for table `tickets`
ALTER TABLE `tickets` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 16;

-- AUTO_INCREMENT for table `wanted`
ALTER TABLE `wanted` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 16;

-- AUTO_INCREMENT for table `transport`
ALTER TABLE `transport` MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 213;

COMMIT;