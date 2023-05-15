-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 01 2017 г., 12:13
-- Версия сервера: 5.5.25
-- Версия PHP: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `gambitrp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_transfer_money`
--

CREATE TABLE IF NOT EXISTS `admin_transfer_money` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `aName` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `uID` int(11) NOT NULL,
  `date` varchar(19) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sum` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID КОММЕНТАРИЯ',
  `news_id` int(11) NOT NULL COMMENT 'ID НОВОСТИ',
  `author` varchar(255) NOT NULL COMMENT 'АВТОР КОММЕНТРАРИЯ ',
  `text` text NOT NULL COMMENT 'ТЕКСТ КОММЕНТРАРИЯ',
  `time` bigint(20) NOT NULL COMMENT 'ВРЕМЯ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `news_id`, `author`, `text`, `time`) VALUES
(2, 9, 'Фроу', 'dGVzdCDCoFtiXXRlc3RbL2JdwqBbY29sb3I9I2ZmMDAwMF10ZXN0IMKgdGVzdMKgW2JddGVzdFsvYl3CoFtjb2xvcj0jZmYwMDAwXXRlc3QgwqB0ZXN0wqBbYl10ZXN0Wy9iXcKgW2NvbG9yPSNmZjAwMDBddGVzdCDCoHRlc3TCoFtiXXRlc3RbL2JdwqBbY29sb3I9I2ZmMDAwMF10ZXN0IMKgwqB0ZXN0wqBbYl10ZXN0Wy9iXcKgW2NvbG9yPSNmZjAwMDBddGVzdCDCoMKgdGVzdMKgW2JddGVzdFsvYl3CoFtjb2xvcj0jZmYwMDAwXXRlc3QgwqDCoHRlc3TCoFtiXXRlc3RbL2JdwqBbY29sb3I9I2ZmMDAwMF10ZXN0IMKgIMKgdGVzdMKgW2JddGVzdFsvYl3CoFtjb2xvcj0jZmYwMDAwXXRlc3RbL2NvbG9yXVsvY29sb3JdWy9jb2xvcl1bL2NvbG9yXVsvY29sb3JdWy9jb2xvcl1bL2NvbG9yXVsvY29sb3Jd', 1450159492),
(3, 9, 'Фроу', 'wqBbY29sb3I9I2ZmMDAwMF10ZXN0Wy9jb2xvcl0=', 1450159510),
(4, 9, 'Фроу', '0LDQsNCw0LDQsNCw0LDQsNCw0LA=', 1450170206),
(54, 0, 'Фроу', '', 1458404329),
(55, 0, 'Фроу', '', 1458404332),
(56, 0, 'Фроу', '', 1458404335),
(57, 0, 'Фроу', '', 1458404337),
(58, 0, 'Фроу', '', 1458404340),
(59, 0, 'Фроу', '', 1458404342),
(60, 0, 'Фроу', '', 1458404345),
(61, 0, 'Фроу', '', 1458404348),
(62, 0, 'Фроу', '', 1458404351),
(63, 0, 'Фроу', '', 1458404353),
(64, 0, 'Фроу', '', 1458404356),
(65, 0, 'Фроу', '', 1458404359);

-- --------------------------------------------------------

--
-- Структура таблицы `donate_count`
--

CREATE TABLE IF NOT EXISTS `donate_count` (
  `id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_admins`
--

CREATE TABLE IF NOT EXISTS `gb_admins` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Password` varchar(35) CHARACTER SET latin1 DEFAULT 'qwerty',
  `Varificated` int(1) DEFAULT '1',
  `LastPassword` int(1) DEFAULT '0',
  `Level` int(2) DEFAULT NULL,
  `OnDuty` int(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `gb_admins`
--

INSERT INTO `gb_admins` (`ID`, `Name`, `Password`, `Varificated`, `LastPassword`, `Level`, `OnDuty`) VALUES
(1, 'Cheat_Master', '112233', 1, 0, 8, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gb_bans`
--

CREATE TABLE IF NOT EXISTS `gb_bans` (
  `BID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `IP` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `bandate` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `time` int(11) NOT NULL,
  `unbandate` int(11) NOT NULL,
  `reason` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `adminban` varchar(25) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`BID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_business`
--

CREATE TABLE IF NOT EXISTS `gb_business` (
  `bID` int(11) NOT NULL AUTO_INCREMENT,
  `bOwner` varchar(25) NOT NULL DEFAULT 'None',
  `bName` varchar(16) NOT NULL DEFAULT 'None',
  `bEnter` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0|0.0|0.0|0.0|0.0',
  `bUpdate` varchar(10) NOT NULL DEFAULT '0|0|1|0',
  `bSettings` varchar(128) NOT NULL DEFAULT '50000|0|1|0|1|1|0|0',
  `bBizzRent` int(11) NOT NULL,
  `SellDate` int(11) NOT NULL,
  `bOwnerID` int(11) NOT NULL,
  `bSellHour` int(3) NOT NULL DEFAULT '0',
  `bRate` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Дамп данных таблицы `gb_business`
--

INSERT INTO `gb_business` (`bID`, `bOwner`, `bName`, `bEnter`, `bUpdate`, `bSettings`, `bBizzRent`, `SellDate`, `bOwnerID`, `bSellHour`, `bRate`) VALUES
(36, 'Queen', '"Found" your car', '2131.8140|-1151.3246|24.0600|185.7314|1050.2469|683.0217|4924.6525\r\n\r\n', '1|1|1', '450000|3|1|-231870|0|1|3462860|5', 1, 325, 0, 0, 0),
(35, 'Queen', 'Grotti Cars.', '556.1071|-1293.7924|17.2482|179.3073|1050.2469|683.0217|4924.6525', '1|1|0', '550000|3|1|-399530|0|1|2947730|5', 1, 325, 0, 0, 0),
(34, 'None', 'None', '0.0|0.0|1500.0|0.0|0.0|0.0|0.0', '0|0|0', '50000|0|1|10000|1|1|0|0', 1, 279, 0, 0, 0),
(33, 'Andrew_Pinkman', 'Made in USA', '1836.5161|-1443.0404|13.5962|85.3814|-2240.7800|137.1172|1035.4141', '0|1|0', '99000|6|1|23120|0|3|13200|4', 1, 347, 0, 0, 4717),
(31, 'Henry_Hill', 'Electroshop', '1414.7893|-1881.7792|13.5469|172.1364|-2240.7800|137.1172|1035.4141', '0|1|0', '120000|6|1|31640|0|3|4720|4', 1, 347, 270451, 0, 3651),
(32, 'Charles_Hoffman', 'Media Library', '2122.3215|-1211.4362|23.9628|354.8254|-2240.7800|137.1172|1035.4141', '0|1|0', '160000|6|1|6640|0|2|15580|4', 1, 11, 284681, 0, 2024),
(30, 'Shane_Muerto', 'Smart+', '1044.1976|-1291.4104|13.7769|89.8356|-2240.7800|137.1172|1035.4141', '1|1|0', '90000|6|1|5660|0|3|18357|4', 1, 203, 59, 0, 2711),
(29, 'Martin_Long', 'DidierSachs', '453.7832|-1477.9240|30.8083|280.7474|204.3815|-168.8582|1000.5234', '1|1|0', '160000|14|1|24572|0|4|43840|3', 1, 116, 908, 0, 0),
(28, 'Carmelo_Peralta', 'Victim', '461.2600|-1500.7423|31.0602|270.3362|227.5627|-8.0530|1002.2109', '1|1|0', '160000|5|1|84440|0|5|11795|3', 1, 11, 0, 0, 0),
(27, 'Wilhelm_Bergqvist', 'Bergqvist', '1456.5840|-1138.0067|23.9678|34.5791|161.4284|-97.1101|1001.8047', '1|1|0', '160000|18|1|38487|0|4|6080|3', 1, 203, 283785, 0, 0),
(26, 'Mikael_Blomkvist', 'PROlaps', '499.7080|-1360.3289|16.3413|157.0634|207.0512|-140.3727|1003.5078', '1|1|0', '160000|3|1|73424|0|5|11350|3', 1, 11, 0, 0, 0),
(25, 'Carmelo_Peralta', 'ThompsonS', '2112.7793|-1211.9496|23.9636|354.7442|203.7894|-50.6640|1001.8047', '1|1|0', '160000|1|1|88319|0|5|6700|3', 1, 11, 0, 0, 4),
(24, 'Naomi_Sarkozy', 'Binco', '2244.5122|-1665.0276|15.4766|160.8138|207.7116|-111.2653|1005.1328', '1|1|0', '160000|15|1|88501|0|5|11445|3', 1, 347, 0, 0, 114),
(23, 'Barry_Cross', 'Gramercy Tavern', '419.3324|-1428.6512|32.4968|304.4500|-794.9235|489.2805|1376.1953', '0|1|0', '100000|1|1|11520|0|4|2700|2', 1, 203, 0, 0, 2512),
(20, 'Boris_Ignatov', 'Universe Tasty', '1419.1798|-1623.8778|13.5469|359.7236|-794.9235|489.2805|1376.1953', '1|1|0', '67000|1|1|40710|0|5|22050|2', 1, 359, 252024, 0, 5000),
(22, 'Henry_Hill', 'Royal', '575.1814|-1386.3954|14.3161|203.4732|-794.9235|489.2805|1376.1953', '1|1|0', '160000|1|1|33135|0|5|3200|2', 1, 347, 0, 0, 5000),
(21, 'Phil_Mansory', 'Annam Brahma', '1568.0073|-1897.7476|13.5608|177.7003|-794.9235|489.2805|1376.1953', '0|1|0', '140000|1|1|42805|0|4|7700|2', 1, 347, 278277, 0, 5000),
(19, 'Katrin_Matiz', 'FleischBerg 1869', '2332.9521|-17.3470|26.4844|47.4259|501.8935|-67.5640|998.7578', '0|0|0', '69000|11|1|0|0|3|300|1', 1, 14, 0, 0, 0),
(18, 'Stefan_Linden', 'Montgomery Bar', '1416.8507|261.1458|19.5442|244.7954|501.8935|-67.5640|998.7578', '0|0|0', '72000|11|1|12140|0|4|51440|1', 1, 8, 0, 0, 2176),
(17, 'Wang_Hai', 'Red Star', '292.9899|-195.5026|1.7786|271.8992|501.8935|-67.5640|998.7578', '0|1|0', '69000|11|1|39160|0|1|1575|1', 1, 31, 0, 0, 3284),
(16, 'Stewart_Bones', 'Бензоколонка', '681.4774|-473.3471|16.5363|357.9481|501.8935|-67.5640|998.7578', '0|1|0', '180000|11|1|21840|0|5|3555|1', 1, 352, 247185, 0, 5000),
(15, 'Barry_Cross', 'Pete’s Tavern', '1109.0659|-1271.1764|13.5469|1.3286|501.8935|-67.5640|998.7578', '1|1|0', '150000|11|1|7435|0|3|2745|1', 1, 347, 1637, 0, 4265),
(14, 'Maxim_Isaev', 'HOBOS', '875.5914|-968.8432|37.1875|115.5543|501.8935|-67.5640|998.7578', '0|0|0', '120000|11|1|8388|0|2|3050|1', 1, 365, 0, 0, 5000),
(13, 'Alan_Hypers', 'Eight Barrels', '1945.2098|-2042.8700|14.0559|357.2820|501.8935|-67.5640|998.7578', '0|1|0', '92000|11|1|2995|0|3|1395|1', 1, 348, 0, 0, 5000),
(12, 'Jessica_Peralta', 'Выпивка Джесс', '2348.6013|-1372.6785|24.3984|2.6851|501.8935|-67.5640|998.7578', '1|1|0', '100000|11|1|91525|0|4|14245|1', 1, 203, 255372, 0, 5000),
(11, 'Alan_Jenkins', 'The Pig Pen', '2421.3833|-1219.6943|25.5331|356.7709|1212.0388|-25.8775|1000.9531', '1|1|0', '250000|3|1|21630|0|3|4290|1', 1, 347, 252192, 0, 5000),
(10, 'Andrew_Pinkman', '10 Green Bottles', '2310.0842|-1643.5345|14.8270|311.7891|501.8935|-67.5640|998.7578', '1|1|0', '200000|11|1|33090|0|5|15750|1', 1, 347, 240778, 0, 5000),
(9, 'Elisabeth_de_Roux', 'Francais Pizza.', '203.3924|-201.9402|1.5781|357.2175|372.3660|-133.5246|1001.4922', '0|1|0', '70000|5|1|8235|0|3|1510|0', 1, 347, 235323, 0, 5000),
(8, 'None', 'Без названия', '1367.5414|248.2810|19.5669|248.4664|372.3660|-133.5246|1001.4922', '0|1|0', '71000|5|1|18615|0|3|12465|0', 1, 6, 0, 0, 5000),
(7, 'Daniel_Marin', 'LITTLE ITALY', '2331.8083|75.0418|26.6210|91.7982|372.3660|-133.5246|1001.4922', '0|1|0', '56000|5|1|0|0|2|26080|0', 1, 116, 0, 0, 4802),
(5, 'Magnus_Cross', 'UCB ', '928.9158|-1352.9054|13.3438|272.5933|364.9816|-11.8381|1001.8516', '0|0|0', '100000|9|1|51415|0|5|1975|0', 1, 18, 0, 0, 5000),
(6, 'Keith_Deanely', '#EDD \r\r#eatery', '810.4852|-1616.2162|13.5469|92.4249|362.8880|-75.1832|1001.5078', '0|1|0', '200000|10|1|36755|0|3|15315|0', 1, 116, 246911, 0, 5000),
(4, 'Henry_Hill', 'Royal Burger', '1199.2297|-918.1451|43.1234|5.9441|362.8880|-75.1832|1001.5078', '1|1|0', '180000|10|1|32205|0|4|3960|0', 1, 347, 270451, 0, 5000),
(2, 'Justin_Collins', 'Great Food', '2397.8650|-1899.1907|13.5469|179.8224|364.9816|-11.8381|1001.8516', '1|1|0', '170000|9|1|0|0|4|34720|0', 1, 347, 0, 0, 4635),
(3, 'Mikael_Blomkvist', 'Ring Donuts', '1038.1964|-1340.7327|13.7423|180.4491|377.1368|-193.2986|1000.6328', '1|1|0', '150000|17|1|86965|0|3|16290|0', 1, 347, 242766, 0, 5000),
(1, 'Emillie_DaRio', 'Sweet Mirage', '2105.4875|-1806.4812|13.5547|271.3166|372.3660|-133.5246|1001.4922', '1|1|0', '250000|5|1|46625|0|4|19700|0', 1, 16, 0, 0, 5000),
(38, 'Osamu_Hayagawa', 'Ammu-nation', '2400.4583|-1981.9957|13.5469|177.1690|285.4126|-41.6841|1001.5156', '1|1|0', '300000|1|1|10|1|5|116100|6', 1, 347, 890, 0, 5000),
(39, 'Phil_Mansory', 'Guns by Mansory', '2333.6736|61.4302|26.7058|81.5566|285.4126|-41.6841|1001.5156', '1|1|0', '200000|1|1|72590|0|4|9040|6', 1, 347, 0, 0, 4951),
(40, 'Connor_Murphy', 'Wood World', '1790.4659|-1163.3524|23.8281|345.1725|-497.7610|-262.2462|2095.9097', '0|1|0', '250000|1|1|0|0|5|54035|7', 1, 11, 0, 0, 0),
(41, 'Ethan_Kerwood', 'Homies Store', '2352.0127|-1412.2526|23.9924|274.5211|-497.7610|-262.2462|2095.9097', '1|1|0', '120000|1|1|88622|0|4|366508|7', 1, 347, 0, 0, 0),
(42, 'Steven_Faster', 'Furniture.', '1252.9541|352.1919|19.5547|335.3317|-497.7610|-262.2462|2095.9097', '1|1|0', '120000|1|1|42975|0|4|7530|7', 1, 347, 0, 0, 0),
(43, 'Jessica_Peralta', 'Alhambra', '1836.8403|-1682.5184|13.3311|277.6578|493.4100|-24.8925|1000.6719', '1|1|0', '350000|17|1|92696|0|4|13112|8', 1, 280, 255372, 0, 5000),
(45, 'Ethan_Kerwood', 'iGas', '1928.8497|-1776.2537|13.5469|87.9915|268.2700|1084.2021|1913.8648', '1|0|0', '450000|0|1|98996|0|4|429406|9', 1, 347, 588, 0, 5000),
(46, 'Elaina_Morgenthau', 'MasseyGas', '1000.3464|-919.9745|42.3281|277.4321|268.2700|1084.2021|1913.8648', '1|0|0', '190000|0|1|42720|0|4|65068|9', 1, 58, 0, 0, 5000),
(47, 'Thomas_Thornton', 'Thornton Gas', '661.1953|-573.3997|16.3359|267.8003|268.2700|1084.2021|1913.8648', '0|0|0', '240000|0|1|4137|0|5|5500|9', 1, 16, 0, 0, 5000),
(48, 'Steven_Harrington', 'HarBroGas', '1383.3137|465.3523|20.1938|336.1888|268.2700|1084.2021|1913.8648', '1|0|0', '100000|0|1|46999|0|2|16622|9', 1, 347, 0, 0, 5000),
(49, 'Leonardo_Marreti', 'MARRETI GAZ', '-78.5727|-1169.8037|2.1409|244.3812|268.2700|1084.2021|1913.8648', '0|0|0', '99000|0|2|13033|0|3|8840|9', 1, 17, 0, 0, 5000),
(50, 'None', 'Без названия', '-1623.6808|-2693.4158|48.7427|327.6246|268.2700|1084.2021|1913.8648', '0|0|0', '98000|0|2|9370|0|4|0|9', 1, 187, 0, 0, 1054),
(51, 'None', 'LeCol', '-2231.8279|-2558.1458|31.9219|243.8594|268.2700|1084.2021|1913.8648', '0|0|0', '78000|0|2|9360|0|3|0|9', 1, 94, 0, 0, 5000),
(52, 'None', 'Без названия', '-2032.6451|161.4921|29.0461|89.8297|268.2700|1084.2021|1913.8648', '0|0|0', '90000|0|2|9181|0|3|0|9', 1, 99, 0, 0, 522),
(53, 'None', 'Без названия', '-2419.7813|969.8494|45.2969|90.7930|268.2700|1084.2021|1913.8648', '0|0|0', '50000|0|2|9929|0|5|0|9', 0, 0, 0, 0, 154),
(54, 'None', 'ООО "Chernov"', '-1675.7092|431.7850|7.1797|45.9859|268.2700|1084.2021|1913.8648', '0|0|0', '48000|0|2|9514|0|2|0|9', 1, 225, 0, 0, 3336),
(55, 'None', 'Vintero', '-1320.2815|2698.2898|50.2663|28.7520|268.2700|1084.2021|1913.8648', '0|0|0', '40000|0|3|9856|0|5|0|9', 1, 284, 0, 0, 252),
(56, 'None', 'CDC Corporation', '-1465.7896|1873.1410|32.6328|3.9173|268.2700|1084.2021|1913.8648', '0|0|0', '89000|0|3|974|0|1|0|9', 1, 280, 0, 0, 5000),
(57, 'None', 'Desert shelter', '58.7347|1225.8654|18.8768|90.7691|268.2700|1084.2021|1913.8648', '0|0|0', '70000|0|3|8373|0|2|0|9', 1, 299, 0, 0, 946),
(58, 'None', 'Без названия', '2188.1379|2469.7222|11.2422|92.6493|268.2700|1084.2021|1913.8648', '0|0|0', '49000|0|3|9882|0|5|0|9', 1, 237, 0, 0, 125),
(59, 'None', 'Route 66', '2150.7034|2734.5056|11.1763|180.8824|268.2700|1084.2021|1913.8648', '0|0|0', '40000|0|3|9923|0|5|100|9', 1, 359, 0, 0, 260),
(60, 'Harvard_Reynolds', 'SPC Fuel', '2637.4080|1129.0780|11.1797|1.3408|268.2700|1084.2021|1913.8648', '0|0|0', '50000|0|3|0|0|1|8880|9', 1, 277, 0, 0, 291),
(61, 'None', 'Без названия', '2117.4465|897.3768|11.1797|180.0469|268.2700|1084.2021|1913.8648', '0|0|0', '48000|0|3|9807|0|5|0|9', 1, 237, 0, 0, 1193),
(62, 'None', 'Xoomer', '638.6586|1683.7234|7.1875|221.7784|268.2700|1084.2021|1913.8648', '0|0|0', '40000|0|3|1|0|5|45250|9', 1, 360, 0, 0, 1639),
(63, 'None', 'Без названия', '1599.6194|2221.4275|11.0625|47.0180|268.2700|1084.2021|1913.8648', '0|0|0', '50000|0|3|9914|0|5|0|9', 0, 0, 0, 0, 102),
(64, 'Connor_Trable', 'Hot Road', '-1566.5575|-2730.3203|48.7435|236.0603|501.8935|-67.5640|998.7578', '1|1|0', '39000|11|2|12805|0|5|53175|1', 1, 135, 0, 0, 1580),
(65, 'Yarema_Stus', 'Titty Bar', '24.4934|-2646.5425|40.4638|271.6403|501.8935|-67.5640|998.7578', '0|0|0', '78000|11|2|11345|0|3|33150|1', 1, 21, 0, 0, 2007),
(66, 'Franchesko_Polo', 'Polo', '2850.9473|-1532.8634|11.0991|27.7654|501.8935|-67.5640|998.7578', '0|1|0', '79000|11|1|29000|0|2|6250|1', 1, 16, 0, 0, 3216),
(67, 'Tony_Maroni', '051 squad', '243.2936|-178.4034|1.5822|268.0125|285.4126|-41.6841|1001.5156', '1|1|0', '130000|1|1|27440|0|4|2240|6', 1, 11, 0, 0, 113),
(68, 'Jos_Nais', 'Tandem ELECTRO', '1352.2792|-1759.2501|13.5078|182.9770|-2240.7800|137.1172|1035.4141', '1|1|0', '240000|6|1|71470|0|5|146830|4', 1, 311, 31, 0, 5000),
(69, 'Enrique_Ney', 'Electro Company', '2424.6824|-1922.1398|13.5404|260.7488|-2240.7800|137.1172|1035.4141', '1|1|0', '120000|6|1|6420|0|3|21560|4', 1, 347, 0, 0, 533),
(70, 'Thomas_Thornton', 'Cluckin Bell', '2419.7046|-1509.0645|24.0000|87.5452|364.9816|-11.8381|1001.8516', '0|1|0', '120000|9|1|3530|0|5|7350|0', 1, 16, 0, 0, 505),
(72, 'Travor_Walcott', 'Time to Drink', '534.3979|-1813.0330|6.5713|119.6377|501.8935|-67.5640|998.7578\r\n', '0|1|0', '97000|11|1|7|0|4|3840|1', 1, 11, 237268, 0, 5000),
(73, 'Naomi_Sarkozy', 'Infinity', '207.7843|-61.6945|1.9766|354.6838|207.0512|-140.3727|1003.5078', '1|1|0', '120000|3|1|96093|0|4|6480|3', 1, 99, 256143, 0, 1),
(74, 'Tyshawn_Dayton', 'DS DILLIMORE', '671.0014|-519.3280|16.3359|39.9558|204.3815|-168.8582|1000.5234', '1|1|0', '121000|14|1|977|0|5|62395|3', 1, 318, 243621, 0, 0),
(75, 'Queen', '"Found" your car', '854.5651|-605.2057|18.4219|180.0847|1050.2469|683.0217|4924.6525', '1|1|0', '480000|3|1|-307830|0|1|872380|5', 1, 318, 0, 0, 0),
(76, 'Vito_Belvis', 'Insomnia', '1578.9614|-1534.9480|13.5691|176.6984|493.4100|-24.8925|1000.6719', '0|0|0', '150000|17|1|20286|0|3|14100|8', 1, 347, 0, 0, 5000),
(77, 'Vito_Belvis', 'Electronic Arts', '1527.1904|-1492.1387|13.5612|5.6168|-2240.7800|137.1172|1035.4141', '0|1|0', '150000|6|1|0|0|3|22100|4', 1, 11, 0, 0, 435),
(78, 'Dwight_Fisher', 'Chinatown Bar', '1616.4193|-1510.9655|13.6406|269.1328|501.8935|-67.5640|998.7578', '0|1|0', '100000|11|1|20835|0|5|27820|1', 1, 12, 0, 0, 5000),
(88, 'Queen', 'Gym', '822.9675|-1757.0081|13.6546|316.4772|774.1648|-50.4758|1000.5859', '0|0|0', '300000|6|1|18|1|1|1960|12', 1, 14, 0, 0, 225),
(79, 'Sweet_Crooks', 'Товары BADFORDA', '1047.5991|-1418.5155|13.5469|358.1515|-83.2579|-1599.6097|2860.2371', '1|1|0', '80000|1|1|48172|0|3|2946|10', 1, 34, 0, 0, 4198),
(87, 'Leron_White', 'Wild Card Boxing', '2229.9412|-1721.2963|13.5617|316.2285|772.3076|-5.5067|1000.7285', '1|0|0', '300000|5|1|7240|0|5|3300|12', 0, 0, 0, 0, 1202),
(80, 'James_Fletcher', 'Backcountry', '1387.3243|-1439.5905|13.5547|87.4756|-83.2579|-1599.6097|2860.2371', '0|1|0', '99000|1|1|11536|0|4|12580|10', 1, 347, 0, 0, 550),
(81, 'Paul_Norianes', 'SALL FOR ALL', '1679.9115|-1811.3746|13.5391|91.2597|-83.2579|-1599.6097|2860.2371', '1|1|0', '150000|1|1|26196|0|2|38732|10', 1, 347, 279347, 0, 5000),
(82, 'Crystal_Anja_Lafleur', 'Pegasus', '1833.7815|-1842.6471|13.5781|274.2245|-83.2579|-1599.6097|2860.2371', '1|1|0', '150000|1|1|87782|0|3|1020|10', 1, 203, 276071, 0, 5000),
(85, 'Steven_Faster', 'InvisibleShop', '2057.5613|-1897.2139|13.5538|354.7475|-480.1021|-780.9987|2011.4744', '1|0|0', '400000|0|1|16595|0|5|1525|11', 1, 347, 239157, 0, 1064),
(86, 'Zaza_Grozny', 'LS-Airlines', '1995.2081|-2202.9075|13.5469|3.8343|-480.1021|-780.9987|2011.4744', '1|0|0', '400000|0|1|18825|0|5|13755|11', 1, 61, 0, 0, 27),
(89, 'Elisabeth_de_Roux', 'Kickbox club.', '2273.5266|82.0429|26.4844|178.9338|773.6783|-78.5545|1000.6624', '0|0|0', '270000|7|1|13700|0|5|3200|12', 1, 12, 0, 0, 13),
(71, 'None', 'None', '0.0|0.0|1500.0|0.0|0.0|0.0|0.0', '0|0|0', '50000|0|1|9980|1|1|20|0', 1, 365, 0, 0, 0),
(83, 'None', 'None', '0.0|0.0|1500.0|0.0|0.0|0.0|0.0', '0|0|0', '50000|0|1|10000|1|1|0|0', 1, 349, 0, 0, 64),
(37, 'None', 'None', '0.0|0.0|1500.0|0.0|0.0|0.0|0.0', '0|0|0', '50000|0|1|10000|1|1|0|0', 1, 225, 0, 0, 0),
(90, 'Antonio_Flores', 'Chinese Food', '1044.1971|-1269.4060|13.7769|88.0225|377.1368|-193.2986|1000.6328', '0|1|0', '60000|17|1|2391|0|2|9460|0', 1, 17, 0, 0, 1626),
(91, 'Tellarion_Barger', 'Chicago Prime', '1074.6108|-1298.2166|17.0543|269.1593|-794.9235|489.2805|1376.1953', '0|0|0', '59000|1|1|17530|0|5|21400|2', 1, 11, 284930, 0, 229);

-- --------------------------------------------------------

--
-- Структура таблицы `gb_business_money`
--

CREATE TABLE IF NOT EXISTS `gb_business_money` (
  `ID` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Money` int(11) NOT NULL,
  `BizzID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `gb_business_money`
--

INSERT INTO `gb_business_money` (`ID`, `Name`, `Money`, `BizzID`) VALUES
(0, 'None', 400000, 37),
(0, 'None', 128000, 25),
(0, 'None', 96000, 42),
(0, 'None', 128000, 25),
(0, 'None', 240000, 38),
(0, 'None', 240000, 38),
(0, 'None', 80000, 12),
(0, 'None', 136000, 2),
(0, 'None', 136000, 2),
(0, 'Justin_Klein', 120000, 76),
(0, 'Jonathan_Bennett', 96000, 41),
(0, 'Luis_Martinez', 136000, 2),
(0, 'Tony_Bracco', 128000, 25),
(0, 'Joe_Clinton', 240000, 38),
(0, 'Barry_Eddington', 240000, 37),
(0, 'None', 360000, 36),
(0, 'None', 40000, 37);

-- --------------------------------------------------------

--
-- Структура таблицы `gb_cars`
--

CREATE TABLE IF NOT EXISTS `gb_cars` (
  `cID` int(11) NOT NULL AUTO_INCREMENT,
  `cOwner` varchar(25) NOT NULL DEFAULT 'None',
  `cModel` int(11) NOT NULL DEFAULT '0',
  `cPosition` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `cSettings` varchar(128) NOT NULL DEFAULT '0|0|0|0|0|0|0',
  `cTunning` varchar(128) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `cFloating` varchar(128) NOT NULL DEFAULT '0.0|0.0|1000.0',
  `cDamage` varchar(128) NOT NULL DEFAULT '0|0|0|0',
  `cLastTeh` varchar(25) NOT NULL,
  `cInvSlots` varchar(512) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `cInvSlotsKol` varchar(512) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `cStatus` int(11) NOT NULL DEFAULT '100',
  `cNumber` varchar(32) NOT NULL DEFAULT 'None',
  `cWanted` int(11) NOT NULL,
  PRIMARY KEY (`cID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `gb_cars`
--

INSERT INTO `gb_cars` (`cID`, `cOwner`, `cModel`, `cPosition`, `cSettings`, `cTunning`, `cFloating`, `cDamage`, `cLastTeh`, `cInvSlots`, `cInvSlotsKol`, `cStatus`, `cNumber`, `cWanted`) VALUES
(1, 'Tommy_Spark', 402, '1573.72|-1031.559|23.6|216.814', '0|1|1|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '53.000000|5.684998|870.258972', '0|0|0|0', '27/02/2017', '41|41|41|85|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '3|1|2|5858|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 100, '[LS1TS]', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gb_changelog`
--

CREATE TABLE IF NOT EXISTS `gb_changelog` (
  `id` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Text` text NOT NULL,
  `Author` varchar(30) NOT NULL,
  `Date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_crime`
--

CREATE TABLE IF NOT EXISTS `gb_crime` (
  `crID` int(11) NOT NULL AUTO_INCREMENT,
  `crName` varchar(128) NOT NULL,
  `crType` int(11) NOT NULL,
  `crInt` int(11) NOT NULL,
  `crEnter` varchar(128) NOT NULL DEFAULT '0.0,0.0,0.0,0.0',
  `crSettings` varchar(32) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0',
  PRIMARY KEY (`crID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `gb_crime`
--

INSERT INTO `gb_crime` (`crID`, `crName`, `crType`, `crInt`, `crEnter`, `crSettings`) VALUES
(1, 'D146F', 0, 13, '1762.313232,-1178.996459,23.827785,170.744766', '1,1,1,0,0,0,0,0'),
(2, 'GO DOTA?', 3, 12, '0.0,0.0,0.0,0.0', '0,0,0,0,0,0,0,0');

-- --------------------------------------------------------

--
-- Структура таблицы `gb_crime_rank`
--

CREATE TABLE IF NOT EXISTS `gb_crime_rank` (
  `raID` int(11) NOT NULL AUTO_INCREMENT,
  `raCrime` int(11) NOT NULL,
  `raRank` int(11) NOT NULL,
  `raName` varchar(64) NOT NULL,
  `raSettings` varchar(64) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0',
  PRIMARY KEY (`raID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_crime_veh`
--

CREATE TABLE IF NOT EXISTS `gb_crime_veh` (
  `vID` int(11) NOT NULL AUTO_INCREMENT,
  `vCrime` int(11) NOT NULL,
  `vModel` int(11) NOT NULL,
  `vColor_1` int(11) NOT NULL,
  `vColor_2` int(11) NOT NULL,
  `vPosX` float NOT NULL,
  `vPosY` float NOT NULL,
  `vPosZ` float NOT NULL,
  `vPosRZ` float NOT NULL,
  PRIMARY KEY (`vID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_enters`
--

CREATE TABLE IF NOT EXISTS `gb_enters` (
  `eID` int(11) NOT NULL AUTO_INCREMENT,
  `eP1` float NOT NULL,
  `eP2` float NOT NULL,
  `eP3` float NOT NULL,
  `ePe1` float NOT NULL,
  `ePe2` float NOT NULL,
  `ePe3` float NOT NULL,
  `eInt` int(11) NOT NULL,
  `eWorld` int(11) NOT NULL,
  `eName` varchar(32) NOT NULL,
  `eDescription` varchar(128) NOT NULL,
  `exInt` int(11) NOT NULL DEFAULT '0',
  `exWorld` int(11) NOT NULL DEFAULT '0',
  `eMember` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eID`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=103 ;

--
-- Дамп данных таблицы `gb_enters`
--

INSERT INTO `gb_enters` (`eID`, `eP1`, `eP2`, `eP3`, `ePe1`, `ePe2`, `ePe3`, `eInt`, `eWorld`, `eName`, `eDescription`, `exInt`, `exWorld`, `eMember`) VALUES
(1, 1139, -1211.76, 18.7432, 1138.59, -1212.5, 3905.07, 1, 0, 'Таксопарк', '', 0, 0, 0),
(3, 1221.9, -1811.71, 16.5938, 1787.11, -1761.33, 2513.59, 3, 1, 'Автостанция', '', 0, 0, 0),
(5, -456.909, -79.3436, 59.7099, -454.53, -66.4426, 2773.89, 1, 0, 'Цех', '', 0, 0, 0),
(6, -526.767, -80.5063, 2773.88, -457.544, -59.0744, 2773.89, 1, 0, 'Раздевалка', '', 1, 0, 0),
(7, 1032.92, -319.408, 73.9922, 1033.35, -310.251, 76.6459, 0, 0, 'Склады', '', 0, 0, 0),
(8, 1459.37, -1009.92, 26.8438, 1449.02, -1048.43, 2725.87, 1, 0, 'Центральный банк', '', 0, 0, 0),
(10, 1463.31, -1470.56, 13.5391, 1067.7, -338.199, 1797.7, 1, 0, 'Центр купли-продажи', '', 0, 0, 0),
(11, 1555.4, -1675.47, 16.1953, 1542.2, -1688.56, 2494.25, 1, 1, 'LSPD', '', 0, 0, 0),
(13, 626.965, -571.805, 17.9207, 644.85, -577.651, 1994.09, 6, 1, 'Sheriff''s Department', '', 0, 0, 0),
(14, 611.063, -583.495, 18.2109, 615.958, -581.221, 1994.09, 6, 1, 'Sheriff''s Department', '', 0, 0, 0),
(18, 1653.96, -1654.76, 22.5156, 1649.85, -1657.06, 4704.35, 1, 1, 'San Andreas Network', '', 0, 0, 0),
(19, 1675.42, -1633.29, 14.2266, 1673.64, -1640.21, 4698.97, 1, 1, 'San Andreas Network', '', 0, 0, 0),
(20, 725.692, -1440.45, 13.5391, 1202, 1351.58, 1501.66, 1, 1, 'Автошкола', '', 0, 0, 0),
(22, 2313.28, 56.3699, 26.4844, 461.727, -380.325, 3120.56, 0, 2, 'Притон №3', '', 0, 0, 0),
(23, 165.667, -166.475, 6.7786, 1918.05, 163.346, 2000.89, 0, 2, 'Притон №4', '', 0, 0, 0),
(25, 1482.64, -1772.31, 18.7958, 1465.68, -1742.81, 3910.53, 1, 1, 'Los Santos City Hall', '', 0, 0, 0),
(26, 1413.21, -1790.47, 15.4356, 1485.79, -1757.98, 3910.44, 1, 1, 'Los Santos City Hall', '', 0, 0, 0),
(27, 2303.58, -42.2783, 26.4844, 2322.62, -46.6922, 3709.34, 1, 1, 'Адвокатская контора ''LFW''', '', 0, 0, 0),
(29, 1649.07, -1641.88, 83.7813, 1643.33, -1635.57, 4704.35, 1, 1, 'SAN', '', 0, 0, 0),
(30, 619.069, -566.836, 26.1432, 623.115, -580.626, 2594.09, 6, 1, 'Крыша', '', 0, 0, 0),
(31, 2457.47, -1901.98, 13.5469, 461.727, -380.325, 3120.56, 0, 1, 'Притон №1', '', 0, 0, 0),
(32, 2288.18, -1104.65, 38.5947, 1918.05, 163.346, 2000.89, 0, 1, 'Притон №2', '', 0, 0, 0),
(35, 2265.95, -42.3674, 27.6511, 2216.81, -36.0522, 2606.83, 0, 1, 'Церковь', '', 0, 0, 0),
(37, 2716.37, -2457.14, 22.7755, 2721.01, -2454.91, 811.49, 1, 1, 'Вход на крышу', '', 0, 0, 0),
(39, 2738.15, -2533.02, 13.6952, 2350.34, -2747.16, 698.209, 1, 1, 'Комната ожидания', '', 0, 0, 0),
(48, 1817.41, -2008.45, 13.5544, 2604.13, -211.977, 883.086, 5, 6, 'Вход', '', 0, 0, 0),
(58, 1984.07, -1761.85, 13.5469, 2138.02, -1643.73, 3905.58, 90, 3, 'Ломбард', '', 0, 0, 0),
(59, 1273.14, 238.56, 19.8862, -2725.93, 831.408, 3000.14, 5, 11, 'Вход', '', 0, 0, 0),
(60, 1257.36, 241.92, 19.911, -2753.63, 836.044, 3000.14, 5, 11, 'Вход', '', 0, 0, 0),
(61, 1266.39, 234.402, 25.0487, -2734.88, 823.394, 3003.63, 5, 11, 'Вход', '', 0, 0, 0),
(62, 2233.98, -1333.27, 23.9816, 2216.81, -36.0522, 2606.83, 0, 30, 'Церковь', '', 0, 0, 0),
(63, 1632.14, -1200.05, 19.7811, 1501.75, -1485.9, 3498.06, 3, 30, 'Мясная лавка', '', 0, 0, 0),
(64, 1484.44, -1502.45, 13.5507, 1501.75, -1485.9, 3498.06, 3, 31, 'Мясная лавка', '', 0, 0, 0),
(69, 2324.21, -1355.89, 24.9766, -130.36, -1877.1, 2501.09, 1, 1, 'LSPD', '', 0, 0, 0),
(70, 2007.48, -2142.52, 13.5537, 416.233, -1864.24, 2501.09, 1, 1, 'LSPD', '', 0, 0, 0),
(73, 2002.41, -1782.28, 13.5537, 2604.13, -211.977, 883.086, 5, 22, 'Вход', '', 0, 0, 0),
(74, 604.912, -1515.29, 14.9363, 583.732, -1540.35, 2001.09, 5, 9, 'Вход', '', 0, 0, 0),
(75, 596.73, -1512.98, 15.1338, 594.685, -1543.9, 2001.09, 5, 9, 'Вход', '', 0, 0, 0),
(84, 1159.52, -1342.87, 26.6361, 1155.53, -1325.89, 2804.46, 15, 26, 'Emergency Medical Services', '', 0, 0, 0),
(86, 1145.03, -1330.45, 13.7008, 1169.47, -1331.14, 2804.46, 15, 26, 'Emergency Medical Services', '', 0, 0, 0),
(88, 1172.15, -1323.36, 15.403, 1137.38, -1331.06, 2804.46, 15, 26, 'Emergency Medical Services', '', 0, 0, 0),
(90, 680.703, -1792.65, 12.4688, 353.314, 1863.27, 5001.08, 1, 90, 'Магазин', '', 0, 0, 0),
(92, 1015.75, -1557.59, 14.8657, 986.289, -1555.96, 21.5078, 0, 0, 'Ресторан', '', 0, 0, 0),
(93, 2232.84, -1159.85, 25.8906, 2214.38, -1150.74, 1025.8, 15, 93, 'Jefferson Motel', '', 0, 0, 0),
(94, 1316.03, -900.37, 39.5781, 1316.93, -920.498, 5001.08, 4, 2, 'LSFD FIRE STATION 505', '', 0, 0, 0),
(95, 1328.61, -892.634, 39.5781, 1299.46, -877.984, 3001.09, 4, 2, 'LSFD FIRE STATION 505', '', 0, 0, 0),
(96, 1312.33, -887.646, 39.5885, 1294.07, -890.023, 3001.09, 4, 2, 'LSFD FIRE STATION 505', '', 0, 0, 0),
(97, 2747.69, -1439.35, 30.453, -926.601, -530.667, 2501.09, 3, 2, 'LSFD EMS STATION 707', '', 0, 0, 0),
(98, 2759.09, -1452.69, 30.45, -936.772, -548.411, 3001.09, 3, 2, 'LSFD EMS STATION 707', '', 0, 0, 5),
(99, 1396.96, -1569.73, 14.2667, 802.977, -713.594, 3716.67, 2, 3, 'Суд', '', 0, 0, 0),
(100, 2174.56, -1741.87, 13.5507, 1395.1, -29.2014, 1000.93, 3, 2, 'Прачечная', '', 0, 0, 0),
(101, 447.891, -1809.22, 5.5469, 454.697, -1800.46, 2601.12, 1, 6, 'Вход', 'Бар на Санта-Марии', 0, 0, 0),
(102, 425.197, -1822.98, 10.2302, 439.246, -1811.53, 2604.62, 1, 6, 'Вход', 'Бар на Санта-Марии #2', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gb_frac`
--

CREATE TABLE IF NOT EXISTS `gb_frac` (
  `fID` int(11) NOT NULL AUTO_INCREMENT,
  `fName` varchar(32) NOT NULL,
  `fLeader` varchar(25) NOT NULL,
  `fRank1` varchar(49) NOT NULL DEFAULT 'Нет',
  `fRank2` varchar(49) NOT NULL DEFAULT 'Нет',
  `fRank3` varchar(49) NOT NULL DEFAULT 'Нет',
  `fRank4` varchar(49) NOT NULL DEFAULT 'Нет',
  `fRank5` varchar(49) NOT NULL DEFAULT 'Нет',
  `fRank6` varchar(49) NOT NULL DEFAULT 'Нет',
  `fRank7` varchar(49) NOT NULL DEFAULT 'Нет',
  `fRank8` varchar(49) NOT NULL DEFAULT 'Нет',
  `fRank9` varchar(49) NOT NULL DEFAULT 'Нет',
  `fRank10` varchar(49) NOT NULL DEFAULT 'Нет',
  `fRank11` varchar(49) NOT NULL DEFAULT 'Нет',
  `fRank12` varchar(49) NOT NULL DEFAULT 'Нет',
  `fRank13` varchar(49) NOT NULL DEFAULT 'Нет',
  `fRank14` varchar(49) NOT NULL DEFAULT 'Нет',
  `fRank15` varchar(49) NOT NULL DEFAULT 'Нет',
  `fSkins` varchar(128) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `fGuns` varchar(128) NOT NULL DEFAULT '1|1|1|1|1|1',
  `fRank` varchar(32) NOT NULL DEFAULT '0|0|0|0|0',
  PRIMARY KEY (`fID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `gb_frac`
--

INSERT INTO `gb_frac` (`fID`, `fName`, `fLeader`, `fRank1`, `fRank2`, `fRank3`, `fRank4`, `fRank5`, `fRank6`, `fRank7`, `fRank8`, `fRank9`, `fRank10`, `fRank11`, `fRank12`, `fRank13`, `fRank14`, `fRank15`, `fSkins`, `fGuns`, `fRank`) VALUES
(0, 'Нет', 'None', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Глава', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '1|1|1|1|1|1', '0|0|0|0'),
(1, 'SADoC', 'Tommy_Spark', 'Correction Officer I', 'Correction Officer II', 'Senior Correction Officer', 'Corporal', 'Sergeant', 'Staff Sergeant', 'Master Sergeant', 'Lieutenant I', 'Lieutenant II', 'Captain I', 'Captain II', 'Major', 'Deputy Warden', 'Assistent Warden', 'Warden', '71|71|71|71|282|282|282|288|288|288|288|288|288|283|283', '1|5|5|4|2|1', '8|8|13|13|4|0|0'),
(3, 'Henderson Medical Department', 'Preston_Baily', 'Contract Worker', 'Certified Nursing Assistant', 'Intern', 'Licensed Practical Nurse', 'Coroner', 'Registered Nurse', 'Practitioner CPS', 'Physician', 'Inspector CPS', 'Resident', 'Chief Resident', 'Attending Physician', 'Chief of Subdivision', 'Deputy Chief', 'Medical Chief', '275|275|276|275|275|276|276|70|276|70|276|274|274|228|228', '1|1|1|1|1|1', '11|13|12|15|10|99|0'),
(2, 'LSPD', 'Tommy_Spark', 'Vacant', 'Vacant', 'Vacant', 'Vacant', 'Vacant', 'K-9 DOG', 'Academy Student', 'Probation Officer', 'Police Officer', 'Police Sergeant', 'Police Detective', 'Command Officer', 'Staff Officer', 'Assistant Chief Of Police', 'Chief of Police', '71|280|265|267|281|266|283|281|281|267|266|267|283|281|281', '7|9|8|7|7|7', '12|12|12|15|10|15|0'),
(4, 'San Andreas Network', 'Naomi_Sarkozy', 'Trainee SAN', 'Technical staff', 'Ad Manager', 'Pilot of SAN', 'Journalist ', 'Field Journalist', 'Staff Journalist', 'Chief Editor', 'San Andreas Network', 'San Andreas Network ', 'San Andreas Network ', 'Ad Manager', 'Chief Editor', 'Director SAN', 'C.E.O. SAN', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '1|1|1|1|1|1', '12|12|12|15|12|0|0'),
(5, 'Los Santos Fire Department', 'Tommy_Spark', 'LSFD Cadet', 'LSFD Fire Marshal', 'LSFD Rescue Firefighter', 'LSFD EMS Captain', 'LSFD Firefighter - EMT-B', 'LSFD Flight Officer', 'LSFD Firefighter - EMT-B', 'LSFD Lieutenant', 'LSFD Captain', 'LSFD EMS Rescue Medic', 'LSFD EMS Lieutenant', 'LSFD Battalion Chief', 'LSFD Division Commander', 'EMS OPS Commander', 'FIRE COMMANDER', '287|287|287|287|287|179|179|179|61|255|61|61|61|61|61', '12|6|2|2|4|2', '12|12|12|13|12|0|0'),
(6, 'Los Santos City Hall', 'Elaina_Morgenthau', 'Trainee Agent', 'Dep. US Marshal', 'Spec. Dep. US Marshal', 'Sup. Dep. US Marhsal', 'Protective Agent', 'Employee', 'Assistant District Attorney', 'Deputy Director', 'Chief Dep. US Marshal', 'Director', 'District Attorney', 'District Judge', 'Deputy Mayor', 'City Mayor', 'Governor', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '1|1|1|1|1|1', '10|14|14|15|10|0|0'),
(7, 'Law Firm "Wainwright"', 'Tommy_Spark', 'Водитель-охранник(Исп.срок)', 'Секретарь (Исп.срок)', 'Водитель-охранник', 'Секретарь', 'Начальник охраны', 'Начальник секретариата', 'Помощник детектива', 'Помощник адвоката', 'Детектив', 'Юрист-консульт', 'Адвокат третьего ранга', 'Адвокат второго ранга', 'Адвокат первого ранга', 'Руководитель адвокатуры', 'Директор компании "LFW"', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '1|1|1|1|1|1', '14|14|14|15|1|0|0'),
(8, 'Sheriff''s Dep.', 'David_Carter', 'Trainee Academy', 'Security Guard', 'Secretary', 'Laboratory Agent', 'Junior Agent', 'Agent', 'Senior Agent', 'Special Agent', 'Federal Agent', 'Head NAD', 'Head OCD', 'Head NCD', 'Head DIA', 'Deputy Head CID', 'Head FBI', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '5|5|5|5|5|5', '12|13|12|15|10|15|0');

-- --------------------------------------------------------

--
-- Структура таблицы `gb_furniture`
--

CREATE TABLE IF NOT EXISTS `gb_furniture` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `hID` int(11) NOT NULL,
  `hType` int(11) NOT NULL,
  `fID` int(11) NOT NULL,
  `fModel` int(11) NOT NULL,
  `fX` float NOT NULL,
  `fY` float NOT NULL,
  `fZ` float NOT NULL,
  `frX` float NOT NULL,
  `frY` float NOT NULL,
  `frZ` float NOT NULL,
  `fClass` int(11) NOT NULL,
  `fCount` int(11) NOT NULL,
  `fState` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Дамп данных таблицы `gb_furniture`
--

INSERT INTO `gb_furniture` (`ID`, `hID`, `hType`, `fID`, `fModel`, `fX`, `fY`, `fZ`, `frX`, `frY`, `frZ`, `fClass`, `fCount`, `fState`) VALUES
(1, 2, 0, 0, 2118, 107.851, 82.911, 1045.4, 0, 0, 0, 1, 0, 1),
(2, 2, 0, 0, 2118, 107.842, 83.5299, 1045.39, 0, 0, 0, 1, 0, 1),
(3, 2, 0, 0, 2566, 108.775, 84.7299, 1045.6, 0, 0, 0, 0, 14, 1),
(4, 2, 0, 0, 2117, 116.875, 87.217, 1046.33, 0, 0, 0, 1, 22, 1),
(5, 2, 0, 0, 1720, 108.251, 83.9651, 1045.31, 0, 0, 0, 2, 10, 1),
(6, 2, 0, 0, 1720, 110.235, 83.4977, 1045.25, -3, 0, -52.7, 2, 10, 1),
(7, 2, 0, 0, 1720, 109.009, 81.1566, 1045.45, -3.1, 0, 179.5, 2, 10, 1),
(8, 2, 0, 0, 1720, 0, 0, 0, 0, 0, 0, 2, 10, 0),
(9, 2, 0, 0, 2028, 0, 0, 0, 0, 0, 0, 3, 10, 0),
(10, 2, 0, 0, 2232, 0, 0, 0, 0, 0, 0, 3, 21, 0),
(11, 2, 0, 0, 2232, 0, 0, 0, 0, 0, 0, 3, 21, 0),
(12, 2, 0, 0, 2229, 0, 0, 0, 0, 0, 0, 3, 22, 0),
(13, 2, 0, 0, 2229, 0, 0, 0, 0, 0, 0, 3, 22, 0),
(14, 2, 0, 0, 2229, 0, 0, 0, 0, 0, 0, 3, 22, 0),
(15, 2, 0, 0, 2648, 112.231, 87.5469, 1046.38, 0.6, -4.5, -17.7, 3, 41, 1),
(16, 2, 0, 0, 2648, 0, 0, 0, 0, 0, 0, 3, 41, 0),
(17, 2, 0, 0, 2648, 0, 0, 0, 0, 0, 0, 3, 41, 0),
(18, 2, 0, 0, 2648, 0, 0, 0, 0, 0, 0, 3, 41, 0),
(19, 2, 0, 0, 2239, 0, 0, 0, 0, 0, 0, 3, 43, 0),
(20, 2, 0, 0, 2239, 0, 0, 0, 0, 0, 0, 3, 43, 0),
(21, 2, 0, 0, 2238, 0, 0, 0, 0, 0, 0, 3, 44, 0),
(22, 2, 0, 0, 2023, 0, 0, 0, 0, 0, 0, 3, 45, 0),
(23, 2, 0, 0, 1717, 0, 0, 0, 0, 0, 0, 3, 49, 0),
(24, 2, 0, 0, 2303, 0, 0, 0, 0, 0, 0, 4, 8, 0),
(25, 2, 0, 0, 2139, 0, 0, 0, 0, 0, 0, 4, 9, 0),
(26, 2, 0, 0, 2140, 0, 0, 0, 0, 0, 0, 4, 10, 0),
(27, 2, 0, 0, 2305, 0, 0, 0, 0, 0, 0, 4, 11, 0),
(28, 2, 0, 0, 2138, 0, 0, 0, 0, 0, 0, 4, 12, 0),
(29, 2, 0, 0, 2136, 0, 0, 0, 0, 0, 0, 4, 13, 0),
(30, 2, 0, 0, 1754, 0, 0, 0, 0, 0, 0, 7, 8, 0),
(31, 2, 0, 0, 1757, 0, 0, 0, 0, 0, 0, 7, 9, 0),
(32, 2, 0, 0, 2257, 0, 0, 0, 0, 0, 0, 8, 0, 0),
(33, 2, 0, 0, 2260, 0, 0, 0, 0, 0, 0, 8, 1, 0),
(34, 2, 0, 0, 2261, 0, 0, 0, 0, 0, 0, 8, 2, 0),
(35, 2, 0, 0, 2010, 0, 0, 0, 0, 0, 0, 9, 0, 0),
(36, 2, 0, 0, 2001, 108.796, 85.0062, 1045.46, 0, 0, 0, 9, 1, 1),
(37, 2, 0, 0, 2246, 0, 0, 0, 0, 0, 0, 9, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gb_gangzones`
--

CREATE TABLE IF NOT EXISTS `gb_gangzones` (
  `gzID` int(11) NOT NULL,
  `gzGang` int(11) NOT NULL,
  `nProduct` int(11) NOT NULL,
  `nOwner` varchar(32) NOT NULL,
  `nValue` int(11) NOT NULL,
  `nMoney` int(11) NOT NULL,
  `nValueTwo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_gangzoness`
--

CREATE TABLE IF NOT EXISTS `gb_gangzoness` (
  `gzID` int(11) NOT NULL AUTO_INCREMENT,
  `gzGang` int(11) NOT NULL,
  `gzPos` varchar(128) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`gzID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_gang_info`
--

CREATE TABLE IF NOT EXISTS `gb_gang_info` (
  `gID` int(11) NOT NULL,
  `gCars` varchar(32) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `gSpawnPos` varchar(32) NOT NULL DEFAULT '0|0|0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_hostel`
--

CREATE TABLE IF NOT EXISTS `gb_hostel` (
  `kID` int(4) NOT NULL AUTO_INCREMENT,
  `kDescription` varchar(128) DEFAULT NULL,
  `kEnterPosX` float NOT NULL,
  `kEnterPosY` float NOT NULL,
  `kEnterPosZ` float NOT NULL,
  `kEnterPosX_Two` float NOT NULL,
  `kEnterPosY_Two` float NOT NULL,
  `kEnterPosZ_Two` float NOT NULL,
  `kExitPosX` float NOT NULL,
  `kExitPosY` float NOT NULL,
  `kExitPosZ` float NOT NULL,
  `kExitPosX_Two` float NOT NULL,
  `kExitPosY_Two` float NOT NULL,
  `kExitPosZ_Two` float NOT NULL,
  `kInt` int(11) NOT NULL,
  `kCity` int(11) NOT NULL DEFAULT '1',
  `kVirtualWorld` int(11) NOT NULL,
  `kCamPosX` float NOT NULL,
  `kCamPosY` float NOT NULL,
  `kCamPosZ` float NOT NULL,
  PRIMARY KEY (`kID`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_houses`
--

CREATE TABLE IF NOT EXISTS `gb_houses` (
  `hID` int(11) NOT NULL AUTO_INCREMENT,
  `hOwner` varchar(32) NOT NULL,
  `hPosX` float NOT NULL,
  `hPosY` float NOT NULL,
  `hPosZ` float NOT NULL,
  `hPosA` float NOT NULL,
  `hExPosX` float NOT NULL,
  `hExPosY` float NOT NULL,
  `hExPosZ` float NOT NULL,
  `hInt` int(11) NOT NULL,
  `hCity` int(11) NOT NULL,
  `hPrice` int(11) NOT NULL,
  `hRooms` int(11) NOT NULL,
  `hLock` int(11) NOT NULL DEFAULT '1',
  `hUseInt` int(11) NOT NULL DEFAULT '0',
  `hInvSlots` varchar(256) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `hInvSlotsKol` varchar(256) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `hMoney` int(11) unsigned NOT NULL,
  `hHouseRent` int(11) NOT NULL,
  `hEvictName` varchar(64) NOT NULL DEFAULT 'None|None|None',
  `hSellDate` int(11) NOT NULL,
  `hExInt` int(11) NOT NULL,
  `hExWorld` int(11) NOT NULL,
  `hHouseTax` int(11) NOT NULL,
  `hHouseTaxTime` int(11) NOT NULL,
  `hInterior` int(11) NOT NULL,
  `hOwned` int(11) NOT NULL,
  `hExPosA` float NOT NULL,
  `hWall` int(11) NOT NULL,
  `hRoof` int(11) NOT NULL,
  `hFloor` int(11) NOT NULL,
  `hDoor` int(11) NOT NULL,
  PRIMARY KEY (`hID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `gb_houses`
--

INSERT INTO `gb_houses` (`hID`, `hOwner`, `hPosX`, `hPosY`, `hPosZ`, `hPosA`, `hExPosX`, `hExPosY`, `hExPosZ`, `hInt`, `hCity`, `hPrice`, `hRooms`, `hLock`, `hUseInt`, `hInvSlots`, `hInvSlotsKol`, `hMoney`, `hHouseRent`, `hEvictName`, `hSellDate`, `hExInt`, `hExWorld`, `hHouseTax`, `hHouseTaxTime`, `hInterior`, `hOwned`, `hExPosA`, `hWall`, `hRoof`, `hFloor`, `hDoor`) VALUES
(1, 'None', 1457.04, -1497.9, 13.5469, 258.199, 0, 0, 0, 1, 1, 1000, 1, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'None|None|None', 70, 0, 0, 2, 1489177140, 0, 0, 0, 0, 0, 0, 13),
(5, 'None', 1461.81, -1467.63, 13.5391, 13.749, -1865.96, 896.656, 1383.05, 5, 0, 10000, 0, 1, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'None|None|None', 70, 0, 0, 2, 1489177276, 6, 0, 89.0383, 1, 0, 0, 0),
(2, 'None', 1828.92, -1677.55, 13.5469, 191.812, 115.799, 80.3908, 1046.32, 5, 0, 5000, 0, 1, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'None|None|None', 58, 0, 0, 2, 1488192670, 2, 0, 8.1976, 5, 3, 10, 0),
(3, 'None', 1854.01, -1914.26, 15.2568, 358.75, 321.049, -759.664, 999.656, 5, 0, 34000, 0, 1, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'None|None|None', 0, 0, 0, 0, 0, 4, 0, 185.523, 0, 0, 0, 0),
(4, 'None', 1460.43, -1490.54, 13.5469, 320.495, -1865.96, 896.656, 1383.05, 5, 0, 1000000, 0, 1, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'None|None|None', 0, 0, 0, 0, 0, 6, 0, 89.0383, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gb_houses_money`
--

CREATE TABLE IF NOT EXISTS `gb_houses_money` (
  `Name` varchar(32) NOT NULL,
  `Money` int(11) unsigned NOT NULL,
  `HouseID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_ipbans`
--

CREATE TABLE IF NOT EXISTS `gb_ipbans` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `uAdminName` varchar(32) NOT NULL,
  `uIP` varchar(32) NOT NULL,
  `uReason` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_itemlog`
--

CREATE TABLE IF NOT EXISTS `gb_itemlog` (
  `ID` int(9) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(25) NOT NULL,
  `ItemID` int(4) NOT NULL,
  `ItemCount` int(5) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_licenses`
--

CREATE TABLE IF NOT EXISTS `gb_licenses` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(9) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Date` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_logauth_site`
--

CREATE TABLE IF NOT EXISTS `gb_logauth_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `date` varchar(50) NOT NULL,
  `type` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_logs`
--

CREATE TABLE IF NOT EXISTS `gb_logs` (
  `lg_id` int(11) NOT NULL AUTO_INCREMENT,
  `lg_type` int(11) NOT NULL,
  `lg_name` varchar(25) DEFAULT NULL,
  `lg_text` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lg_date` int(11) NOT NULL,
  `lg_param_1` int(11) NOT NULL,
  `lg_param_2` int(11) NOT NULL,
  `lg_param_3` int(11) NOT NULL,
  `lg_param_4` int(11) NOT NULL,
  `lg_param_5` int(11) NOT NULL,
  PRIMARY KEY (`lg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `gb_logs`
--

INSERT INTO `gb_logs` (`lg_id`, `lg_type`, `lg_name`, `lg_text`, `lg_date`, `lg_param_1`, `lg_param_2`, `lg_param_3`, `lg_param_4`, `lg_param_5`) VALUES
(1, 25, NULL, 'Tommy_Spark выдал себе предмет Одежда (Количество: 1)', 1488125885, 1, 1, 1, -1, -1),
(2, 25, NULL, 'Tommy_Spark выдал себе предмет Одежда (Количество: 296)', 1488125895, 1, 1, 296, -1, -1),
(3, 25, NULL, 'Tommy_Spark выдал себе предмет Одежда (Количество: 1)', 1488125906, 1, 296, 1, -1, -1),
(4, 25, NULL, 'Tommy_Spark выдал себе предмет Одежда (Количество: 1)', 1488125948, 1, 41, 1, -1, -1),
(5, 25, NULL, 'Tommy_Spark выдал себе предмет Одежда (Количество: 2)', 1488125949, 1, 41, 2, -1, -1),
(6, 25, NULL, 'Tommy_Spark выдал себе предмет Одежда (Количество: 3)', 1488125950, 1, 41, 3, -1, -1),
(7, 25, NULL, 'Tommy_Spark выдал себе предмет Одежда (Количество: 5)', 1488125951, 1, 41, 5, -1, -1),
(8, 25, NULL, 'Tommy_Spark выдал себе предмет Одежда (Количество: 9)', 1488125953, 1, 41, 9, -1, -1),
(9, 25, NULL, 'Tommy_Spark выдал себе предмет Одежда (Количество: 1999)', 1488125955, 1, 41, 1999, -1, -1),
(10, 25, NULL, 'Tommy_Spark выдал себе предмет Одежда (Количество: 1999)', 1488125956, 1, 41, 1999, -1, -1),
(11, 25, NULL, 'Tommy_Spark выдал себе предмет Одежда (Количество: 1)', 1488125973, 1, 85, 1, -1, -1),
(12, 25, NULL, 'Tommy_Spark выдал себе предмет Одежда (Количество: 5858)', 1488125975, 1, 85, 5858, -1, -1),
(13, 25, NULL, 'Tommy_Spark выдал себе предмет Одежда (Количество: 1)', 1488125994, 1, 34, 1, -1, -1),
(14, 25, NULL, 'Tommy_Spark выдал себе предмет Одежда (Количество: 45)', 1488125995, 1, 34, 45, -1, -1),
(15, 8, NULL, 'купил машину', 1488185414, 1, 402, -1, -1, -1),
(16, 2, NULL, 'купил дом', 1488191355, 1, 1, -1, -1, -1),
(17, 13, NULL, 'слил деньги', 1488191936, 1, 1, -1, -1, -1),
(18, 3, NULL, 'продал дом', 1488192664, 1, 1, -1, -1, -1),
(19, 2, NULL, 'купил дом', 1488192670, 1, 2, -1, -1, -1),
(20, 2, NULL, 'купил дом', 1489177140, 2, 1, -1, -1, -1),
(21, 3, NULL, 'продал дом', 1489177181, 2, 1, -1, -1, -1),
(22, 2, NULL, 'купил дом', 1489177276, 2, 5, -1, -1, -1);

-- --------------------------------------------------------

--
-- Структура таблицы `gb_messages`
--

CREATE TABLE IF NOT EXISTS `gb_messages` (
  `mID` int(11) NOT NULL AUTO_INCREMENT,
  `mName` varchar(25) NOT NULL,
  `mNameTo` varchar(25) NOT NULL,
  `mNumber` int(11) NOT NULL,
  `mNumberTo` int(11) NOT NULL,
  `mRead` int(11) NOT NULL,
  `mDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mText` varchar(128) NOT NULL,
  PRIMARY KEY (`mID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_nickchange`
--

CREATE TABLE IF NOT EXISTS `gb_nickchange` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `aID` int(22) NOT NULL,
  `aName_One` varchar(32) NOT NULL,
  `aName_Two` varchar(32) NOT NULL,
  `Date` int(22) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_object`
--

CREATE TABLE IF NOT EXISTS `gb_object` (
  `oID` int(11) NOT NULL AUTO_INCREMENT,
  `oX` float NOT NULL,
  `oY` float NOT NULL,
  `oZ` float NOT NULL,
  `oRX` float NOT NULL,
  `oRY` float NOT NULL,
  `oRZ` float NOT NULL,
  `oModel` int(6) NOT NULL,
  PRIMARY KEY (`oID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_others`
--

CREATE TABLE IF NOT EXISTS `gb_others` (
  `Ambar1` int(11) NOT NULL,
  `Ambar2` int(11) NOT NULL,
  `Ambar3` int(11) NOT NULL,
  `Ambar4` int(11) NOT NULL,
  `SemA1` int(11) NOT NULL,
  `SemA2` int(11) NOT NULL,
  `FuelBurrel` int(11) NOT NULL,
  `sProducts` int(11) NOT NULL,
  `MebelZavod` int(11) NOT NULL,
  `ToplivoZavod` int(11) NOT NULL,
  `WoodsZavod` int(11) NOT NULL,
  `wsWoods` int(11) NOT NULL,
  `wsWoodsSklad` int(11) NOT NULL,
  `adminsPanel0` int(11) NOT NULL DEFAULT '1',
  `adminsPanel1` int(11) NOT NULL DEFAULT '1',
  `adminsPanel2` int(11) NOT NULL DEFAULT '1',
  `adminsPanel3` int(11) NOT NULL DEFAULT '1',
  `adminsPanel4` int(11) NOT NULL DEFAULT '1',
  `adminsPanel5` int(11) NOT NULL DEFAULT '1',
  `sMeria0` int(11) NOT NULL DEFAULT '0',
  `sMeria1` int(11) NOT NULL DEFAULT '1',
  `sMeria2` int(11) NOT NULL DEFAULT '100',
  `sMeria3` int(11) NOT NULL DEFAULT '100',
  `sMeria4` int(11) NOT NULL DEFAULT '100',
  `sMeria5` int(11) NOT NULL DEFAULT '100',
  `sMeria6` int(11) NOT NULL DEFAULT '100',
  `sMeria7` int(11) NOT NULL DEFAULT '100',
  `sMeria8` int(11) NOT NULL DEFAULT '100',
  `sMeria9` int(11) NOT NULL DEFAULT '100',
  `sHouses` int(11) NOT NULL DEFAULT '100',
  `sBusiness` int(11) NOT NULL DEFAULT '200',
  `adminsPanel6` int(11) NOT NULL DEFAULT '1',
  `adminsPanel7` int(11) NOT NULL DEFAULT '1',
  `adminsPanel8` int(11) NOT NULL DEFAULT '1',
  `adminsPanel9` int(11) DEFAULT '1',
  `adminsPanel10` int(11) NOT NULL DEFAULT '1',
  `adminsPanel11` int(11) NOT NULL DEFAULT '1',
  `Nalog` varchar(64) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0',
  `adminsPanel12` int(11) NOT NULL,
  `Ammo` varchar(54) NOT NULL DEFAULT '0|0|0|0',
  `ArmyRecord` varchar(32) NOT NULL DEFAULT '0|0|0|0|0',
  `ArmyRecordName` varchar(64) NOT NULL DEFAULT 'None|None|None|None|None',
  `adminsPanel13` int(11) NOT NULL,
  `adminsPanel14` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gb_others`
--

INSERT INTO `gb_others` (`Ambar1`, `Ambar2`, `Ambar3`, `Ambar4`, `SemA1`, `SemA2`, `FuelBurrel`, `sProducts`, `MebelZavod`, `ToplivoZavod`, `WoodsZavod`, `wsWoods`, `wsWoodsSklad`, `adminsPanel0`, `adminsPanel1`, `adminsPanel2`, `adminsPanel3`, `adminsPanel4`, `adminsPanel5`, `sMeria0`, `sMeria1`, `sMeria2`, `sMeria3`, `sMeria4`, `sMeria5`, `sMeria6`, `sMeria7`, `sMeria8`, `sMeria9`, `sHouses`, `sBusiness`, `adminsPanel6`, `adminsPanel7`, `adminsPanel8`, `adminsPanel9`, `adminsPanel10`, `adminsPanel11`, `Nalog`, `adminsPanel12`, `Ammo`, `ArmyRecord`, `ArmyRecordName`, `adminsPanel13`, `adminsPanel14`) VALUES
(25, 0, 0, 0, 10000, 5000, 60000, 1036950, 186100, 311000, 1184000, 2118100, 9000, 1, 1, 2, 3, 1, 4, -177449367, 12, 700, 700, 700, 700, 500, 500, 500, 700, 300, 300, 1, 3, 2, 1, 4, 2, '1000|1000|1000|1000|1000|5000|5000|1800|1250|2500|1500|1000|1000', 1, '238842|-1446558|-4253700|171064', '130|19|60|60|77', 'Duglas_Miller|Adam_West|Eugene_Owen|Eugene_Owen|Adam_West', 5, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `gb_prison`
--

CREATE TABLE IF NOT EXISTS `gb_prison` (
  `pID` int(11) NOT NULL AUTO_INCREMENT,
  `pArrest` int(11) NOT NULL,
  `pName` varchar(32) NOT NULL,
  `pReason` varchar(128) NOT NULL,
  `pDate` int(11) NOT NULL,
  `pExitDate` int(11) NOT NULL,
  `pUDODate` int(11) NOT NULL,
  `pUDOReason` varchar(128) NOT NULL,
  `pInv` varchar(512) NOT NULL,
  `pInvSlot` varchar(512) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_sessions`
--

CREATE TABLE IF NOT EXISTS `gb_sessions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(32) NOT NULL,
  `pIP` varchar(32) NOT NULL,
  `pSessionStart` int(11) NOT NULL,
  `pSessionEnd` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `gb_sessions`
--

INSERT INTO `gb_sessions` (`ID`, `uName`, `pIP`, `pSessionStart`, `pSessionEnd`) VALUES
(1, 'Tommy_Spark', '127.0.0.1', 1488124276, 1488124426),
(2, 'Tommy_Spark', '127.0.0.1', 1488125427, 1488125435),
(3, 'Tommy_Spark', '127.0.0.1', 1488125479, 1488126110),
(4, 'Tommy_Spark', '127.0.0.1', 1488191222, 1488191261),
(5, 'Tommy_Spark', '127.0.0.1', 1488191310, 1488192500),
(6, 'Walther_Ribbentrop', '127.0.0.1', 1488294631, 1488294641),
(7, 'Walther_Ribbentrop', '127.0.0.1', 1489176753, 1489176819),
(8, 'Tommy_Spark', '127.0.0.1', 1489426236, 1489428283);

-- --------------------------------------------------------

--
-- Структура таблицы `gb_spraytag`
--

CREATE TABLE IF NOT EXISTS `gb_spraytag` (
  `sID` int(11) NOT NULL AUTO_INCREMENT,
  `sX` float NOT NULL,
  `sY` float NOT NULL,
  `sZ` float NOT NULL,
  `sRX` float NOT NULL,
  `sRY` float NOT NULL,
  `sRZ` float NOT NULL,
  `sAuthorID` int(11) NOT NULL,
  `sAuthorName` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sFontSize` int(11) NOT NULL,
  `sText` varchar(201) NOT NULL,
  `sFontColor` varchar(20) NOT NULL,
  `sFont` varchar(50) NOT NULL,
  `sVarificated` int(1) NOT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gb_users`
--

CREATE TABLE IF NOT EXISTS `gb_users` (
  `uID` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(25) NOT NULL,
  `uPass` varchar(33) NOT NULL,
  `uSex` int(11) NOT NULL,
  `uColor` int(11) NOT NULL,
  `uNation` int(11) NOT NULL,
  `uCountry` int(11) NOT NULL,
  `uRole` int(11) NOT NULL,
  `uAge` int(11) NOT NULL,
  `uSettings` varchar(48) NOT NULL DEFAULT '1|0|1|0|1|1|0|0|0',
  `uMoney` int(11) NOT NULL DEFAULT '200',
  `uJob` int(11) NOT NULL,
  `uP1` float NOT NULL,
  `uP2` float NOT NULL,
  `uP3` float NOT NULL,
  `uLastTime` int(11) NOT NULL,
  `uInt` int(11) NOT NULL,
  `uWorld` int(11) NOT NULL,
  `uSuspect` int(11) NOT NULL,
  `uTaxiNoZp` int(11) NOT NULL,
  `uHunger` int(11) NOT NULL DEFAULT '100',
  `uFermNoZp` int(11) NOT NULL,
  `uBusNoZp` int(11) NOT NULL,
  `uBusSkill` int(11) NOT NULL,
  `uDalnNoZp` int(11) NOT NULL,
  `uDalnSkill` int(11) NOT NULL,
  `uWoodsNoZp` int(11) NOT NULL,
  `uJobDouble` varchar(256) NOT NULL DEFAULT '0|0|0|0|0|0|0',
  `uInvSlots` varchar(512) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `uInvSlotsKol` varchar(512) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `uNumber` int(11) NOT NULL DEFAULT '0',
  `uContacts` varchar(128) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0',
  `uPhoneName1` varchar(25) NOT NULL DEFAULT 'Нет',
  `uPhoneName2` varchar(25) NOT NULL DEFAULT 'Нет',
  `uPhoneName3` varchar(25) NOT NULL DEFAULT 'Нет',
  `uPhoneName4` varchar(25) NOT NULL DEFAULT 'Нет',
  `uPhoneName5` varchar(25) NOT NULL DEFAULT 'Нет',
  `uPhoneName6` varchar(25) NOT NULL DEFAULT 'Нет',
  `uPhoneName7` varchar(25) NOT NULL DEFAULT 'Нет',
  `uPhoneName8` varchar(25) NOT NULL DEFAULT 'Нет',
  `uPhoneName9` varchar(25) NOT NULL DEFAULT 'Нет',
  `uPhoneName10` varchar(25) NOT NULL DEFAULT 'Нет',
  `uLeader` int(11) NOT NULL,
  `uMember` int(11) NOT NULL,
  `uRank` int(11) NOT NULL,
  `uJailSettings` varchar(48) NOT NULL DEFAULT '0|0|0|0|0',
  `uStatus` int(11) NOT NULL DEFAULT '0',
  `uLicenses` varchar(48) NOT NULL DEFAULT '0|0|0|0',
  `uWarn` int(11) NOT NULL,
  `uMute` int(11) NOT NULL,
  `uRegDate` int(11) NOT NULL,
  `uMemberGang` int(11) NOT NULL,
  `uRankGang` int(11) NOT NULL,
  `uGMoney` int(11) NOT NULL DEFAULT '0',
  `uBank` int(11) NOT NULL DEFAULT '0',
  `uEmail` varchar(64) NOT NULL,
  `uHouseSpawn` int(11) NOT NULL,
  `uLevel` int(11) NOT NULL,
  `uPM` int(11) NOT NULL,
  `uOOC` int(11) NOT NULL,
  `uRO` int(11) NOT NULL,
  `uEther` int(11) NOT NULL,
  `uBanPlayer` int(11) NOT NULL,
  `uRadio` int(11) NOT NULL,
  `uDMJail` int(11) NOT NULL,
  `uRenturn` varchar(32) NOT NULL DEFAULT '0|0',
  `uRenturn1` varchar(32) NOT NULL DEFAULT '0|0',
  `uEvictID` int(11) NOT NULL,
  `uCriminal` int(11) NOT NULL,
  `uLimitUgon` int(11) NOT NULL,
  `uLimitOtmis` int(11) NOT NULL,
  `uSiteCode` int(11) NOT NULL,
  `uJobValue` int(11) NOT NULL DEFAULT '200',
  `uJobValueDate` int(11) NOT NULL,
  `uCheck` int(11) NOT NULL,
  `uShowJobValue` int(11) NOT NULL,
  `uFriend` varchar(32) NOT NULL,
  `uFriendON` int(11) NOT NULL,
  `uFriendClock` int(11) NOT NULL,
  `uFriendValue` int(11) NOT NULL,
  `uFriendMe` int(11) NOT NULL,
  `StyleOne` int(11) NOT NULL,
  `StyleTwo` int(11) NOT NULL,
  `StyleThree` int(11) NOT NULL,
  `StyleFour` int(11) NOT NULL,
  `ChangeStyle` int(11) NOT NULL,
  `StyleDate` int(11) NOT NULL,
  `StyleDateTwo` int(11) NOT NULL,
  `StyleFive` int(11) NOT NULL,
  `StyleDateThree` int(11) NOT NULL,
  `ValueSt` int(11) NOT NULL,
  `uTicket` int(11) NOT NULL,
  `uTicketPay` int(11) NOT NULL,
  `uLicensesTake` varchar(32) NOT NULL DEFAULT '0|0|0|0',
  `uPlayerText` varchar(250) NOT NULL,
  `uActive` int(1) NOT NULL DEFAULT '0',
  `uRadioChanel` int(3) NOT NULL DEFAULT '0',
  `uRadioSubChanel` int(3) NOT NULL DEFAULT '0',
  `uRetest` int(1) NOT NULL DEFAULT '0',
  `uIsPlayerJob` varchar(32) NOT NULL DEFAULT '0|0|0',
  `uJobSkin` int(3) NOT NULL,
  `uReferer` varchar(25) NOT NULL,
  `uLicGiveDate` varchar(32) NOT NULL,
  `uSupport` int(1) NOT NULL DEFAULT '0',
  `uSubFrac` int(2) NOT NULL DEFAULT '1',
  `uBMute` int(5) NOT NULL DEFAULT '0',
  `uAdminStatsLike` int(11) NOT NULL DEFAULT '0',
  `uAdminStatsDisLike` int(11) NOT NULL DEFAULT '0',
  `uPayTime` int(4) NOT NULL DEFAULT '0',
  `uPinCode` int(7) NOT NULL DEFAULT '0',
  `favAnim` varchar(128) NOT NULL,
  `favAnimParams` varchar(128) NOT NULL,
  `uDeath` int(11) NOT NULL,
  `uCrimeL` int(11) NOT NULL,
  `uCrimeM` int(11) NOT NULL,
  `uCrimeRank` int(11) NOT NULL,
  `uHouse` int(11) NOT NULL,
  `uPremium` int(11) NOT NULL,
  `uPremiumDate` int(11) NOT NULL,
  `uArrest` int(11) NOT NULL,
  `uArrestTime` int(11) NOT NULL,
  `uArrestStat` int(11) NOT NULL,
  `uArrestCamera` int(11) NOT NULL,
  `uArrestStatDate` int(11) NOT NULL,
  `uArrestReason` varchar(64) NOT NULL,
  `uArrestCooler` int(11) NOT NULL,
  `uCrimeSet` varchar(64) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0',
  `uLastIP` varchar(32) NOT NULL,
  `uArpBan` int(11) NOT NULL,
  `uJail` int(11) NOT NULL,
  `uJailTime` int(11) NOT NULL,
  `uRegIP` varchar(32) NOT NULL,
  PRIMARY KEY (`uID`),
  KEY `uName` (`uName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `gb_users`
--

INSERT INTO `gb_users` (`uID`, `uName`, `uPass`, `uSex`, `uColor`, `uNation`, `uCountry`, `uRole`, `uAge`, `uSettings`, `uMoney`, `uJob`, `uP1`, `uP2`, `uP3`, `uLastTime`, `uInt`, `uWorld`, `uSuspect`, `uTaxiNoZp`, `uHunger`, `uFermNoZp`, `uBusNoZp`, `uBusSkill`, `uDalnNoZp`, `uDalnSkill`, `uWoodsNoZp`, `uJobDouble`, `uInvSlots`, `uInvSlotsKol`, `uNumber`, `uContacts`, `uPhoneName1`, `uPhoneName2`, `uPhoneName3`, `uPhoneName4`, `uPhoneName5`, `uPhoneName6`, `uPhoneName7`, `uPhoneName8`, `uPhoneName9`, `uPhoneName10`, `uLeader`, `uMember`, `uRank`, `uJailSettings`, `uStatus`, `uLicenses`, `uWarn`, `uMute`, `uRegDate`, `uMemberGang`, `uRankGang`, `uGMoney`, `uBank`, `uEmail`, `uHouseSpawn`, `uLevel`, `uPM`, `uOOC`, `uRO`, `uEther`, `uBanPlayer`, `uRadio`, `uDMJail`, `uRenturn`, `uRenturn1`, `uEvictID`, `uCriminal`, `uLimitUgon`, `uLimitOtmis`, `uSiteCode`, `uJobValue`, `uJobValueDate`, `uCheck`, `uShowJobValue`, `uFriend`, `uFriendON`, `uFriendClock`, `uFriendValue`, `uFriendMe`, `StyleOne`, `StyleTwo`, `StyleThree`, `StyleFour`, `ChangeStyle`, `StyleDate`, `StyleDateTwo`, `StyleFive`, `StyleDateThree`, `ValueSt`, `uTicket`, `uTicketPay`, `uLicensesTake`, `uPlayerText`, `uActive`, `uRadioChanel`, `uRadioSubChanel`, `uRetest`, `uIsPlayerJob`, `uJobSkin`, `uReferer`, `uLicGiveDate`, `uSupport`, `uSubFrac`, `uBMute`, `uAdminStatsLike`, `uAdminStatsDisLike`, `uPayTime`, `uPinCode`, `favAnim`, `favAnimParams`, `uDeath`, `uCrimeL`, `uCrimeM`, `uCrimeRank`, `uHouse`, `uPremium`, `uPremiumDate`, `uArrest`, `uArrestTime`, `uArrestStat`, `uArrestCamera`, `uArrestStatDate`, `uArrestReason`, `uArrestCooler`, `uCrimeSet`, `uLastIP`, `uArpBan`, `uJail`, `uJailTime`, `uRegIP`) VALUES
(2, 'Cheat_Master', '13371337', 1, 1, 3, 1, 1, 26, '1|0|1|0|1|1|0|0|0', 999599, 0, 1309.5, -935.873, 4001.08, 1489428283, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0', '452|516|0|0|41|41|41|0|495|34|0|375|0|0|0|59|0|0|359|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|315|0|0|46|366|0|399', '1|19|0|0|5|9|1999|0|1|1|0|1|0|0|0|1|0|0|1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|0|0|1|1|0|1', 745025, '0|0|0|0|0|0|0|0|0|0', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 'Нет', 5, 5, 1, '0|0|0|0|0', 0, '1|0|0|0', 0, 0, 18, 0, 0, 50000, 6001, '[CM]Читерок:3@cheat-master.ru', 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0', '0|0', 0, 0, 0, 0, 0, 200, 73, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1|1|1|1', '', 1, 1, 99, 0, '0|0|1', 219, '', '', 1, 1, 0, 55, 0, 19, 0, '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '0,0,0,0,0,0,0,0,0,0', '', 0, 0, 0, '192.168.1.1');

-- --------------------------------------------------------

--
-- Структура таблицы `logs_donate`
--

CREATE TABLE IF NOT EXISTS `logs_donate` (
  `id` bigint(9) NOT NULL AUTO_INCREMENT,
  `user` bigint(20) NOT NULL,
  `mes` varchar(100) NOT NULL,
  `tip` bigint(1) NOT NULL,
  `sum` float NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `monitoring`
--

CREATE TABLE IF NOT EXISTS `monitoring` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` text NOT NULL,
  `players` int(11) NOT NULL,
  `maxplayers` int(11) NOT NULL,
  `mapname` text NOT NULL,
  `gamemode` text NOT NULL,
  `status` int(11) NOT NULL,
  `last_connect` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=9937 ;

--
-- Дамп данных таблицы `monitoring`
--

INSERT INTO `monitoring` (`id`, `hostname`, `players`, `maxplayers`, `mapname`, `gamemode`, `status`, `last_connect`) VALUES
(1, 'Retrieving info...', 0, 0, 'Retrieving info...', 'Retrieving info...', 0, '08  2016, 13:57:29');

-- --------------------------------------------------------

--
-- Структура таблицы `news_cat`
--

CREATE TABLE IF NOT EXISTS `news_cat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `news_cat`
--

INSERT INTO `news_cat` (`id`, `name`, `url`) VALUES
(1, 'Новости', 'news'),
(9, 'тех работы', 'teh-raboty'),
(8, 'Обновления', 'obnovleniya');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID СТРАНИЦЫ',
  `name` varchar(255) NOT NULL COMMENT 'НАЗВАНИЕ СТРАНИЦЫ',
  `text` text NOT NULL COMMENT 'СОДЕРЖИМОЕ СТРАНИЦЫ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=411 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `name`, `text`) VALUES
(3, '0J4gRHJpZnRFbXBpcmU=', 'PHA+RHJpZnRFbXBpcmUgLSDRjdGC0L4g0L/RgNC+0LXQutGCINC80L3QvtCz0L7Qv9C+0LvRjNC30L7QstCw0YLQtdC70YzRgdC60L7QuSDQuNCz0YDRiyBHVEE6U2FuIEFuZHJlYXMgTXVsdGlwbGF5ZXIuJm5ic3A7PGJyIC8+CtCc0Ysg0YHRgtCw0YDQsNC10LzRgdGPINGB0LTQtdC70LDRgtGMINCS0LDRiNGDINC40LPRgNGDINC60LDQuiDQvNC+0LbQvdC+INC40L3RgtC10YDQtdGB0L3QtdC5INC4INC90LDQv9C+0LvQvdC10L3QvdC+0Lkg0LfQsNC/0L7QvNC40L3QsNGO0YnQuNC80Lgg0LzQvtC80LXQvdGC0LDQvNC4INC+0YIg0LrQvtGC0L7RgNGL0YUmbmJzcDvQstGLINC/0L7Qu9GD0YfQsNC10YLQtSDRg9C00L7QstC+0LvRjNGB0YLQstC40LUuINCc0Ysg0L7QsdGK0LXQtNC40L3Rj9C10Lwg0LvRg9GH0YjQuNC1INGN0LvQtdC80LXQvdGC0Ysg0LjQs9GA0YsgU0EtTVAg0YEg0L3QvtCy0YvQvNC4INC40LTQtdGP0LzQuCwg0LrQvtGC0L7RgNGL0YUg0LLQsNC8INC10YnRkSDQvdC1INC/0YDQuNGF0L7QtNC40LvQvtGB0Ywg0LLQuNC00LXRgtGMITxiciAvPgrQn9GA0L7QtdC60YIg0L7RgtC60YDQvtC10YIg0JLQsNC8INC90L7QstGL0LUg0LLQvtC30LzQvtC20L3QvtGB0YLQuCDQvtGCINC60L7RgtC+0YDRi9GFINCx0YPQtNC10YLQtSDQsiDQv9C+0LvQvdC+0Lwg0LLQvtGB0YLQvtGA0LPQtS4mbmJzcDs8YnIgLz4K0JAg0YLQsNC60LbQtSDQstGLINC80L7QttC10YLQtSDQv9GA0LXQtNC70L7QttC40YLRjCDRgdCy0L7RjiDRg9C90LjQutCw0LvRjNC90YPRjiDQuNC00LXRjiDQuCDQvNGLINC/0L7QvNC+0LbQtdC8INC10ZEg0LLQvtC/0LvQvtGC0LjRgtGMINCyINGA0LXQsNC70YzQvdC+0YHRgtGMINC90LAg0L3QsNGI0LXQvCDRgdC10YDQstC10YDQtS4mbmJzcDvQn9C+0LTQutC70Y7Rh9C40LLRiNC40YHRjCDQuiDRgdC10YDQstC10YDRgyDQstGLINC/0L7Rj9Cy0LjRgtC10YHRjCDQvtCx0YvRh9C90YvQvCDQuNCz0YDQsNC60L7QvCDQvdC1INC40LzQtdGO0YnQuNC8INGB0LrQuNC70LAg0Lgg0YDQtdC/0YPRgtCw0YbQuNC4INC/0LXRgNC10LQg0LTRgNGD0LPQuNC80Lgg0LjQs9GA0L7QutCw0LzQuCZuYnNwO9CyINCzLtCb0L7RgS3QodCw0L3RgtC+0YEg0Lgg0L/QtdGA0LXQtCDQstCw0LzQuCDQvtGC0LrRgNGL0YLRiyDQsdC+0LvRjNGI0LjQtSDQstC+0YDQvtGC0LAg0LIg0LvRjtCx0YPRjiDQuNC90YLQtdGA0LXRgdGD0Y7RidGD0Y4g0LLQsNGBINC00L7RgNC+0LPRgy48L3A+Cgo8cD48aW1nIGFsdD0iIiBzcmM9Ii9pbWcvcGFnZXMvcmVnLnBuZyIgLz48L3A+Cgo8cD7QktGLINC80L7QttC10YLQtSDRgdC+0LfQtNCw0YLRjCDRgdCy0L7RjiDQs9GA0YPQv9C40YDQvtCy0LrRgyDQuDxiciAvPgrQtNC+0LrQsNC30LDRgtGMINGH0YLQviDQstCw0YjQsCDQs9GA0YPQv9CwINC70YPRh9GI0LDRjyDQvdCwINGB0LXRgNCy0LXRgNC1LCDQuNC70Lgg0LbQtSDQvNC+0LbQtdGC0LUg0L/RgNC40LzQutC90YPRgtGMINGD0LbQtSDQuiDRgdGD0YnQtdGB0YLQstGD0Y7RidC40Lwg0LPRgNGD0L/Qv9Cw0LwuICZuYnNwOzxiciAvPgo8YnIgLz4KPGltZyBhbHQ9IiIgc3JjPSIvaW1nL3BhZ2VzL2dhbmcucG5nIiAvPjxiciAvPgo8YnIgLz4K0KPRh9Cw0YHRgtCy0LDQstGC0Ywg0LIg0LPQvtC90LrQsNGFLCDQvNC10YDQvtC/0YDQuNGP0YLQuNGP0YUg0LjQu9C4INC20LUg0LIg0LLRi9C30LLQsNGC0Ywg0YHQvtC/0LXRgNC90LjQutCwIDEg0L3QsCAxINC4INC00L7QutCw0LfQsNGC0Ywg0LrRgtC+INC10YHRgtGMINGI0YLQvi48YnIgLz4KPGltZyBhbHQ9IiIgc3JjPSIvaW1nL3BhZ2VzL2dvbi5wbmciIC8+PGJyIC8+CjxiciAvPgombmJzcDvQndCwINGB0LXRgNCy0LXRgNC1INCx0L7Qu9GM0YjQvtC1INC60L7Qu9C40YfQtdGB0YLQstC+INGB0LjRgdGC0LXQvCAs0LrQvtGC0L7RgNGL0LUg0LzQvtCz0YPRgiDQstCw0YEg0YPQstC70LXRh9GMLiZuYnNwOzwvcD4='),
(6, '0J7RgtCy0LXRgtGLINC90LAg0L3QtdC60L7RgtC+0YDRi9C1INCy0L7Qv9GA0L7RgdGL', 'PHA+PHN0cm9uZz4tINCd0LXQutC+0YLQvtGA0YvQtSDRgtC10LrRgdC00YDQsNCy0Ysg0LrQsNC20LXRgiDQvdC1INGA0L7QstC90L4g0Lgg0L3QtSDQv9C+0L3Rj9GC0L3QviDRh9GC0L4g0Log0YfQtdC80YMuPC9zdHJvbmc+PGJyIC8+CtCU0LvRjyDRgNC10YjQtdC90LjRjyDQtNCw0L3QvdC+0Lkg0L/RgNC+0LHQu9C10LzRiyDRg9GB0YLQsNC90L7QstC40YLQtSDRgNGD0YHRgdC40YTQuNC60LDRgtC+0YAgKDxhIGhyZWY9Imh0dHA6Ly9zaC5zdC94SGY1OSIgdGFyZ2V0PSJfYmxhbmsiPtCh0LrQsNGH0LDRgtGMPC9hPik8L3A+Cgo8aHIgLz4KPHA+PHN0cm9uZz4tINCa0LDQuiDQv9C40YHQsNGC0Ywg0LjQs9GA0L7QutGDINGH0YLQvtCxINC10LPQviDQvdC40Log0LLRgdGC0LDQstC70Y/Qu9GB0Y8g0LDQstGC0L7QvNCw0YLQuNGH0LXRgdC60Lgg0LIg0YfQsNGCINC4INCx0YvQuyDRhtCy0LXRgtC90YvQvC48L3N0cm9uZz48YnIgLz4KPGltZyBhbHQ9IiIgc3JjPSIvaW1nL3BhZ2VzL3RleHQucG5nIiAvPjxiciAvPgrQlNC70Y8g0Y3RgtC+INC40YHQv9C+0LvRjNC30YPQtdC8INGB0LjQvNCy0L7QuyDihJYg0LjQu9C4ICUg0L3QsNC/0YDQuNC80LXRgCDQv9C40YjQtdC8OiDQv9GA0LjQstC10YIgJTAsIDAgLSDRjdGC0L4gaWQg0LjQs9GA0L7QutCwINC/0L4g0L3QtdC80YMg0YHQtdGA0LLQtdGAINC90LDQudC00ZHRgiDQvdGD0LbQvdC+0LPQviDQuNCz0YDQvtC60LAg0Lgg0L/RgNC40L/QuNGI0LXRgiDQvdC40Log0LIg0YfQsNGCLjwvcD4KCjxociAvPgo8cD48YnIgLz4KJm5ic3A7PC9wPg=='),
(4, '0JrQvtC80LDQvdC00Ys=', 'PHRhYmxlIGNlbGxwYWRkaW5nPSIwIiBjZWxsc3BhY2luZz0iMCIgc3R5bGU9IndpZHRoOjc2NXB4Ij4KCTx0Ym9keT4KCQk8dHI+CgkJCTx0aCBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjpyZ2IoMjQ1LCAyNDcsIDI0OCkiPtCi0LXQu9C10L/QvtGA0YLRiyAmcmFxdW87INCi0YDQsNGB0YHRizwvdGg+CgkJCTx0aCBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjpyZ2IoMjQ1LCAyNDcsIDI0OCkiPtCe0L/QuNGB0LDQvdC40LU8L3RoPgoJCTwvdHI+CgkJPHRyPgoJCQk8dGQgc3R5bGU9InZlcnRpY2FsLWFsaWduOnRvcCI+L2RyYWcgWzEuLjJdJm5ic3A7PGJyIC8+CgkJCS9kcmlmdCBbMS4uMThdJm5ic3A7Jm5ic3A7PC90ZD4KCQkJPHRkIHN0eWxlPSJ2ZXJ0aWNhbC1hbGlnbjp0b3AiPtCU0YDQsNCzINCi0YDQsNGB0YHRiyZuYnNwOzxiciAvPgoJCQnQlNGA0LjRhNGCINCi0YDQsNGB0YHRizwvdGQ+CgkJPC90cj4KCQk8dHI+CgkJCTx0aCBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjpyZ2IoMjQ1LCAyNDcsIDI0OCkiPtCi0LXQu9C10L/QvtGA0YLRiyAmcmFxdW87INCU0LXRgNC10LLQvdC4PC90aD4KCQkJPHRoIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNDUsIDI0NywgMjQ4KSI+0J7Qv9C40YHQsNC90LjQtTwvdGg+CgkJPC90cj4KCQk8dHI+CgkJCTx0ZCBzdHlsZT0idmVydGljYWwtYWxpZ246dG9wIj4vZmMmbmJzcDsmbmJzcDs8YnIgLz4KCQkJL2FwJm5ic3A7Jm5ic3A7PGJyIC8+CgkJCS9tbyZuYnNwOyZuYnNwOzxiciAvPgoJCQkvcGMmbmJzcDsmbmJzcDs8YnIgLz4KCQkJL2JsJm5ic3A7Jm5ic3A7PGJyIC8+CgkJCS9iaSZuYnNwOyZuYnNwOzxiciAvPgoJCQkvYnkmbmJzcDs8L3RkPgoJCQk8dGQgc3R5bGU9InZlcnRpY2FsLWFsaWduOnRvcCI+0JTQtdGA0LXQstC90Y8gRm9ydCBDYXJzb24mbmJzcDsmbmJzcDs8YnIgLz4KCQkJ0JTQtdGA0LXQstC90Y8gQW5nZWwgUGluZSZuYnNwOyZuYnNwOzxiciAvPgoJCQnQlNC10YDQtdCy0L3RjyBNb250Z29tZXJ5Jm5ic3A7Jm5ic3A7PGJyIC8+CgkJCdCU0LXRgNC10LLQvdGPIFBvbG9taW5vIENyZWVrJm5ic3A7Jm5ic3A7PGJyIC8+CgkJCdCU0LXRgNC10LLQvdGPIEJsdWViZXJyeSZuYnNwOyZuYnNwOzxiciAvPgoJCQnQlNC10YDQtdCy0L3RjyBEaWxsaW1vcmUmbmJzcDsmbmJzcDs8YnIgLz4KCQkJ0JTQtdGA0LXQstC90Y8gQmF5c2lkZSBNYXJpbmEmbmJzcDs8L3RkPgoJCTwvdHI+CgkJPHRyPgoJCQk8dGggc3R5bGU9ImJhY2tncm91bmQtY29sb3I6cmdiKDI0NSwgMjQ3LCAyNDgpIj7QntCx0YvRh9C90YvQtSAmcmFxdW87INCn0LDRgjwvdGg+CgkJCTx0aCBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjpyZ2IoMjQ1LCAyNDcsIDI0OCkiPtCe0L/QuNGB0LDQvdC40LU8L3RoPgoJCTwvdHI+CgkJPHRyPgoJCQk8dGQgc3R5bGU9InZlcnRpY2FsLWFsaWduOnRvcCI+L2NjbWUmbmJzcDs8YnIgLz4KCQkJL29iICh0ZXh0KSZuYnNwOyZuYnNwOzxiciAvPgoJCQkvY3QgWzAuLjEwMDBdJm5ic3A7PC90ZD4KCQkJPHRkIHN0eWxlPSJ2ZXJ0aWNhbC1hbGlnbjp0b3AiPtCe0YfQuNGB0YLQuNGC0Ywg0YHQstC+0Lkg0YfQsNGCJm5ic3A7PGJyIC8+CgkJCdCf0L7QtNCw0YLRjCDQvtCx0YzRj9Cy0LvQtdC90LjRjyZuYnNwOzxiciAvPgoJCQnQmNC30LzQtdC90LjRgtGMINGB0LLQvtC5INCy0LjRgNGC0YPQsNC70YzQvdGL0Lkg0YfQsNGCPC90ZD4KCQk8L3RyPgoJCTx0cj4KCQkJPHRoIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNDUsIDI0NywgMjQ4KSI+0J7QsdGL0YfQvdGL0LUgJnJhcXVvOyDQmNC90YTQvtGA0LzQsNGG0LjQvtC90L3Ri9C1PC90aD4KCQkJPHRoIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNDUsIDI0NywgMjQ4KSI+0J7Qv9C40YHQsNC90LjQtTwvdGg+CgkJPC90cj4KCQk8dHI+CgkJCTx0ZCBzdHlsZT0idmVydGljYWwtYWxpZ246dG9wIj4vdG9wbW9uZXkmbmJzcDsmbmJzcDsmbmJzcDs8YnIgLz4KCQkJL3RvcGxldmVsJm5ic3A7Jm5ic3A7Jm5ic3A7PGJyIC8+CgkJCS90aW1lJm5ic3A7Jm5ic3A7Jm5ic3A7PGJyIC8+CgkJCS9hZG1pbnMmbmJzcDsmbmJzcDsmbmJzcDs8YnIgLz4KCQkJL3ZpcHMmbmJzcDsmbmJzcDsmbmJzcDs8YnIgLz4KCQkJL2hlbHAmbmJzcDsmbmJzcDsmbmJzcDs8YnIgLz4KCQkJL3J1bGVzJm5ic3A7Jm5ic3A7PGJyIC8+CgkJCS9teXN0YXQmbmJzcDsmbmJzcDsmbmJzcDs8YnIgLz4KCQkJL215ZHQ8L3RkPgoJCQk8dGQgc3R5bGU9InZlcnRpY2FsLWFsaWduOnRvcCI+PHN0cm9uZz5bVE9QXSZuYnNwOzwvc3Ryb25nPtCh0LDQvNGL0YUg0LHQvtCz0LDRgtGL0YUg0LjQs9GA0L7QutC+0LIg0L3QsCDRgdC10YDQstC10YDQtSAmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDs8YnIgLz4KCQkJPHN0cm9uZz5bVE9QXTwvc3Ryb25nPiZuYnNwO9CY0LPRgNC+0LrQvtCyINC/0L4g0YPRgNC+0LLQvdGP0LwmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDs8YnIgLz4KCQkJ0J/QvtGB0LzQvtGC0YDQtdGC0Ywg0LLRgNC10LzRjyDQutCw0YHRgtC+0LImbmJzcDs8YnIgLz4KCQkJ0KPQt9C90LDRgtGMINCw0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGA0L7QsiDQvtC90LvQsNC50L0mbmJzcDs8YnIgLz4KCQkJ0JjQvdGE0L7RgNC80LDRhtC40Y8g0L4gVklQJm5ic3A7PGJyIC8+CgkJCdCY0L3RhNC+0YDQvNCw0YbQuNGPJm5ic3A7PGJyIC8+CgkJCdCf0YDQsNCy0LjQu9CwJm5ic3A7PGJyIC8+CgkJCdCj0LfQvdCw0YLRjCDQuNC90YTQvtGA0LzQsNGG0LjRjiDQvtCxINCw0LrQutCw0YPQvdGC0LUmbmJzcDs8YnIgLz4KCQkJ0KPQt9C90LDRgtGMINGB0LLQvtC5INCS0LjRgNGC0YPQsNC70YzQvdGL0Lkg0LzQuNGAPC90ZD4KCQk8L3RyPgoJCTx0cj4KCQkJPHRoIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNDUsIDI0NywgMjQ4KSI+0J7QsdGL0YfQvdGL0LUgJnJhcXVvOyDQn9GA0L7Rh9C40LU8L3RoPgoJCQk8dGggc3R5bGU9ImJhY2tncm91bmQtY29sb3I6cmdiKDI0NSwgMjQ3LCAyNDgpIj7QntC/0LjRgdCw0L3QuNC1PC90aD4KCQk8L3RyPgoJCTx0cj4KCQkJPHRkIHN0eWxlPSJ2ZXJ0aWNhbC1hbGlnbjp0b3AiPi9jb3VudCBbMy4uMTBdJm5ic3A7PGJyIC8+CgkJCS9mJm5ic3A7Jm5ic3A7Jm5ic3A7PGJyIC8+CgkJCS9kdCBbMC4uOTldJm5ic3A7PGJyIC8+CgkJCS9oZHQ8YnIgLz4KCQkJL2FsbGR0Jm5ic3A7Jm5ic3A7Jm5ic3A7PGJyIC8+CgkJCS90ZXh0dXImbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDs8YnIgLz4KCQkJL2tpbCZuYnNwOyZuYnNwOyZuYnNwOzxiciAvPgoJCQkva2lja21lJm5ic3A7Jm5ic3A7PGJyIC8+CgkJCS9tb292ZSZuYnNwOyZuYnNwOyZuYnNwOzxiciAvPgoJCQkvcmVtb3YgW0lEXSZuYnNwOyZuYnNwOyZuYnNwOzxiciAvPgoJCQkvZ2l2ZWNhc2gmbmJzcDtbSURdIFvQodGD0LzQvNCwXSZuYnNwOzwvdGQ+CgkJCTx0ZCBzdHlsZT0idmVydGljYWwtYWxpZ246dG9wIj7Ql9Cw0L/Rg9GB0YLQuNGC0Ywg0L7RgtGB0YfQtdGCJm5ic3A7PGJyIC8+CgkJCdCf0LXRgNC10LLQtdGA0L3Rg9GC0Ywg0LDQstGC0L4g0L3QsCDQutC+0LvQtdGB0LAmbmJzcDs8YnIgLz4KCQkJ0KHQvNC10L3QuNGC0Ywg0JLQuNGA0YLRg9Cw0LvRjNC90YvQuSDQvNC40YAmbmJzcDs8YnIgLz4KCQkJ0J/RgNC+0LnRgtC4INCyINCy0LjRgNGC0YPQsNC70YzQvdGL0Lkg0LzQuNGAINCz0LTQtSDQvdC10YIg0YfQuNGC0L7QsjxiciAvPgoJCQnQn9C10YDQtdC50YLQuCDQsiDQvtCx0YnQuNC5INCy0LjRgNGC0YPQsNC70YzQvdGL0Lkg0LzQuNGAJm5ic3A7PGJyIC8+CgkJCdCS0LXRgNC90YPRgtGMINGC0LXQutGB0YLRg9GA0YsgKCDQvdCwINGB0LvRg9GH0LDQuSDQtdGB0LvQuCDQv9GA0L7Qv9Cw0LvQuCkmbmJzcDs8YnIgLz4KCQkJ0KPQsdC40YLRjCDRgdC10LHRjyZuYnNwOzxiciAvPgoJCQnQmtC40LrQvdGD0YLRjCDRgdC10LHRjyZuYnNwOzxiciAvPgoJCQnQoNC10LbQuNC8INC00LvRjyDRgdC90Y/RgtC40Y8g0JzRg9Cy0LjQutCwJm5ic3A7PGJyIC8+CgkJCdCS0YvQutC40L3Rg9GC0Ywg0LjQs9GA0L7QutCwINC40Lcg0YHQstC+0LXQs9C+INCw0LLRgtC+Jm5ic3A7PGJyIC8+CgkJCdCf0LXRgNC10LTQsNGC0Ywg0LjQs9GA0L7QutGDINC00LXQvdGM0LPQuDwvdGQ+CgkJPC90cj4KCQk8dHI+CgkJCTx0aCBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjpyZ2IoMjQ1LCAyNDcsIDI0OCkiPtCQ0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGA0YHQutC40LU8L3RoPgoJCQk8dGggc3R5bGU9ImJhY2tncm91bmQtY29sb3I6cmdiKDI0NSwgMjQ3LCAyNDgpIj7QntC/0LjRgdCw0L3QuNC1PC90aD4KCQk8L3RyPgoJCTx0cj4KCQkJPHRkIHN0eWxlPSJ2ZXJ0aWNhbC1hbGlnbjp0b3AiPi9haGVscCZuYnNwOzwvdGQ+CgkJCTx0ZCBzdHlsZT0idmVydGljYWwtYWxpZ246dG9wIj7Qo9C30L3QsNGC0Ywg0LrQvtC80LDQvdC00Ysg0LTQu9GPINCw0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGA0L7QsjwvdGQ+CgkJPC90cj4KCTwvdGJvZHk+CjwvdGFibGU+'),
(5, '0KfRgtC+INC00LDRkdGCIFZJUCDRgdGC0LDRgtGD0YEg0L3QsCDRgdC10YDQstC10YDQtQ==', 'PHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNHB4Ij48c3Ryb25nPtCY0L3RhNC+0YDQvNCw0YbQuNGPINC+IFZJUCDQsNC60LrQsNGD0L3RgtC1Ojwvc3Ryb25nPjxiciAvPgo8c3Ryb25nPjE8L3N0cm9uZz4uIE5vQ3Jhc2ggLSDQn9GA0Lgg0YPQtNCw0YDQtSDQsNCy0YLQviDQtNGA0LjRhCDQvtGH0LrQuCDQvdC1INC/0YDQvtC/0LDQtNGD0YIsINCwINCx0YPQtNGD0YIg0L3QsNCx0LjRgNCw0YLRgdGPINC00LDQu9GM0YjQtS48YnIgLz4KPHN0cm9uZz4yPC9zdHJvbmc+LiBYMiDQodGH0ZHRgiAtINCj0LzQvdC+0LbQtdC90LjQtSDQt9Cw0YDQsNCx0L7RgtCw0L3QvdGL0YUg0LTRgNC40YTRgiDQvtGH0LrQvtCyINC90LAgMjxiciAvPgo8c3Ryb25nPjM8L3N0cm9uZz4uINCi0YDQsNC90YHQv9C+0YDRgiAtINCt0YLQvtGCINGC0YDQsNC90YHQv9C+0YDRgiDQvdC1INC00L7RgdGC0YPQv9C10L0g0L7QsdGL0YfQvdGL0Lwg0LjQs9GA0L7QutCw0LwuPGJyIC8+CjxzdHJvbmc+NDwvc3Ryb25nPi4g0JHQvtC90YPRgSAtINCf0YDQuCDQv9C+0LrRg9C/0LrQtSBWSVAg0YHRgtCw0YLRg9GB0LAg0LLQsNC8INC90LDRh9C40YHQu9GP0LXRgtGB0Y8g0LHQvtC90YPRgSAyLjAwMC4wMDAkJm5ic3A7PC9zcGFuPjxiciAvPgo8c3BhbiBzdHlsZT0iZm9udC1zaXplOjE0cHgiPjxzdHJvbmc+NTwvc3Ryb25nPi4g0KfQsNGCIC0g0JLQvtC30LzQvtC20L3QvtGB0YLRjCDQv9C40YHQsNGC0Ywg0YbQstC10YLQvdGL0Lwg0YLQtdC60YHRgtC+0Lwg0LIg0YfQsNGC0LUuPC9zcGFuPjxiciAvPgo8c3BhbiBzdHlsZT0iZm9udC1zaXplOjE0cHgiPjxzdHJvbmc+Njwvc3Ryb25nPi4g0JTQvtC80LAgLSDQktC+0LfQvNC+0LbQvdC+0YHRgtGMINC/0L7QutGD0L/QsNGC0Ywg0LTQvtC80LAg0LjQvNC10Y7RidC40LUg0YHRgtCw0YLRg9GBIFZJUDwvc3Bhbj48YnIgLz4KPGJyIC8+CiZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyZuYnNwOzxzdHJvbmc+Jm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyBWSVAg0YLRgNCw0L3RgdC/0L7RgNGCIHwg0LDQstGC0L48L3N0cm9uZz48L3A+Cgo8dGFibGUgYm9yZGVyPSIxIiBjZWxscGFkZGluZz0iMSIgY2VsbHNwYWNpbmc9IjEiIHN0eWxlPSJ3aWR0aDo3NzlweCI+Cgk8dGJvZHk+CgkJPHRyPgoJCQk8dGQ+PGltZyBhbHQ9IiIgc3JjPSJodHRwOi8vd2VlZGFyci53ZGZpbGVzLmNvbS9sb2NhbC0tZmlsZXMvdmVoLzQwOS5wbmciIC8+PC90ZD4KCQkJPHRkPjxpbWcgYWx0PSIiIHNyYz0iaHR0cDovL3dlZWRhcnIud2RmaWxlcy5jb20vbG9jYWwtLWZpbGVzL3ZlaC80MzQucG5nIiAvPjwvdGQ+CgkJCTx0ZD48aW1nIGFsdD0iIiBzcmM9Imh0dHA6Ly93ZWVkYXJyLndkZmlsZXMuY29tL2xvY2FsLS1maWxlcy92ZWgvNDQyLnBuZyIgLz48L3RkPgoJCQk8dGQ+PGltZyBhbHQ9IiIgc3JjPSJodHRwOi8vd2VlZGFyci53ZGZpbGVzLmNvbS9sb2NhbC0tZmlsZXMvdmVoLzQ3MC5wbmciIC8+PC90ZD4KCQk8L3RyPgoJCTx0cj4KCQkJPHRkPjxpbWcgYWx0PSIiIHNyYz0iaHR0cDovL3dlZWRhcnIud2RmaWxlcy5jb20vbG9jYWwtLWZpbGVzL3ZlaC81MDQucG5nIiAvPjwvdGQ+CgkJCTx0ZD48aW1nIGFsdD0iIiBzcmM9Imh0dHA6Ly93ZWVkYXJyLndkZmlsZXMuY29tL2xvY2FsLS1maWxlcy92ZWgvNTI4LnBuZyIgLz48L3RkPgoJCQk8dGQ+Jm5ic3A7PC90ZD4KCQkJPHRkPiZuYnNwOzwvdGQ+CgkJPC90cj4KCTwvdGJvZHk+CjwvdGFibGU+Cgo8cD48c3Ryb25nPiZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOzxiciAvPgombmJzcDsmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyZuYnNwOyBWSVAg0YLRgNCw0L3RgdC/0L7RgNGCIHwg0LvQvtC00LrQuDwvc3Ryb25nPjwvcD4KCjx0YWJsZSBib3JkZXI9IjEiIGNlbGxwYWRkaW5nPSIxIiBjZWxsc3BhY2luZz0iMSIgc3R5bGU9IndpZHRoOjc3OXB4Ij4KCTx0Ym9keT4KCQk8dHI+CgkJCTx0ZD48aW1nIGFsdD0iIiBzcmM9Imh0dHA6Ly93ZWVkYXJyLndkZmlsZXMuY29tL2xvY2FsLS1maWxlcy92ZWgvNDMwLnBuZyIgLz48L3RkPgoJCQk8dGQ+PGltZyBhbHQ9IiIgc3JjPSJodHRwOi8vd2VlZGFyci53ZGZpbGVzLmNvbS9sb2NhbC0tZmlsZXMvdmVoLzQ0Ni5wbmciIC8+PC90ZD4KCQkJPHRkPjxpbWcgYWx0PSIiIHNyYz0iaHR0cDovL3dlZWRhcnIud2RmaWxlcy5jb20vbG9jYWwtLWZpbGVzL3ZlaC80NTIucG5nIiAvPjwvdGQ+CgkJCTx0ZD48aW1nIGFsdD0iIiBzcmM9Imh0dHA6Ly93ZWVkYXJyLndkZmlsZXMuY29tL2xvY2FsLS1maWxlcy92ZWgvNDUzLnBuZyIgLz48L3RkPgoJCTwvdHI+CgkJPHRyPgoJCQk8dGQ+PGltZyBhbHQ9IiIgc3JjPSJodHRwOi8vd2VlZGFyci53ZGZpbGVzLmNvbS9sb2NhbC0tZmlsZXMvdmVoLzQ1NC5wbmciIC8+PC90ZD4KCQkJPHRkPjxpbWcgYWx0PSIiIHNyYz0iaHR0cDovL3dlZWRhcnIud2RmaWxlcy5jb20vbG9jYWwtLWZpbGVzL3ZlaC80NzIucG5nIiAvPjwvdGQ+CgkJCTx0ZD48aW1nIGFsdD0iIiBzcmM9Imh0dHA6Ly93ZWVkYXJyLndkZmlsZXMuY29tL2xvY2FsLS1maWxlcy92ZWgvNDkzLnBuZyIgLz48L3RkPgoJCQk8dGQ+PGltZyBhbHQ9IiIgc3JjPSJodHRwOi8vd2VlZGFyci53ZGZpbGVzLmNvbS9sb2NhbC0tZmlsZXMvdmVoLzUzOS5wbmciIC8+PC90ZD4KCQk8L3RyPgoJPC90Ym9keT4KPC90YWJsZT4KCjxwPjxzdHJvbmc+Jm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7PGJyIC8+CiZuYnNwOyZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyZuYnNwOyZuYnNwO1ZJUCDRgtGA0LDQvdGB0L/QvtGA0YIgfCDQstC10YDRgtC+0LvRkdGC0Ys8L3N0cm9uZz48L3A+Cgo8dGFibGUgYm9yZGVyPSIxIiBjZWxscGFkZGluZz0iMSIgY2VsbHNwYWNpbmc9IjEiIHN0eWxlPSJ3aWR0aDo3NzlweCI+Cgk8dGJvZHk+CgkJPHRyPgoJCQk8dGQ+PGltZyBhbHQ9IiIgc3JjPSJodHRwOi8vd2VlZGFyci53ZGZpbGVzLmNvbS9sb2NhbC0tZmlsZXMvdmVoLzQ4OC5wbmciIC8+PC90ZD4KCQkJPHRkPjxpbWcgYWx0PSIiIHNyYz0iaHR0cDovL3dlZWRhcnIud2RmaWxlcy5jb20vbG9jYWwtLWZpbGVzL3ZlaC80ODcucG5nIiAvPjwvdGQ+CgkJCTx0ZD48aW1nIGFsdD0iIiBzcmM9Imh0dHA6Ly93ZWVkYXJyLndkZmlsZXMuY29tL2xvY2FsLS1maWxlcy92ZWgvNTYzLnBuZyIgLz48L3RkPgoJCTwvdHI+Cgk8L3Rib2R5Pgo8L3RhYmxlPgoKPHA+PGJyIC8+CjxzdHJvbmc+Jm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgVklQINGC0YDQsNC90YHQv9C+0YDRgiB8INGB0LDQvNC70LvRkdGC0Ys8L3N0cm9uZz48L3A+Cgo8dGFibGUgYm9yZGVyPSIxIiBjZWxscGFkZGluZz0iMSIgY2VsbHNwYWNpbmc9IjEiIHN0eWxlPSJ3aWR0aDo3NzlweCI+Cgk8dGJvZHk+CgkJPHRyPgoJCQk8dGQ+PGltZyBhbHQ9IiIgc3JjPSJodHRwOi8vd2VlZGFyci53ZGZpbGVzLmNvbS9sb2NhbC0tZmlsZXMvdmVoLzUxMS5wbmciIC8+PC90ZD4KCQkJPHRkPjxpbWcgYWx0PSIiIHNyYz0iaHR0cDovL3dlZWRhcnIud2RmaWxlcy5jb20vbG9jYWwtLWZpbGVzL3ZlaC81MTMucG5nIiAvPjwvdGQ+CgkJCTx0ZD48aW1nIGFsdD0iIiBzcmM9Imh0dHA6Ly93ZWVkYXJyLndkZmlsZXMuY29tL2xvY2FsLS1maWxlcy92ZWgvNTkzLnBuZyIgLz48L3RkPgoJCQk8dGQ+PGltZyBhbHQ9IiIgc3JjPSJodHRwOi8vd2VlZGFyci53ZGZpbGVzLmNvbS9sb2NhbC0tZmlsZXMvdmVoLzUxOS5wbmciIC8+PC90ZD4KCQk8L3RyPgoJPC90Ym9keT4KPC90YWJsZT4KCjxwPjxiciAvPgo8c3Ryb25nPiZuYnNwOyZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsmbmJzcDtWSVAg0YLRgNCw0L3RgdC/0L7RgNGCIHwg0L/RgNC+0YfQuNC1PC9zdHJvbmc+PGJyIC8+CiZuYnNwOzwvcD4KCjx0YWJsZSBib3JkZXI9IjEiIGNlbGxwYWRkaW5nPSIxIiBjZWxsc3BhY2luZz0iMSIgc3R5bGU9IndpZHRoOjc3OXB4Ij4KCTx0Ym9keT4KCQk8dHI+CgkJCTx0ZD48aW1nIGFsdD0iIiBzcmM9Imh0dHA6Ly93ZWVkYXJyLndkZmlsZXMuY29tL2xvY2FsLS1maWxlcy92ZWgvNDA3LnBuZyIgLz48L3RkPgoJCQk8dGQ+PGltZyBhbHQ9IiIgc3JjPSJodHRwOi8vd2VlZGFyci53ZGZpbGVzLmNvbS9sb2NhbC0tZmlsZXMvdmVoLzU0NC5wbmciIC8+PC90ZD4KCQkJPHRkPjxpbWcgYWx0PSIiIHNyYz0iaHR0cDovL3dlZWRhcnIud2RmaWxlcy5jb20vbG9jYWwtLWZpbGVzL3ZlaC80MTYucG5nIiAvPjwvdGQ+CgkJCTx0ZD48aW1nIGFsdD0iIiBzcmM9Imh0dHA6Ly93ZWVkYXJyLndkZmlsZXMuY29tL2xvY2FsLS1maWxlcy92ZWgvNDQzLnBuZyIgLz48L3RkPgoJCTwvdHI+CgkJPHRyPgoJCQk8dGQ+PGltZyBhbHQ9IiIgc3JjPSJodHRwOi8vd2VlZGFyci53ZGZpbGVzLmNvbS9sb2NhbC0tZmlsZXMvdmVoLzQzMS5wbmciIC8+PC90ZD4KCQkJPHRkPjxpbWcgYWx0PSIiIHNyYz0iaHR0cDovL3dlZWRhcnIud2RmaWxlcy5jb20vbG9jYWwtLWZpbGVzL3ZlaC80MzcucG5nIiAvPjwvdGQ+CgkJCTx0ZD48aW1nIGFsdD0iIiBzcmM9Imh0dHA6Ly93ZWVkYXJyLndkZmlsZXMuY29tL2xvY2FsLS1maWxlcy92ZWgvNDQ0LnBuZyIgLz48L3RkPgoJCQk8dGQ+PGltZyBhbHQ9IiIgc3JjPSJodHRwOi8vd2VlZGFyci53ZGZpbGVzLmNvbS9sb2NhbC0tZmlsZXMvdmVoLzU1Ni5wbmciIC8+PC90ZD4KCQk8L3RyPgoJCTx0cj4KCQkJPHRkPjxpbWcgYWx0PSIiIHNyYz0iaHR0cDovL3dlZWRhcnIud2RmaWxlcy5jb20vbG9jYWwtLWZpbGVzL3ZlaC81NTcucG5nIiAvPjwvdGQ+CgkJCTx0ZD48aW1nIGFsdD0iIiBzcmM9Imh0dHA6Ly93ZWVkYXJyLndkZmlsZXMuY29tL2xvY2FsLS1maWxlcy92ZWgvNTA4LnBuZyIgLz48L3RkPgoJCQk8dGQ+PGltZyBhbHQ9IiIgc3JjPSJodHRwOi8vd2VlZGFyci53ZGZpbGVzLmNvbS9sb2NhbC0tZmlsZXMvdmVoLzUzMC5wbmciIC8+PC90ZD4KCQkJPHRkPjxpbWcgYWx0PSIiIHNyYz0iaHR0cDovL3dlZWRhcnIud2RmaWxlcy5jb20vbG9jYWwtLWZpbGVzL3ZlaC81MTUucG5nIiAvPjwvdGQ+CgkJPC90cj4KCQk8dHI+CgkJCTx0ZD48aW1nIGFsdD0iIiBzcmM9Imh0dHA6Ly93ZWVkYXJyLndkZmlsZXMuY29tL2xvY2FsLS1maWxlcy92ZWgvNTMxLnBuZyIgLz48L3RkPgoJCQk8dGQ+PGltZyBhbHQ9IiIgc3JjPSJodHRwOi8vd2VlZGFyci53ZGZpbGVzLmNvbS9sb2NhbC0tZmlsZXMvdmVoLzU3My5wbmciIC8+PC90ZD4KCQkJPHRkPjxpbWcgYWx0PSIiIHNyYz0iaHR0cDovL3dlZWRhcnIud2RmaWxlcy5jb20vbG9jYWwtLWZpbGVzL3ZlaC82MDEucG5nIiAvPjwvdGQ+CgkJCTx0ZD48aW1nIGFsdD0iIiBzcmM9Imh0dHA6Ly93ZWVkYXJyLndkZmlsZXMuY29tL2xvY2FsLS1maWxlcy92ZWgvNTgzLnBuZyIgLz48L3RkPgoJCTwvdHI+Cgk8L3Rib2R5Pgo8L3RhYmxlPgoKPHA+Jm5ic3A7PC9wPg=='),
(2, '0J/RgNCw0LLQuNC70LAg0YHQtdGA0LLQtdGA0LA=', 'PHA+PHNwYW4gc3R5bGU9ImNvbG9yOiMwMDAwMDAiPjxzdHJvbmc+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OnRpbWVzIG5ldyByb21hbix0aW1lcyxzZXJpZiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToyMHB4Ij4xLiDQntGB0L3QvtCy0L3QvtC1PC9zcGFuPjwvc3Bhbj48L3N0cm9uZz48L3NwYW4+PGJyIC8+CjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTp0aW1lcyBuZXcgcm9tYW4sdGltZXMsc2VyaWYiPjxzdHJvbmc+MS4xLjwvc3Ryb25nPiDQl9Cw0L/RgNC10YnQtdC90L4g0LjRgdC/0L7Qu9GM0LfQvtCy0LDRgtGMINC70Y7QsdC+0Lkg0YHQvtGE0YIg0LTQsNGO0YnQuNC5INC/0YDQuNC40LzRg9GJ0LXRgdGC0LLQviDQvdCw0LQg0LTRgNGD0LPQuNC80Lgg0LjQs9GA0L7QutCw0LzQuDxiciAvPgo8c3Ryb25nPjEuMi48L3N0cm9uZz4g0JfQsNC/0YDQtdGJ0LXQvdC+INCy0YvQtNC+0LLQsNGC0Ywg0YHQtdCx0Y8g0LfQsCDQtNGA0YPQs9C+0LPQviDQuNCz0YDQvtC60LAg0LjQu9C4INCw0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGA0LA8YnIgLz4KPHN0cm9uZz4xLjMuPC9zdHJvbmc+INCX0LDQv9GA0LXRidC10L3QviDRgdGC0L7Rj9GC0Ywg0LIgQUZLINCx0L7Qu9C10LUgMTUg0LzQuNC90YPRgiwg0L/RgNC4INGN0YLQvtC8INC80LXRiNCw0Y8g0LTRgNGD0LPQuNC8INC40LPRgNC+0LrQsNC8ICjQlNC10ZHRgdGC0LLRg9C10YI6INCi0YDQsNGB0YHRiyB80JTQvtGA0L7Qs9C4IHwg0KLQvtGH0LrQuCDRgtC10LvQtdC/0L7RgNGC0L7QssKgKTxiciAvPgo8c3Ryb25nPjEuNC48L3N0cm9uZz4g0JfQsNC/0YDQtdGJ0LXQvdC+INGD0YHRgtGA0LDQuNCy0LDRgtGMwqA8L3NwYW4+RE0gKERlYXRoIE1hdGNoKSDQstC+INCy0YHQtdGFINC80LjRgNCw0YUg0LrRgNC+0LzQtSAvaGR0PGJyIC8+CjxiciAvPgo8c3BhbiBzdHlsZT0iY29sb3I6IzAwMDAwMCI+PHN0cm9uZz48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6dGltZXMgbmV3IHJvbWFuLHRpbWVzLHNlcmlmIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjIwcHgiPjIu0KfQsNGCPC9zcGFuPjwvc3Bhbj48L3N0cm9uZz48L3NwYW4+PGJyIC8+CjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTp0aW1lcyBuZXcgcm9tYW4sdGltZXMsc2VyaWYiPjxzdHJvbmc+Mi4xLjwvc3Ryb25nPiDQl9Cw0L/RgNC10YnQtdC90L4g0L7RgdC60LDRgNCx0LvQtdC90LjQtS/Rg9C90LjQttC10L3QuNC1INC40LPRgNC+0LrQvtCyPGJyIC8+CjxzdHJvbmc+Mi4yLjwvc3Ryb25nPiDQl9Cw0L/RgNC10YnQtdC90L4g0YPQs9GA0LDQttCw0YLRjCDQuNC70Lgg0YjQsNC90YLQsNC20LjRgNC+0LLQsNGC0YwuPGJyIC8+CjxzdHJvbmc+Mi4zLjwvc3Ryb25nPiDQl9Cw0L/RgNC10YnQtdC90L4g0YTQu9GD0LTQuNGC0YwsINGB0L/QsNC80LjRgtGMLCDRgNC10LrQu9Cw0LzQuNGA0L7QstCw0YLRjCDRh9GC0L4g0YLQviDQsiDRh9Cw0YIg0LjQu9C4INCyINC70LjRh9C90YvQtSDRgdC+0L7QsdGJ0LXQvdC40Y88YnIgLz4KPHN0cm9uZz4yLjQuIDwvc3Ryb25nPtCX0LDQv9GA0LXRidC10L3QviDQv9C40YHQsNGC0Ywg0LIg0L7QsdGJ0LjQuSDRh9Cw0YIg0L4g0L3QsNCx0L7RgNC1INCyINC60LvQsNC9INC40LvQuCDQv9GA0L7QtNCw0LbQtSDQtNC+0LzQsCAo0JjRgdC/0L7Qu9GM0LfRg9C50YLQtSDQutC+0LzQsNC90LTRgyAvb2LCoCk8L3NwYW4+PC9wPgoKPGRpdiBjbGFzcz0iPHNwYW4gY2xhc3M9Ij4KPHA+PHNwYW4gc3R5bGU9ImNvbG9yOiMwMDAwMDAiPjxzdHJvbmc+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OnRpbWVzIG5ldyByb21hbix0aW1lcyxzZXJpZiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToyMHB4Ij4zLiDQndC40Lo8L3NwYW4+PC9zcGFuPjwvc3Ryb25nPjwvc3Bhbj48YnIgLz4KPHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OnRpbWVzIG5ldyByb21hbix0aW1lcyxzZXJpZiI+PHN0cm9uZz4zLjEuPC9zdHJvbmc+INCX0LDQv9GA0LXRidC10L3QviDQuNGB0L/QvtC70YzQt9C+0LLQsNGC0Ywg0L3QuNC60Lgg0L3QtSDQuNC80LXRjtGJ0LjQtSDRgdC80YvRgdC70LAuPGJyIC8+CjxzdHJvbmc+My4yLjwvc3Ryb25nPiDQl9Cw0L/RgNC10YnQtdC90L4g0LjRgdC/0L7Qu9GM0LfQvtCy0LDQvdC40LXCoDxzcGFuIHN0eWxlPSJjb2xvcjpyZ2IoMCwgMCwgMCk7IGZvbnQtc2l6ZToxMXB4Ij7CoDwvc3Bhbj48c3Ryb25nPlJvbGUgUGxhecKgPC9zdHJvbmc+PHNwYW4gc3R5bGU9ImNvbG9yOnJnYigwLCAwLCAwKTsgZm9udC1zaXplOjExcHgiPls8L3NwYW4+PHN0cm9uZz5SUDwvc3Ryb25nPjxzcGFuIHN0eWxlPSJjb2xvcjpyZ2IoMCwgMCwgMCk7IGZvbnQtc2l6ZToxMXB4Ij5dINC90LjQutC+0LIg0L3QsCDRgdC10YDQstC10YDQtTwvc3Bhbj48YnIgLz4KPHN0cm9uZz4zLjMuPC9zdHJvbmc+INCX0LDQv9GA0LXRidC10L3QviDQuNGB0L/QvtC70YzQt9C+0LLQsNGC0Ywg0L3QuNC60Lgg0LrQvtGC0L7RgNGL0LUg0YHQvtCy0L/QvtC00LDRjtGCINGBINC90LjQutC+0Lwg0LTRgNGD0LPQvtCz0L4g0LjQs9GA0L7QutCwICjQv9GA0LjQvNC10YA6IDxzdHJvbmc+wqA8L3N0cm9uZz48c3BhbiBzdHlsZT0iY29sb3I6cmdiKDAsIDAsIDApOyBmb250LXNpemU6MTFweCI+RmFpbENyM3cgfCBGYWlsQ3I8L3NwYW4+PHN0cm9uZz5lPC9zdHJvbmc+PHNwYW4gc3R5bGU9ImNvbG9yOnJnYigwLCAwLCAwKTsgZm9udC1zaXplOjExcHgiPncgfCBGYWk8L3NwYW4+PHN0cm9uZz5JPC9zdHJvbmc+PHNwYW4gc3R5bGU9ImNvbG9yOnJnYigwLCAwLCAwKTsgZm9udC1zaXplOjExcHgiPkNyM3fCoDwvc3Bhbj4pPC9zcGFuPjxiciAvPgo8YnIgLz4KPHNwYW4gc3R5bGU9ImNvbG9yOiMwMDAwMDAiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MjBweCI+PHN0cm9uZz48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6dGltZXMgbmV3IHJvbWFuLHRpbWVzLHNlcmlmIj40LiDQkNC60LrQsNGD0L3Rgjwvc3Bhbj48L3N0cm9uZz48L3NwYW4+PC9zcGFuPjxiciAvPgo8c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6dGltZXMgbmV3IHJvbWFuLHRpbWVzLHNlcmlmIj48c3Ryb25nPjQuMS48L3N0cm9uZz4g0JDQtNC80LjQvdC40YHRgtGA0LDRhtC40Y8g0L3QtSDQvdC10YHRkdGCINC+0YLQstC10YbRgtCy0LXQvdC+0YHRgtC4INC30LAg0LLQsNGI0Ywg0LjQs9GA0L7QstC+0Lkg0LDQutC60LDRg9C90YIg0LjQu9C4INC40LzRg9GJ0LXRgdGC0LLQvi48YnIgLz4KPHN0cm9uZz40LjIuPC9zdHJvbmc+INCX0LDQv9GA0LXRidC10L3QviDQv9GA0L7QtNC+0LLQsNGC0YwsINC/0LXRgNC10LTQvtCy0LDRgtGMLCDQvtCx0LzQtdC90LjQstCw0YLRjCwg0L/QvtC60YPQv9Cw0YLRjCDQsNC60LrQsNGD0L3RgtGLwqA8L3NwYW4+PGJyIC8+CjxiciAvPgo8c3BhbiBzdHlsZT0iY29sb3I6IzAwMDAwMCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToyMHB4Ij48c3Ryb25nPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTp0aW1lcyBuZXcgcm9tYW4sdGltZXMsc2VyaWYiPjUuINCh0YPQsdGK0LXQutGCINC+0YLQstC10YLRgdGC0LLQtdC90L7RgdGC0LjCoDwvc3Bhbj48L3N0cm9uZz48L3NwYW4+PC9zcGFuPjxiciAvPgo8c3BhbiBzdHlsZT0iY29sb3I6cmdiKDY4LCA2OCwgNjgpOyBmb250LWZhbWlseTp0YWhvbWE7IGZvbnQtc2l6ZToxMnB4Ij48c3Ryb25nPjUuMS48L3N0cm9uZz4g0JDQtNC80LjQvdC40YHRgtGA0LDRgtC+0YAg0LIg0L/RgNCw0LLQtSDQvNC10L3Rj9GC0Ywg0YHRgtC10L/QtdC90Ywg0L3QsNC60LDQt9Cw0L3QuNGPINC90LAg0YHQstC+0ZEg0YPRgdC80L7RgtGA0LXQvdC40LUuPGJyIC8+CjxzdHJvbmc+NS4yLjwvc3Ryb25nPsKg0JfQsNC/0YDQtdGJ0LXQvdGLINC70Y7QsdGL0LUg0L7QsdGB0YPQttC00LXQvdC40Y8g0Lgg0L7RgdC/0LDRgNC40LLQsNC90LjRjyDQtNC10LnRgdGC0LLQuNC5INCw0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGA0L7QsjxiciAvPgo8c3Ryb25nPjUuMy48L3N0cm9uZz7CoNCX0LDQv9GA0LXRidC10L3QviDRgNCw0YHQv9GA0L7RgdGC0YDQsNC90LXQvdC40LUg0YHQu9GD0YXQvtCyLCDQutC70LXQstC10YLRiyDQviDRgdC10YDQstC10YDQtSDQuCDQkNC00LzQuNC90LjRgdGC0YDQsNGG0LjQuC48YnIgLz4KPHN0cm9uZz41LjQuPC9zdHJvbmc+wqDQl9Cw0L/RgNC10YnQtdC90L4g0LTQtdGA0LfQutC+0LUsINC90LDRhdCw0LvRjNC90L7QtSwg0L/QsNC90LjQsdGA0LDRgtGB0LrQvtC1INC+0LHRgNCw0YnQtdC90LjQtSDQuiDQkNC00LzQuNC90LjRgdGC0YDQsNGG0LjQuC48L3NwYW4+PGJyIC8+CjxiciAvPgrCoDwvcD4KPC9kaXY+'),
(1, '0KEg0YfQtdCz0L4g0L3QsNGH0LjQvdCw0YLRjCDQuNCz0YDRgyDQvdCwINGB0LXRgNCy0LXRgNC1', 'PHA+PHN0cm9uZz7QqNCw0LMgMTog0KPRgdGC0LDQvdC+0LLQutCwINC40LPRgNGLLjwvc3Ryb25nPjxiciAvPgo8YnIgLz4KPHN0cm9uZz4xLjwvc3Ryb25nPiZuYnNwO9Ch0LrQsNGH0LDQudGC0LUg0YLQvtGA0YDQtdC90YIg0YEg0LjQs9GA0L7QuSZuYnNwOzxhIGhyZWY9Imh0dHA6Ly9zYW1wLWhvc3Rlci5ydS9kb3dubG9hZC9ndGEtc2FuLWFuZHJlYXMtcGMudG9ycmVudCI+R1RBIFNhbiBBbmRyZWFzPC9hPiZuYnNwOzxiciAvPgo8c3Ryb25nPjIuPC9zdHJvbmc+Jm5ic3A70JfQsNC/0YPRgdGC0LjRgtC1INGB0LrQsNGH0LDQvdC90YvQuSZuYnNwOzxhIGhyZWY9Imh0dHA6Ly9zYW1wLWhvc3Rlci5ydS9kb3dubG9hZC9ndGEtc2FuLWFuZHJlYXMtcGMudG9ycmVudCI+0YLQvtGA0YDQtdC90YI8L2E+Jm5ic3A70LIg0L/RgNC+0LPRgNCw0LzQvNC1LiDQn9C+0YHQu9C1INGC0L7Qs9C+LCDQutCw0Log0LjQs9GA0LAg0YHQutCw0YfQsNC10YLRgdGPLCDRgdC80L7QvdGC0LjRgNGD0LnRgtC1INC+0LHRgNCw0Lcg0YEg0L/QvtC80L7RidGM0Y4g0L/RgNC+0LPRgNCw0LzQvNGLJm5ic3A7PGEgaHJlZj0iaHR0cDovL3d3dy5kYWVtb24tdG9vbHMuY2MvcnVzL2Rvd25sb2FkcyIgdGFyZ2V0PSJfYmxhbmsiPkRBRU1PTiBUb29sczwvYT4mbmJzcDvQuCDQt9Cw0L/Rg9GB0YLQuNGC0LUg0YTQsNC50LsmbmJzcDs8ZW0+Z3RhX3NhLmV4ZTwvZW0+Jm5ic3A7PGJyIC8+CjxzdHJvbmc+My48L3N0cm9uZz4mbmJzcDvQodC70LXQtNGD0LnRgtC1INC40L3RgdGC0YDRg9C60YbQuNC4INGD0YHRgtCw0L3QvtCy0LrQuCDQuCDRgdC+0LPQu9Cw0YjQsNC50YLQtdGB0Ywg0YHQviDQstGB0LXQvCwg0YfRgtC+INCy0LDQvCDQv9GA0LXQtNC70L7QttC10YIg0YPRgdGC0LDQvdC+0LLQvtGH0L3Ri9C5INC00LjRgdGC0YDQuNCx0YPRgtC40LIuPGJyIC8+CjxiciAvPgo8c3Ryb25nPtCo0LDQsyAyOiDQo9GB0YLQsNC90L7QstC60LAg0LzRg9C70YzRgtC40L/Qu9C10LXRgNCwLjwvc3Ryb25nPjxiciAvPgo8YnIgLz4KPHN0cm9uZz4xLjwvc3Ryb25nPiZuYnNwO9Ch0LrQsNGH0LDQudGC0LUg0LzRg9C70YzRgtC40L/Qu9C10LXRgCDQvdGD0LbQvdC+0Lkg0LLQtdGA0YHQuNC4LiDQkiDQtNCw0L3QvdC+0Lwg0YHQu9GD0YfQsNC1INGN0YLQviAtJm5ic3A7PGEgaHJlZj0iaHR0cDovL2ZpbGVzLnNhLW1wLmNvbS9zYS1tcC0wLjN6LVIxLWluc3RhbGwuZXhlIj5TQTpNUCAwLjN6PC9hPiZuYnNwOzxiciAvPgo8c3Ryb25nPjIuPC9zdHJvbmc+Jm5ic3A70JfQsNC/0YPRgdGC0LjRgtC1INGB0LrQsNGH0LDQvdC90YvQuSZuYnNwOzxhIGhyZWY9Imh0dHA6Ly9maWxlcy5zYS1tcC5jb20vc2EtbXAtMC4zZS1pbnN0YWxsLmV4ZSI+0LTQuNGB0YLRgNC40LHRg9GC0LjQsjwvYT4mbmJzcDs8ZW0+c2EtbXAtMC4zZS1pbnN0YWxsLmV4ZTwvZW0+Jm5ic3A7PGJyIC8+CjxzdHJvbmc+My48L3N0cm9uZz4mbmJzcDvQo9GB0YLQsNC90L7QstC40YLQtSDQvNGD0LvRjNGC0LjQv9C70LXQtdGAINCyINC/0LDQv9C60YMg0YEmbmJzcDs8YSBocmVmPSJodHRwOi8vc2FtcC1ob3N0ZXIucnUvZG93bmxvYWQvZ3RhLXNhbi1hbmRyZWFzLXBjLnRvcnJlbnQiPkdUQSBTYW4gQW5kcmVhczwvYT4mbmJzcDs8YnIgLz4KPHN0cm9uZz40Ljwvc3Ryb25nPiZuYnNwO9CSINC/0LDQv9C60LUg0YEg0LjQs9GA0L7QuSDQv9C+0Y/QstC40YLRgdGPINGP0YDQu9GL0LombmJzcDs8ZW0+c2FtcC5leGU8L2VtPiwg0LfQsNC/0YPRgdGC0LjRgtC1INC10LPQvi4mbmJzcDs8YnIgLz4KPGJyIC8+CjxlbT7QldGB0LvQuCDQv9C+0YLRgNC10LHRg9C10YLRgdGPLCDRgdC+0LfQtNCw0LnRgtC1INGP0YDQu9GL0Log0LTQu9GPIHNhbXAg0Lgg0L/QvtC80LXRgdGC0LjRgtC1INC10LPQviDQvdCwINGA0LDQsdC+0YfQuNC5INGB0YLQvtC7ICjQvdC1INC+0LHRj9C30LDRgtC10LvRjNC90L4sINC90L4g0LjQvdCw0YfQtSDQv9GA0LjQtNC10YLRgdGPINC60LDQttC00YvQuSDRgNCw0Lcg0LfQsNC/0YPRgdC60LDRgtGMIHNhbXAg0LjQtyDQv9Cw0L/QutC4INGBINC40LPRgNC+0LkpPC9lbT48YnIgLz4KPGJyIC8+CjxzdHJvbmc+0KjQsNCzIDM6INCU0L7QsdCw0LLQu9C10L3QuNC1INGB0LXRgNCy0LXRgNC+0LIg0LTQu9GPINC40LPRgNGLLjwvc3Ryb25nPjxiciAvPgo8YnIgLz4KPHN0cm9uZz4xLjwvc3Ryb25nPiZuYnNwO9Cf0L7RgdC70LUg0LfQsNC/0YPRgdC60LAg0YMg0JLQsNGBINC00L7Qu9C20L3QviDQv9C+0Y/QstC40YLRjNGB0Y8g0L7QutC90L4g0LzRg9C70YzRgtC40L/Qu9C10LXRgNCwOjxiciAvPgo8YSBocmVmPSJodHRwOi8vc2FtcC1ob3N0ZXIucnUvaW1nL3BhZ2VzL3NhbXAxLnBuZyIgdGFyZ2V0PSJfYmxhbmsiPjxpbWcgYWx0PSIiIHNyYz0iL2ltZy9wYWdlcy9zYW1wMS5wbmciIHN0eWxlPSJoZWlnaHQ6NDMxcHg7IG1hcmdpbjowcHg7IHdpZHRoOjYyOXB4IiAvPjwvYT48YnIgLz4KPGJyIC8+CjxzdHJvbmc+Mi48L3N0cm9uZz4mbmJzcDvQn9GA0LjQtNGD0LzQsNC50YLQtSDQvdC40Log0LTQu9GPINC/0LXRgNGB0L7QvdCw0LbQsCDQuCDQstC/0LjRiNC40YLQtSDQtdCz0L4g0LIg0L3Rg9C20L3Rg9GOINGP0YfQtdC50LrRgzombmJzcDs8YnIgLz4KPGJyIC8+CjxhIGhyZWY9Imh0dHA6Ly9zYW1wLWhvc3Rlci5ydS9pbWcvcGFnZXMvc2FtcDIucG5nIiB0YXJnZXQ9Il9ibGFuayI+PGltZyBhbHQ9IiIgc3JjPSIvaW1nL3BhZ2VzL3NhbXAyLnBuZyIgc3R5bGU9ImhlaWdodDo0NDlweDsgbWFyZ2luOjBweDsgd2lkdGg6NjI5cHgiIC8+PC9hPjxiciAvPgo8YnIgLz4KPHN0cm9uZz4zLjwvc3Ryb25nPiZuYnNwO9CU0L7QsdCw0LLRjNGC0LUg0YHQtdGA0LLQtdGAINC00LvRjyDQuNCz0YDRiywg0LrQsNC6INC/0L7QutCw0LfQsNC90L4g0L3QsCDQutCw0YDRgtC40L3QutC1OiZuYnNwOzxiciAvPgo8YnIgLz4KPGEgaHJlZj0iaHR0cDovL3NhbXAtaG9zdGVyLnJ1L2ltZy9wYWdlcy9zYW1wMy5wbmciIHRhcmdldD0iX2JsYW5rIj48aW1nIGFsdD0iIiBzcmM9Ii9pbWcvcGFnZXMvc2FtcDMucG5nIiBzdHlsZT0iaGVpZ2h0OjQzMXB4OyBtYXJnaW46MHB4OyB3aWR0aDo2MjlweCIgLz48L2E+PGJyIC8+CjxiciAvPgrQodC10YDQstC10YA6Jm5ic3A7NDYuMTc0LjQ4LjE4NDo3NzcxJm5ic3A7PGJyIC8+CjxiciAvPgo8c3Ryb25nPjQuPC9zdHJvbmc+Jm5ic3A70JrQu9C40LrQvdC40YLQtSAyINGA0LDQt9CwINC/0L4g0YHRgtGA0L7QutC1INGBINGB0LXRgNCy0LXRgNC+0Lwg0Lgg0LIg0L7QutC90LUg0L3QsNC20LzQuNGC0LUmbmJzcDs8ZW0+Q29ubmVjdDwvZW0+OiZuYnNwOzxiciAvPgo8YnIgLz4KPGEgaHJlZj0iaHR0cDovL3NhbXAtaG9zdGVyLnJ1L2ltZy9wYWdlcy9zYW1wMy5wbmciIHRhcmdldD0iX2JsYW5rIj48aW1nIGFsdD0iIiBzcmM9Ii9pbWcvcGFnZXMvc2FtcDQucG5nIiBzdHlsZT0iaGVpZ2h0OjI2NnB4OyBtYXJnaW46MHB4OyB3aWR0aDoyOTRweCIgLz48L2E+PGJyIC8+CjxiciAvPgo8c3Ryb25nPtCo0LDQsyA0OiDQndCw0YfQsNC70L4g0LjQs9GA0YsuPC9zdHJvbmc+PGJyIC8+CjxiciAvPgrQn9C+0YHQu9C1INCy0YXQvtC00LAg0L3QsCDRgdC10YDQstC10YAsINCS0LDQvCDQsdGD0LTQtdGCINC/0YDQtdC00LvQvtC20LXQvdC+INC30LDRgNC10LPQuNGB0YLRgNC40YDQvtCy0LDRgtGM0YHRjy4g0JLQsNC8INCx0YPQtNC10YIg0L3QtdC+0LHRhdC+0LTQuNC80L4g0L/RgNC40LTRg9C80LDRgtGMINC/0LDRgNC+0LvRjCwg0L/QviDQutC+0YLQvtGA0L7QvNGDINCyINC/0L7RgdC70LXQtNGD0Y7RidC10LwsINCS0Ysg0LHRg9C00LXRgtC1INC30LDRhdC+0LTQuNGC0Ywg0L3QsCDRgdC10YDQstC10YAg0LfQsCDRgdCy0L7QuSDQsNC60LrQsNGD0L3Rgiwg0YLQsNC6INGH0YLQviDQvtCx0Y/Qt9Cw0YLQtdC70YzQvdC+INC30LDQv9C+0LzQvdC40YLQtSDRjdGC0L7RgiDQv9Cw0YDQvtC70YwsINCwINGC0LDQuiDQttC1INC90LjQuiwg0LrQvtGC0L7RgNGL0Lkg0JLRiyDRgdC10LHQtSDQv9GA0LjQtNGD0LzQsNC70LguINCf0L7RgdC70LUg0YDQtdCz0LjRgdGC0YDQsNGG0LjQuCDRgdC70LXQtNGD0LnRgtC1INC/0L7QtNGB0LrQsNC30LrQsNC8PC9wPg==');

-- --------------------------------------------------------

--
-- Структура таблицы `powers`
--

CREATE TABLE IF NOT EXISTS `powers` (
  `users` int(11) NOT NULL AUTO_INCREMENT,
  `pages` int(11) NOT NULL,
  `news` int(11) NOT NULL,
  `tpl` int(11) NOT NULL,
  `logs_puy` int(11) NOT NULL,
  `bans` int(11) NOT NULL,
  PRIMARY KEY (`users`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=112 ;

--
-- Дамп данных таблицы `powers`
--

INSERT INTO `powers` (`users`, `pages`, `news`, `tpl`, `logs_puy`, `bans`) VALUES
(2, 1, 1, 1, 1, 14);

-- --------------------------------------------------------

--
-- Структура таблицы `tpl`
--

CREATE TABLE IF NOT EXISTS `tpl` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `tpl` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=187 ;

--
-- Дамп данных таблицы `tpl`
--

INSERT INTO `tpl` (`id`, `name`, `tpl`) VALUES
(1, 'base-comments-get', 'PGRpdiBjbGFzcz0iY29tLXN0b3J5IGNvbW1lbnQtcG9zdCI+CiAgICAgIDxoZWFkZXI+CiAgICAgICAgPHVsPgogICAgICAgICAgPGxpPjxzcGFuIGNsYXNzPSJjbSIgcmVsPSIzNCI+PC9zcGFuPtCd0LDQv9C40YHQsNC7OiB7YXV0aG9yfTwvbGk+CiAgICAgICAgICA8bGk+PHNwYW4gY2xhc3M9ImNtIiByZWw9IjM1Ij48L3NwYW4+e2dyb3Vwc308L2xpPgogICAgICAgICAgPGxpIGNsYXNzPSJvbmUtcmlnaHQiPjxzcGFuIGNsYXNzPSJtYXNoYV9pbmRleCBtYXNoYV9pbmRleDM2IiByZWw9IjM2Ij48L3NwYW4+e3RpbWV9PC9saT4KICAgICAgICA8L3VsPgogICAgICA8L2hlYWRlcj4KICAgICAgPGltZyBzcmM9IntpbWd9IiBjbGFzcz0ibm9hdmEtY29tbWVudCI+CiAgICAgIDxkaXYgY2xhc3M9ImNvbW0tdGV4dCI+PHNwYW4gY2xhc3M9Im1hc2hhX2luZGV4IG1hc2hhX2luZGV4MzciIHJlbD0iMzciPjwvc3Bhbj57dGV4dH08L2Rpdj4KICAgICAgW2FkbWluXTxkaXY+PGZvcm0gbWV0aG9kPSJQT1NUIiBjbGFzcz0iZm9ybV9jb21tZW50X2RlbCI+CgkJPGJ1dHRvbiBjbGFzcz0iYnRuIGJ0bi1kZWZhdWx0IGJ0bi14cyIgc3R5bGU9Im1hcmdpbi1sZWZ0OiA2MzZweDsiIHR5cGU9InN1Ym1pdCI+0KPQtNCw0LvQuNGC0Yw8L2J1dHRvbj4KCQk8aW5wdXQgdHlwZT0iaGlkZGVuIiBuYW1lPSJkYXRhW2lkXSIgdmFsdWU9IntpZH0iPgoJIDwvZm9ybT48L2Rpdj5bL2FkbWluXQo8L2Rpdj4='),
(2, 'base-error', 'PGRpdiBjbGFzcz0iYWxlcnQgYWxlcnQtZGFuZ2VyIiBzdHlsZT0id2lkdGg6IDc4M3B4OyBtYXJnaW4tdG9wOiAxN3B4OyI+Cgk8cD57ZXJyb3J9LjwvcD4KPC9kaXY+'),
(3, 'base-nav', 'PHVsIGNsYXNzPSJicmVhZGNydW1iIj48bGk+PGEgaHJlZj0ie3VybH0iPtCT0LvQsNCy0L3QsNGPPC9hPiA8c3BhbiBjbGFzcz0iZGl2aWRlciI+Lzwvc3Bhbj48L2xpPntkYXRhfQo8L3VsPg=='),
(4, 'base-nav-get', 'PGxpIFtub11jbGFzcz0iYWN0aXZlIlsvbm9dPlthY3RpdmVdPGEgaHJlZj0ie2xpbmt9Ij5bL2FjdGl2ZV17dGl0bGV9W2FjdGl2ZV08L2E+IDxzcGFuIGNsYXNzPSJkaXZpZGVyIj4vPC9zcGFuPlsvYWN0aXZlXTwvbGk+Cg=='),
(5, 'base-e-info', 'PGRpdiBpZD0ibWVzcyIgc3R5bGU9InBvc2l0aW9uOmZpeGVkOyBib3R0b206NHB4OyByaWdodDoxMHB4OyAiPgoJPGRpdiBjbGFzcz0iYWxlcnQgYWxlcnQtZGFuZ2VyIiBzdHlsZT0id2lkdGg6IDMyNXB4OyAgIj4KCTxpIGNsYXNzPSJmYSBmYS1leGNsYW1hdGlvbi10cmlhbmdsZSI+PC9pPiB7ZGF0YX0uCiA8L2Rpdj4KPC9kaXY+'),
(6, 'base-s-info', 'PGRpdiBpZD0ibWVzcyIgc3R5bGU9InBvc2l0aW9uOmZpeGVkOyBib3R0b206NHB4OyByaWdodDoxMHB4OyAiPgo8ZGl2IGNsYXNzPSJhbGVydCBhbGVydC1zdWNjZXNzIj4KCTxpIGNsYXNzPSJmYSBmYS1jaGVjayI+PC9pPiB7ZGF0YX0uCiA8L2Rpdj4KPC9kaXY+'),
(7, 'index', 'W25vYWpheF0KPGh0bWw+CjxoZWFkPgogICAgPG1ldGEgaHR0cC1lcXVpdj0iY29udGVudC10eXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiIC8+CiAgICA8bWV0YSBuYW1lPSJkZXNjcmlwdGlvbiIgY29udGVudD0ie2Rlc2NyaXB0aW9ufSI+Cgk8bWV0YSBuYW1lPSJrZXl3b3JkcyIgY29udGVudD0ie2tleXdvcmRzfSI+Cgk8dGl0bGU+e3RpdGxlfTwvdGl0bGU+CiAgICA8bGluayByZWw9InN0eWxlc2hlZXQiIGhyZWY9Ii9jc3MvYm9vdHN0cmFwLm1pbi5jc3MiPgogICAgPGxpbmsgcmVsPSJzdHlsZXNoZWV0IiBocmVmPSIvY3NzL3N0eWxlcy5jc3MiPgoJPGxpbmsgcmVsPSJzdHlsZXNoZWV0IiBocmVmPSIvY3NzL3NpbXBsZVRvb2x0aXAuY3NzIj4KCTxsaW5rIHJlbD0ic3R5bGVzaGVldCIgaHJlZj0iL2Nzcy90b2FzdHIubWluLmNzcyI+Cgk8bGluayBocmVmPSIvY3NzL2ZvbnQtYXdlc29tZS00LjQuMC9jc3MvZm9udC1hd2Vzb21lLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCI+Cgk8bGluayByZWw9InN0eWxlc2hlZXQiIGhyZWY9Ii9qcy93eXNpYmIvdGhlbWUvZGVmYXVsdC93YmJ0aGVtZS5jc3MiIC8+Cgk8bGluayBocmVmPSIvZmF2aWNvbi5wbmciIHJlbD0iaWNvbiIgdHlwZT0iaW1hZ2UveC1pY29uIiAvPgoJPHNjcmlwdCAgc3JjID0gIi9qcy9ja2VkaXRvci9ja2VkaXRvci5qcyIgPjwvc2NyaXB0PiAKCTxzY3JpcHQgdHlwZT0idGV4dC9qYXZhc2NyaXB0IiBzcmM9Ii9qcy9qcXVlcnktMi4wLjMubWluLmpzIj48L3NjcmlwdD4KICAgIDxzY3JpcHQgc3JjPSIvanMvYm9vdHN0cmFwLmpzIj48L3NjcmlwdD4KCTxzY3JpcHQgc3JjPSIvanMvanF1ZXJ5LmNpcmNsaWZ1bC5taW4uanMiPjwvc2NyaXB0PgoJPHNjcmlwdCBzcmM9Ii9qcy9qcXVlcnkucHdzdGFicy0xLjIuMS5qcyI+PC9zY3JpcHQ+Cgk8c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCIgc3JjPSIvanMvd3lzaWJiL2pxdWVyeS53eXNpYmIuanMiPjwvc2NyaXB0PgoJPCEtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLT4KCTxzY3JpcHQgdHlwZT0idGV4dC9qYXZhc2NyaXB0IiBzcmM9Ii9qcy9qcXVlcnktdWktMS4xMC40LmN1c3RvbS5taW4uanMiPjwvc2NyaXB0PgogICAgPHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiIHNyYz0iL2pzL2Jhc2U2NC5qcyI+PC9zY3JpcHQ+CiAgICA8c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCIgc3JjPSIvanMvanF1ZXJ5LmZvcm0ubWluLmpzIj48L3NjcmlwdD4KCTxzY3JpcHQgdHlwZT0idGV4dC9qYXZhc2NyaXB0IiBzcmM9Ii9qcy9oaWdoc3RvY2suanMiPjwvc2NyaXB0PgogICAgPHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiIHNyYz0iL2pzL3VzZXJzLmpzIj48L3NjcmlwdD4JCgk8c2NyaXB0IHNyYz0iaHR0cDovL3NlcnZlcnMtc2FtcC5ydS9hcGkvMTYxNTI2Ij48L3NjcmlwdD4KCVtsb2dpbl08c2NyaXB0IGxhbmd1YWdlPSJKYXZhU2NyaXB0IiB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPgogICAgdmFyIHVzZXJfaW5mbyA9IFtdOwogICAgdXNlcl9pbmZvWydpZCddID0ge2FjY291bnRzaWR9OwogICAgPC9zY3JpcHQ+Wy9sb2dpbl0KPC9oZWFkPgogPGJvZHk+CiA8ZGl2IHN0eWxlPSJiYWNrZ3JvdW5kOiNmZmY7d2lkdGg6MTA5MHB4O21hcmdpbjogMCBhdXRvOyBtYXJnaW4tdG9wOiAxN3B4OyI+Cgk8ZGl2IGlkPSduYXZpZ2F0aW9uX3RpdGxlMic+CiAgICAgIHtoZWFkZXJ9CiAgICAgIDxkaXYgY2xhc3M9InBhZ2UtY29udGVudCI+CgkgIDxkaXYgY2xhc3M9InJvdyI+IAogICAgICAgIDxkaXYgaWQ9InNwZWVkYmFyIj57c3BlZWRiYXJ9PC9kaXY+CgkgICA8ZGl2IGNsYXNzPSJjb2wtbWQtMTAiPgoJICAgPGRpdiBpZD0iY29udGVudC1iYXNlIj4ge2NvbnRlbnR9IDwvZGl2PiAgCgk8L2Rpdj4KICA8L2Rpdj4KIDwvZGl2PgogPC9kaXY+CjwvZGl2PgkJCQkKPGRpdiBpZD0iZm9vdGVyIj4KICAgIDxkaXYgY2xhc3M9ImZvb3Rlci1sZWZ0Ij4gICAgICAgICAgCiAgICAgIDxkaXYgY2xhc3M9InBheSI+PHA+0KDQsNC30YDQsNCx0L7RgtCw0L3QviDQsiDRgdGC0YPQtNC40LggPGEgaHJlZj0idmsuY29tL21lZG5peCI+TWVkTml4IFN0dWRpbzwvYT48L3A+PC9kaXY+CiAgICAgICAgIDwvZGl2PgoJCTxkaXYgY2xhc3M9ImZvb3Rlci1yaWdodCI+CgkJIDxhIGhyZWY9Imh0dHA6Ly9wYXNzcG9ydC53ZWJtb25leS5ydS9hc3AvY2VydHZpZXcuYXNwP3dtaWQ9MzMzODk4NzU4NTQzIiB0YXJnZXQ9Il9ibGFuayI+PGltZyBzcmM9Imh0dHA6Ly93d3cud2VibW9uZXkucnUvaW1nL2ljb25zLzg4eDMxX3dtX2JsdWVfb25fd2hpdGVfcnUucG5nIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyIgYm9yZGVyPSIwIiBhbHQ9IiI+PC9hPgogICAgICAgICAgIDxhIGhyZWY9Imh0dHA6Ly9wYXNzcG9ydC53ZWJtb25leS5ydS9hc3AvY2VydHZpZXcuYXNwP3dtaWQ9MzMzODk4NzU4NTQzIiB0YXJnZXQ9Il9ibGFuayI+PGltZyBzcmM9Imh0dHA6Ly93d3cud2VibW9uZXkucnUvaW1nL2ljb25zLzg4eDMxX3dtX3ZfYmx1ZV9vbl93aGl0ZV9ydS5wbmciIHN0eWxlPSJtYXJnaW4tdG9wOiA4cHg7IiBib3JkZXI9IjAiIGFsdD0iIj48L2E+CiAgICAgICAgPC9kaXY+CjwvZGl2PiAKPGRpdiBpZD0ibW9kYWwiPjwvZGl2PgpbL25vYWpheF0KPC9ib2R5Pgo8L2h0bWw+ClthamF4XQp7Y29udGVudH0gCjxkaXYgc3R5bGU9ImRpc3BsYXk6bm9uZTsiPgoJPGRpdiBpZD0ibnVybF90aXRsZSI+e3RpdGxlfTwvZGl2PgoJPGRpdiBpZD0ibnVybF9zcGVlZGJhciI+e3NwZWVkYmFyfTwvZGl2Pgo8L2Rpdj4KWy9hamF4XQ=='),
(8, 'main-index', 'PGRpdiBpZD0ibWFpbl9zaWRlciI+CiA8ZGl2IGlkPSJzbGlkZXJfY29udGVudCI+CgkJPGRpdiBpZD0nc2xpZGVyJz4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iZm9saW9fYmxvY2siPgogICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9Im1haW5fdmlldyI+CiAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJ3aW5kb3ciPgogICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJpbWFnZV9yZWVsIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIjIj48aW1nIHNyYz0iaW1hZ2VzL3NpZGVyL3NsaWRlX2ltZy5qcGciIGFsdD0iIiAvPjwvYT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIjIj48aW1nIHNyYz0iaW1hZ2VzL3NpZGVyL3NsaWRlX2ltZzEuanBnIiBhbHQ9IiIgY2xhc3M9ImltYWdlMSIvPjwvYT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIjIj48aW1nIHNyYz0iaW1hZ2VzL3NpZGVyL3NsaWRlX2ltZzIuanBnIiBhbHQ9IiIgY2xhc3M9ImltYWdlMiIvPjwvYT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIjIj48aW1nIHNyYz0iaW1hZ2VzL3NpZGVyL3NsaWRlX2ltZzMuanBnIiBhbHQ9IiIgY2xhc3M9ImltYWdlMyIvPjwvYT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIjIj48aW1nIHNyYz0iaW1hZ2VzL3NpZGVyL3NsaWRlX2ltZzQuanBnIiBhbHQ9IiIgY2xhc3M9ImltYWdlNCIvPjwvYT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIjIj48aW1nIHNyYz0iaW1hZ2VzL3NpZGVyL3NsaWRlX2ltZzUuanBnIiBhbHQ9IiIgY2xhc3M9ImltYWdlNSIvPjwvYT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJwYWdpbmciPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIjIiByZWw9IjEiPjwvYT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGEgaHJlZj0iIyIgcmVsPSIyIj48L2E+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhIGhyZWY9IiMiIHJlbD0iMyI+PC9hPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIjIiByZWw9IjQiPjwvYT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGEgaHJlZj0iIyIgcmVsPSI1Ij48L2E+ICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSdzbGlkZXJfdGV4dCc+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0nc2xpZGVyX3RleHQxJz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAJPGRpdiBpZD0icG9kIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGEgaHJlZj0iIyI+0J/QvtC00YDQvtCx0L3QtdC1PC9hPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAJPGRpdiBjbGFzcz0nc2xpZGVyX3RleHQzJz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICDQl9Cw0LPQvtC70L7QstC+0LoKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCTxkaXYgY2xhc3M9J3NsaWRlcl90ZXh0NCc+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgINCi0LXQutGB0YIg0KLQtdC60YHRgiDQotC10LrRgdGCINCi0LXQutGB0YIg0KLQtdC60YHRgiDQotC10LrRgdGCINCi0LXQutGB0YIg0KLQtdC60YHRgiDQotC10LrRgdGCINCi0LXQutGB0YIg0KLQtdC60YHRgiDQotC10LrRgdGCINCi0LXQutGB0YIg0KLQtdC60YHRgiDQotC10LrRgdGCINCi0LXQutGB0YIg0KLQtdC60YHRgiDQotC10LrRgdGCINCi0LXQutGB0YIKCQkJCQkJCQkJ0KLQtdC60YHRgiDQotC10LrRgdGCINCi0LXQutGB0YIg0KLQtdC60YHRgiDQotC10LrRgdGCINCi0LXQutGB0YIg0KLQtdC60YHRgiDQotC10LrRgdGCINCi0LXQutGB0YIg0KLQtdC60YHRgiDQotC10LrRgdGCINCi0LXQutGB0YIg0KLQtdC60YHRgiDQotC10LrRgdGCINCi0LXQutGB0YIg0KLQtdC60YHRgiDQotC10LrRgdGCINCi0LXQutGB0YIg0KLQtdC60YHRgiAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CQkJCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAJPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgIDwvZGl2PgoJCQkgPC9kaXY+Cgo8c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCIgc3JjPSIvanMvc2lkZXIuanMiPjwvc2NyaXB0Pgo8cCBzdHlsZT0idGV4dC1hbGlnbjogY2VudGVyOyI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxOHB4OyI+0JTQvtCx0YDQviDQv9C+0LbQsNC70L7QstCw0YLRjCDQvdCwJm5ic3A7PHN0cm9uZz5TRVJWRVI8c3BhbiBzdHlsZT0iY29sb3I6I2YxYmQxYzsiPk5BTUU8L3NwYW4+PC9zdHJvbmc+PC9zcGFuPjwvcD4KCjxwPtCf0YDQtdC00LvQsNCz0LDQtdC8INCy0LDQvCDQvtC60YPQvdGD0YLRjNGB0Y8g0LIg0LfQsNGF0LLQsNGC0YvQstCw0Y7RidC40Lkg0LjQvdGC0LXRgNC10YHQvtC8INC4INCy0L7Qt9C80L7QttC90L7RgdGC0Y/QvNC4INC80LjRgCDRgNC+0LvQtdCy0L7QuSDQuNCz0YDRiyDQsiA8c3Ryb25nPkdUQSBTYW4gQW5kcmVhczwvc3Ryb25nPiDQv9C+INGB0LXRgtC4LiDQktC+0L/Qu9C+0YnQsNGPINGB0LLQvtC4INGB0LDQvNGL0LUg0YHQvNC10LvRi9C1INC40LTQtdC4INC4INC80LXRh9GC0YssINCy0Ysg0L3QtSDRgdC80L7QttC10YLQtSDQvtGB0YLQsNC90L7QstC40YLRjNGB0Y8g0L/QtdGA0LXQtCDQvtGC0LrRgNGL0LLQsNGO0YnQuNC80LjRgdGPINCy0L7Qt9C80L7QttC90L7RgdGC0Y/QvNC4LjwvcD4KCjxwPtCY0LPRgNCw0Y8g0L3QsCDQvdCw0YjQtdC8INGB0LXRgNCy0LXRgNC1IFNhbXAgUnAsINCy0Ysg0YHQvNC+0LbQtdGC0LUg0LfQsNGA0LDQsdCw0YLRi9Cy0LDRgtGMLCDQutGD0L/QuNGC0Ywg0LrQstCw0YDRgtC40YDRgywg0LTQvtC8LCDQsCDQvNC+0LbQtdGCINCx0YvRgtGMINGA0L7RgdC60L7RiNC90YvQuSDQvtGB0L7QsdC90Y/QuiDRgSDQvdC10LLQtdGA0L7Rj9GC0L3QviDQtNC+0YDQvtCz0LjQvCDQsNCy0YLQvtC80L7QsdC40LvQtdC8INCyINCz0LDRgNCw0LbQtS48L3A+Cgo8cD7QntGC0LrRgNGL0YLRjCDRgdCy0L7QuSDQsdCw0YAsINGD0YHRgtCw0L3QsNCy0LvQuNCy0LDRgtGMINGG0LXQvdGLLCDQt9Cw0LrRg9C/0LDRgtGMINC/0YDQvtC00YPQutGC0Ysg0YMg0L/QtdGA0LXQstC+0LfRh9C40LrQvtCyLCDQtNCw0LLQsNGC0Ywg0YDQtdC60LvQsNC80YMg0L7QsSDRg9GB0LvRg9Cz0LDRhSwg0L/RgNC40LLQu9C10LrQsNGC0Ywg0LrQu9C40LXQvdGC0L7Qsiwg0L/RgNC+0LLQvtC00Y8g0YDQsNC30LvQuNGH0L3Ri9C1INC80LXRgNC+0L/RgNC40Y/RgtC40Y8g0LgsINC60L7QvdC10YfQvdC+INC20LUsINC/0L7Qu9GD0YfQsNGPINC/0YDQuNCx0YvQu9GMINC/0L7RgtGA0LDRgtC40YLRjCDQvtCz0YDQvtC80L3Rg9GOINGH0LDRgdGC0Ywg0YHQvtGB0YLQvtGP0L3QuNGPINC90LAg0YDQsNC30LLQu9C10YfQtdC90LjRjyDQsiDQs9C+0YDQvtC00LUg0LzQuNC70LvQuNC+0L3QtdGA0L7QsiDQuCDRhNC+0YDRgtGD0L3RiyBMYXMgVmVudHVyYSZyc3F1bztzLjwvcD4KCjxwPtCS0YHRgtGD0L/QuNCyINCyINCx0LDQvdC00YMsINC30LDRhdCy0LDRgtGL0LLQsNGPINCy0YHQtSDQvdC+0LLRi9C1INGC0LXRgNGA0LjRgtC+0YDQuNC4LCDRgtC10Lwg0YHQsNC80YvQvCDRgNCw0YHRiNC40YDRj9GPINGB0YTQtdGA0YMg0LLQu9C40Y/QvdC40Y8g0LTQu9GPINCy0LXQtNC10L3QuNGPINCx0LjQt9C90LXRgdCwINGB0LLQvtC10Lkg0LHQsNC90LTRiywg0LLRiyDRgdC80L7QttC10YLQtSDRg9GB0YLQsNC90L7QstC40YLRjCDRgdCy0L7QuSDQv9C+0YDRj9C00L7QuiDQuCDQt9Cw0LrQvtC90Ysg0LIg0LPQvtGA0L7QtNC1INC/0YDQtdGB0YLRg9C/0L3Ri9GFINCz0YDRg9C/0L/QuNGA0L7QstC+0Log0Lgg0LHQtdGB0L/QvtGA0Y/QtNC60L7QsiBMb3MgU2FudG9zLiDQl9Cw0YDQsNCx0L7RgtCw0LIg0L7Qs9GA0L7QvNC90L7QtSDRgdC+0YHRgtC+0Y/QvdC40LUg0Lgg0LDQstGC0L7RgNC40YLQtdGCLjwvcD4KCjxwPtCQINCx0YvRgtGMINC80L7QttC10YIg0L/QvtGB0YLQvtGP0L3QvdGL0LUg0L/RgNC+0LHQu9C10LzRiyDRgSDQt9Cw0LrQvtC90L7QvCwg0LLQvtC50L3QsCDQt9CwINGB0YTQtdGA0YMg0LLQu9C40Y/QvdC40Y8g0Lgg0YLRjtGA0YzQvNCwINCy0LDRgSDQvdC1INC40L3RgtC10YDQtdGB0YPQtdGCLiDQotC+0LPQtNCwINCy0Ysg0LzQvtC20LXRgtC1LCDQv9C+0LzQvtCz0LDRgtGMINC+0LHRi9GH0L3Ri9C8INC70Y7QtNGP0Lwg0YDQsNCx0L7RgtCw0Y8g0YLQsNC60YHQuNGB0YLQvtC8LCDQvNC10YXQsNC90LjQutC+0LwsINCy0L7QtNC40YLQtdC70LXQvCDQsNCy0YLQvtCx0YPRgdCwINC70LjQsdC+LCDQvdCw0L/RgNC40LzQtdGAINC70LjRhtC10L3Qt9C+0YDQvtC8INC/0YDQvtCy0L7QtNGPINGD0YDQvtC60Lgg0L/QviDQstC+0LbQtNC10L3QuNGOINC4INC/0YDQuNC90LjQvNCw0Y8g0Y3QutC30LDQvNC10L3Riy4g0KPRgdGC0YDQvtC40YLRjNGB0Y8g0LIg0LHQvtC70YzQvdC40YbRgyDQuCDQv9C+0LzQvtCz0LDRgtGMINC90YPQttC00LDRjtGJ0LjQvNC40YHRjyDQsiDQstCw0YjQtdC5INC/0L7QvNC+0YnQuC4g0Jgg0LbQuNGC0Ywg0LIg0YHQv9C+0LrQvtC50L3QvtC8INCz0L7RgNC+0LTQtSDRh9C10YHRgtC90YvRhSDQu9GO0LTQtdC5IFNhbiBGaWVycm8uINCf0L7RgdGC0L7Rj9C90L3QviDQt9Cw0YDQsNCx0LDRgtGL0LLQsNGPINC00LXQvdGM0LPQuCwg0L3QtSDQsdC+0Y/RgtGB0Y8g0L4g0LfQsNCy0YLRgNCw0YjQvdC10Lwg0LTQvdC1LjwvcD4KCjxwPtCf0L4g0LzQtdGA0LUg0LjQs9GA0Ysg0LLRiyDQsdGD0LTQtdGC0LUg0L/QvtC60YPQv9Cw0YLRjCDQstGB0ZEg0LHQvtC70LXQtSDQtNC+0YDQvtCz0LjQtSDQtNC+0LzQsCwg0LzQsNGI0LjQvdGLLCDQt9C90LDQutC+0LzQuNGC0YzRgdGPINGBINC90L7QstGL0LzQuCDQu9GO0LTRjNC80LguINCS0L/QvtC70L3QtSDQstC10YDQvtGP0YLQvdC+INGB0L7Qt9C00LDQtNC40YLQtSDRgdC10LzRjNGOLiDQktGB0ZEg0Y3RgtC+INC4INC80L3QvtCz0L4g0LTRgNGD0LPQvtC1INC00L7RgdGC0YPQv9C90L4g0L3QsCDQvdCw0YjQtdC8INGB0LXRgNCy0LXRgNC1INCf0L4g0LzQtdGA0LUg0LjQs9GA0Ysg0LLRiyDQsdGD0LTQtdGC0LUg0L/QvtC60YPQv9Cw0YLRjCDQstGB0ZEg0LHQvtC70LXQtSDQtNC+0YDQvtCz0LjQtSDQtNC+0LzQsCwg0LzQsNGI0LjQvdGLLCDQt9C90LDQutC+0LzQuNGC0YzRgdGPINGBINC90L7QstGL0LzQuCDQu9GO0LTRjNC80LguINCS0L/QvtC70L3QtSDQstC10YDQvtGP0YLQvdC+INGB0L7Qt9C00LDQtNC40YLQtSDRgdC10LzRjNGOLiDQktGB0ZEg0Y3RgtC+INC4INC80L3QvtCz0L4g0LTRgNGD0LPQvtC1INC00L7RgdGC0YPQv9C90L4g0L3QsCDQvdCw0YjQtdC8INGB0LXRgNCy0LXRgNC1Jm5ic3A7PC9wPg=='),
(9, 'main-header', 'PG5hdj4gCgkgPHVsIGNsYXNzPSJtZW51Ij4KCQk8YSBocmVmPSIvIj48aW1nIHN0eWxlPSJoZWlnaHQ6IDQ1cHg7ICAgbWFyZ2luLXRvcDogLTJweDsiIHNyYz0iL2ltYWdlcy9sb2dvLnBuZyI+PC9hPgoJCTxsaSBzdHlsZT0ndGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtib3JkZXItYm90dG9tOiAwcHggc29saWQgI2RkZDsnPjxhIGhyZWY9Ii8iPjxpIGNsYXNzPSJmYSBmYS1ob21lIiBzdHlsZT0iZm9udC1zaXplOiAxNnB4OyI+PC9pPiDQk9C70LDQstC90LDRjzwvYT48L2xpPgogICAgICAgIDxsaSBzdHlsZT0ndGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtib3JkZXItYm90dG9tOiAwcHggc29saWQgI2RkZDsnPjxhIGhyZWY9Ii9uZXdzIj48aSBjbGFzcz0iZmEgZmEtcnNzIiBzdHlsZT0iZm9udC1zaXplOiAxNnB4OyI+PC9pPiDQndC+0LLQvtGB0YLQuDwvYT48L2xpPgoJCTxsaSBzdHlsZT0ndGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtib3JkZXItYm90dG9tOiAwcHggc29saWQgI2RkZDsnPjxhIGhyZWY9IiMiPjxpIGNsYXNzPSJmYSBmYS1saXN0IiBzdHlsZT0iZm9udC1zaXplOiAxNnB4OyI+PC9pPiDQnNC+0L3QuNGC0L7RgNC40L3Qs9C4PC9hPgogICAgICAgIDx1bCBjbGFzcz0ic3ViLW1lbnUiPgoJCQk8bGkgc3R5bGU9J3RleHQtdHJhbnNmb3JtOiBjYXBpdGFsaXplOyc+PGEgaHJlZj0iL21vbi90b3BsdmwiPtCi0L7QvyAxNSDQv9C+INGD0YDQvtCy0L3RjjwvYT48L2xpPgoJCQk8bGkgc3R5bGU9J3RleHQtdHJhbnNmb3JtOiBjYXBpdGFsaXplOyc+PGEgaHJlZj0iL21vbi90b3Btb25leSI+0KLQvtC/IDE1INC/0L4g0LTQtdC90YzQs9Cw0Lw8L2E+PC9saT4KCQkJPGxpIHN0eWxlPSd0ZXh0LXRyYW5zZm9ybTogY2FwaXRhbGl6ZTsnPjxhIGhyZWY9Ii9tb24vaG91c2UiPtCa0LDRgNGC0LAg0LTQvtC80L7QsjwvYT48L2xpPgoJCTwvdWw+CgkJW2xvZ2luXTxsaSBzdHlsZT0ndGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtib3JkZXItYm90dG9tOiAwcHggc29saWQgI2RkZDsnPjxhIGhyZWY9Ii91c2Vycy9hY2NvdW50L3thY2NvdW50c2lkfSI+PGkgY2xhc3M9ImZhIGZhLXVzZXIiIHN0eWxlPSJmb250LXNpemU6IDE2cHg7Ij48L2k+INCb0LjRh9C90YvQuSDQutCw0LHQuNC90LXRgjwvYT48L2xpPlsvbG9naW5dCiAgICAgICAgW2FkbWluXTxsaSBzdHlsZT0ndGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtib3JkZXItYm90dG9tOiAwcHggc29saWQgI2RkZDsnPjxhIGhyZWY9Ii9hZG1pbiI+PGkgY2xhc3M9ImZhIGZhLXVzZXItc2VjcmV0IiBzdHlsZT0iZm9udC1zaXplOiAxNnB4OyI+PC9pPiDQkNC00LzQuNC9LdC/0LDQvdC10LvRjDwvYT48L2xpPlsvYWRtaW5dCiAgPC9saT4KICAgW25vbG9naW5dW3JlZ2lzdGVyXTxsaSBzdHlsZT0nZmxvYXQ6cmlnaHQ7IHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7Ym9yZGVyLWJvdHRvbTogMHB4IHNvbGlkICNkZGQ7Jz48YSBocmVmPSJ1c2Vycy9yZWdpc3RlciIgY2xhc3M9Inltb2RhbCI+PGkgY2xhc3M9ImZhIGZhLXNpZ24taW4iIHN0eWxlPSJmb250LXNpemU6IDE2cHg7Ij48L2k+INCg0LXQs9C40YHRgtGA0LDRhtC40Y88L2E+PC9saT5bL3JlZ2lzdGVyXVsvbm9sb2dpbl0KICAgW25vbG9naW5dPGxpIHN0eWxlPSdmbG9hdDpyaWdodDsgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtib3JkZXItYm90dG9tOiAwcHggc29saWQgI2RkZDsnPjxhIGhyZWY9Ii91c2Vycy9sb2dpbiIgY2xhc3M9Inltb2RhbCI+PGkgY2xhc3M9ImZhIGZhLXNpZ24taW4iIHN0eWxlPSJmb250LXNpemU6IDE2cHg7Ij48L2k+INCS0YXQvtC0PC9hPjwvbGk+Wy9ub2xvZ2luXQogICBbbG9naW5dPGxpIHN0eWxlPSdmbG9hdDpyaWdodDsgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtib3JkZXItYm90dG9tOiAwcHggc29saWQgI2RkZDsnPjxhIGhyZWY9Ii9sb2dvdXQiID48aSBjbGFzcz0iZmEgZmEtc2lnbi1vdXQiIHN0eWxlPSJmb250LXNpemU6IDE2cHg7Ij48L2k+INCS0YvQudGC0Lg8L2E+PC9saT5bL2xvZ2luXQogICA8L3VsPgo8L25hdj4='),
(10, 'main-news', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+INCd0L7QstC+0YHRgtC4PC9kaXY+CntkYXRhfQ=='),
(11, 'main-news-short', 'PGRpdiBjbGFzcz0ibmV3c2xpbmVfY29udGVudCBuZy1zY29wZSIgbmctcmVwZWF0PSJicmljayBpbiBicmlja3MiPgogICAgICAgICAgPGRpdiBjbGFzcz0ibmV3c2xpbmVfY29udGVudF9pdGVtIj4KICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJuZXdzbGluZV9jb250ZW50X2l0ZW1faGVhZCI+CiAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJuZXdzY2FyZF9pbWFnZSAtZmlsbC15Ij4KCQkJCTxkaXYgY2xhc3M9Im5ld3NjYXJkX2ltYWdlIC1maWxsLXkiIHN0eWxlPSJiYWNrZ3JvdW5kOiB1cmwoe2ltZ30pOyI+CgkJCQkgPGEgY2xhc3M9ImxhYmVsIGNhdCBsYWJlbC1pbmZvIiBocmVmPSJ7dXJsfSI+PGkgY2xhc3M9ImZhIGZhLWhvbWUiPjwvaT4ge2NhdHN9PC9hPgoJCQkJPC9kaXY+CgkJCQk8L2Rpdj4KICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9Im5ld3NfaGVhZF9kZXNjIj4KICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0ibmV3c19kYXRlIG5nLWJpbmRpbmciPnt0aW1lfTwvZGl2PgogICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJuZXdzX2hlYWRlciBuZy1iaW5kaW5nIj57bmFtZX08L2Rpdj4KICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0ibmV3c2xpbmVfY29udGVudF9pdGVtX2hlYWRfZ3JhZCI+PC9kaXY+CiAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgPGRpdiBjbGFzcz0ibmV3c2xpbmVfY29udGVudF9pdGVtX2Rlc2MiPgogICAgICAgICAgICAgICAgPGFydGljbGUgbmctYmluZC1odG1sPSJicmljay5odG1sX3ByZXZpZXciIGNsYXNzPSJuZy1iaW5kaW5nIj57aW5mb30KICAgICAgICAgICAgICA8L2FydGljbGU+CiAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgIAogICAgICAgICAgICA8ZGl2IGNsYXNzPSJuZXdzbGluZV9jb250ZW50X2l0ZW1fZGVzYyI+CiAgICAgICAgICAgICAgPGRpdiBjbGFzcz0idmlzaXRvcnMgbmctYmluZGluZyI+CgkJCSA8aSBjbGFzcz0iZmEgZmEtdXNlciIgc3R5bGU9ImZvbnQtc2l6ZTogMThweDsiPjwvaT4ge2F1dGhvcn0KICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iaGVhcnRoIG5nLWJpbmRpbmciPgogICAgICAgICAgICAgICA8aSBjbGFzcz0iZmEgZmEtZXllIiBzdHlsZT0iZm9udC1zaXplOiAxOHB4OyI+PC9pPiB7dmlld3N9CiAgICAgICAgICAgICAgPC9kaXY+CgkJCSAgPGRpdiBjbGFzcz0iY29tbWVudHMgbmctYmluZGluZyI+CiAgICAgICAgICAgICAgIDxpIGNsYXNzPSJmYSBmYS1jb21tZW50IiBzdHlsZT0iZm9udC1zaXplOiAxOHB4OyI+PC9pPiB7Y29tfQogICAgICAgICAgICAgIDwvZGl2PgoJCQkgIDxkaXYgY2xhc3M9ImdvIj4KCQkJICA8ZGl2IGNsYXNzPSJob3d0b3BsYXktZ28iID4KICAgICAgICAgICAgICAgPGEgaHJlZj0ie2xpbmt9Ij7Qn9C+0LTRgNC+0LHQvdC10Lk8L2E+CgkJCQk8L2Rpdj4KCQkJICA8L2Rpdj4KICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJjbGVhcmZpeCI+PC9kaXY+CiAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICA8L2Rpdj4KICAgICAgICA8L2Rpdj4J'),
(12, 'main-news-full', 'PGRpdiBjbGFzcz0ibmV3c2xpbmVfY29udGVudCBuZy1zY29wZSIgbmctcmVwZWF0PSJicmljayBpbiBicmlja3MiPgogICAgICAgICAgPGRpdiBjbGFzcz0ibmV3c2xpbmVfY29udGVudF9pdGVtIj4KICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJuZXdzbGluZV9jb250ZW50X2l0ZW1faGVhZCI+CiAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJuZXdzY2FyZF9pbWFnZSAtZmlsbC15Ij4KCQkJCTxkaXYgY2xhc3M9Im5ld3NjYXJkX2ltYWdlIC1maWxsLXkiIHN0eWxlPSJiYWNrZ3JvdW5kOiB1cmwoe2ltZ30pOyI+CgkJCQk8YSBjbGFzcz0ibGFiZWwgY2F0IGxhYmVsLWluZm8iIGhyZWY9Int1cmx9Ij48aSBjbGFzcz0iZmEgZmEtaG9tZSI+PC9pPiB7Y2F0c308L2E+CgkJCQk8L2Rpdj4KCQkJCTwvZGl2PgogICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0ibmV3c19oZWFkX2Rlc2MiPgogICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJuZXdzX2RhdGUgbmctYmluZGluZyI+e3RpbWV9PC9kaXY+CiAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9Im5ld3NfaGVhZGVyIG5nLWJpbmRpbmciPntuYW1lfTwvZGl2PgogICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJuZXdzbGluZV9jb250ZW50X2l0ZW1faGVhZF9ncmFkIj48L2Rpdj4KICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJuZXdzbGluZV9jb250ZW50X2l0ZW1fZGVzYyI+CiAgICAgICAgICAgICAgICA8YXJ0aWNsZSBuZy1iaW5kLWh0bWw9ImJyaWNrLmh0bWxfcHJldmlldyIgY2xhc3M9Im5nLWJpbmRpbmciPntpbmZvMn0KICAgICAgICAgICAgICA8L2FydGljbGU+CiAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgIDxkaXYgY2xhc3M9Im5ld3NsaW5lX2NvbnRlbnRfaXRlbV9kZXNjIj4KICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJ2aXNpdG9ycyBuZy1iaW5kaW5nIj4KCQkJIDxpIGNsYXNzPSJmYSBmYS11c2VyIiBzdHlsZT0iZm9udC1zaXplOiAxOHB4OyI+PC9pPiB7YXV0aG9yfQogICAgICAgICAgICAgICAKICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJoZWFydGggbmctYmluZGluZyI+CiAgICAgICAgICAgICAgIDxpIGNsYXNzPSJmYSBmYS1leWUiIHN0eWxlPSJmb250LXNpemU6IDE4cHg7Ij48L2k+IHt2aWV3c30KICAgICAgICAgICAgICA8L2Rpdj4KCQkJICA8ZGl2IGNsYXNzPSJjb21tZW50cyBuZy1iaW5kaW5nIj4KICAgICAgICAgICAgICAgPGkgY2xhc3M9ImZhIGZhLWNvbW1lbnQiIHN0eWxlPSJmb250LXNpemU6IDE4cHg7Ij48L2k+IHtjb219CiAgICAgICAgICAgICAgPC9kaXY+CgkJCSAgPGRpdiBjbGFzcz0iZ28iPgoJCQkgIDxkaXYgY2xhc3M9Imhvd3RvcGxheS1nbyIgPgogICAgICAgICAgICAgICA8YSBocmVmPSIvbmV3cyI+0J3QsNC30LDQtDwvYT4KCQkJCTwvZGl2PgoJCQkgIDwvZGl2PgogICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNsZWFyZml4Ij48L2Rpdj4KICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgIDwvZGl2PgogICAgICAgIDwvZGl2PgkJCQogICAgICAge2NvbW1lbnRzfQpbbG9naW5dCiAgPGZvcm0gbWV0aG9kPSJQT1NUIiBhY3Rpb249IiI+CiAgPGRpdiBjbGFzcz0iY29tLWFkZCBjb21tZW50LXBvc3QiPgogICA8dGV4dGFyZWEgcm93cz0iMiIgc3R5bGU9IndpZHRoOiA2NTVweDsgaGVpZ2h0OiA2NnB4OyIgaWQ9ImVkaXRvciIgICBuYW1lPSJ0ZXh0Y29tbWVudCI+PC90ZXh0YXJlYT4KICA8c2NyaXB0PgogICAgJChkb2N1bWVudCkucmVhZHkoZnVuY3Rpb24oKSB7CiAgICB2YXIgd2JiT3B0ID0gewogICAgIGJ1dHRvbnM6ICJib2xkLGl0YWxpYyx1bmRlcmxpbmUsfCxpbWcsbGluayx8LGNvZGUscXVvdGUsZm9udGNvbG9yLGp1c3RpZnlsZWZ0LGp1c3RpZnljZW50ZXIsanVzdGlmeXJpZ2h0IgogICAgfQogICAgJCgiI2VkaXRvciIpLnd5c2liYih3YmJPcHQpOwogICAgIHZhciBodG1sID0gJCgnI2VkaXRvcicpLmh0bWxjb2RlKCk7CiAgICB9KTsKICAgIDwvc2NyaXB0PgogICAgPGlucHV0IHR5cGU9ImhpZGRlbiIgIG5hbWU9ImNvbW1lbnRzIiB2YWx1ZT0ie2lkfSI+PGJyPgoJCTxidXR0b24gdHlwZT0ic3VibWl0IiAgbmFtZT0iYWRkY29tbWVudCIgIHZhbHVlPSJ0cnVlIiAgY2xhc3M9ImJ0biBidG4tZGVmYXVsdCI+0JTQvtCx0LDQstC40YLRjDwvYnV0dG9uPgoJPC9kaXY+CjwvZm9ybT4KWy9sb2dpbl0='),
(13, 'main-speedbar', 'PGRpdiBjbGFzcz0iY29sLW1kLTIiPgogICAgPGRpdiBpZD0ncmlnaHRfYmxvY2tfdGl0bGUnPjxkaXYgY2xhc3M9J2ljb24tdGh1bWJzLXVwJyBzdHlsZT0nbWFyZ2luLXJpZ2h0OiAtMnB4O2Zsb2F0OiByaWdodDttYXJnaW4tdG9wOiAycHg7Jz48L2Rpdj7QndCw0LLQuNCz0LDRhtC40Y88L2Rpdj4KCQkgICA8ZGl2IGNsYXNzPSJzaWRlYmFyIGNvbnRlbnQtYm94IiBzdHlsZT0iZGlzcGxheTogYmxvY2s7Ij48YnI+CiAgICAgICAgICAgICAgPHVsIGNsYXNzPSJuYXYiPgoJCQkJPGxpIGNsYXNzPSJuYXYtaGVhZGVyIj48L2xpPgoJCQkJCTxsaT48YSBocmVmPSIvcGFnZS8zIj7QniDQodC10YDQstC10YDQtSA8aSBjbGFzcz0iZmEgZmEtaG9tZSIgc3R5bGU9ImZsb2F0OiByaWdodDsiPjwvaT48L2E+PC9saT4KCQkJCQk8bGk+PGEgaHJlZj0iL21vbi9hZG1pbnMiPtCQ0LTQvNC40L3QuNGB0YLRgNCw0YbQuNGPINGB0LXRgNCy0LXRgNCwIDxpIGNsYXNzPSJmYSBmYS1mb250IiBzdHlsZT0iZmxvYXQ6IHJpZ2h0OyI+PC9pPjwvYT48L2xpPgoJCQkJCTxsaT48YSBocmVmPSIvdXNlcnMvcGxheWVyc2VhcmNoIiBbbG9naW5dY2xhc3M9Inltb2RhbCJbL2xvZ2luXT7Qn9C+0LjRgdC6INC40LPRgNC+0LrQsCA8aSBjbGFzcz0iZmEgZmEtc2VhcmNoIiBzdHlsZT0iZmxvYXQ6IHJpZ2h0OyI+PC9pPjwvYT48L2xpPgoJCQkJCTxsaT48YSBocmVmPSIvbW9uL2Jhbmxpc3QiPtCR0LDQvSDQu9C40YHRgiA8aSBjbGFzcz0iZmEgZmEtYmFuIiBzdHlsZT0iZmxvYXQ6IHJpZ2h0OyI+PC9pPjwvYT48L2xpPgogICAgICAgICAgICAgICAgPC91bD4KCQkJIDwvZGl2PgoJCQkgPGRpdiBjbGFzcz0id2VsbCI+CgkJCQkJCTx1bCBjbGFzcz0ibmF2IG5hdi1saXN0Ij4KCQkJCQkJCTxsaSBjbGFzcz0ibmF2LWhlYWRlciI+0J/RgNC+0YfQtdC1IDxpIGNsYXNzPSJmYSBmYS1mb2xkZXItb3BlbiIgc3R5bGU9ImZsb2F0OiByaWdodDsiPjwvaT48L2xpPgoJCQkJCQkJPGxpPjxhIGhyZWY9Ii9wYWdlLzEiPtChINGH0LXQs9C+INC90LDRh9C40L3QsNGC0Ywg0LjQs9GA0YMg0L3QsCDRgdC10YDQstC10YDQtTwvYT48L2xpPgoJCQkJCQkJPGxpPjxhIGhyZWY9Ii9wYWdlLzIiPtCf0YDQsNCy0LjQu9CwINGB0LXRgNCy0LXRgNCwPC9hPjwvbGk+CgkJCQkJCQk8bGk+PGEgaHJlZj0iL3BhZ2UvNCI+0JrQvtC80LDQvdC00Ysg0YHQtdGA0LLQtdGA0LA8L2E+PC9saT4KCQkJCQkJCTxsaT48YSBocmVmPSIvcGFnZS81Ij7Qp9GC0L4g0LTQsNGR0YIgVklQINGB0YLQsNGC0YPRgSDQvdCwINGB0LXRgNCy0LXRgNC1PC9hPjwvbGk+CgkJCQkJCQk8bGk+PGEgaHJlZj0iL3BhZ2UvNiI+0J7RgtCy0LXRgtGLINC90LAg0L3QtdC60L7RgtC+0YDRi9C1INCy0L7Qv9GA0L7RgdGLPC9hPjwvbGk+CgkJCQkJCTwvdWw+CgkJCQkJPC9kaXY+CiAgICAgICAgICAgICAgICA8IS0tLS0tLT4KCQkJCTxicj4KICAgICAgICAgICAgICA8ZGl2IGlkPSdyaWdodF9ibG9ja190aXRsZTEnPjxkaXYgY2xhc3M9J2ljb24tdGh1bWJzLXVwJyBzdHlsZT0nbWFyZ2luLXJpZ2h0OiAtMnB4O2Zsb2F0OiByaWdodDttYXJnaW4tdG9wOiAycHg7Jz48L2Rpdj4g0JzQvtC90LjRgtC+0YDQuNC90LMge3N0YXR1c308L2Rpdj4KICAgICAgICAgICAgIDxkaXYgaWQ9J3JpZ2h0X2Jsb2NrJyBzdHlsZT0nZm9udC1zaXplOiAxNXB4OyBwYWRkaW5nOiA0cHggNHB4IDRweCA0cHg7Jz4KCQkJINCd0LDQt9Cy0LDQvdC40LU6IHtob3N0bmFtZX08YnI+CgkJCSDQkNC00YDQtdGBINGB0LXRgNCy0LXRgNCwOiB7YWRyZXN9PGJyPgogICAgICAgICAgICAg0J7QvdC70LDQudC9OiB7b25saW5lfTxicj4KICAgICAgICAgICAgINCX0LDQs9GA0YPQttC10L06INC90LAge3phZ3J9CgkJICAgPGRpdiBjbGFzcz0icHJvZ3Jlc3MiPgoJCQkgIDxkaXYgY2xhc3M9InByb2dyZXNzLWJhciIgc3R5bGU9IndpZHRoOiB7YmFyfSUiPjwvZGl2PgoJCSAgIDwvZGl2PgogICAgICAgICAgPHA+PGEgY2xhc3M9ImJ0biBidG4tc3VjY2VzcyBidG4tYmxvY2siIGhyZWY9InNhbXA6Ly97YWRyZXN9IiB0YXJnZXQ9Il9ibGFuayI+0JfQsNC50YLQuCDQvdCwINGB0LXRgNCy0LXRgCAmcmFxdW87PC9hPjwvcD4KICAgICAgIDwvZGl2PgkgIAogICA8L2Rpdj4='),
(14, 'main-page', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+IHtuYW1lfTwvZGl2Pgo8ZGl2IGlkPSJtYWluX2Jsb2NrIj4Ke3RleHR9CjwvZGl2Pg=='),
(15, 'main-mon', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+e25hbWV9PC9kaXY+CiA8ZGl2IGlkPSJtYWluX2Jsb2NrIj4KICA8dGFibGUgY2xhc3M9J3RhYmxlIHRhYmxlLWhvdmVyJz4KCTx0aGVhZD4KCSAgPHRyPgoJCTx0aCB3aWR0aD0iMSUiPjwvdGg+CgkJPHRoIHN0eWxlPScgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTsnPtCb0L7Qs9C40L08L3RoPgoJCTx0aCBzdHlsZT0nZmxvYXQ6cmlnaHQ7IHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7Ym9yZGVyLWJvdHRvbTogMHB4IHNvbGlkICNkZGQ7Jz57dmFsfTwvdGg+CgkgPC90cj4KICAgPC90aGVhZD4KCQl7bW9ufQogIDwvdGFibGU+CjwvZGl2Pg=='),
(146, 'main-mon-admins', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+e25hbWV9PC9kaXY+CiA8ZGl2IGlkPSJtYWluX2Jsb2NrIj4KICA8dGFibGUgY2xhc3M9J3RhYmxlIHRhYmxlLWhvdmVyJz4KCTx0aGVhZD4KCSAgPHRyPgoJCTx0aCB3aWR0aD0iMSUiPjwvdGg+CgkJPHRoIHdpZHRoPSIyMCUiIHN0eWxlPScgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTsnPtCb0L7Qs9C40L08L3RoPgoJCTx0aCB3aWR0aD0iNzUlInN0eWxlPScgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTsnPtCU0L7Qu9C20L3QvtGB0YLRjDwvdGg+CgkJPHRoIHN0eWxlPSdmbG9hdDpyaWdodDsgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtib3JkZXItYm90dG9tOiAwcHggc29saWQgI2RkZDsnPtCh0YLQsNGC0YPRgTwvdGg+CgkgPC90cj4KICAgPC90aGVhZD4KCQl7bW9ufQogIDwvdGFibGU+CjwvZGl2Pg=='),
(147, 'main-admins', 'PHRib2R5Pgo8dHI+CiAgPHRkPjxpbWcgc3R5bGU9IndpZHRoOiAzMnB4OyBoZWlnaHQ6IDMycHg7IiBzcmM9IntpbWd9Ij48L3RkPgogIDx0ZD57bG9naW59PC90ZD4gCiAgPHRkPntwb3NpdGlvbn08L3RkPgogIDx0ZD57b25saW5lfTwvdGQ+CjwvdHI+CjwvdGJvZHk+'),
(148, 'main-mon-bans', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+e25hbWV9PC9kaXY+CiA8ZGl2IGlkPSJtYWluX2Jsb2NrIj4KICA8dGFibGUgY2xhc3M9J3RhYmxlIHRhYmxlLWhvdmVyJz4KCTx0aGVhZD4KCSAgPHRyPgoJCTx0aCB3aWR0aD0iMSUiPklEPC90aD4KCQk8dGggd2lkdGg9IjUlIj7Qm9C+0LPQuNC9PC90aD4KCQk8dGggd2lkdGg9IjUlIj7QmtGC0L4g0LfQsNCx0LDQvdC40LsgPC90aD4KCQk8dGggd2lkdGg9IjUlIj7Qn9GA0LjRh9C40L3QsCDQsdCw0L3QsCA8L3RoPgoJCTx0aCB3aWR0aD0iNSUiPtCU0LDRgtCwINGA0LDQt9Cx0LDQvdCwIDwvdGg+CgkgPC90cj4KICAgPC90aGVhZD4KCQl7bW9ufQogIDwvdGFibGU+CjwvZGl2Pgp7cGFnaW5hdGlvbn0='),
(149, 'main-bans', 'PHRib2R5PgogICA8dHI+CiAgICAgPHRkIHN0eWxlPSJmb250LXNpemU6IDEzcHg7Ij57YmlkfTwvdGQ+CiAgICAgPHRkIHN0eWxlPSJmb250LXNpemU6IDEzcHg7Ij57Yk5pY2t9PC90ZD4KICAgICA8dGQgc3R5bGU9ImZvbnQtc2l6ZTogMTNweDsiPntiQWRtaW59PC90ZD4KCSA8dGQgc3R5bGU9ImZvbnQtc2l6ZTogMTNweDsiPntiUmVhc29vbn08L3RkPgogICAgIDx0ZCBzdHlsZT0iZm9udC1zaXplOiAxM3B4OyI+e2JSYXpiYW59PC90ZD4KICA8L3RyPgo8L3Rib2R5Pg=='),
(150, 'main-topmoney', 'PHRib2R5PgogIDx0cj4KICAgPHRkPjxpbWcgc3R5bGU9IndpZHRoOiAzMnB4OyBoZWlnaHQ6IDMycHg7IiBzcmM9IntpbWd9Ij48L3RkPgogICA8dGQ+e2xvZ2lufTwvdGQ+IAogICA8dGQ+PHNwYW4gY2xhc3M9ImxhYmVsIGxhYmVsLWluZm8iIHN0eWxlPSdtYXJnaW46IDBweDsgYmFja2dyb3VuZC1jb2xvcjogIzU0OUNDRTsgcGFkZGluZzogNXB4IDEwcHg7ZmxvYXQ6cmlnaHQ7Jz57bW9uZXl9ICQ8L3NwYW4+PHRkPgogIDwvdHI+CjwvdGJvZHk+'),
(151, 'main-toplvl', 'PHRib2R5PgogPHRyPgogIDx0ZD48aW1nIHN0eWxlPSJ3aWR0aDogMzJweDsgaGVpZ2h0OiAzMnB4OyIgc3JjPSJ7aW1nfSI+PC90ZD4KICA8dGQ+e2xvZ2lufTwvdGQ+IAogIDx0ZD4gPHNwYW4gY2xhc3M9ImxhYmVsIGxhYmVsLWluZm8iIHN0eWxlPSdtYXJnaW46IDBweDsgYmFja2dyb3VuZC1jb2xvcjogIzU0OUNDRTsgcGFkZGluZzogNXB4IDEwcHg7ZmxvYXQ6cmlnaHQ7Jz57bHZsfTwvc3Bhbj4gPHRkPgogPC90cj4KPC90Ym9keT4='),
(152, 'map-house', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyAgICAgd2lkdGg6IDEwNjBweDsiPiDQnNC+0L3QuNGC0L7RgNC40L3QsyDQtNC+0LzQvtCyPC9kaXY+CjxkaXYgaWQ9Im1haW5fYmxvY2siIHN0eWxlPSJwYWRkaW5nOiAxMHB4IDEwcHggMTBweCAyOHB4OyAgICB3aWR0aDogMTA2MHB4OyI+CjxkaXYgc3R5bGU9InBvc2l0aW9uOnJlbGF0aXZlOyBiYWNrZ3JvdW5kOnVybCgvaW1hZ2VzL21hcC9tYXAuanBnKTsgd2lkdGg6MTAwMHB4OyBoZWlnaHQ6MTAwMHB4OyI+CntidXl9CjwvZGl2Pgo8L2Rpdj4='),
(153, 'map-house-buy', 'PGRpdiBkYXRhLWh0bWw9InRydWUiIGRhdGEtdG9vbHRpcD0ibmUiIGRhdGEtdGl0bGU9ItCU0L7QvCDihJYgIHtpZH0g0KHRgtC+0LjQvNC+0YHRgtGMOiB7c3VtfSIgc3R5bGU9InBvc2l0aW9uOmFic29sdXRlOyB0b3A6e3RvcH1weDsgbGVmdDp7bGVmdH1weDsgYmFja2dyb3VuZDp1cmwoL2ltYWdlcy9tYXAvaG91c2UtaWNvbi5naWYpOyB3aWR0aDoxNnB4OyBoZWlnaHQ6MTZweDsiPjwvZGl2Pg=='),
(154, 'map-house-none', 'PGRpdiBkYXRhLWh0bWw9InRydWUiIGRhdGEtdG9vbHRpcD0ibmUiIGRhdGEtdGl0bGU9ItCU0L7QvCDihJYgIHtpZH0gINCS0LvQsNC00LXQu9C10YY6IHt6fSIgc3R5bGU9InBvc2l0aW9uOmFic29sdXRlOyB0b3A6IHt0b3B9cHg7IGxlZnQ6IHtsZWZ0fXB4OyBiYWNrZ3JvdW5kOnVybCgvaW1hZ2VzL21hcC9ob3VzZS1pY29uMi5naWYpOyB3aWR0aDoxNnB4OyBoZWlnaHQ6MTZweDsiPjwvZGl2Pg=='),
(155, 'users-account', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+0JvQuNGH0L3Ri9C5INC60LDQsdC40L3QtdGCIHtsb2dpbn08L2Rpdj4KPGRpdiBpZD0ibWFpbl9ibG9jayI+CiAgIDxkaXYgY2xhc3M9InVpbmZfbGNvbCI+CgkJPGRpdiBjbGFzcz0idXRpdGxlIj48aSBjbGFzcz0iZmEgZmEtdXNlciI+PC9pPiDQn9C10YDRgdC+0L3QsNC2PC9kaXY+CgkJIDxicj4KCQkJPGRpdiBjbGFzcz0icmF0ZXVpIiB0aXRsZT0ibHZsIj48Y2VudGVyPntsb2dpbn08L2NlbnRlcj48L2Rpdj48Y2VudGVyPjxpbWcgc3JjPSIvaW1nL3NraW5zL3tza2lufS5wbmciIHtyZWZsZWN0fT0iIiB3aWR0aD0iMTIwcHgiIGFsdD0iIj48L2NlbnRlcj48IS0tIDxpbWcgc3JjPSIvdGVtcGxhdGVzL1RlY2huby1Dby9pbWFnZXMvaWNvbl80LmdpZiIgYWx0PSIiIC8+IC0tPjxicj4KCQkJPGRpdiBjbGFzcz0idWluZl9sY29sbCI+CgkJCTx1bCBjbGFzcz0ibmF2Ij4KICAgICAgICAgICAgICA8bGk+CgkJCQkgPGEgaHJlZj0iL3VzZXJzL2RlcG9zaXQiIGNsYXNzPSJ5bW9kYWwiPgoJCQkJIDxpIGNsYXNzPSJmYSBmYS1jcmVkaXQtY2FyZCI+PC9pPiDQlNC+0L3QsNGCOiB7ZG9uYXRlfTwvYT4KCQkJICA8L2xpPgkJCQoJCQkgIDxsaT4KCQkJCSA8YSBocmVmPSIvdXNlcnMvZWRpdC9wYXNzd29yZCIgY2xhc3M9Inltb2RhbCI+CgkJCQkgPGkgY2xhc3M9ImZhIGZhLWVkaXQiPjwvaT4g0JjQt9C80LXQvdC40YLRjCDQv9Cw0YDQvtC70Yw8L2E+CgkJCSAgPC9saT4KCQkJICA8bGk+CgkJCQk8YSBocmVmPSIvdXNlcnMvZWRpdC9tYWlsIiBjbGFzcz0ieW1vZGFsIj4KCQkJCTxpIGNsYXNzPSJmYSBmYS1lZGl0Ij48L2k+INCh0LzQtdC90LjRgtGMIEUtbWFpbDwvYT4KCQkJIDwvbGk+CgkJICAgIDwvdWw+CgkJCTwvZGl2PgoJCTwvZGl2PgoKCQk8ZGl2IGNsYXNzPSJ1aW5mX3Jjb2wiPgoJCQk8dWwgY2xhc3M9InVpbmZfdXNzZXAiPgoJCQkgICAgICAgICAgICAgICAgICAgCgkJCQk8ZGl2IGNsYXNzPSJ1dGl0bGUiPjxpIGNsYXNzPSJmYSBmYS1oZWFydGJlYXQiPjwvaT4g0KHQvtGB0YLQvtGP0L3QuNC1OjwvZGl2PgoJCQkJPGJyPgoJCQkJIDxkaXYgY2xhc3M9ImJhcnMiPgogICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLW1kLTQiPgogICAgICAgICAgICAgICA8ZGl2IGlkPSJteVN0YXQyIiBkYXRhLWRpbWVuc2lvbj0iMTUwIiBkYXRhLXRleHQ9IntoZWFsdGh9JSIgZGF0YS1pbmZvPSLQl9C00L7RgNC+0LLRjNC1IiBkYXRhLXdpZHRoPSIzMCIgIGRhdGEtZm9udHNpemU9IjIwIiBkYXRhLXBlcmNlbnQ9IntoZWFsdGh9IiBkYXRhLWZnY29sb3I9IiNlNjhhOGEiIGRhdGEtYmdjb2xvcj0iI2VlZSI+PC9kaXY+CiAgICAgICAgICAgICAgIDwvZGl2PgoJCQkgICAgPGRpdiBjbGFzcz0iY29sLW1kLTQiIHN0eWxlPSJtYXJnaW4tbGVmdDogMTkxcHg7Ij4KICAgICAgICAgICAgICAgPGRpdiBpZD0ibXlTdGF0aGFsZjIiIGRhdGEtZGltZW5zaW9uPSIxNTAiIGRhdGEtdGV4dD0ie3NhdGlldHl9JSIgZGF0YS1pbmZvPSLQodGL0YLQvtGB0YLRjCIgZGF0YS13aWR0aD0iMzAiICBkYXRhLWZvbnRzaXplPSIyMCIgZGF0YS1wZXJjZW50PSJ7c2F0aWV0eX0iIGRhdGEtZmdjb2xvcj0iIzZFQUZDRSIgZGF0YS1iZ2NvbG9yPSIjZWVlIj48L2Rpdj4KICAgICAgICAgICAgICAgPC9kaXY+CgkJCSAgIDwvZGl2PgoKCQkJCQoJCQkJPGJyPgoJCQkJPGRpdiBjbGFzcz0idXRpdGxlIj48aSBjbGFzcz0iZmEgZmEtaW5mby1jaXJjbGUiPjwvaT4g0JjQvdGE0L7RgNC80LDRhtC40Y86PC9kaXY+CgkJCQk8YnI+CgkJCQkKCQkJCTxkaXYgY2xhc3M9InByb2ZpbGUiPiAKCQkJCTx0YWJsZSBjbGFzcz0iaW5mby0yIj4KCQkJCQk8dGJvZHk+PHRyPgoJCQkJCQk8dGQgY2xhc3M9ImtleSI+0JDQutC60LDRg9C90YI8L3RkPgoJCQkJCQk8dGQgY2xhc3M9ImRvdHRlZCI+PC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJ2YWwiPjxpIGNsYXNzPSJ3aGl0ZSI+XzwvaT7ihJZ7aWR9PC90ZD4KCQkJCQk8L3RyPgoJCQkJCTx0cj4KCQkJCQkJPHRkIGNsYXNzPSJrZXkiPtCY0LzRjzwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0iZG90dGVkIj48L3RkPgoJCQkJCQk8dGQgY2xhc3M9InZhbCI+e2xvZ2lufTwvdGQ+CgkJCQkJPC90cj4KCQkJCQk8dHI+CgkJCQkJCTx0ZCBjbGFzcz0ia2V5Ij7QodGC0LDRgtGD0YE8L3RkPgoJCQkJCQk8dGQgY2xhc3M9ImRvdHRlZCI+PC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJ2YWwiPntvbmxpbmV9PC90ZD4KCQkJCQk8L3RyPgoJCQkJCTx0cj4KCQkJCQkJPHRkIGNsYXNzPSJrZXkiPtCR0LDQvdC60L7QstGB0LrQuNC5PGkgY2xhc3M9IndoaXRlIj5fPC9pPtGB0YfQtdGCPC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJkb3R0ZWQiPjwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0idmFsIj57YmFua308aSBjbGFzcz0id2hpdGUiPl88L2k+JDwvdGQ+CgkJCQkJPC90cj4gICAgICAgIAoJCQkJCTx0cj4KCQkJCQkJPHRkIGNsYXNzPSJrZXkiPtCQ0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGAPC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJkb3R0ZWQiPjwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0idmFsIj57YWRtaW59PC90ZD4KCQkJCQk8L3RyPgoJCQkJCTx0cj4KCQkJCQkJPHRkIGNsYXNzPSJrZXkiPtCf0L7QuzwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0iZG90dGVkIj48L3RkPgoJCQkJCQk8dGQgY2xhc3M9InZhbCI+e3NleH08L3RkPgoJCQkJCTwvdHI+CgkJCQkJPHRyPgoJCQkJCQk8dGQgY2xhc3M9ImtleSI+0JTQvtC8PC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJkb3R0ZWQiPjwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0idmFsIj57aG91c2V9PC90ZD4KCQkJCQk8L3RyPgoJCQkJCTx0cj4KCQkJCQkJPHRkIGNsYXNzPSJrZXkiPtCi0LXQu9C10YTQvtC9PC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJkb3R0ZWQiPjwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0idmFsIj57cGhvbmV9PC90ZD4KCQkJCQk8L3RyPgoJCQkJCTx0cj4KCQkJCQkJPHRkIGNsYXNzPSJrZXkiPtCg0L7Qt9GL0YHQujwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0iZG90dGVkIj48L3RkPgoJCQkJCQk8dGQgY2xhc3M9InZhbCI+e3dhbnRlZH08L3RkPgoJCQkJCTwvdHI+CgkJCQkJPHRyPgoJCQkJCQk8dGQgY2xhc3M9ImtleSI+0KDQsNCx0L7RgtCwPC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJkb3R0ZWQiPjwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0idmFsIj57am9ifTwvdGQ+CgkJCQkJPC90cj4KCQkJCQk8dHI+CgkJCQkJCTx0ZCBjbGFzcz0ia2V5Ij7QntGA0LPQsNC90LjQt9Cw0YbQuNGPPC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJkb3R0ZWQiPjwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0idmFsIj57bWVtYmVyfTwvdGQ+CgkJCQkJPC90cj4KCQkJCQk8dHI+CgkJCQkJCTx0ZCBjbGFzcz0ia2V5Ij7QlNC+0L3QsNGCPC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJkb3R0ZWQiPjwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0idmFsIj57ZG9uYXRlfTwvdGQ+CgkJCQkJPC90cj4KCQkJCTwvdGJvZHk+PC90YWJsZT4KCQkJPC9kaXY+CgkJCQkJCQkKCQkJCQkJCQoJCQk8YnI+PGJyPgoKCgkJCQk8ZGl2IGNsYXNzPSJ1dGl0bGUiPjxpIGNsYXNzPSJmYSBmYS1waWN0dXJlLW8iPjwvaT4g0K7Qt9C10YAg0LHQsNGAOjwvZGl2PgoJCQkJICA8dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIHRhYmxlLXN0cmlwZWQiPgoJCQkJCTx0Ym9keT4KCQkJCQk8dHI+CgkJCQkJCTx0ZD4KCQkJCQkJCTxkaXYgY2xhc3M9ImlucHV0LWdyb3VwLWFkZG9uIj48Y2VudGVyPjxpbWcgc3JjPSIvdXNlcnMvYWNjb3VudC9pbWcve2lkfSIgPjwvY2VudGVyPjwvZGl2PgoJCQkJCQk8L3RkPgoJCQkJCTwvdHI+CgkJCQkJPHRyPgoJCQkJCQk8dGQ+CgkJCQkJCQkgIDxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIj4KCQkJCQkJCSAgPHNwYW4gY2xhc3M9ImlucHV0LWdyb3VwLWFkZG9uIj4KCQkJCQkJCQkJ0KHQodCr0JvQmtCQOgoJCQkJCQkJCTwvc3Bhbj4KCQkJCQkJCQk8aW5wdXQgdHlwZT0idGV4dCIgY2xhc3M9ImZvcm0tY29udHJvbCIgIHZhbHVlPSJ7dXJsfXVzZXJzL2FjY291bnQvaW1nL3tpZH0iPgoJCQkJCQkJICA8L2Rpdj4KCQkJCQkJPC90ZD4KCQkJCQk8L3RyPgoJCQkJCTx0cj4KCQkJCQkJPHRkIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOiAjRkZGRkZGOyI+CgkJCQkJCQkgIDxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIj4KCQkJCQkJCSAgPHNwYW4gY2xhc3M9ImlucHV0LWdyb3VwLWFkZG9uIj4KCQkJCQkJCQkgICBCQi1DT0RFOgoJCQkJCQkJCTwvc3Bhbj4KCQkJCQkJCQk8aW5wdXQgdHlwZT0idGV4dCIgY2xhc3M9ImZvcm0tY29udHJvbCIgIHZhbHVlPSJbVVJMPXt1cmx9dXNlcnMvYWNjb3VudC9pbWcve2lkfVtJTUdde3VybH11c2Vycy9hY2NvdW50L2ltZy97aWR9Wy9JTUddWy9VUkxdIj4KCQkJCQkJCSAgPC9kaXY+CgkJCQkJCTwvdGQ+CgkJCQkJPC90cj4KCQkJCTwvdGJvZHk+CgkJCTwvdGFibGU+CQogICAgICAgIDwvZGl2Pgo8L2Rpdj4KPHNjcmlwdD4KJCggZG9jdW1lbnQgKS5yZWFkeShmdW5jdGlvbigpIHsKCQkkKCcjbXlTdGF0MicpLmNpcmNsaWZ1bCgpOwoJCSQoJyNteVN0YXRoYWxmMicpLmNpcmNsaWZ1bCgpOwoJCQogICAgfSk7Cjwvc2NyaXB0Pg=='),
(156, 'users-deposit', 'IFttb2RhbF0KPGRpdiBjbGFzcz0ibW9kYWwgZmFkZSIgaWQ9ImJhc2UtbW9kYWwiIHN0eWxlPSJkaXNwbGF5OiBub25lOyI+Cgk8Zm9ybSBhY3Rpb249Jy91c2Vycy9kZXBvc2l0JyBtZXRob2Q9IlBPU1QiIGNsYXNzPSJmb3JtX2RlcG9zaXQiIHN0eWxlPSJwYWRkaW5nOiAxMHB4IiBpZD0iZGVwb3NpdCI+CgkJPGRpdiBjbGFzcz0ibW9kYWwtZGlhbG9nIiAgc3R5bGU9IndpZHRoOjQyMHB4OyI+CgkJCTxkaXYgY2xhc3M9Im1vZGFsLWNvbnRlbnQiPgoJCQkJPGRpdiBjbGFzcz0ibW9kYWwtaGVhZGVyIj4KCQkJCQk8YnV0dG9uIHR5cGU9ImJ1dHRvbiIgY2xhc3M9ImNsb3NlIiBkYXRhLWRpc21pc3M9Im1vZGFsIiBhcmlhLWhpZGRlbj0idHJ1ZSI+JnRpbWVzOzwvYnV0dG9uPgoJCQkJCTxoNCBjbGFzcz0ibW9kYWwtdGl0bGUiPtCf0L7Qv9C+0LvQvdC10L3QuNC1INGB0YfQtdGC0LA8L2g0PgoJCQkJPC9kaXY+CgkJCQk8ZGl2IGNsYXNzPSJtb2RhbC1ib2R5Ij4KCQkJCQk8ZGl2IGNsYXNzPSJpbnB1dC1ncm91cCIgc3R5bGU9Im1hcmdpbi1ib3R0b206IDdweDsiPgoJCQkJCQk8c3BhbiBjbGFzcz0iaW5wdXQtZ3JvdXAtYWRkb24iPtCh0YPQvNC80LA8L3NwYW4+CgkJCQkJCTxpbnB1dCB0eXBlPSJ0ZXh0IiBjbGFzcz0iZm9ybS1jb250cm9sIiBuYW1lPSJkYXRhW2RlcG9zaXRdIiBpZD0iZGVwb3NpdF92YWwiPgoJCQkJCTwvZGl2PgoKCQkJCQk8ZGl2IGNsYXNzPSJpbnB1dC1ncm91cCIgc3R5bGU9Im1hcmdpbi1ib3R0b206IDdweDsiPgoJCQkJCQk8c3BhbiBjbGFzcz0iaW5wdXQtZ3JvdXAtYWRkb24iPtCh0L/QvtGB0L7QsTwvc3Bhbj4KCQkJCQkJPHNlbGVjdCBuYW1lPSJkYXRhW3RpcF0iIGNsYXNzPSJmb3JtLWNvbnRyb2wiIGlkPSJkZXBvc2l0X3RpcCI+CgkJCQkJCQk8b3B0aW9uIHZhbHVlPSIxIj5XZWJNb25leTwvb3B0aW9uPgoJCQkJCQkJPG9wdGlvbiB2YWx1ZT0iMyI+0K/QvdC00LXQutGBLiDQlNC10L3RjNCz0Lg8L29wdGlvbj4KCQkJCQkJCTxvcHRpb24gdmFsdWU9IjQiPlZpc2Eg0LjQu9C4IE1hc3RlckNhcmQ8L29wdGlvbj4KCQkJCQkJCTxvcHRpb24gdmFsdWU9IjIiPlJvYm9rYXNzYTwvb3B0aW9uPgogICAgICAgICAJCQkJCTxvcHRpb24gdmFsdWU9IjUiPlVuaXRQYXk8L29wdGlvbj4KCQkJCQkJPC9zZWxlY3Q+CgkJCQkJPC9kaXY+CgkJCQk8L2Rpdj4KCQkJCTxkaXYgY2xhc3M9Im1vZGFsLWZvb3RlciI+CgkJCQkJPGJ1dHRvbiB0eXBlPSJzdWJtaXQiIGNsYXNzPSJidG4gYnRuLXByaW1hcnkiIGlkPSJzdWJidXkyIj7Qn9C10YDQtdC50YLQuCDQuiDQvtC/0LvQsNGC0LU8L2J1dHRvbj4KCQkJCTwvZGl2PgoJCQk8L2Rpdj4KCQk8L2Rpdj4KCTwvZm9ybT4JCjwvZGl2PgpbL21vZGFsXQpbbm9tb2RhbF08ZGl2IGNsYXNzPSJibG9ja19ib3JkZXIgZnVsbF9ibG9jayBuby10b3AtcmFkaXVzIj48ZGl2IGNsYXNzPSJibG9ja19jb250ZW50Ij4KPGZvcm0gYWN0aW9uPScvdXNlcnMvZGVwb3NpdCcgbWV0aG9kPSJQT1NUIiBjbGFzcz0iZm9ybV9kZXBvc2l0IiBzdHlsZT0icGFkZGluZzogMTBweCIgaWQ9ImRlcG9zaXQiPgoJPGRpdiBjbGFzcz0iZm9ybS1ob3Jpem9udGFsIiBzdHlsZT0id2lkdGg6IDQ3MHB4O21hcmdpbi1sZWZ0OiBhdXRvO21hcmdpbi1yaWdodDogYXV0bzsiPgoJCTxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIiBzdHlsZT0ibWFyZ2luLWJvdHRvbTogN3B4OyI+CgkJCTxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1hZGRvbiIgc3R5bGU9IndpZHRoOiAxNzBweDsiPtCh0YPQvNC80LA8L3NwYW4+CgkJCTxpbnB1dCB0eXBlPSJ0ZXh0IiAgc3R5bGU9IndpZHRoOiAzMDBweDsiIHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbZGVwb3NpdF0iIGlkPSJkZXBvc2l0X3ZhbCI+CgkJPC9kaXY+CgoJCTxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIiBzdHlsZT0ibWFyZ2luLWJvdHRvbTogN3B4OyI+CgkJCTxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1hZGRvbiIgc3R5bGU9IndpZHRoOiAxNzBweDsiPtCh0L/QvtGB0L7QsTwvc3Bhbj4KCQkJPHNlbGVjdCBuYW1lPSJkYXRhW3RpcF0iIGNsYXNzPSJmb3JtLWNvbnRyb2wiIGlkPSJkZXBvc2l0X3RpcCIgc3R5bGU9IndpZHRoOiAzMDBweDsiPgoJCQkJPG9wdGlvbiB2YWx1ZT0iMSI+V2ViTW9uZXk8L29wdGlvbj4KCQkJCTxvcHRpb24gdmFsdWU9IjMiPtCv0L3QtNC10LrRgS4g0JTQtdC90YzQs9C4PC9vcHRpb24+CgkJCQk8b3B0aW9uIHZhbHVlPSI0Ij5WaXNhINC40LvQuCBNYXN0ZXJDYXJkPC9vcHRpb24+CgkJCQk8b3B0aW9uIHZhbHVlPSIyIj5Sb2Jva2Fzc2E8L29wdGlvbj4KICAgICAgICAgICAgICAgIDxvcHRpb24gdmFsdWU9IjUiPlVuaXRQYXk8L29wdGlvbj4KCQkJPC9zZWxlY3Q+CgkJPC9kaXY+CgkJPGJ1dHRvbiB0eXBlPSJzdWJtaXQiIGNsYXNzPSJidG4gYnRuLWRlZmF1bHQiIGlkPSJzdWJidXkyIj7Qn9C10YDQtdC50YLQuCDQuiDQvtC/0LvQsNGC0LU8L2J1dHRvbj4KCTwvZGl2Pgo8L2Zvcm0+PC9kaXY+PC9kaXY+Clsvbm9tb2RhbF0='),
(157, 'users-login', 'W21vZGFsXQo8ZGl2IGlkPSJiYXNlLW1vZGFsIiBjbGFzcz0ibW9kYWwgZmFkZSIgdGFiaW5kZXg9Ii0xIiBkYXRhLXdpZHRoPSI0MjAiPgo8ZGl2IGNsYXNzPSJtb2RhbC1kaWFsb2ciIHJvbGU9ImRvY3VtZW50IiAgc3R5bGU9ICJ3aWR0aDogNDIwcHg7Ij4KIDxkaXYgY2xhc3M9Im1vZGFsLWNvbnRlbnQiPgoJPGZvcm0gYWN0aW9uPSIvdXNlcnMvbG9naW4iIHVybD0iLyIgbWV0aG9kPSJQT1NUIiBjbGFzcz0iZm9ybV8wIiBzdHlsZT0icGFkZGluZzowcHg7IG1hcmdpbjowcHg7Ij4KCQk8ZGl2IGNsYXNzPSJtb2RhbC1oZWFkZXIiPgoJCQk8YnV0dG9uIHR5cGU9ImJ1dHRvbiIgY2xhc3M9ImNsb3NlIiBkYXRhLWRpc21pc3M9Im1vZGFsIiBhcmlhLWhpZGRlbj0idHJ1ZSI+JnRpbWVzOzwvYnV0dG9uPgoJCQk8aDQgY2xhc3M9Im1vZGFsLXRpdGxlIj7QkNCy0YLQvtGA0LjQt9Cw0YbQuNGPPC9oND4KCQk8L2Rpdj4KCQk8ZGl2IGNsYXNzPSJtb2RhbC1ib2R5Ij4KCQkJPGlucHV0IHN0eWxlPSJ3aWR0aDoxMDAlOyIgY2xhc3M9ImZvcm0tY29udHJvbCIgdHlwZT0idGV4dCIgbmFtZT0iZGF0YVtsb2dpbl0iIHBsYWNlaG9sZGVyPSLQktCy0LXQtNC40YLQtSDQvdC40LrQvdC10LnQvCDQv9C10YDRgdC+0L3QsNC20LAiPgoJCQk8YnI+CgkJCTxpbnB1dCBzdHlsZT0id2lkdGg6MTAwJTsiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIHR5cGU9InBhc3N3b3JkIiBuYW1lPSJkYXRhW3Bhc3N3b3JkXSIgcGxhY2Vob2xkZXI9ItCS0LLQtdC00LjRgtC1INC/0LDRgNC+0LvRjCDQv9C10YDRgdC+0L3QsNC20LAiPgoJCTwvZGl2PgoJCTxkaXYgY2xhc3M9Im1vZGFsLWZvb3RlciI+CgkJCTxidXR0b24gdHlwZT0ic3VibWl0IiBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5IHNpZ251cCIgbmFtZT0iYnV0dG9uIiBzdHlsZT0iZmxvYXQ6IGxlZnQ7Ij7QkNCy0YLQvtGA0LjQt9C+0LLQsNGC0YzRgdGPPC9idXR0b24+CgkJCTxhIGhyZWY9Ii91c2Vycy9yZWNvdmVyeSIgY2xhc3M9ImJ0biBidG4tZGVmYXVsdCB5bW9kYWwiIHN0eWxlPSJmbG9hdDogcmlnaHQ7Ij7QktC+0YHRgdGC0LDQvdC+0LLQuNGC0Ywg0L/QsNGA0L7Qu9GMPzwvYT4KCQk8L2Rpdj4KCTwvZm9ybT4KPC9kaXY+PC9kaXY+PC9kaXY+ClsvbW9kYWxd'),
(158, 'users-mail', 'W21vZGFsXQo8ZGl2IGlkPSJiYXNlLW1vZGFsIiBjbGFzcz0ibW9kYWwgZmFkZSIgdGFiaW5kZXg9Ii0xIiBkYXRhLXdpZHRoPSI0MjAiPgo8ZGl2IGNsYXNzPSJtb2RhbC1kaWFsb2ciIHJvbGU9ImRvY3VtZW50IiAgc3R5bGU9ICJ3aWR0aDogNDIwcHg7Ij4KIDxkaXYgY2xhc3M9Im1vZGFsLWNvbnRlbnQiPgoJPGZvcm0gYWN0aW9uPSIvdXNlcnMvZWRpdC9tYWlsIiB1cmw9Ii91c2Vycy9hY2NvdW50L3thY2NvdW50c2lkfSIgbWV0aG9kPSJQT1NUIiBjbGFzcz0iZm9ybV8xIiBzdHlsZT0icGFkZGluZzowcHg7IG1hcmdpbjowcHg7Ij4KCQk8ZGl2IGNsYXNzPSJtb2RhbC1oZWFkZXIiPgoJCQk8YnV0dG9uIHR5cGU9ImJ1dHRvbiIgY2xhc3M9ImNsb3NlIiBkYXRhLWRpc21pc3M9Im1vZGFsIiBhcmlhLWhpZGRlbj0idHJ1ZSI+JnRpbWVzOzwvYnV0dG9uPgoJCQk8aDQgY2xhc3M9Im1vZGFsLXRpdGxlIj7QodC80LXQvdCwIEUtbWFpbCDQsNC00YDQtdGB0LA8L2g0PgoJCTwvZGl2PgoJCTxkaXYgY2xhc3M9Im1vZGFsLWJvZHkiPgoJCQk8aW5wdXQgc3R5bGU9IndpZHRoOjEwMCU7IiBjbGFzcz0iZm9ybS1jb250cm9sIiB0eXBlPSJ0ZXh0IiBuYW1lPSJkYXRhW25ld21haWxdIiBwbGFjZWhvbGRlcj0i0J3QvtCy0YvQuSBFLW1haWwiPgoJCQk8YnI+CgkJCTxpbnB1dCBzdHlsZT0id2lkdGg6MTAwJTsiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIHR5cGU9InRleHQiIG5hbWU9ImRhdGFbbmV3bWFpbDJdIiBwbGFjZWhvbGRlcj0i0J/QvtCy0YLQvtGA0LjRgtC1IEUtbWFpbCI+CgkJPC9kaXY+CgkJPGRpdiBjbGFzcz0ibW9kYWwtZm9vdGVyIj4KCQkJPGJ1dHRvbiB0eXBlPSJzdWJtaXQiIGNsYXNzPSJidG4gYnRuLXByaW1hcnkgc2lnbnVwIiBuYW1lPSJidXR0b24iIHN0eWxlPSJmbG9hdDogcmlnaHQ7Ij7QodC+0YXRgNCw0L3QuNGC0Yw8L2J1dHRvbj4KCQk8L2Rpdj4KCTwvZm9ybT4KPC9kaXY+PC9kaXY+PC9kaXY+ClsvbW9kYWxd'),
(159, 'users-password', 'W21vZGFsXQo8ZGl2IGlkPSJiYXNlLW1vZGFsIiBjbGFzcz0ibW9kYWwgZmFkZSIgdGFiaW5kZXg9Ii0xIiBkYXRhLXdpZHRoPSI0MjAiPgo8ZGl2IGNsYXNzPSJtb2RhbC1kaWFsb2ciIHJvbGU9ImRvY3VtZW50IiAgc3R5bGU9ICJ3aWR0aDogNDIwcHg7Ij4KIDxkaXYgY2xhc3M9Im1vZGFsLWNvbnRlbnQiPgoJPGZvcm0gYWN0aW9uPSIvdXNlcnMvZWRpdC9wYXNzd29yZCIgdXJsPSIvdXNlcnMvYWNjb3VudC97YWNjb3VudHNpZH0iIG1ldGhvZD0iUE9TVCIgY2xhc3M9ImZvcm1fMSIgc3R5bGU9InBhZGRpbmc6MHB4OyBtYXJnaW46MHB4OyI+CgkJPGRpdiBjbGFzcz0ibW9kYWwtaGVhZGVyIj4KCQkJPGJ1dHRvbiB0eXBlPSJidXR0b24iIGNsYXNzPSJjbG9zZSIgZGF0YS1kaXNtaXNzPSJtb2RhbCIgYXJpYS1oaWRkZW49InRydWUiPiZ0aW1lczs8L2J1dHRvbj4KCQkJPGg0IGNsYXNzPSJtb2RhbC10aXRsZSI+0KHQvNC10L3QsCDQv9Cw0YDQvtC70Y88L2g0PgoJCTwvZGl2PgoJCTxkaXYgY2xhc3M9Im1vZGFsLWJvZHkiPgoJCQk8aW5wdXQgc3R5bGU9IndpZHRoOjEwMCU7IiBjbGFzcz0iZm9ybS1jb250cm9sIiB0eXBlPSJ0ZXh0IiBuYW1lPSJkYXRhW3Bhc3NvbGRdIiBwbGFjZWhvbGRlcj0i0KLQtdC60YPRidC40Lkg0L/QsNGA0L7Qu9GMIj4KCQkJPGJyPgoJCQk8aW5wdXQgc3R5bGU9IndpZHRoOjEwMCU7IiBjbGFzcz0iZm9ybS1jb250cm9sIiB0eXBlPSJ0ZXh0IiBuYW1lPSJkYXRhW25ld3Bhc3NdIiBwbGFjZWhvbGRlcj0i0J3QvtCy0YvQuSDQv9Cw0YDQvtC70YwiPgoJCQk8YnI+CgkJCTxpbnB1dCBzdHlsZT0id2lkdGg6MTAwJTsiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIHR5cGU9InRleHQiIG5hbWU9ImRhdGFbbmV3cGFzczJdIiBwbGFjZWhvbGRlcj0i0J/QvtCy0YLQvtGA0LjRgtC1INC/0LDRgNC+0LvRjCI+CgkJPC9kaXY+CgkJPGRpdiBjbGFzcz0ibW9kYWwtZm9vdGVyIj4KCQkJPGJ1dHRvbiB0eXBlPSJzdWJtaXQiIGNsYXNzPSJidG4gYnRuLXByaW1hcnkgc2lnbnVwIiBuYW1lPSJidXR0b24iIHN0eWxlPSJmbG9hdDogcmlnaHQ7Ij7QodC+0YXRgNCw0L3QuNGC0Yw8L2J1dHRvbj4KCQk8L2Rpdj4KCTwvZm9ybT4KPC9kaXY+PC9kaXY+PC9kaXY+ClsvbW9kYWxd'),
(160, 'users-playersearch', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+0J/RgNC+0YHQvNC+0YLRgCDRgdGC0LDRgtC40YHRgtC40LrQuCDQuNCz0YDQvtC60LAge2xvZ2lufTwvZGl2Pgo8ZGl2IGlkPSJtYWluX2Jsb2NrIj4KICAgPGRpdiBjbGFzcz0idWluZl9sY29sIj4KCQk8ZGl2IGNsYXNzPSJ1dGl0bGUiPjxpIGNsYXNzPSJmYSBmYS11c2VyIj48L2k+INCf0LXRgNGB0L7QvdCw0LY8L2Rpdj4KCQkgPGJyPgoJCQk8ZGl2IGNsYXNzPSJyYXRldWkiIHRpdGxlPSJsdmwiPjxjZW50ZXI+e2xvZ2lufTwvY2VudGVyPjwvZGl2PjxjZW50ZXI+PGltZyBzcmM9Ii9pbWcvc2tpbnMve3NraW59LnBuZyIge3JlZmxlY3R9PSIiIHdpZHRoPSIxMjBweCIgYWx0PSIiPjwvY2VudGVyPjxicj4JCQoJCTwvZGl2PgoJCTxkaXYgY2xhc3M9InVpbmZfcmNvbCI+CgkJCTx1bCBjbGFzcz0idWluZl91c3NlcCI+CgkJCSAgICAgICAgICAgICAgICAgICAKCQkJCTxkaXYgY2xhc3M9InV0aXRsZSI+PGkgY2xhc3M9ImZhIGZhLWhlYXJ0YmVhdCI+PC9pPiDQodC+0YHRgtC+0Y/QvdC40LU6PC9kaXY+CgkJCQk8YnI+CgkJCQkgPGRpdiBjbGFzcz0iYmFycyI+CiAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJjb2wtbWQtNCI+CiAgICAgICAgICAgICAgIDxkaXYgaWQ9Im15U3RhdDIiIGRhdGEtZGltZW5zaW9uPSIxNTAiIGRhdGEtdGV4dD0ie2hlYWx0aH0lIiBkYXRhLWluZm89ItCX0LTQvtGA0L7QstGM0LUiIGRhdGEtd2lkdGg9IjMwIiAgZGF0YS1mb250c2l6ZT0iMjAiIGRhdGEtcGVyY2VudD0ie2hlYWx0aH0iIGRhdGEtZmdjb2xvcj0iI2U2OGE4YSIgZGF0YS1iZ2NvbG9yPSIjZWVlIj48L2Rpdj4KICAgICAgICAgICAgICAgPC9kaXY+CgkJCSAgICA8ZGl2IGNsYXNzPSJjb2wtbWQtNCIgc3R5bGU9Im1hcmdpbi1sZWZ0OiAxOTFweDsiPgogICAgICAgICAgICAgICA8ZGl2IGlkPSJteVN0YXRoYWxmMiIgZGF0YS1kaW1lbnNpb249IjE1MCIgZGF0YS10ZXh0PSJ7c2F0aWV0eX0lIiBkYXRhLWluZm89ItCh0YvRgtC+0YHRgtGMIiBkYXRhLXdpZHRoPSIzMCIgIGRhdGEtZm9udHNpemU9IjIwIiBkYXRhLXBlcmNlbnQ9IntzYXRpZXR5fSIgZGF0YS1mZ2NvbG9yPSIjNkVBRkNFIiBkYXRhLWJnY29sb3I9IiNlZWUiPjwvZGl2PgogICAgICAgICAgICAgICA8L2Rpdj4KCQkJICAgPC9kaXY+CgoJCQkJCgkJCQk8YnI+CgkJCQk8ZGl2IGNsYXNzPSJ1dGl0bGUiPjxpIGNsYXNzPSJmYSBmYS1pbmZvLWNpcmNsZSI+PC9pPiDQmNC90YTQvtGA0LzQsNGG0LjRjzo8L2Rpdj4KCQkJCTxicj4KCQkJCQoJCQkJPGRpdiBjbGFzcz0icHJvZmlsZSI+IAoJCQkJPHRhYmxlIGNsYXNzPSJpbmZvLTIiPgoJCQkJCTx0Ym9keT48dHI+CgkJCQkJCTx0ZCBjbGFzcz0ia2V5Ij7QkNC60LrQsNGD0L3RgjwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0iZG90dGVkIj48L3RkPgoJCQkJCQk8dGQgY2xhc3M9InZhbCI+PGkgY2xhc3M9IndoaXRlIj5fPC9pPuKElntpZH08L3RkPgoJCQkJCTwvdHI+CgkJCQkJPHRyPgoJCQkJCQk8dGQgY2xhc3M9ImtleSI+0JjQvNGPPC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJkb3R0ZWQiPjwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0idmFsIj57bG9naW59PC90ZD4KCQkJCQk8L3RyPgoJCQkJCTx0cj4KCQkJCQkJPHRkIGNsYXNzPSJrZXkiPtCh0YLQsNGC0YPRgTwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0iZG90dGVkIj48L3RkPgoJCQkJCQk8dGQgY2xhc3M9InZhbCI+e29ubGluZX08L3RkPgoJCQkJCTwvdHI+CgkJCQkJPHRyPgoJCQkJCQk8dGQgY2xhc3M9ImtleSI+0JHQsNC90LrQvtCy0YHQutC40Lk8aSBjbGFzcz0id2hpdGUiPl88L2k+0YHRh9C10YI8L3RkPgoJCQkJCQk8dGQgY2xhc3M9ImRvdHRlZCI+PC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJ2YWwiPntiYW5rfTxpIGNsYXNzPSJ3aGl0ZSI+XzwvaT4kPC90ZD4KCQkJCQk8L3RyPiAgICAgICAgCgkJCQkJPHRyPgoJCQkJCQk8dGQgY2xhc3M9ImtleSI+0JDQtNC80LjQvdC40YHRgtGA0LDRgtC+0YA8L3RkPgoJCQkJCQk8dGQgY2xhc3M9ImRvdHRlZCI+PC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJ2YWwiPnthZG1pbn08L3RkPgoJCQkJCTwvdHI+CgkJCQkJPHRyPgoJCQkJCQk8dGQgY2xhc3M9ImtleSI+0J/QvtC7PC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJkb3R0ZWQiPjwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0idmFsIj57c2V4fTwvdGQ+CgkJCQkJPC90cj4KCQkJCQk8dHI+CgkJCQkJCTx0ZCBjbGFzcz0ia2V5Ij7QlNC+0Lw8L3RkPgoJCQkJCQk8dGQgY2xhc3M9ImRvdHRlZCI+PC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJ2YWwiPntob3VzZX08L3RkPgoJCQkJCTwvdHI+CgkJCQkJPHRyPgoJCQkJCQk8dGQgY2xhc3M9ImtleSI+0KLQtdC70LXRhNC+0L08L3RkPgoJCQkJCQk8dGQgY2xhc3M9ImRvdHRlZCI+PC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJ2YWwiPntwaG9uZX08L3RkPgoJCQkJCTwvdHI+CgkJCQkJPHRyPgoJCQkJCQk8dGQgY2xhc3M9ImtleSI+0KDQvtC30YvRgdC6PC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJkb3R0ZWQiPjwvdGQ+CgkJCQkJCTx0ZCBjbGFzcz0idmFsIj57d2FudGVkfTwvdGQ+CgkJCQkJPC90cj4KCQkJCQk8dHI+CgkJCQkJCTx0ZCBjbGFzcz0ia2V5Ij7QoNCw0LHQvtGC0LA8L3RkPgoJCQkJCQk8dGQgY2xhc3M9ImRvdHRlZCI+PC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJ2YWwiPntqb2J9PC90ZD4KCQkJCQk8L3RyPgoJCQkJCTx0cj4KCQkJCQkJPHRkIGNsYXNzPSJrZXkiPtCe0YDQs9Cw0L3QuNC30LDRhtC40Y88L3RkPgoJCQkJCQk8dGQgY2xhc3M9ImRvdHRlZCI+PC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJ2YWwiPnttZW1iZXJ9PC90ZD4KCQkJCQk8L3RyPgoJCQkJCTx0cj4KCQkJCQkJPHRkIGNsYXNzPSJrZXkiPtCU0L7QvdCw0YI8L3RkPgoJCQkJCQk8dGQgY2xhc3M9ImRvdHRlZCI+PC90ZD4KCQkJCQkJPHRkIGNsYXNzPSJ2YWwiPntkb25hdGV9PC90ZD4KCQkJCQk8L3RyPgoJCQkJPC90Ym9keT48L3RhYmxlPgoJCQk8L2Rpdj4JCQoJCQk8YnI+PGJyPgoJCQkJPGRpdiBjbGFzcz0idXRpdGxlIj48aSBjbGFzcz0iZmEgZmEtcGljdHVyZS1vIj48L2k+INCu0LfQtdGAINCx0LDRgDo8L2Rpdj4KCQkJCSAgPHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1ib3JkZXJlZCB0YWJsZS1zdHJpcGVkIj4KCQkJCQk8dGJvZHk+CgkJCQkJPHRyPgoJCQkJCQk8dGQ+CgkJCQkJCQk8ZGl2IGNsYXNzPSJpbnB1dC1ncm91cC1hZGRvbiI+PGNlbnRlcj48aW1nIHNyYz0iL3VzZXJzL2FjY291bnQvaW1nL3tpZH0iID48L2NlbnRlcj48L2Rpdj4KCQkJCQkJPC90ZD4KCQkJCQk8L3RyPgoJCQkJCTx0cj4KCQkJCQkJPHRkPgoJCQkJCQkJICA8ZGl2IGNsYXNzPSJpbnB1dC1ncm91cCI+CgkJCQkJCQkgIDxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1hZGRvbiI+CgkJCQkJCQkJCdCh0KHQq9Cb0JrQkDoKCQkJCQkJCQk8L3NwYW4+CgkJCQkJCQkJPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiICB2YWx1ZT0ie3VybH11c2Vycy9hY2NvdW50L2ltZy97aWR9Ij4KCQkJCQkJCSAgPC9kaXY+CgkJCQkJCTwvdGQ+CgkJCQkJPC90cj4KCQkJCQk8dHI+CgkJCQkJCTx0ZCBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjogI0ZGRkZGRjsiPgoJCQkJCQkJICA8ZGl2IGNsYXNzPSJpbnB1dC1ncm91cCI+CgkJCQkJCQkgIDxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1hZGRvbiI+CgkJCQkJCQkJICAgQkItQ09ERToKCQkJCQkJCQk8L3NwYW4+CgkJCQkJCQkJPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiICB2YWx1ZT0iW1VSTD17dXJsfXVzZXJzL2FjY291bnQvaW1nL3tpZH1bSU1HXXt1cmx9dXNlcnMvYWNjb3VudC9pbWcve2lkfVsvSU1HXVsvVVJMXSI+CgkJCQkJCQkgIDwvZGl2PgoJCQkJCQk8L3RkPgoJCQkJCTwvdHI+CgkJCQk8L3Rib2R5PgoJCQk8L3RhYmxlPgogICAgICAgIDwvZGl2Pgo8L2Rpdj4KPHNjcmlwdD4KJCggZG9jdW1lbnQgKS5yZWFkeShmdW5jdGlvbigpIHsKCQkkKCcjbXlTdGF0MicpLmNpcmNsaWZ1bCgpOwoJCSQoJyNteVN0YXRoYWxmMicpLmNpcmNsaWZ1bCgpOwoJCQogICAgfSk7Cjwvc2NyaXB0Pg=='),
(161, 'users-playersearch-get', 'W21vZGFsXQo8ZGl2IGlkPSJiYXNlLW1vZGFsIiBjbGFzcz0ibW9kYWwgZmFkZSIgdGFiaW5kZXg9Ii0xIiBkYXRhLXdpZHRoPSI0MjAiPgo8ZGl2IGNsYXNzPSJtb2RhbC1kaWFsb2ciIHJvbGU9ImRvY3VtZW50IiAgc3R5bGU9ICJ3aWR0aDogNDIwcHg7Ij4KIDxkaXYgY2xhc3M9Im1vZGFsLWNvbnRlbnQiPgogICAgPGZvcm0gYWN0aW9uPSIvdXNlcnMvcGxheWVyc2VhcmNoIiAgbWV0aG9kPSJHRVQiPgoJCTxkaXYgY2xhc3M9Im1vZGFsLWhlYWRlciI+CgkJCTxidXR0b24gdHlwZT0iYnV0dG9uIiBjbGFzcz0iY2xvc2UiIGRhdGEtZGlzbWlzcz0ibW9kYWwiIGFyaWEtaGlkZGVuPSJ0cnVlIj4mdGltZXM7PC9idXR0b24+CgkJCTxoNCBjbGFzcz0ibW9kYWwtdGl0bGUiPtCf0L7QuNGB0Log0LjQs9GA0L7QutCwPC9oND4KCQk8L2Rpdj4KCQk8ZGl2IGNsYXNzPSJtb2RhbC1ib2R5Ij4KCQkJPGRpdiBjbGFzcz0iZGF0YS1iYXNlIj4KCQkJCTxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIiBzdHlsZT0ibWFyZ2luLWJvdHRvbTogN3B4OyI+CgkJCQkJPHNwYW4gY2xhc3M9ImlucHV0LWdyb3VwLWFkZG9uIj7Qm9C+0LPQuNC9PC9zcGFuPgoJCQkJCTxpbnB1dCB0eXBlPSJ0ZXh0IiBjbGFzcz0iZm9ybS1jb250cm9sIm5hbWU9ImxvZ2luIiBwbGFjZWhvbGRlcj0i0J/QvtC40YHQui4uIiA+CgkJCQk8L2Rpdj4KCQkJPC9kaXY+CgkJPC9kaXY+CgkJPGRpdiBjbGFzcz0ibW9kYWwtZm9vdGVyIj4KCQkJPGJ1dHRvbiB0eXBlPSJzdWJtaXQiIGNsYXNzPSJidG4gYnRuLXByaW1hcnkiIHN0eWxlPSJmbG9hdDogcmlnaHQ7Ij7QlNCw0LvQtdC1PC9idXR0b24+CgkJPC9kaXY+Cgk8L2Zvcm0+CjwvZGl2PjwvZGl2PjwvZGl2PgpbL21vZGFsXQ==');
INSERT INTO `tpl` (`id`, `name`, `tpl`) VALUES
(162, 'users-recovery', 'W21vZGFsXQo8ZGl2IGlkPSJiYXNlLW1vZGFsIiBjbGFzcz0ibW9kYWwgZmFkZSIgdGFiaW5kZXg9Ii0xIiBkYXRhLXdpZHRoPSI0MjAiPgo8ZGl2IGNsYXNzPSJtb2RhbC1kaWFsb2ciIHJvbGU9ImRvY3VtZW50IiAgc3R5bGU9ICJ3aWR0aDogNDIwcHg7Ij4KIDxkaXYgY2xhc3M9Im1vZGFsLWNvbnRlbnQiPgoJPGZvcm0gYWN0aW9uPSIvdXNlcnMvcmVjb3ZlcnkiIHVybD0iLyIgbWV0aG9kPSJQT1NUIiAgY2xhc3M9ImZvcm1fMCI+CgkJPGRpdiBjbGFzcz0ibW9kYWwtaGVhZGVyIj4KCQkJPGJ1dHRvbiB0eXBlPSJidXR0b24iIGNsYXNzPSJjbG9zZSIgZGF0YS1kaXNtaXNzPSJtb2RhbCIgYXJpYS1oaWRkZW49InRydWUiPiZ0aW1lczs8L2J1dHRvbj4KCQkJPGg0IGNsYXNzPSJtb2RhbC10aXRsZSI+0JLQvtGB0YHRgtCw0L3QvtCy0LvQtdC90LjQtSDQv9Cw0YDQvtC70Y88L2g0PgoJCTwvZGl2PgoJCTxkaXYgY2xhc3M9Im1vZGFsLWJvZHkiPgoJCQk8ZGl2IGNsYXNzPSJkYXRhLWJhc2UiPgoJCQkJPGRpdiBjbGFzcz0iaW5wdXQtZ3JvdXAiIHN0eWxlPSJtYXJnaW4tYm90dG9tOiA3cHg7Ij4KCQkJCQk8c3BhbiBjbGFzcz0iaW5wdXQtZ3JvdXAtYWRkb24iPkUtbWFpbDwvc3Bhbj4KCQkJCQk8aW5wdXQgdHlwZT0idGV4dCIgY2xhc3M9ImZvcm0tY29udHJvbCIgbmFtZT0iZGF0YVttYWlsXSIgPgoJCQkJPC9kaXY+CgkJCTwvZGl2PgoJCTwvZGl2PgoJCTxkaXYgY2xhc3M9Im1vZGFsLWZvb3RlciI+CgkJCTxhIGhyZWY9Ii91c2Vycy9sb2dpbiIgY2xhc3M9ImJ0biBidG4tZGVmYXVsdCB5bW9kYWwiICBzdHlsZT0iZmxvYXQ6IGxlZnQ7Ij7QkNCy0YLQvtGA0LjQt9Cw0YbQuNGPPC9hPgoJCQk8YnV0dG9uIHR5cGU9InN1Ym1pdCIgY2xhc3M9ImJ0biBidG4tcHJpbWFyeSIgc3R5bGU9ImZsb2F0OiByaWdodDsiPtCU0LDQu9C10LU8L2J1dHRvbj4KCQk8L2Rpdj4KCTwvZm9ybT4KPC9kaXY+PC9kaXY+PC9kaXY+ClsvbW9kYWxd'),
(163, 'main-admin', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+0JDQtNC80LjQvS3Qv9Cw0L3QtdC70Yw8L2Rpdj4KIDxkaXYgaWQ9Im1haW5fYmxvY2siPgogW2NoYXJ0c10KIDxkaXYgY2xhc3M9InJvdyIgc3R5bGU9Im1hcmdpbi1sZWZ0OiAwcHg7IG1hcmdpbi1yaWdodDogMHB4OyI+CjxkaXYgY2xhc3M9ImNvbC1sZy0zIGNvbC1zbS02IGNvbC14cy02IGNvbC14eHMtMTIiPgoJCQkJCTxkaXYgY2xhc3M9InNtYWxsc3RhdCBib3giPgoJCQkJCTxpIGNsYXNzPSJmYSBmYS11c2VyIHllbGxvdyIgPjwvaT4KCQkJCQkJPHNwYW4gY2xhc3M9InRpdGxlIj7QkNC60LrQsNGD0L3RgtC+0LIg0LIg0LHQsNC30LU8L3NwYW4+CgkJCQkJCTxzcGFuIGNsYXNzPSJ2YWx1ZSI+e3BsYXllcnN9PC9zcGFuPgoJCQkJCTwvZGl2PgoJCQkJPC9kaXY+CgkJCQkKCQkJCTxkaXYgY2xhc3M9ImNvbC1sZy0zIGNvbC1zbS02IGNvbC14cy02IGNvbC14eHMtMTIiPgoJCQkJCTxkaXYgY2xhc3M9InNtYWxsc3RhdCBib3giPgoJCQkJCTxpIGNsYXNzPSJmYSBmYS1iYW4gcmVkIiA+PC9pPgoJCQkJCQk8c3BhbiBjbGFzcz0idGl0bGUiPtCQ0LrQutCw0YPQvdGC0L7QsiDQsiDQsdCw0L3QtTwvc3Bhbj4KCQkJCQkJPHNwYW4gY2xhc3M9InZhbHVlIj57YmFubmVkfTwvc3Bhbj4KCQkJCQk8L2Rpdj4KCQkJCTwvZGl2PgoJCQkJCgkJCQk8ZGl2IGNsYXNzPSJjb2wtbGctMyBjb2wtc20tNiBjb2wteHMtNiBjb2wteHhzLTEyIj4KCQkJCQk8ZGl2IGNsYXNzPSJzbWFsbHN0YXQgYm94Ij4KCQkJCQk8aSBjbGFzcz0iZmEgZmEtYmFyLWNoYXJ0IHpvbCI+PC9pPgoJCQkJCQk8c3BhbiBjbGFzcz0idGl0bGUiPtCY0LPRgNC+0LrQuCDQvtC90LvQsNC50L08L3NwYW4+CgkJCQkJCTxzcGFuIGNsYXNzPSJ2YWx1ZSI+e29ubGluZX08L3NwYW4+CgkJCQkJPC9kaXY+CgkJCQk8L2Rpdj4KCQkJCQoJCQkJPGRpdiBjbGFzcz0iY29sLWxnLTMgY29sLXNtLTYgY29sLXhzLTYgY29sLXh4cy0xMiI+CgkJCQkJPGRpdiBjbGFzcz0ic21hbGxzdGF0IGJveCI+CgkJCQkJPGkgY2xhc3M9ImZhIGZhLW1vbmV5IGdyZW4iPjwvaT4KCQkJCQkJPHNwYW4gY2xhc3M9InRpdGxlIj7Qn9GA0LjQsdGL0LvRjCDQt9CwIDMwINC00L3QtdC5PC9zcGFuPgoJCQkJCQk8c3BhbiBjbGFzcz0idmFsdWUiPntwYXV5fSDQoNCj0JE8L3NwYW4+CgkJCQkJPC9kaXY+CgkJCQk8L2Rpdj4KIAogPC9kaXY+CiBbL2NoYXJ0c10KIDxicj4KIDxkaXYgY2xhc3M9InJvdyBtYXJnaW4tdG9wLTEwIiBzdHlsZT0ibWFyZ2luLWxlZnQ6IDBweDsgbWFyZ2luLXJpZ2h0OiAwcHg7Ij4KIFt1c2Vyc10KIDxkaXYgY2xhc3M9ImNvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiI+CgkJPGEgaHJlZj0iL2FkbWluL3VzZXJzIj4KCQkJPGRpdiBjbGFzcz0iZGFzaGJvYXJkLXN0YXQyIiBzdHlsZT0icGFkZGluZy10b3A6IDhweDtwYWRkaW5nLWJvdHRvbTogMThweDsiPgoJCQkJPGRpdiBjbGFzcz0iZGlzcGxheSIgc3R5bGU9Im1hcmdpbi1ib3R0b206MHB4OyI+CgkJCQkJPGRpdiBjbGFzcz0ibnVtYmVyIj4KCQkJCQkJPGRpdiBjbGFzcz0iZm9udC1ibHVlLW1hZGlzb24iIHN0eWxlPSJtYXJnaW4tdG9wOiAxNHB4O2ZvbnQtc2l6ZToxN3B4OyI+0JjQs9GA0L7QutC4PC9kaXY+CgkJCQkJPC9kaXY+CgkJCQkJPGRpdiBjbGFzcz0iaWNvbiI+CgkJCQkJCTxpbWcgc3R5bGU9IndpZHRoOiAzMnB4OyBoZWlnaHQ6IDMycHg7IiBzcmM9Ii9pbWFnZXMvaWNvbnMvYWMvdXNlcnMtaWNvbi5wbmciPgoJCQkJCTwvZGl2PgoJCQkJPC9kaXY+CgkJCTwvZGl2PgoJCTwvYT4KCTwvZGl2PgoJWy91c2Vyc10KCVtwYWdlc10KCTxkaXYgY2xhc3M9ImNvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiI+CgkJPGEgaHJlZj0iL2FkbWluL3BhZ2VzIj4KCQkJPGRpdiBjbGFzcz0iZGFzaGJvYXJkLXN0YXQyIiBzdHlsZT0icGFkZGluZy10b3A6IDhweDtwYWRkaW5nLWJvdHRvbTogMThweDsiPgoJCQkJPGRpdiBjbGFzcz0iZGlzcGxheSIgc3R5bGU9Im1hcmdpbi1ib3R0b206MHB4OyI+CgkJCQkJPGRpdiBjbGFzcz0ibnVtYmVyIj4KCQkJCQkJPGRpdiBjbGFzcz0iZm9udC1ibHVlLW1hZGlzb24iIHN0eWxlPSJtYXJnaW4tdG9wOiAxNHB4O2ZvbnQtc2l6ZToxN3B4OyI+0KHRgtGA0LDQvdC40YbRizwvZGl2PgoJCQkJCTwvZGl2PgoJCQkJCTxkaXYgY2xhc3M9Imljb24iPgoJCQkJCQk8aW1nIHN0eWxlPSJ3aWR0aDogMzJweDsgaGVpZ2h0OiAzMnB4OyIgc3JjPSIvaW1hZ2VzL2ljb25zL2FjL3N0YXRpYy1pY29uLnBuZyI+CgkJCQkJPC9kaXY+CgkJCQk8L2Rpdj4KCQkJPC9kaXY+CgkJPC9hPgoJPC9kaXY+CglbL3BhZ2VzXQoJW25ld3NdCgk8ZGl2IGNsYXNzPSJjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTIiPgoJCTxhIGhyZWY9Ii9hZG1pbi9uZXdzIj4KCQkJPGRpdiBjbGFzcz0iZGFzaGJvYXJkLXN0YXQyIiBzdHlsZT0icGFkZGluZy10b3A6IDhweDtwYWRkaW5nLWJvdHRvbTogMThweDsiPgoJCQkJPGRpdiBjbGFzcz0iZGlzcGxheSIgc3R5bGU9Im1hcmdpbi1ib3R0b206MHB4OyI+CgkJCQkJPGRpdiBjbGFzcz0ibnVtYmVyIj4KCQkJCQkJPGRpdiBjbGFzcz0iZm9udC1ibHVlLW1hZGlzb24iIHN0eWxlPSJtYXJnaW4tdG9wOiAxNHB4O2ZvbnQtc2l6ZToxN3B4OyI+0J3QvtCy0L7RgdGC0Lg8L2Rpdj4KCQkJCQk8L2Rpdj4KCQkJCQk8ZGl2IGNsYXNzPSJpY29uIj4KCQkJCQkJPGltZyBzdHlsZT0id2lkdGg6IDMycHg7IGhlaWdodDogMzJweDsiIHNyYz0iL2ltYWdlcy9pY29ucy9hYy9uZXdzLWljb24ucG5nIj4KCQkJCQk8L2Rpdj4KCQkJCTwvZGl2PgoJCQk8L2Rpdj4KCQk8L2E+Cgk8L2Rpdj4KCVsvbmV3c10KCVt0cGxdCiAgICA8ZGl2IGNsYXNzPSJjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTIiPgoJCTxhIGhyZWY9Ii9hZG1pbi90ZW1wbGF0ZXMiPgoJCQk8ZGl2IGNsYXNzPSJkYXNoYm9hcmQtc3RhdDIiIHN0eWxlPSJwYWRkaW5nLXRvcDogOHB4O3BhZGRpbmctYm90dG9tOiAxOHB4OyI+CgkJCQk8ZGl2IGNsYXNzPSJkaXNwbGF5IiBzdHlsZT0ibWFyZ2luLWJvdHRvbTowcHg7Ij4KCQkJCQk8ZGl2IGNsYXNzPSJudW1iZXIiPgoJCQkJCQk8ZGl2IGNsYXNzPSJmb250LWJsdWUtbWFkaXNvbiIgc3R5bGU9Im1hcmdpbi10b3A6IDE0cHg7Zm9udC1zaXplOjE3cHg7Ij7QqNCw0LHQu9C+0L3RizwvZGl2PgoJCQkJCTwvZGl2PgoJCQkJCTxkaXYgY2xhc3M9Imljb24iPgoJCQkJCQk8aW1nIHN0eWxlPSJ3aWR0aDogMzJweDsgaGVpZ2h0OiAzMnB4OyIgc3JjPSIvaW1hZ2VzL2ljb25zL2FjL3RoZW1lLWljb24ucG5nIj4KCQkJCQk8L2Rpdj4KCQkJCTwvZGl2PgoJCQk8L2Rpdj4KCQk8L2E+Cgk8L2Rpdj4KCVsvdHBsXQoJW2xvZ3NfcHV5XQoJPGRpdiBjbGFzcz0iY29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyIj4KCQk8YSBocmVmPSIvYWRtaW4vbW9uZXkiPgoJCQk8ZGl2IGNsYXNzPSJkYXNoYm9hcmQtc3RhdDIiIHN0eWxlPSJwYWRkaW5nLXRvcDogOHB4O3BhZGRpbmctYm90dG9tOiAxOHB4OyI+CgkJCQk8ZGl2IGNsYXNzPSJkaXNwbGF5IiBzdHlsZT0ibWFyZ2luLWJvdHRvbTowcHg7Ij4KCQkJCQk8ZGl2IGNsYXNzPSJudW1iZXIiPgoJCQkJCQk8ZGl2IGNsYXNzPSJmb250LWJsdWUtbWFkaXNvbiIgc3R5bGU9Im1hcmdpbi10b3A6IDE0cHg7Zm9udC1zaXplOjE3cHg7Ij7Qn9C70LDRgtC10LbQuDwvZGl2PgoJCQkJCTwvZGl2PgoJCQkJCTxkaXYgY2xhc3M9Imljb24iPgoJCQkJCQk8aW1nIHN0eWxlPSJ3aWR0aDogMzJweDsgaGVpZ2h0OiAzMnB4OyIgc3JjPSIvaW1hZ2VzL2ljb25zL2FjL3BheS1pY29uLnBuZyI+CgkJCQkJPC9kaXY+CgkJCQk8L2Rpdj4KCQkJPC9kaXY+CgkJPC9hPgoJPC9kaXY+CglbL2xvZ3NfcHV5XQoJW2Jsb2NrXQoJPGRpdiBjbGFzcz0iY29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyIj4KCQk8YSBocmVmPSIvYWRtaW4vYmFubGlzdCI+CgkJCTxkaXYgY2xhc3M9ImRhc2hib2FyZC1zdGF0MiIgc3R5bGU9InBhZGRpbmctdG9wOiA4cHg7cGFkZGluZy1ib3R0b206IDE4cHg7Ij4KCQkJCTxkaXYgY2xhc3M9ImRpc3BsYXkiIHN0eWxlPSJtYXJnaW4tYm90dG9tOjBweDsiPgoJCQkJCTxkaXYgY2xhc3M9Im51bWJlciI+CgkJCQkJCTxkaXYgY2xhc3M9ImZvbnQtYmx1ZS1tYWRpc29uIiBzdHlsZT0ibWFyZ2luLXRvcDogMTRweDtmb250LXNpemU6MTdweDsiPtCX0LDQsdCw0L3QtdC90YvQtTwvZGl2PgoJCQkJCTwvZGl2PgoJCQkJCTxkaXYgY2xhc3M9Imljb24iPgoJCQkJCQk8aW1nIHN0eWxlPSJ3aWR0aDogMzJweDsgaGVpZ2h0OiAzMnB4OyIgc3JjPSIvaW1hZ2VzL2ljb25zL2FjL2xvY2staWNvbi5wbmciPgoJCQkJCTwvZGl2PgoJCQkJPC9kaXY+CgkJCTwvZGl2PgoJCTwvYT4KCTwvZGl2PgoJWy9ibG9ja10KCVtwb3dlcl0KCTxkaXYgY2xhc3M9ImNvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiI+CgkJPGEgaHJlZj0iL2FkbWluL3Bvd2VycyI+CgkJCTxkaXYgY2xhc3M9ImRhc2hib2FyZC1zdGF0MiIgc3R5bGU9InBhZGRpbmctdG9wOiA4cHg7cGFkZGluZy1ib3R0b206IDE4cHg7Ij4KCQkJCTxkaXYgY2xhc3M9ImRpc3BsYXkiIHN0eWxlPSJtYXJnaW4tYm90dG9tOjBweDsiPgoJCQkJCTxkaXYgY2xhc3M9Im51bWJlciI+CgkJCQkJCTxkaXYgY2xhc3M9ImZvbnQtYmx1ZS1tYWRpc29uIiBzdHlsZT0ibWFyZ2luLXRvcDogMTRweDtmb250LXNpemU6MTdweDsiPtCf0L7Qu9C90L7QvNC+0YfQuNGPPC9kaXY+CgkJCQkJPC9kaXY+CgkJCQkJPGRpdiBjbGFzcz0iaWNvbiI+CgkJCQkJCTxpbWcgc3R5bGU9IndpZHRoOiAzMnB4OyBoZWlnaHQ6IDMycHg7IiBzcmM9Ii9pbWFnZXMvaWNvbnMvYWMvcG93ZXJzLWljb24ucG5nIj4KCQkJCQk8L2Rpdj4KCQkJCTwvZGl2PgoJCQk8L2Rpdj4KCQk8L2E+Cgk8L2Rpdj4KCVsvcG93ZXJdCglbc2V0dGluZ3NdCgk8ZGl2IGNsYXNzPSJjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTIiPgoJCTxhIGhyZWY9Ii9hZG1pbi9zZXR0aW5ncyI+CgkJCTxkaXYgY2xhc3M9ImRhc2hib2FyZC1zdGF0MiIgc3R5bGU9InBhZGRpbmctdG9wOiA4cHg7cGFkZGluZy1ib3R0b206IDE4cHg7Ij4KCQkJCTxkaXYgY2xhc3M9ImRpc3BsYXkiIHN0eWxlPSJtYXJnaW4tYm90dG9tOjBweDsiPgoJCQkJCTxkaXYgY2xhc3M9Im51bWJlciI+CgkJCQkJCTxkaXYgY2xhc3M9ImZvbnQtYmx1ZS1tYWRpc29uIiBzdHlsZT0ibWFyZ2luLXRvcDogMTRweDtmb250LXNpemU6MTdweDsiPtCd0LDRgdGC0YDQvtC50LrQuDwvZGl2PgoJCQkJCTwvZGl2PgoJCQkJCTxkaXYgY2xhc3M9Imljb24iPgoJCQkJCQk8aW1nIHN0eWxlPSJ3aWR0aDogMzJweDsgaGVpZ2h0OiAzMnB4OyIgc3JjPSIvaW1hZ2VzL2ljb25zL2FjL3NldHRpbmdzLWljb24ucG5nIj4KCQkJCQk8L2Rpdj4KCQkJCTwvZGl2PgoJCQk8L2Rpdj4KCQk8L2E+Cgk8L2Rpdj4KCVsvc2V0dGluZ3NdCiA8L2Rpdj4KIDwvZGl2Pg=='),
(164, 'admin-users', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+0KHQv9C40YHQvtC6INC40LPRgNC+0LrQvtCyPC9kaXY+CiA8ZGl2IGlkPSJtYWluX2Jsb2NrIj4KICA8dGFibGUgY2xhc3M9J3RhYmxlIHRhYmxlLWhvdmVyJz4KCTx0aGVhZD4KCSAgPHRyPgoJCTx0aCBzdHlsZT0nIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7JyB3aWR0aD0iMSI+SUQ8L3RoPgoJCTx0aCBzdHlsZT0nIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7J3dpZHRoPSIxNSUiPtCb0L7Qs9C40L08L3RoPgoJCTx0aCBzdHlsZT0nIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7J3dpZHRoPSIyMCUiPkUtbWFpbDwvdGg+CgkJPHRoIHN0eWxlPScgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTsnd2lkdGg9IjQwJSI+0JPRgNGD0L/Qv9CwPC90aD4KCQk8dGggc3R5bGU9JyB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlOyd3aWR0aD0iNDAlIj7QlNC+0L3QsNGCPC90aD4KCQk8dGggc3R5bGU9J2Zsb2F0OnJpZ2h0OyB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlOyd3aWR0aD0iMTAlIj48L3RoPgoJCTx0aCBzdHlsZT0nZmxvYXQ6cmlnaHQ7IHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7J3dpZHRoPSIxMCUiPjwvdGg+CgkgPC90cj4KICAgPC90aGVhZD4KCQl7ZGF0YX0KICA8L3RhYmxlPgo8L2Rpdj4Ke3BhZ2luYXRpb259'),
(165, 'admin-users-edit', 'W21vZGFsXQo8ZGl2IGlkPSJiYXNlLW1vZGFsIiBjbGFzcz0ibW9kYWwgZmFkZSIgdGFiaW5kZXg9Ii0xIiBkYXRhLXdpZHRoPSI0MjAiPgo8ZGl2IGNsYXNzPSJtb2RhbC1kaWFsb2ciIHJvbGU9ImRvY3VtZW50IiAgc3R5bGU9ICJ3aWR0aDogNDIwcHg7Ij4KIDxkaXYgY2xhc3M9Im1vZGFsLWNvbnRlbnQiPgoJPGZvcm0gYWN0aW9uPSIvYWRtaW4vdXNlcnMvZWRpdC97aWR9IiB1cmw9Ii9hZG1pbi91c2VycyIgbWV0aG9kPSJQT1NUIiBjbGFzcz0iZm9ybV9lZGl0X3VzZXIiIHN0eWxlPSJwYWRkaW5nOjBweDsgbWFyZ2luOjBweDsiPgoJCTxkaXYgY2xhc3M9Im1vZGFsLWhlYWRlciI+CgkJCTxidXR0b24gdHlwZT0iYnV0dG9uIiBjbGFzcz0iY2xvc2UiIGRhdGEtZGlzbWlzcz0ibW9kYWwiIGFyaWEtaGlkZGVuPSJ0cnVlIj4mdGltZXM7PC9idXR0b24+CgkJCTxoNCBjbGFzcz0ibW9kYWwtdGl0bGUiPtCg0LXQtNCw0LrRgtC40YDQvtCy0LDQvdC40LUg0LjQs9GA0L7QutCwPC9oND4KCQk8L2Rpdj4KCQk8ZGl2IGNsYXNzPSJtb2RhbC1ib2R5Ij4KCQkJPGRpdiBjbGFzcz0iaW5wdXQtZ3JvdXAiIHN0eWxlPSJtYXJnaW4tYm90dG9tOiA3cHg7Ij4KCQkJCTxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1hZGRvbiI+0JvQvtCz0LjQvTwvc3Bhbj4KCQkJCTxpbnB1dCB0eXBlPSJ0ZXh0IiBuYW1lPSJkYXRhW2xvZ2luXSIgY2xhc3M9ImZvcm0tY29udHJvbCIgdmFsdWU9Intsb2dpbn0iPgoJCQk8L2Rpdj4KCQkJPGRpdiBjbGFzcz0iaW5wdXQtZ3JvdXAiIHN0eWxlPSJtYXJnaW4tYm90dG9tOiA3cHg7Ij4KCQkJCTxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1hZGRvbiI+RS1tYWlsPC9zcGFuPgoJCQkJPGlucHV0IHR5cGU9InRleHQiIG5hbWU9ImRhdGFbZW1haWxdIiBjbGFzcz0iZm9ybS1jb250cm9sIiB2YWx1ZT0ie2VtYWlsfSI+CgkJCTwvZGl2PgoJCQk8ZGl2IGNsYXNzPSJpbnB1dC1ncm91cCIgc3R5bGU9Im1hcmdpbi1ib3R0b206IDdweDsiPgoJCQkJPHNwYW4gY2xhc3M9ImlucHV0LWdyb3VwLWFkZG9uIj7QlNC+0L3QsNGCPC9zcGFuPgoJCQkJPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbZG9uYXRdIiB2YWx1ZT0ie2RvbmF0fSI+CgkJCTwvZGl2PgoJCQk8ZGl2IGNsYXNzPSJpbnB1dC1ncm91cCIgc3R5bGU9Im1hcmdpbi1ib3R0b206IDdweDsiPgoJCQkJPHNwYW4gY2xhc3M9ImlucHV0LWdyb3VwLWFkZG9uIj7Qk9GA0YPQv9C/0LA8L3NwYW4+CgkJCQk8c2VsZWN0IGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbYWRtaW5dIj57Z3JvdXB9PC9zZWxlY3Q+CgkJCTwvZGl2PgoJCQk8ZGl2IGNsYXNzPSJpbnB1dC1ncm91cCIgc3R5bGU9Im1hcmdpbi1ib3R0b206IDdweDsiPgoJCQkJPHNwYW4gY2xhc3M9ImlucHV0LWdyb3VwLWFkZG9uIj7QntGA0LPQsNC90LjQt9Cw0YbQuNGPPC9zcGFuPgoJCQkJPHNlbGVjdCBjbGFzcz0iZm9ybS1jb250cm9sIiBuYW1lPSJkYXRhW21lbWJlcl0iPnttZW1iZXJzfTwvc2VsZWN0PgoJCQk8L2Rpdj4KCQk8L2Rpdj4KCQk8ZGl2IGNsYXNzPSJtb2RhbC1mb290ZXIiPgoJCQk8YnV0dG9uIHR5cGU9InN1Ym1pdCIgY2xhc3M9ImJ0biBidG4tcHJpbWFyeSBzaWdudXAiIG5hbWU9ImJ1dHRvbiIgc3R5bGU9ImZsb2F0OiByaWdodDsiPtCh0L7RhdGA0LDQvdC40YLRjDwvYnV0dG9uPgoJCTwvZGl2PgoJPC9mb3JtPgo8L2Rpdj48L2Rpdj48L2Rpdj4KWy9tb2RhbF0='),
(166, 'admin-users-get', 'PHRib2R5Pgo8dHI+CiAgIDx0ZD57aWR9PC90ZD4KICAgPHRkPntsb2dpbn08L3RkPiAKICAgPHRkPntlbWFpbH08L3RkPgogICA8dGQ+e2dyb3Vwc308L3RkPiAgCiAgIDx0ZD57ZG9uYXR9PC90ZD4gIAogICA8dGQ+PGEgY2xhc3M9Inltb2RhbCBidG4gYnRuLWljb24tb25seSBncmVlbiIgaHJlZj0iL2FkbWluL3VzZXJzL2VkaXQve2lkfSI+PHNwYW4gY2xhc3M9ImZhIGZhLWVkaXQiPjwvc3Bhbj48L2E+PC90ZD4KICAgPHRkPjxmb3JtIGFjdGlvbj0iL2FkbWluL3VzZXJzL2RlbGwve2lkfSIgIG1ldGhvZD0iUE9TVCIgY2xhc3M9ImZvcm1fZGVsX3VzZXIiPjxidXR0b24gY2xhc3M9ImJ0biBidG4teHMgYnRuLWljb24tb25seSByZWQiIHR5cGU9InN1Ym1pdCI+PHNwYW4gY2xhc3M9ImZhIGZhLXRyYXNoLW8iPjwvc3Bhbj48L2J1dHRvbj48L2Zvcm0+PC90ZD4KPC90cj4KPC90Ym9keT4='),
(167, 'admin-pages', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+0KHRgtCw0YLQuNGH0LXRgdC60LjQtSBj0YLRgNCw0L3QuNGG0YsgCiAgPGRpdiBjbGFzcz0iYWN0aW9ucyI+Cgk8ZGl2IGNsYXNzPSJidG4tZ3JvdXAgYnRuLWdyb3VwLWRldmlkZWQiIGRhdGEtdG9nZ2xlPSJidXR0b25zIj4KCSAgIDxhIGhyZWY9Ii9hZG1pbi9wYWdlcy9hZGQiIGNsYXNzPSJidG4gYnRuLXRyYW5zcGFyZW50IGdyZXktc2Fsc2EgYnRuLWNpcmNsZSBidG4tc20gYWN0aXZlIiA+0KHQvtC30LTQsNGC0Yw8L2E+CgkgIDwvZGl2PgoJPC9kaXY+Cgk8L2Rpdj4KICAgPGRpdiBpZD0ibWFpbl9ibG9jayI+CiAgPHRhYmxlIGNsYXNzPSd0YWJsZSB0YWJsZS1ob3Zlcic+Cgk8dGhlYWQ+CgkgIDx0cj4KCQk8dGggc3R5bGU9JyB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlOyd3aWR0aD0iNSUiPklEPC90aD4KCQk8dGggc3R5bGU9JyB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlOyd3aWR0aD0iOTAlIj7QndCw0LfQstCw0L3QuNC1PC90aD4KCQk8dGggc3R5bGU9JyB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlOyd3aWR0aD0iMTAlIj48L3RoPgoJCTx0aCBzdHlsZT0nIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7J3dpZHRoPSIxMCUiPjwvdGg+CgkgPC90cj4KICAgPC90aGVhZD4KCQl7ZGF0YX0KICA8L3RhYmxlPgo8L2Rpdj4Ke3BhZ2luYXRpb259'),
(168, 'admin-pages-add', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+0KHQvtC30LTQsNC90LjQtSDRgdGC0YDQsNC90LjRhtGLPC9kaXY+CjxkaXYgaWQ9J21haW5fYmxvY2snPgoJPGZvcm0gYWN0aW9uPSIvYWRtaW4vcGFnZXMvYWRkIiB1cmw9Ii9hZG1pbi9wYWdlcyIgbWV0aG9kPSJQT1NUIiBjbGFzcz0iZm9ybV8wIj4KCTxkaXYgY2xhc3M9InBhbmVsIHBhbmVsLWRlZmF1bHQiIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOiAjRjVGNUY1OyI+CgkJPGRpdiBjbGFzcz0icGFuZWwtYm9keSI+CgkJCTxkaXYgY2xhc3M9InJvdyI+CgkJCQk8ZGl2IGNsYXNzPSJjb2wtbGctMTIiPgoJCQkJCTxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIj4KCQkJCQkJPHNwYW4gY2xhc3M9ImlucHV0LWdyb3VwLWFkZG9uIj7QndCw0LfQstCw0L3QuNC1PC9zcGFuPgoJCQkJCQk8aW5wdXQgbmFtZT0iZGF0YVtuYW1lXSIgY2xhc3M9ImZvcm0tY29udHJvbCIgdHlwZT0idGV4dCI+CgkJCQkJCTxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1idG4iPgoJCQkJCQkJPGJ1dHRvbiBjbGFzcz0iYnRuIGJ0bi1kZWZhdWx0IiB0eXBlPSJzdWJtaXQiPtCh0L7Qt9C00LDRgtGMPC9idXR0b24+CgkJCQkJCTwvc3Bhbj4KCQkJCQk8L2Rpdj4KCQkJCTwvZGl2PgoJCQk8L2Rpdj4KCQk8L2Rpdj4KCTwvZGl2PgoJPGRpdiBjbGFzcz0icGFuZWwgcGFuZWwtZGVmYXVsdCI+CgkJPGRpdiBjbGFzcz0icGFuZWwtaGVhZGluZyI+CgkJCTxoMyBjbGFzcz0icGFuZWwtdGl0bGUiIHN0eWxlPSJmbG9hdDogbGVmdDttYXJnaW4tdG9wOiA5cHg7Ij7QodC+0LTQtdGA0LbQuNC80L7QtSDRgdGC0YDQsNC90LjRhtGLPC9oMz4KCQkJPGRpdiBzdHlsZT0iY2xlYXI6IGJvdGg7Ij48L2Rpdj4KCQk8L2Rpdj4KCQk8dGV4dGFyZWEgc3R5bGU9IndpZHRoOjEwMCU7bWluLWhlaWdodDo0NDBweDsiIGlkPSJlZGl0b3IzIiBuYW1lPSJkYXRhW3BhZ2VdIiB3cmFwPSJvZmYiIGlkPSJ0cGxfdGV4dCIgPjwvdGV4dGFyZWE+Cgk8L2Rpdj4KPC9mb3JtPgogPHNjcmlwdD5DS0VESVRPUi5yZXBsYWNlKCAnZWRpdG9yMycgKTs8L3NjcmlwdD4KPC9kaXY+'),
(169, 'admin-pages-edit', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+0KDQtdC00LDQutGC0LjRgNC+0LLQsNC90LjQtSDRgdGC0YDQsNC90LjRhtGLPC9kaXY+CjxkaXYgaWQ9J21haW5fYmxvY2snPgoJPGZvcm0gYWN0aW9uPSIvYWRtaW4vcGFnZXMvZWRpdC97aWR9IiB1cmw9Ii9hZG1pbi9wYWdlcyIgbWV0aG9kPSJQT1NUIiBjbGFzcz0iZm9ybV8wIj4KCTxkaXYgY2xhc3M9InBhbmVsIHBhbmVsLWRlZmF1bHQiIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOiAjRjVGNUY1OyI+CgkJPGRpdiBjbGFzcz0icGFuZWwtYm9keSI+CgkJCTxkaXYgY2xhc3M9InJvdyI+CgkJCQk8ZGl2IGNsYXNzPSJjb2wtbGctMTIiPgoJCQkJCTxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIj4KCQkJCQkJPHNwYW4gY2xhc3M9ImlucHV0LWdyb3VwLWFkZG9uIj7QndCw0LfQstCw0L3QuNC1PC9zcGFuPgoJCQkJCQk8aW5wdXQgbmFtZT0iZGF0YVtuYW1lXSIgY2xhc3M9ImZvcm0tY29udHJvbCIgdHlwZT0idGV4dCIgdmFsdWU9IntuYW1lfSI+CgkJCQkJCTxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1idG4iPgoJCQkJCQkJPGJ1dHRvbiBjbGFzcz0iYnRuIGJ0bi1kZWZhdWx0IiB0eXBlPSJzdWJtaXQiPtCh0L7RhdGA0LDQvdC40YLRjDwvYnV0dG9uPgoJCQkJCQk8L3NwYW4+CgkJCQkJPC9kaXY+CgkJCQk8L2Rpdj4KCQkJPC9kaXY+CgkJPC9kaXY+Cgk8L2Rpdj4KCTxkaXYgY2xhc3M9InBhbmVsIHBhbmVsLWRlZmF1bHQiPgoJCTxkaXYgY2xhc3M9InBhbmVsLWhlYWRpbmciPgoJCQk8aDMgY2xhc3M9InBhbmVsLXRpdGxlIiBzdHlsZT0iZmxvYXQ6IGxlZnQ7bWFyZ2luLXRvcDogOXB4OyI+0KHQvtC00LXRgNC20LjQvNC+0LUg0YHRgtGA0LDQvdC40YbRizwvaDM+CgkJCTxkaXYgc3R5bGU9ImNsZWFyOiBib3RoOyI+PC9kaXY+CgkJPC9kaXY+CgkJPHRleHRhcmVhIHN0eWxlPSJ3aWR0aDoxMDAlO21pbi1oZWlnaHQ6NDQwcHg7IiBpZD0iZWRpdG9yMyIgbmFtZT0iZGF0YVt0ZXh0XSIgd3JhcD0ib2ZmIiBpZD0idHBsX3RleHQiID57dGV4dH08L3RleHRhcmVhPgoJPC9kaXY+CjwvZm9ybT4KIDxzY3JpcHQ+Q0tFRElUT1IucmVwbGFjZSggJ2VkaXRvcjMnICk7PC9zY3JpcHQ+CjwvZGl2Pg=='),
(170, 'admin-pages-get', 'PHRib2R5Pgo8dHI+CiAgIDx0ZD57aWR9PC90ZD4gCiAgIDx0ZD4gPGEgaHJlZj0iL3BhZ2Uve2lkfSI+e25hbWV9PC9hPjwvdGQ+ICAKICAgPHRkPjxhIGNsYXNzPSJidG4gYnRuLWljb24tb25seSBncmVlbiIgaHJlZj0iL2FkbWluL3BhZ2VzL2VkaXQve2lkfSI+PHNwYW4gY2xhc3M9ImZhIGZhLWVkaXQiPjwvc3Bhbj48L2E+PC90ZD4KICAgPHRkPjxmb3JtIGFjdGlvbj0iL2FkbWluL3BhZ2VzL2RlbGwve2lkfSIgIG1ldGhvZD0iUE9TVCIgY2xhc3M9ImZvcm1fcGFnZV9kZWwiPjxidXR0b24gY2xhc3M9ImJ0biBidG4teHMgYnRuLWljb24tb25seSByZWQiIHR5cGU9InN1Ym1pdCI+PHNwYW4gY2xhc3M9ImZhIGZhLXRyYXNoLW8iPjwvc3Bhbj48L2J1dHRvbj48L2Zvcm0+PC90ZD4KPC90cj4KPC90Ym9keT4='),
(171, 'admin-news', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+0J3QvtCy0L7RgdGC0LgKICA8ZGl2IGNsYXNzPSJhY3Rpb25zIj4KICAgIDxkaXYgY2xhc3M9ImJ0bi1ncm91cCBidG4tZ3JvdXAtZGV2aWRlZCIgZGF0YS10b2dnbGU9ImJ1dHRvbnMiPgoJICAgPGEgaHJlZj0iL2FkbWluL25ld3MvY2F0IiBjbGFzcz0iYnRuIGJ0bi10cmFuc3BhcmVudCBncmV5LXNhbHNhIGJ0bi1jaXJjbGUgYnRuLXNtIGFjdGl2ZSIgPtCa0LDRgtC10LPQvtGA0LjQuDwvYT4KCSA8L2Rpdj4KCTxkaXYgY2xhc3M9ImJ0bi1ncm91cCBidG4tZ3JvdXAtZGV2aWRlZCIgZGF0YS10b2dnbGU9ImJ1dHRvbnMiPgoJICAgPGEgaHJlZj0iL2FkbWluL25ld3MvYWRkIiBjbGFzcz0iYnRuIGJ0bi10cmFuc3BhcmVudCBncmV5LXNhbHNhIGJ0bi1jaXJjbGUgYnRuLXNtIGFjdGl2ZSIgPtCh0L7Qt9C00LDRgtGMPC9hPgoJICA8L2Rpdj4KCTwvZGl2PgoJPC9kaXY+CiAgIDxkaXYgaWQ9Im1haW5fYmxvY2siPgogIDx0YWJsZSBjbGFzcz0ndGFibGUgdGFibGUtaG92ZXInPgoJPHRoZWFkPgoJICA8dHI+CgkJPHRoIHN0eWxlPScgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTsnd2lkdGg9IjUlIj5JRDwvdGg+CgkJPHRoIHN0eWxlPScgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTsnd2lkdGg9IjkwJSI+0J3QsNC30LLQsNC90LjQtTwvdGg+CgkJPHRoIHN0eWxlPScgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTsnd2lkdGg9IjEwJSI+PC90aD4KCQk8dGggc3R5bGU9JyB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlOyd3aWR0aD0iMTAlIj48L3RoPgoJIDwvdHI+CiAgIDwvdGhlYWQ+CgkJe2RhdGF9CiAgPC90YWJsZT4KPC9kaXY+CntwYWdpbmF0aW9ufQ=='),
(172, 'admin-news-add', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+0KHQvtC30LTQsNC90LjQtSDQvdC+0LLQvtGB0YLQuAoJICA8ZGl2IGNsYXNzPSJhY3Rpb25zIj4KCQk8ZGl2IGNsYXNzPSJidG4tZ3JvdXAgYnRuLWdyb3VwLWRldmlkZWQiIGRhdGEtdG9nZ2xlPSJidXR0b25zIj4KCQkgICA8YSBocmVmPSIvYWRtaW4vbmV3cy9jYXQiIGNsYXNzPSJidG4gYnRuLXRyYW5zcGFyZW50IGdyZXktc2Fsc2EgYnRuLWNpcmNsZSBidG4tc20gYWN0aXZlIiA+0JrQsNGC0LXQs9C+0YDQuNC4PC9hPgoJCSAgPC9kaXY+CgkJICA8ZGl2IGNsYXNzPSJidG4tZ3JvdXAgYnRuLWdyb3VwLWRldmlkZWQiIGRhdGEtdG9nZ2xlPSJidXR0b25zIj4KCQkJPGEgaHJlZj0iL2FkbWluL25ld3MiIGNsYXNzPSJidG4gYnRuLXRyYW5zcGFyZW50IGdyZXktc2Fsc2EgYnRuLWNpcmNsZSBidG4tc20gYWN0aXZlIiA+0J3QvtCy0L7RgdGC0Lg8L2E+CgkJICA8L2Rpdj4KCQk8L2Rpdj4KCQk8L2Rpdj4KCQk8ZGl2IGlkPSdtYWluX2Jsb2NrJz4KCQkJPGZvcm0gYWN0aW9uPSIvYWRtaW4vbmV3cy9hZGQiIHVybD0iL2FkbWluL25ld3MiIG1ldGhvZD0iUE9TVCIgY2xhc3M9ImZvcm1fMCI+CgkJCQk8ZGl2IGNsYXNzPSJmb3JtLWhvcml6b250YWwiPgoJCQkJCTxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgoJCQkJCQk8bGFiZWwgY2xhc3M9ImNvbC1zbS0yIGNvbnRyb2wtbGFiZWwiIHN0eWxlPSJmb250LXdlaWdodDogMTAwOyI+0J3QsNC30LLQsNC90LjQtTwvbGFiZWw+CgkJCQkJCTxkaXYgY2xhc3M9ImNvbC1zbS00Ij4KCQkJCQkJCTxpbnB1dCB0eXBlPSJ0ZXh0IiBuYW1lPSJkYXRhW25hbWVdIiBjbGFzcz0iZm9ybS1jb250cm9sIj4KCQkJCQkJPC9kaXY+CgkJCQkJPC9kaXY+CgkJCQkJPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CgkJCQkJCTxsYWJlbCBjbGFzcz0iY29sLXNtLTIgY29udHJvbC1sYWJlbCIgc3R5bGU9ImZvbnQtd2VpZ2h0OiAxMDA7Ij7QmtCw0YLQtdCz0L7RgNC40Y88L2xhYmVsPgoJCQkJCQk8ZGl2IGNsYXNzPSJjb2wtc20tNCI+CgkJCQkJCQk8c2VsZWN0IG5hbWU9ImRhdGFbY2F0XSIgY2xhc3M9ImZvcm0tY29udHJvbCI+CgkJCQkJCQkJPG9wdGlvbiB2YWx1ZT0iMCI+0J3QtSDQstGL0LHRgNCw0L3Qvjwvb3B0aW9uPgoJCQkJCQkJCXtjYXRzfQoJCQkJCQkJPC9zZWxlY3Q+CgkJCQkJCTwvZGl2PgoJCQkJCTwvZGl2PgoJCQkJCTxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgoJCQkJCQk8bGFiZWwgY2xhc3M9ImNvbC1zbS0yIGNvbnRyb2wtbGFiZWwiIHN0eWxlPSJmb250LXdlaWdodDogMTAwOyI+0JDQtNGA0LXRgTwvbGFiZWw+CgkJCQkJCTxkaXYgY2xhc3M9ImNvbC1zbS00Ij4KCQkJCQkJCTxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIj4KCQkJCQkJCQk8c3BhbiBjbGFzcz0iaW5wdXQtZ3JvdXAtYWRkb24iPi9uZXdzLzwvc3Bhbj4KCQkJCQkJCQk8aW5wdXQgdHlwZT0idGV4dCIgbmFtZT0iZGF0YVt1cmxdIiBjbGFzcz0iZm9ybS1jb250cm9sIj4KCQkJCQkJCTwvZGl2PgoJCQkJCQk8L2Rpdj4KCQkJCQk8L2Rpdj4KCQkJCQk8ZGl2IGNsYXNzPSJsb2FkIj4KCSAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZpbGVpbnB1dC1uZXcgdGh1bWJuYWlsIiBzdHlsZT0iIHdpZHRoOiAzMjJweDsgaGVpZ2h0OiAxMDZweDtvdmVyZmxvdzogaGlkZGVuOyI+CgkJCQkJPGltZyBhbHQ9IiIgIGlkPSJpbWFnZV9wcmV2aWV3IiBzcmM9Ii9pbWFnZXMvcG9zdGVyLnBuZyIvPgoJCQkJCTwvZGl2PgkKCQkJCQk8aW5wdXQgcm93cz0iNiIgdHlwZT0iZmlsZSIgaWQ9ImZpbGVzIiBuYW1lPSJ1cGxvYWRmaWxlIiBjbGFzcz0iYnRuIGJ0bi1kZWZhdWx0IiAgbXVsdGlwbGUgLz4KCQkJCQkgPC9kaXY+CgkJCQkJIDxicj4gPGJyPgoJCQkJCTxkaXYgY2xhc3M9InBhbmVsIHBhbmVsLWRlZmF1bHQiPgoJCSAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJwYW5lbC1oZWFkaW5nIj4KCQkJICAgICAgICAgIDxoMyBjbGFzcz0icGFuZWwtdGl0bGUiIHN0eWxlPSJmbG9hdDogbGVmdDttYXJnaW4tdG9wOiA5cHg7Ij7QmtC+0YDQvtGC0LrQsNGPINC90L7QstC+0YHRgtGMPC9oMz4KCQkJICAgICAgICAgPGRpdiBzdHlsZT0iY2xlYXI6IGJvdGg7Ij48L2Rpdj4KCQkgICAgICAgICAgICAgIDwvZGl2PgoJCSAgICAgICAgICAgICAgICA8dGV4dGFyZWEgc3R5bGU9IndpZHRoOjEwMCU7bWluLWhlaWdodDo0NDBweDsiIGlkPSJlZGl0b3IxIiBuYW1lPSJkYXRhW2luZm9dIiB3cmFwPSJvZmYiIGlkPSJ0cGxfdGV4dCIgPjwvdGV4dGFyZWE+CgkgICAgICAgICAgICAgICAgICA8L2Rpdj4KCQkJCQk8ZGl2IGNsYXNzPSJwYW5lbCBwYW5lbC1kZWZhdWx0Ij4KCQkgICAgICAgICAgPGRpdiBjbGFzcz0icGFuZWwtaGVhZGluZyI+CgkJCSAgICAgICAgIDxoMyBjbGFzcz0icGFuZWwtdGl0bGUiIHN0eWxlPSJmbG9hdDogbGVmdDttYXJnaW4tdG9wOiA5cHg7Ij7Qn9C+0LvQvdCw0Y8g0L3QvtCy0L7RgdGC0Yw8L2gzPgoJCQkgICAgICAgICA8ZGl2IHN0eWxlPSJjbGVhcjogYm90aDsiPjwvZGl2PgoJCSAgICAgICAgICAgIDwvZGl2PgoJCSAgICAgICAgICAgICA8dGV4dGFyZWEgc3R5bGU9IndpZHRoOjEwMCU7bWluLWhlaWdodDo0NDBweDsiIGlkPSJlZGl0b3IyIiBuYW1lPSJkYXRhW2luZm8yXSIgd3JhcD0ib2ZmIiBpZD0idHBsX3RleHQiID48L3RleHRhcmVhPgoJICAgICAgICAgICAgICA8L2Rpdj4KCQkJCQk8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KCQkJCQkJPGRpdiBjbGFzcz0iY29sLXNtLTkiPjwvZGl2PgoJCQkJCQk8ZGl2IGNsYXNzPSJjb2wtc20tMyI+CgkJCQkJCQk8YnV0dG9uIHR5cGU9InN1Ym1pdCIgY2xhc3M9ImJ0biBidG4tcHJpbWFyeSBidG4tYmxvY2siPtCU0L7QsdCw0LLQuNGC0Yw8L2J1dHRvbj4KCQkJCQkJPC9kaXY+CgkJCQkJPC9kaXY+CgkJCQk8L2Rpdj4KCQkJPC9mb3JtPgoJPHNjcmlwdD5DS0VESVRPUi5yZXBsYWNlKCAnZWRpdG9yMScgKTs8L3NjcmlwdD4KICAgIDxzY3JpcHQ+Q0tFRElUT1IucmVwbGFjZSggJ2VkaXRvcjInICk7PC9zY3JpcHQ+Cgk8c2NyaXB0PgoJCQl1cmxfdG91Y2hlZCA9IHRydWU7CgkJCWlmKCQoJ2lucHV0W25hbWU9ImRhdGFbdXJsXSJdJykudmFsKCkgPT0gZ2VuZXJhdGVfdXJsKCkgfHwgJCgnaW5wdXRbbmFtZT0iZGF0YVt1cmxdIl0nKS52YWwoKSA9PSAnJykgdXJsX3RvdWNoZWQgPSBmYWxzZTsKCQkJJCgnaW5wdXRbbmFtZT0iZGF0YVt1cmxdIl0nKS5jaGFuZ2UoZnVuY3Rpb24oKSB7IHVybF90b3VjaGVkID0gdHJ1ZTsgfSk7CgkJCWZ1bmN0aW9uIGdlbmVyYXRlX3VybCgpewoJCQkJdXJsID0gJCgnaW5wdXRbbmFtZT0iZGF0YVtuYW1lXSJdJykudmFsKCk7CgkJCQl1cmwgPSB1cmwucmVwbGFjZSgvW1xzXSsvZ2ksICctJyk7CgkJCQl1cmwgPSB0cmFuc2xpdCh1cmwpOwoJCQkJdXJsID0gdXJsLnJlcGxhY2UoL1teMC05YS16X1wtXSsvZ2ksICcnKS50b0xvd2VyQ2FzZSgpOwoJCQkJcmV0dXJuIHVybDsKCQkJfQoJCQkkKGZ1bmN0aW9uKCl7CgkJCQkkKCdpbnB1dFtuYW1lPSJkYXRhW25hbWVdIl0nKS5rZXl1cChmdW5jdGlvbigpIHsKCQkJCQlpZighdXJsX3RvdWNoZWQpICQoJ2lucHV0W25hbWU9ImRhdGFbdXJsXSJdJykudmFsKGdlbmVyYXRlX3VybCgpKTsKCQkJCX0pOwoJCQl9KTsKCTwvc2NyaXB0PgoJPHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPgoJJCgnI2ZpbGVzJykuY2hhbmdlKGZ1bmN0aW9uKCkgewoJICB2YXIgaW5wdXQgPSAkKHRoaXMpWzBdOwoJICBpZiAoIGlucHV0LmZpbGVzICYmIGlucHV0LmZpbGVzWzBdICkgewoJCWlmICggaW5wdXQuZmlsZXNbMF0udHlwZS5tYXRjaCgnaW1hZ2UuKicpICkgewoJCSAgdmFyIHJlYWRlciA9IG5ldyBGaWxlUmVhZGVyKCk7CgkJICByZWFkZXIub25sb2FkID0gZnVuY3Rpb24oZSkgeyAkKCcjaW1hZ2VfcHJldmlldycpLmF0dHIoJ3NyYycsIGUudGFyZ2V0LnJlc3VsdCk7IH0KCQkgIHJlYWRlci5yZWFkQXNEYXRhVVJMKGlucHV0LmZpbGVzWzBdKTsKCQl9CgkgIH0KCX0pOwoJPC9zY3JpcHQ+CjwvZGl2Pg=='),
(173, 'admin-news-cat', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+0JrQsNGC0LXQs9C+0YDQuNC4INC90L7QstC+0YHRgtC10LkKICA8ZGl2IGNsYXNzPSJhY3Rpb25zIj4KICAgIDxkaXYgY2xhc3M9ImJ0bi1ncm91cCBidG4tZ3JvdXAtZGV2aWRlZCIgZGF0YS10b2dnbGU9ImJ1dHRvbnMiPgoJICAgIDxhIGhyZWY9Ii9hZG1pbi9uZXdzIiBjbGFzcz0iYnRuIGJ0bi10cmFuc3BhcmVudCBncmV5LXNhbHNhIGJ0bi1jaXJjbGUgYnRuLXNtIGFjdGl2ZSIgPtCd0L7QstC+0YHRgtC4PC9hPgoJIDwvZGl2PgoJPGRpdiBjbGFzcz0iYnRuLWdyb3VwIGJ0bi1ncm91cC1kZXZpZGVkIiBkYXRhLXRvZ2dsZT0iYnV0dG9ucyI+CgkgICA8YSBocmVmPSIvYWRtaW4vbmV3cy9jYXQvYWRkIiBjbGFzcz0iYnRuIGJ0bi10cmFuc3BhcmVudCBncmV5LXNhbHNhIGJ0bi1jaXJjbGUgYnRuLXNtIGFjdGl2ZSIgPtCh0L7Qt9C00LDRgtGMPC9hPgoJICA8L2Rpdj4KCTwvZGl2PgoJPC9kaXY+CiAgIDxkaXYgaWQ9Im1haW5fYmxvY2siPgogIDx0YWJsZSBjbGFzcz0ndGFibGUgdGFibGUtaG92ZXInPgoJPHRoZWFkPgoJICA8dHI+CgkJPHRoIHN0eWxlPScgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTsnd2lkdGg9IjUlIj5JRDwvdGg+CgkJPHRoIHN0eWxlPScgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTsnd2lkdGg9IjkwJSI+0J3QsNC30LLQsNC90LjQtTwvdGg+CgkJPHRoIHN0eWxlPScgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTsnd2lkdGg9IjEwJSI+PC90aD4KCQk8dGggc3R5bGU9JyB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlOyd3aWR0aD0iMTAlIj48L3RoPgoJIDwvdHI+CiAgIDwvdGhlYWQ+CgkJe2RhdGF9CiAgPC90YWJsZT4KPC9kaXY+CntwYWdpbmF0aW9ufQ=='),
(174, 'admin-news-cat-add', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+0KHQvtC30LTQsNC90LjQtSDQutCw0YLQtdCz0L7RgNC40Lgg0L3QvtCy0L7RgdGC0LXQuQogIDxkaXYgY2xhc3M9ImFjdGlvbnMiPgoJPGRpdiBjbGFzcz0iYnRuLWdyb3VwIGJ0bi1ncm91cC1kZXZpZGVkIiBkYXRhLXRvZ2dsZT0iYnV0dG9ucyI+CgkgICA8YSBocmVmPSIvYWRtaW4vbmV3cy9jYXQiIGNsYXNzPSJidG4gYnRuLXRyYW5zcGFyZW50IGdyZXktc2Fsc2EgYnRuLWNpcmNsZSBidG4tc20gYWN0aXZlIiA+0JrQsNGC0LXQs9C+0YDQuNC4PC9hPgoJICA8L2Rpdj4KCSAgPGRpdiBjbGFzcz0iYnRuLWdyb3VwIGJ0bi1ncm91cC1kZXZpZGVkIiBkYXRhLXRvZ2dsZT0iYnV0dG9ucyI+CgkgICAgPGEgaHJlZj0iL2FkbWluL25ld3MiIGNsYXNzPSJidG4gYnRuLXRyYW5zcGFyZW50IGdyZXktc2Fsc2EgYnRuLWNpcmNsZSBidG4tc20gYWN0aXZlIiA+0J3QvtCy0L7RgdGC0Lg8L2E+CgkgIDwvZGl2PgoJPC9kaXY+Cgk8L2Rpdj4KPGRpdiBpZD0nbWFpbl9ibG9jayc+Cgo8Zm9ybSBhY3Rpb249Ii9hZG1pbi9uZXdzL2NhdC9hZGQiIHVybD0iL2FkbWluL25ld3MvY2F0IiBtZXRob2Q9IlBPU1QiIGNsYXNzPSJmb3JtXzAiIHN0eWxlPSJwYWRkaW5nOjBweDsgbWFyZ2luOjBweDsiPgoJCQkJPGRpdiBjbGFzcz0iZm9ybS1ob3Jpem9udGFsIj4KCQkJCQk8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KCQkJCQkJPGxhYmVsIGNsYXNzPSJjb2wtc20tNCBjb250cm9sLWxhYmVsIj7QndCw0LfQstCw0L3QuNC1PC9sYWJlbD4KCQkJCQkJPGRpdiBjbGFzcz0iY29sLXNtLTQiPgoJCQkJCQkJPGlucHV0IHR5cGU9InRleHQiIG5hbWU9ImRhdGFbbmFtZV0iIGNsYXNzPSJmb3JtLWNvbnRyb2wiPgoJCQkJCQk8L2Rpdj4KCQkJCQk8L2Rpdj4KCQkJCQk8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KCQkJCQkJPGxhYmVsIGNsYXNzPSJjb2wtc20tNCBjb250cm9sLWxhYmVsIj7QkNC00YDQtdGBPC9sYWJlbD4KCQkJCQkJPGRpdiBjbGFzcz0iY29sLXNtLTQiPgoJCQkJCQkJPGRpdiBjbGFzcz0iaW5wdXQtZ3JvdXAiPgoJCQkJCQkJCTxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1hZGRvbiI+L25ld3MvPC9zcGFuPgoJCQkJCQkJCTxpbnB1dCB0eXBlPSJ0ZXh0IiBuYW1lPSJkYXRhW3VybF0iIGNsYXNzPSJmb3JtLWNvbnRyb2wiPgoJCQkJCQkJPC9kaXY+CgkJCQkJCTwvZGl2PgoJCQkJCTwvZGl2PgoJCQkJCQoJCQkJCTxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgoJCQkJCQk8ZGl2IGNsYXNzPSJjb2wtc20tNCI+PC9kaXY+CgkJCQkJCTxkaXYgY2xhc3M9ImNvbC1zbS00Ij4KCQkJCQkJCTxidXR0b24gdHlwZT0ic3VibWl0IiBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5IGJ0bi1ibG9jayI+0JTQvtCx0LDQstC40YLRjDwvYnV0dG9uPgoJCQkJCQk8L2Rpdj4KCQkJCQk8L2Rpdj4KCQkJCTwvZGl2PgoJCQk8L2Zvcm0+Cgo8L2Rpdj4KPHNjcmlwdD4KCQl1cmxfdG91Y2hlZCA9IHRydWU7CgkJaWYoJCgnaW5wdXRbbmFtZT0iZGF0YVt1cmxdIl0nKS52YWwoKSA9PSBnZW5lcmF0ZV91cmwoKSB8fCAkKCdpbnB1dFtuYW1lPSJkYXRhW3VybF0iXScpLnZhbCgpID09ICcnKSB1cmxfdG91Y2hlZCA9IGZhbHNlOwoJCSQoJ2lucHV0W25hbWU9ImRhdGFbdXJsXSJdJykuY2hhbmdlKGZ1bmN0aW9uKCkgeyB1cmxfdG91Y2hlZCA9IHRydWU7IH0pOwoJCWZ1bmN0aW9uIGdlbmVyYXRlX3VybCgpewoJCQl1cmwgPSAkKCdpbnB1dFtuYW1lPSJkYXRhW25hbWVdIl0nKS52YWwoKTsKCQkJdXJsID0gdXJsLnJlcGxhY2UoL1tcc10rL2dpLCAnLScpOwoJCQl1cmwgPSB0cmFuc2xpdCh1cmwpOwoJCQl1cmwgPSB1cmwucmVwbGFjZSgvW14wLTlhLXpfXC1dKy9naSwgJycpLnRvTG93ZXJDYXNlKCk7CgkJCXJldHVybiB1cmw7CgkJfQoJCSQoZnVuY3Rpb24oKXsKCQkJJCgnaW5wdXRbbmFtZT0iZGF0YVtuYW1lXSJdJykua2V5dXAoZnVuY3Rpb24oKSB7CgkJCQlpZighdXJsX3RvdWNoZWQpICQoJ2lucHV0W25hbWU9ImRhdGFbdXJsXSJdJykudmFsKGdlbmVyYXRlX3VybCgpKTsKCQkJfSk7CgkJfSk7Cgk8L3NjcmlwdD4KPC9kaXY+'),
(175, 'admin-news-cat-edit', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+0KDQtdC00LDQutGC0LjRgNC+0LLQsNC90LjQtSDQutCw0YLQtdCz0L7RgNC40Lgg0L3QvtCy0L7RgdGC0LXQuQogIDxkaXYgY2xhc3M9ImFjdGlvbnMiPgoJPGRpdiBjbGFzcz0iYnRuLWdyb3VwIGJ0bi1ncm91cC1kZXZpZGVkIiBkYXRhLXRvZ2dsZT0iYnV0dG9ucyI+CgkgICA8YSBocmVmPSIvYWRtaW4vbmV3cy9jYXQiIGNsYXNzPSJidG4gYnRuLXRyYW5zcGFyZW50IGdyZXktc2Fsc2EgYnRuLWNpcmNsZSBidG4tc20gYWN0aXZlIiA+0JrQsNGC0LXQs9C+0YDQuNC4PC9hPgoJICA8L2Rpdj4KCSAgPGRpdiBjbGFzcz0iYnRuLWdyb3VwIGJ0bi1ncm91cC1kZXZpZGVkIiBkYXRhLXRvZ2dsZT0iYnV0dG9ucyI+CgkgICAgPGEgaHJlZj0iL2FkbWluL25ld3MiIGNsYXNzPSJidG4gYnRuLXRyYW5zcGFyZW50IGdyZXktc2Fsc2EgYnRuLWNpcmNsZSBidG4tc20gYWN0aXZlIiA+0J3QvtCy0L7RgdGC0Lg8L2E+CgkgIDwvZGl2PgoJPC9kaXY+Cgk8L2Rpdj4KPGRpdiBpZD0nbWFpbl9ibG9jayc+Cgo8Zm9ybSBhY3Rpb249Ii9hZG1pbi9uZXdzL2NhdC9hZGQiIHVybD0iL2FkbWluL25ld3MvY2F0IiBtZXRob2Q9IlBPU1QiIGNsYXNzPSJmb3JtXzAiIHN0eWxlPSJwYWRkaW5nOjBweDsgbWFyZ2luOjBweDsiPgoJCQkJPGRpdiBjbGFzcz0iZm9ybS1ob3Jpem9udGFsIj4KCQkJCQk8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KCQkJCQkJPGxhYmVsIGNsYXNzPSJjb2wtc20tNCBjb250cm9sLWxhYmVsIj7QndCw0LfQstCw0L3QuNC1PC9sYWJlbD4KCQkJCQkJPGRpdiBjbGFzcz0iY29sLXNtLTQiPgoJCQkJCQkJPGlucHV0IHR5cGU9InRleHQiIG5hbWU9ImRhdGFbbmFtZV0iICAgdmFsdWU9IntuYW1lfSJjbGFzcz0iZm9ybS1jb250cm9sIj4KCQkJCQkJPC9kaXY+CgkJCQkJPC9kaXY+CgkJCQkJPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CgkJCQkJCTxsYWJlbCBjbGFzcz0iY29sLXNtLTQgY29udHJvbC1sYWJlbCI+0JDQtNGA0LXRgTwvbGFiZWw+CgkJCQkJCTxkaXYgY2xhc3M9ImNvbC1zbS00Ij4KCQkJCQkJCTxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIj4KCQkJCQkJCQk8c3BhbiBjbGFzcz0iaW5wdXQtZ3JvdXAtYWRkb24iPi9uZXdzLzwvc3Bhbj4KCQkJCQkJCQk8aW5wdXQgdHlwZT0idGV4dCIgbmFtZT0iZGF0YVt1cmxdIiB2YWx1ZT0ie3VybH0iIGNsYXNzPSJmb3JtLWNvbnRyb2wiPgoJCQkJCQkJPC9kaXY+CgkJCQkJCTwvZGl2PgoJCQkJCTwvZGl2PgoJCQkJCQoJCQkJCTxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgoJCQkJCQk8ZGl2IGNsYXNzPSJjb2wtc20tNCI+PC9kaXY+CgkJCQkJCTxkaXYgY2xhc3M9ImNvbC1zbS00Ij4KCQkJCQkJCTxidXR0b24gdHlwZT0ic3VibWl0IiBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5IGJ0bi1ibG9jayI+0KHQvtGF0YDQsNC90LjRgtGMPC9idXR0b24+CgkJCQkJCTwvZGl2PgoJCQkJCTwvZGl2PgoJCQkJPC9kaXY+CgkJCTwvZm9ybT4KCjwvZGl2Pgo8c2NyaXB0PgoJCXVybF90b3VjaGVkID0gdHJ1ZTsKCQlpZigkKCdpbnB1dFtuYW1lPSJkYXRhW3VybF0iXScpLnZhbCgpID09IGdlbmVyYXRlX3VybCgpIHx8ICQoJ2lucHV0W25hbWU9ImRhdGFbdXJsXSJdJykudmFsKCkgPT0gJycpIHVybF90b3VjaGVkID0gZmFsc2U7CgkJJCgnaW5wdXRbbmFtZT0iZGF0YVt1cmxdIl0nKS5jaGFuZ2UoZnVuY3Rpb24oKSB7IHVybF90b3VjaGVkID0gdHJ1ZTsgfSk7CgkJZnVuY3Rpb24gZ2VuZXJhdGVfdXJsKCl7CgkJCXVybCA9ICQoJ2lucHV0W25hbWU9ImRhdGFbbmFtZV0iXScpLnZhbCgpOwoJCQl1cmwgPSB1cmwucmVwbGFjZSgvW1xzXSsvZ2ksICctJyk7CgkJCXVybCA9IHRyYW5zbGl0KHVybCk7CgkJCXVybCA9IHVybC5yZXBsYWNlKC9bXjAtOWEtel9cLV0rL2dpLCAnJykudG9Mb3dlckNhc2UoKTsKCQkJcmV0dXJuIHVybDsKCQl9CgkJJChmdW5jdGlvbigpewoJCQkkKCdpbnB1dFtuYW1lPSJkYXRhW25hbWVdIl0nKS5rZXl1cChmdW5jdGlvbigpIHsKCQkJCWlmKCF1cmxfdG91Y2hlZCkgJCgnaW5wdXRbbmFtZT0iZGF0YVt1cmxdIl0nKS52YWwoZ2VuZXJhdGVfdXJsKCkpOwoJCQl9KTsKCQl9KTsKCTwvc2NyaXB0Pgo8L2Rpdj4='),
(176, 'admin-news-cat-get', 'PHRib2R5Pgo8dHI+CiAgIDx0ZD57aWR9PC90ZD4gCiAgIDx0ZD4gPGEgaHJlZj0iL25ld3Mve3VybH0iPntuYW1lfTwvYT48L3RkPiAgCiAgIDx0ZD48YSBjbGFzcz0iYnRuIGJ0bi1pY29uLW9ubHkgZ3JlZW4iIGhyZWY9Ii9hZG1pbi9uZXdzL2NhdC9lZGl0L3tpZH0iPjxzcGFuIGNsYXNzPSJmYSBmYS1lZGl0Ij48L3NwYW4+PC9hPjwvdGQ+CiAgIDx0ZD48Zm9ybSBhY3Rpb249Ii9hZG1pbi9uZXdzL2NhdC9kZWxsL3tpZH0iICBtZXRob2Q9IlBPU1QiIGNsYXNzPSJmb3JtX25ld3NfY2F0X2RlbCI+PGJ1dHRvbiBjbGFzcz0iYnRuIGJ0bi14cyBidG4taWNvbi1vbmx5IHJlZCIgdHlwZT0ic3VibWl0Ij48c3BhbiBjbGFzcz0iZmEgZmEtdHJhc2gtbyI+PC9zcGFuPjwvYnV0dG9uPjwvZm9ybT48L3RkPgo8L3RyPgo8L3Rib2R5Pg=='),
(177, 'admin-news-edit', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+0KDQtdC00LDQutGC0LjRgNC+0LLQsNC90LjQtSDQvdC+0LLQvtGB0YLQuAoJICA8ZGl2IGNsYXNzPSJhY3Rpb25zIj4KCQk8ZGl2IGNsYXNzPSJidG4tZ3JvdXAgYnRuLWdyb3VwLWRldmlkZWQiIGRhdGEtdG9nZ2xlPSJidXR0b25zIj4KCQkgICA8YSBocmVmPSIvYWRtaW4vbmV3cy9jYXQiIGNsYXNzPSJidG4gYnRuLXRyYW5zcGFyZW50IGdyZXktc2Fsc2EgYnRuLWNpcmNsZSBidG4tc20gYWN0aXZlIiA+0JrQsNGC0LXQs9C+0YDQuNC4PC9hPgoJCSAgPC9kaXY+CgkJICA8ZGl2IGNsYXNzPSJidG4tZ3JvdXAgYnRuLWdyb3VwLWRldmlkZWQiIGRhdGEtdG9nZ2xlPSJidXR0b25zIj4KCQkJPGEgaHJlZj0iL2FkbWluL25ld3MiIGNsYXNzPSJidG4gYnRuLXRyYW5zcGFyZW50IGdyZXktc2Fsc2EgYnRuLWNpcmNsZSBidG4tc20gYWN0aXZlIiA+0J3QvtCy0L7RgdGC0Lg8L2E+CgkJICA8L2Rpdj4KCQk8L2Rpdj4KCQk8L2Rpdj4KCQk8ZGl2IGlkPSdtYWluX2Jsb2NrJz4KCQk8Zm9ybSBhY3Rpb249Ii9hZG1pbi9uZXdzL2VkaXQve2lkfSIgdXJsPSIvYWRtaW4vbmV3cyIgbWV0aG9kPSJQT1NUIiBjbGFzcz0iZm9ybV8wIj4KCQkJCTxkaXYgY2xhc3M9ImZvcm0taG9yaXpvbnRhbCI+CgkJCQkJPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CgkJCQkJCTxsYWJlbCBjbGFzcz0iY29sLXNtLTIgY29udHJvbC1sYWJlbCIgc3R5bGU9ImZvbnQtd2VpZ2h0OiAxMDA7Ij7QndCw0LfQstCw0L3QuNC1PC9sYWJlbD4KCQkJCQkJPGRpdiBjbGFzcz0iY29sLXNtLTQiPgoJCQkJCQkJPGlucHV0IG5hbWU9ImRhdGFbbmFtZV0iIGNsYXNzPSJmb3JtLWNvbnRyb2wiIHR5cGU9InRleHQiIHZhbHVlPSJ7bmFtZX0iPgoJCQkJCQk8L2Rpdj4KCQkJCQk8L2Rpdj4KCQkJCQk8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KCQkJCQkJPGxhYmVsIGNsYXNzPSJjb2wtc20tMiBjb250cm9sLWxhYmVsIiBzdHlsZT0iZm9udC13ZWlnaHQ6IDEwMDsiPtCa0LDRgtC10LPQvtGA0LjRjzwvbGFiZWw+CgkJCQkJCTxkaXYgY2xhc3M9ImNvbC1zbS00Ij4KCQkJCQkJCTxzZWxlY3QgbmFtZT0iZGF0YVtjYXRdIiBjbGFzcz0iZm9ybS1jb250cm9sIj4KCQkJCQkJCQkKCQkJCQkJCQl7Y2F0c30KCQkJCQkJCTwvc2VsZWN0PgoJCQkJCQk8L2Rpdj4KCQkJCQk8L2Rpdj4KCQkJCQk8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KCQkJCQkJPGxhYmVsIGNsYXNzPSJjb2wtc20tMiBjb250cm9sLWxhYmVsIiBzdHlsZT0iZm9udC13ZWlnaHQ6IDEwMDsiPtCQ0LTRgNC10YE8L2xhYmVsPgoJCQkJCQk8ZGl2IGNsYXNzPSJjb2wtc20tNCI+CgkJCQkJCQk8ZGl2IGNsYXNzPSJpbnB1dC1ncm91cCI+CgkJCQkJCQkJPHNwYW4gY2xhc3M9ImlucHV0LWdyb3VwLWFkZG9uIj4vbmV3cy88L3NwYW4+CgkJCQkJCQkJPGlucHV0IHR5cGU9InRleHQiIG5hbWU9ImRhdGFbdXJsXSIgdmFsdWU9Int1cmx9IiBjbGFzcz0iZm9ybS1jb250cm9sIj4KCQkJCQkJCTwvZGl2PgoJCQkJCQk8L2Rpdj4KCQkJCQk8L2Rpdj4KCQkJCQk8ZGl2IGNsYXNzPSJsb2FkIj4KCSAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZpbGVpbnB1dC1uZXcgdGh1bWJuYWlsIiBzdHlsZT0iIHdpZHRoOiAzMjJweDsgaGVpZ2h0OiAxMDZweDtvdmVyZmxvdzogaGlkZGVuOyI+CgkJCQkJPGltZyBhbHQ9IiIgIGlkPSJpbWFnZV9wcmV2aWV3IiBzcmM9IntpbWd9Ii8+CgkJCQkJPC9kaXY+CQoJCQkJCTxpbnB1dCByb3dzPSI2IiB0eXBlPSJmaWxlIiBpZD0iZmlsZXMiIG5hbWU9InVwbG9hZGZpbGUiIGNsYXNzPSJidG4gYnRuLWRlZmF1bHQiICBtdWx0aXBsZSAvPgoJCQkJCSA8L2Rpdj4KCQkJCQkgPGJyPiA8YnI+CgkJCQkJPGRpdiBjbGFzcz0icGFuZWwgcGFuZWwtZGVmYXVsdCI+CgkJICAgICAgICAgICAgIDxkaXYgY2xhc3M9InBhbmVsLWhlYWRpbmciPgoJCQkgICAgICAgICAgPGgzIGNsYXNzPSJwYW5lbC10aXRsZSIgc3R5bGU9ImZsb2F0OiBsZWZ0O21hcmdpbi10b3A6IDlweDsiPtCa0L7RgNC+0YLQutCw0Y8g0L3QvtCy0L7RgdGC0Yw8L2gzPgoJCQkgICAgICAgICA8ZGl2IHN0eWxlPSJjbGVhcjogYm90aDsiPjwvZGl2PgoJCSAgICAgICAgICAgICAgPC9kaXY+CgkJICAgICAgICAgICAgICAgIDx0ZXh0YXJlYSBzdHlsZT0id2lkdGg6MTAwJTttaW4taGVpZ2h0OjQ0MHB4OyIgaWQ9ImVkaXRvcjEiIG5hbWU9ImRhdGFbaW5mb10iPntpbmZvfTwvdGV4dGFyZWE+CgkgICAgICAgICAgICAgICAgICA8L2Rpdj4KCQkJCQk8ZGl2IGNsYXNzPSJwYW5lbCBwYW5lbC1kZWZhdWx0Ij4KCQkgICAgICAgICAgPGRpdiBjbGFzcz0icGFuZWwtaGVhZGluZyI+CgkJCSAgICAgICAgIDxoMyBjbGFzcz0icGFuZWwtdGl0bGUiIHN0eWxlPSJmbG9hdDogbGVmdDttYXJnaW4tdG9wOiA5cHg7Ij7Qn9C+0LvQvdCw0Y8g0L3QvtCy0L7RgdGC0Yw8L2gzPgoJCQkgICAgICAgICA8ZGl2IHN0eWxlPSJjbGVhcjogYm90aDsiPjwvZGl2PgoJCSAgICAgICAgICAgIDwvZGl2PgoJCQkJCQoJCSAgICAgICAgICAgICA8dGV4dGFyZWEgc3R5bGU9IndpZHRoOjEwMCU7bWluLWhlaWdodDo0NDBweDsiICBpZD0iZWRpdG9yMiIgbmFtZT0iZGF0YVtpbmZvMl0iPntpbmZvMn08L3RleHRhcmVhPgoJICAgICAgICAgICAgICA8L2Rpdj4KCQkJCQk8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KCQkJCQkJPGRpdiBjbGFzcz0iY29sLXNtLTkiPjwvZGl2PgoJCQkJCQk8ZGl2IGNsYXNzPSJjb2wtc20tMyI+CgkJCQkJCQk8YnV0dG9uIHR5cGU9InN1Ym1pdCIgY2xhc3M9ImJ0biBidG4tcHJpbWFyeSBidG4tYmxvY2siPtCh0L7RhdGA0LDQvdC40YLRjDwvYnV0dG9uPgoJCQkJCQk8L2Rpdj4KCQkJCQk8L2Rpdj4KCQkJCTwvZGl2PgoJCQk8L2Zvcm0+Cgk8c2NyaXB0PkNLRURJVE9SLnJlcGxhY2UoICdlZGl0b3IxJyApOzwvc2NyaXB0PgogICAgPHNjcmlwdD5DS0VESVRPUi5yZXBsYWNlKCAnZWRpdG9yMicgKTs8L3NjcmlwdD4KCTxzY3JpcHQ+CgkJCXVybF90b3VjaGVkID0gdHJ1ZTsKCQkJaWYoJCgnaW5wdXRbbmFtZT0iZGF0YVt1cmxdIl0nKS52YWwoKSA9PSBnZW5lcmF0ZV91cmwoKSB8fCAkKCdpbnB1dFtuYW1lPSJkYXRhW3VybF0iXScpLnZhbCgpID09ICcnKSB1cmxfdG91Y2hlZCA9IGZhbHNlOwoJCQkkKCdpbnB1dFtuYW1lPSJkYXRhW3VybF0iXScpLmNoYW5nZShmdW5jdGlvbigpIHsgdXJsX3RvdWNoZWQgPSB0cnVlOyB9KTsKCQkJZnVuY3Rpb24gZ2VuZXJhdGVfdXJsKCl7CgkJCQl1cmwgPSAkKCdpbnB1dFtuYW1lPSJkYXRhW25hbWVdIl0nKS52YWwoKTsKCQkJCXVybCA9IHVybC5yZXBsYWNlKC9bXHNdKy9naSwgJy0nKTsKCQkJCXVybCA9IHRyYW5zbGl0KHVybCk7CgkJCQl1cmwgPSB1cmwucmVwbGFjZSgvW14wLTlhLXpfXC1dKy9naSwgJycpLnRvTG93ZXJDYXNlKCk7CgkJCQlyZXR1cm4gdXJsOwoJCQl9CgkJCSQoZnVuY3Rpb24oKXsKCQkJCSQoJ2lucHV0W25hbWU9ImRhdGFbbmFtZV0iXScpLmtleXVwKGZ1bmN0aW9uKCkgewoJCQkJCWlmKCF1cmxfdG91Y2hlZCkgJCgnaW5wdXRbbmFtZT0iZGF0YVt1cmxdIl0nKS52YWwoZ2VuZXJhdGVfdXJsKCkpOwoJCQkJfSk7CgkJCX0pOwoJPC9zY3JpcHQ+Cgk8c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+CgkkKCcjZmlsZXMnKS5jaGFuZ2UoZnVuY3Rpb24oKSB7CgkgIHZhciBpbnB1dCA9ICQodGhpcylbMF07CgkgIGlmICggaW5wdXQuZmlsZXMgJiYgaW5wdXQuZmlsZXNbMF0gKSB7CgkJaWYgKCBpbnB1dC5maWxlc1swXS50eXBlLm1hdGNoKCdpbWFnZS4qJykgKSB7CgkJICB2YXIgcmVhZGVyID0gbmV3IEZpbGVSZWFkZXIoKTsKCQkgIHJlYWRlci5vbmxvYWQgPSBmdW5jdGlvbihlKSB7ICQoJyNpbWFnZV9wcmV2aWV3JykuYXR0cignc3JjJywgZS50YXJnZXQucmVzdWx0KTsgfQoJCSAgcmVhZGVyLnJlYWRBc0RhdGFVUkwoaW5wdXQuZmlsZXNbMF0pOwoJCX0KCSAgfQoJfSk7Cgk8L3NjcmlwdD4KPC9kaXY+'),
(178, 'admin-news-get', 'PHRib2R5Pgo8dHI+CiAgIDx0ZD57aWR9PC90ZD4gCiAgIDx0ZD4gPGEgaHJlZj0iL2Z1bGxuZXdzL3tpZH0iPntuYW1lfTwvYT48L3RkPiAgCiAgIDx0ZD48YSBjbGFzcz0iYnRuIGJ0bi1pY29uLW9ubHkgZ3JlZW4iIGhyZWY9Ii9hZG1pbi9uZXdzL2VkaXQve2lkfSI+PHNwYW4gY2xhc3M9ImZhIGZhLWVkaXQiPjwvc3Bhbj48L2E+PC90ZD4KICAgPHRkPjxmb3JtIGFjdGlvbj0iL2FkbWluL25ld3MvZGVsbC97aWR9IiAgbWV0aG9kPSJQT1NUIiBjbGFzcz0iZm9ybV9uZXdzX2RlbCI+PGJ1dHRvbiBjbGFzcz0iYnRuIGJ0bi14cyBidG4taWNvbi1vbmx5IHJlZCIgdHlwZT0ic3VibWl0Ij48c3BhbiBjbGFzcz0iZmEgZmEtdHJhc2gtbyI+PC9zcGFuPjwvYnV0dG9uPjwvZm9ybT48L3RkPgo8L3RyPgo8L3Rib2R5Pg=='),
(179, 'admin-templates', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+INCo0LDQsdC70L7QvdGLPC9kaXY+CjxkaXYgaWQ9Im1haW5fYmxvY2siPgo8ZGl2IGNsYXNzPSJibG9ja19ib3JkZXIgZnVsbF9ibG9jayBuby10b3AtcmFkaXVzIj48ZGl2IGNsYXNzPSJibG9ja19jb250ZW50Ij4KPGRpdiBjbGFzcz0icGFuZWwgcGFuZWwtZGVmYXVsdCIgc3R5bGU9ImJhY2tncm91bmQtY29sb3I6ICNGNUY1RjU7Ij4KCTxkaXYgY2xhc3M9InBhbmVsLWJvZHkiPgoJCTxkaXYgY2xhc3M9InJvdyI+CgkJCTxkaXYgY2xhc3M9ImNvbC1sZy02Ij4KCQkJCTxmb3JtIGFjdGlvbj0iL2FkbWluL3RlbXBsYXRlcyIgbWV0aG9kPSJQT1NUIiBjbGFzcz0ibG9hZF90cGwiPgoJCQkJCTxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIj4KCQkJCQkJPHNwYW4gY2xhc3M9ImlucHV0LWdyb3VwLWFkZG9uIj7QqNCw0LHQu9C+0L08L3NwYW4+CgkJCQkJCTxzZWxlY3QgbmFtZT0iZGF0YVtuYW1lXSIgY2xhc3M9ImZvcm0tY29udHJvbCI+e3RwbH08L3NlbGVjdD4KCQkJCQkJPHNwYW4gY2xhc3M9ImlucHV0LWdyb3VwLWJ0biI+CgkJCQkJCQk8YnV0dG9uIGNsYXNzPSJidG4gYnRuLWRlZmF1bHQiIHR5cGU9InN1Ym1pdCI+0JfQsNCz0YDRg9C30LjRgtGMPC9idXR0b24+CgkJCQkJCTwvc3Bhbj4KCQkJCQk8L2Rpdj4KCQkJCTwvZm9ybT4KCQkJPC9kaXY+CgkJCVthZG1pbl0KCQkJPGRpdiBjbGFzcz0iY29sLWxnLTYiPgoJCQkJPGZvcm0gYWN0aW9uPSIvYWRtaW4vdGVtcGxhdGVzIiB1cmw9Ii9hZG1pbi90ZW1wbGF0ZXMiIG1ldGhvZD0iUE9TVCIgY2xhc3M9ImZvcm1fMCI+CgkJCQkJPGRpdiBjbGFzcz0iaW5wdXQtZ3JvdXAiPgoJCQkJCQk8c3BhbiBjbGFzcz0iaW5wdXQtZ3JvdXAtYWRkb24iPtCd0LDQt9Cy0LDQvdC40LU8L3NwYW4+CgkJCQkJCTxpbnB1dCBuYW1lPSJkYXRhW3RwbF9uYW1lXSIgY2xhc3M9ImZvcm0tY29udHJvbCIgdHlwZT0idGV4dCI+CgkJCQkJCTxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1idG4iPgoJCQkJCQkJPGJ1dHRvbiBjbGFzcz0iYnRuIGJ0bi1kZWZhdWx0IiB0eXBlPSJzdWJtaXQiPtCh0L7Qt9C00LDRgtGMPC9idXR0b24+CgkJCQkJCTwvc3Bhbj4KCQkJCQk8L2Rpdj4KCQkJCQk8aW5wdXQgdHlwZT0iaGlkZGVuIiBuYW1lPSJkYXRhW3RwbF9uZXddIiB2YWx1ZT0iMSIgPgoJCQkJPC9mb3JtPgoJCQk8L2Rpdj4KCQkJWy9hZG1pbl0KCQkJPGRpdiBjbGFzcz0iY29sLWxnLTYiPjwvZGl2PgoJCTwvZGl2PgoJPC9kaXY+CjwvZGl2Pgo8Zm9ybSBhY3Rpb249Ii9hZG1pbi90ZW1wbGF0ZXMiIG1ldGhvZD0iUE9TVCIgY2xhc3M9ImZvcm1fNyIgc3R5bGU9ImRpc3BsYXk6IG5vbmU7IiBpZD0idHBsX2VkaXRvcnMiPgoJPGRpdiBjbGFzcz0icGFuZWwgcGFuZWwtZGVmYXVsdCI+CgkJPGRpdiBjbGFzcz0icGFuZWwtaGVhZGluZyI+CgkJCTxoMyBjbGFzcz0icGFuZWwtdGl0bGUiIHN0eWxlPSJmbG9hdDogbGVmdDttYXJnaW4tdG9wOiA5cHg7Ij7QoNC10LTQsNC60YLQuNGA0L7QstCw0L3QuNC1PC9oMz4KCQkJPGJ1dHRvbiBjbGFzcz0iYnRuIGJ0bi1kZWZhdWx0IiB0eXBlPSJzdWJtaXQiIHN0eWxlPSJmbG9hdDogcmlnaHQ7Ij7QodC+0YXRgNCw0L3QuNGC0Yw8L2J1dHRvbj4KCQkJPGRpdiBzdHlsZT0iY2xlYXI6IGJvdGg7Ij48L2Rpdj4KCQk8L2Rpdj4KCQk8dGV4dGFyZWEgc3R5bGU9IndpZHRoOjEwMCU7bWluLWhlaWdodDo0NDBweDsiIG5hbWU9ImRhdGFbZGF0YV0iICBpZD0idHBsX3RleHQiIHdyYXA9Im9mZiIgPjwvdGV4dGFyZWE+CgkJPGlucHV0IHR5cGU9ImhpZGRlbiIgbmFtZT0iZGF0YVt0cGxdIiB2YWx1ZT0iIiBpZD0idHBsX2lkIj4KCQk8dWwgY2xhc3M9Imxpc3QtZ3JvdXAiIGlkPSJ0cGxfaW5mbyI+PC91bD4KCTwvZGl2Pgo8L2Zvcm0+CjwvZGl2Pgo8L2Rpdj4KICAgIDxsaW5rIHJlbD0ic3R5bGVzaGVldCIgaHJlZj0iL2pzL2NvZGVtaXJyb3IvY29kZW1pcnJvci5jc3MiPgoJPGxpbmsgcmVsPSJzdHlsZXNoZWV0IiBocmVmPSIvanMvY29kZW1pcnJvci9hZGRvbi9oaW50L3Nob3ctaGludC5jc3MiPgoJPHNjcmlwdCBzcmM9Ii9qcy9jb2RlbWlycm9yL2NvZGVtaXJyb3IuanMiPjwvc2NyaXB0PgoJPHNjcmlwdCBzcmM9Ii9qcy9jb2RlbWlycm9yL2FkZG9uL2hpbnQvc2hvdy1oaW50LmpzIj48L3NjcmlwdD4KCTxzY3JpcHQgc3JjPSIvanMvY29kZW1pcnJvci9hZGRvbi9oaW50L3htbC1oaW50LmpzIj48L3NjcmlwdD4KCTxzY3JpcHQgc3JjPSIvanMvY29kZW1pcnJvci9hZGRvbi9oaW50L2h0bWwtaGludC5qcyI+PC9zY3JpcHQ+Cgk8c2NyaXB0IHNyYz0iL2pzL2NvZGVtaXJyb3IvbW9kZS94bWwveG1sLmpzIj48L3NjcmlwdD4KCTxzY3JpcHQgc3JjPSIvanMvY29kZW1pcnJvci9tb2RlL2phdmFzY3JpcHQvamF2YXNjcmlwdC5qcyI+PC9zY3JpcHQ+Cgk8c2NyaXB0IHNyYz0iL2pzL2NvZGVtaXJyb3IvbW9kZS9jc3MvY3NzLmpzIj48L3NjcmlwdD4KCTxzY3JpcHQgc3JjPSIvanMvY29kZW1pcnJvci9tb2RlL2h0bWxtaXhlZC9odG1sbWl4ZWQuanMiPjwvc2NyaXB0Pgo8L2Rpdj4='),
(180, 'admin-money', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+0JjRgdGC0L7RgNC40Y8g0L/Qu9Cw0YLQtdC20LXQuTwvZGl2PgogICA8ZGl2IGlkPSJtYWluX2Jsb2NrIj5bY2hhcnRdCgoJCTxzY3JpcHQgdHlwZT0idGV4dC9qYXZhc2NyaXB0Ij4KCQkJCSQoZnVuY3Rpb24oKSB7CgkJCQkJdmFyIG9ubGluZSA9IHtjaGFydH07CgkJCQkJc2V0VGltZW91dChmdW5jdGlvbiAoKSB7CgkJCQkJCUhpZ2hjaGFydHMuc2V0T3B0aW9ucyh7CgkJCQkJCQlsYW5nOiB7CgkJCQkJCQkJcmFuZ2VTZWxlY3Rvclpvb206ICfQn9C10YDQuNC+0LQnLAoJCQkJCQkJCXJhbmdlU2VsZWN0b3JGcm9tOiAn0KEnLAoJCQkJCQkJCXJhbmdlU2VsZWN0b3JUbzogJ9Cf0L4nLAoJCQkJCQkJCXByaW50Q2hhcnQ6ICfQn9C10YfQsNGC0Ywg0LTQuNCw0LPRgNCw0LzQvNGLJywKCQkJCQkJCQlkb3dubG9hZFBORzogJ9Ch0LrQsNGH0LDRgtGMIFBORyDQuNC30L7QsdGA0LDQttC10L3QuNC1JywKCQkJCQkJCQlkb3dubG9hZEpQRUc6ICfQodC60LDRh9Cw0YLRjCBKUEVHINC40LfQvtCx0YDQsNC20LXQvdC40LUnLAoJCQkJCQkJCWRvd25sb2FkUERGOiAn0KHQutCw0YfQsNGC0YwgUERGINC00L7QutGD0LzQtdC90YInLAoJCQkJCQkJCWRvd25sb2FkU1ZHOiAn0KHQutCw0YfQsNGC0YwgU1ZHINC40LfQvtCx0YDQsNC20LXQvdC40LUnLAoJCQkJCQkJCWNvbnRleHRCdXR0b25UaXRsZTogJ9Ca0L7QvdGC0LXQutGB0YLQvdC+0LUg0LzQtdC90Y4g0LPRgNCw0YTQuNC60LAnLAoJCQkJCQkJCW1vbnRoczogWwoJCQkJCQkJCQkn0K/QvdCy0LDRgNGMJywKCQkJCQkJCQkJJ9Ck0LXQstGA0LDQu9GMJywKCQkJCQkJCQkJJ9Cc0LDRgNGCJywKCQkJCQkJCQkJJ9CQ0L/RgNC10LvRjCcsCgkJCQkJCQkJCSfQnNCw0LknLAoJCQkJCQkJCQkn0JjRjtC90YwnLAoJCQkJCQkJCQkn0JjRjtC70YwnLAoJCQkJCQkJCQkn0JDQstCz0YPRgdGCJywKCQkJCQkJCQkJJ9Ch0LXQvdGC0Y/QsdGA0YwnLAoJCQkJCQkJCQkn0J7QutGC0Y/QsdGA0YwnLAoJCQkJCQkJCQkn0J3QvtGP0LHRgNGMJywKCQkJCQkJCQkJJ9CU0LXQutCw0LHRgNGMJwoJCQkJCQkJCV0sCgkJCQkJCQkJc2hvcnRNb250aHM6IFsKCQkJCQkJCQkJJ9Cv0L3QsicsCgkJCQkJCQkJCSfQpNC10LInLAoJCQkJCQkJCQkn0JzQsNGA0YInLAoJCQkJCQkJCQkn0JDQv9GAJywKCQkJCQkJCQkJJ9Cc0LDQuScsCgkJCQkJCQkJCSfQmNGO0L3RjCcsCgkJCQkJCQkJCSfQmNGO0LvRjCcsCgkJCQkJCQkJCSfQkNCy0LMnLAoJCQkJCQkJCQkn0KHQtdC90YInLAoJCQkJCQkJCQkn0J7QutGCJywKCQkJCQkJCQkJJ9Cd0L7RjycsCgkJCQkJCQkJCSfQlNC10LonCgkJCQkJCQkJXQoJCQkJCQkJfQoJCQkJCQl9KTsKCQkJCQkJJCgnI2NvbnRhaW5lcicpLmhpZ2hjaGFydHMoJ1N0b2NrQ2hhcnQnLCB7CgkJCQkJCQljcmVkaXRzOntlbmFibGVkOiBmYWxzZX0sCgkJCQkJCQl4QXhpczogewoJCQkJCQkJCXR5cGU6ICdkYXRldGltZScsCgkJCQkJCQkJZGF0ZVRpbWVMYWJlbEZvcm1hdHM6ewoJCQkJCQkJCQlzZWNvbmQ6ICclSDolTTolUycsCgkJCQkJCQkJCW1pbnV0ZTogJyVIOiVNJywKCQkJCQkJCQkJaG91cjogJyVIOiVNJywKCQkJCQkJCQkJZGF5OiAnJWUuJW0nLAoJCQkJCQkJCQl3ZWVrOiAnJywKCQkJCQkJCQkJbW9udGg6ICclbScsCgkJCQkJCQkJCXllYXI6ICclWScKCQkJCQkJCQl9CgkJCQkJCQl9LAoJCQkJCQkJeUF4aXM6IHsKCQkJCQkJCQlhbGxvd0RlY2ltYWxzOiBmYWxzZSwKCQkJCQkJCQltaW46IDAKCQkJCQkJCX0sCgkJCQkJCQlzY3JvbGxiYXI6IHsKCQkJCQkJCQliYXJCYWNrZ3JvdW5kQ29sb3I6ICdncmF5JywKCQkJCQkJCQliYXJCb3JkZXJSYWRpdXM6IDcsCgkJCQkJCQkJYmFyQm9yZGVyV2lkdGg6IDAsCgkJCQkJCQkJYnV0dG9uQmFja2dyb3VuZENvbG9yOiAnZ3JheScsCgkJCQkJCQkJYnV0dG9uQm9yZGVyV2lkdGg6IDAsCgkJCQkJCQkJYnV0dG9uQm9yZGVyUmFkaXVzOiA3LAoJCQkJCQkJCXRyYWNrQmFja2dyb3VuZENvbG9yOiAnbm9uZScsCgkJCQkJCQkJdHJhY2tCb3JkZXJXaWR0aDogMSwKCQkJCQkJCQl0cmFja0JvcmRlclJhZGl1czogOCwKCQkJCQkJCQl0cmFja0JvcmRlckNvbG9yOiAnI0NDQycKCQkJCQkJCX0sCgkJCQkJCQlyYW5nZVNlbGVjdG9yOiB7CgkJCQkJCQkJc2VsZWN0ZWQ6IDAsCgkJCQkJCQkJYnV0dG9uVGhlbWU6IHsKCQkJCQkJCQkJd2lkdGg6IDcwLAoJCQkJCQkJCQlzdGF0ZXM6IHsKCQkJCQkJCQkJCXNlbGVjdDogewoJCQkJCQkJCQkJCXN0eWxlOiB7CgkJCQkJCQkJCQkJCWNvbG9yOiAnYmxhY2snLAoJCQkJCQkJCQkJCQlmb250V2VpZ2h0OiAnbm9ybWFsJwoJCQkJCQkJCQkJCX0KCQkJCQkJCQkJCX0KCQkJCQkJCQkJfQoJCQkJCQkJCX0sCgkJCQkJCQkJYnV0dG9uczogW3sKCQkJCQkJCQkJdHlwZTogJ2RheScsCgkJCQkJCQkJCWNvdW50OiAxLAoJCQkJCQkJCQl0ZXh0OiAn0JTQldCd0KwnCgkJCQkJCQkJfSwgewoJCQkJCQkJCQl0eXBlOiAnd2VlaycsCgkJCQkJCQkJCWNvdW50OiAxLAoJCQkJCQkJCQl0ZXh0OiAn0J3QldCU0JXQm9CvJwoJCQkJCQkJCX0sIHsKCQkJCQkJCQkJdHlwZTogJ21vbnRoJywKCQkJCQkJCQkJY291bnQ6IDEsCgkJCQkJCQkJCXRleHQ6ICfQnNCV0KHQr9CmJwoJCQkJCQkJCX1dCgkJCQkJCQl9LAoJCQkJCQkJdG9vbHRpcDogewoJCQkJCQkJCWZvcm1hdHRlcjogZnVuY3Rpb24oKSB7CgkJCQkJCQkJCXZhciBzID0gJzxiPtCU0LDRgtCwOiAnKyBIaWdoY2hhcnRzLmRhdGVGb3JtYXQoJyVlLiVtLiVZJywgdGhpcy54KSArJzwvYj4nOwoJCQkJCQkJCQkkLmVhY2godGhpcy5wb2ludHMsIGZ1bmN0aW9uKGksIHBvaW50KSB7cyArPSAnPGJyLz7Ql9Cw0YDQsNCx0L7RgtCw0L3QvjonK3BvaW50LnkrJyDQoNCj0JEnO30pOwoJCQkJCQkJCQlyZXR1cm4gczsKCQkJCQkJCQl9CgkJCQkJCQl9LAoJCQkJCQkJc2VyaWVzIDogW3sKCQkJCQkJCQluYW1lOiAn0JPRgNCw0YTQuNC6INGC0YDQsNC90LfQsNC60YbQuNC5JywKCQkJCQkJCQlkYXRhIDogb25saW5lLAoJCQkJCQkJCXR5cGU6ICdjb2x1bW4nLAoJCQkJCQkJCWRhdGFHcm91cGluZzogewoJCQkJCQkJCQl1bml0czogW1sKCQkJCQkJCQkJCSd3ZWVrJyxbMV0KCQkJCQkJCQkJXSwgWwoJCQkJCQkJCQkJJ21vbnRoJyxbMSwgMiwgMywgNCwgNl0KCQkJCQkJCQkJXV0KCQkJCQkJCQl9CgkJCQkJCQl9XQoJCQkJCQl9KTsKCQkJCQl9LCAxMDApOwoJCQkJfSk7CgkJCTwvc2NyaXB0PgoJCTxkaXYgaWQ9ImNvbnRhaW5lciIgc3R5bGU9ImhlaWdodDogMzAwcHg7IHdpZHRoOiAxMDAlIj48L2Rpdj4KCQk8ZGl2IGNsYXNzPSJjbHIiPjwvZGl2PgoKWy9jaGFydF0KPGRpdiBjbGFzcz0ibGhfdGFibGUgbm9fdG9wIj48ZGl2IGNsYXNzPSJwYW5lbCBwYW5lbC1kZWZhdWx0IiBzdHlsZT0iICAgIGJvcmRlcjogMHB4IHNvbGlkIHRyYW5zcGFyZW50OyI+Cgk8dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWhvdmVyIj4KCQk8dGhlYWQ+CgkJCTx0cj4KCQkJCTx0aCB3aWR0aD0iNjAiPklEPC90aD4KCQkJCTx0aD7QmtC+0LzQvNC10L3RgtCw0YDQuNC5PC90aD4KCQkJCTx0aD7QktGA0LXQvNGPPC90aD4KCQkJCTx0aD7QodGD0LzQvNCwPC90aD4KCQkJPC90cj4KCQk8L3RoZWFkPgoJCTx0Ym9keT57ZGF0YX08L3Rib2R5PgoJPC90YWJsZT4KPC9kaXY+PC9kaXY+PC9kaXY+CntwYWdpbmF0aW9ufQ=='),
(181, 'admin-money-get', 'PHRyPgoJPHRkPntpZH08L3RkPgoJPHRkPntjb219PC90ZD4KCTx0ZD57dGltZX08L3RkPgoJPHRkPjxzcGFuIGNsYXNzPSJsYWJlbCBsYWJlbC1zdWNjZXNzIj4rIHtzdW19INGA0YPQsTwvc3Bhbj48L3RkPgo8L3RyPg=='),
(182, 'admin-bans', 'PGRpdiBpZD0icmlnaHRfYmxvY2tfdGl0bGUyIiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyI+e25hbWV9PC9kaXY+CiA8ZGl2IGlkPSJtYWluX2Jsb2NrIj4KICA8dGFibGUgY2xhc3M9J3RhYmxlIHRhYmxlLWhvdmVyJz4KCTx0aGVhZD4KCSAgPHRyPgoJCTx0aCBzdHlsZT0nIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7JyB3aWR0aD0iMSI+aWQ8L3RoPgoJCTx0aCBzdHlsZT0nIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7J3dpZHRoPSIxNSUiPtCb0L7Qs9C40L08L3RoPgoJCTx0aCBzdHlsZT0nIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7J3dpZHRoPSIyMCUiPtCa0YLQviDQt9Cw0LHQsNC90LjQuzwvdGg+CgkJPHRoIHN0eWxlPScgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTsnd2lkdGg9IjQwJSI+0J/RgNC40YfQuNC90LAg0LHQsNC90LA8L3RoPgoJCTx0aCBzdHlsZT0nIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7J3dpZHRoPSI0MCUiPtCU0LDRgtCwINGA0LDQt9Cx0LDQvdCwPC90aD4KCQk8dGggc3R5bGU9J2Zsb2F0OnJpZ2h0OyB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlOyd3aWR0aD0iMTAlIj48L3RoPgoJIDwvdHI+CiAgIDwvdGhlYWQ+CgkJe21vbn0KICA8L3RhYmxlPgo8L2Rpdj4Ke3BhZ2luYXRpb259'),
(183, 'admin-bans-get', 'PHRib2R5PgogICA8dHI+CiAgICAgPHRkIHN0eWxlPSJmb250LXNpemU6IDEzcHg7Ij57YmlkfTwvdGQ+CiAgICAgPHRkIHN0eWxlPSJmb250LXNpemU6IDEzcHg7Ij57Yk5pY2t9PC90ZD4KICAgICA8dGQgc3R5bGU9ImZvbnQtc2l6ZTogMTNweDsiPntiQWRtaW59PC90ZD4KCSA8dGQgc3R5bGU9ImZvbnQtc2l6ZTogMTNweDsiPntiUmVhc29vbn08L3RkPgogICAgIDx0ZCBzdHlsZT0iZm9udC1zaXplOiAxM3B4OyI+e2JSYXpiYW59PC90ZD4KCSA8dGQ+PGZvcm0gYWN0aW9uPSIvYWRtaW4vYmFubGlzdC9kZWxsL3tiaWR9IiAgbWV0aG9kPSJQT1NUIiBjbGFzcz0iZm9ybV9iYW5zX2RlbCI+PGJ1dHRvbiBjbGFzcz0iYnRuIGJ0bi14cyBidG4taWNvbi1vbmx5IHJlZCIgdHlwZT0ic3VibWl0Ij48c3BhbiBjbGFzcz0iZmEgZmEtdHJhc2gtbyI+PC9zcGFuPjwvYnV0dG9uPjwvZm9ybT48L3RkPgogIDwvdHI+CjwvdGJvZHk+');
INSERT INTO `tpl` (`id`, `name`, `tpl`) VALUES
(184, 'admin-powers', 'PGZvcm0gYWN0aW9uPSIvYWRtaW4vcG93ZXJzIiB1cmw9Ii9hZG1pbi9wb3dlcnMiIG1ldGhvZD0iUE9TVCIgY2xhc3M9ImZvcm1fNyIgc3R5bGU9InBhZGRpbmc6MHB4OyBtYXJnaW46MHB4OyI+CiAgICAgICAgPGRpdiBjbGFzcz0icm93Ij4KICAgICA8ZGl2IGNsYXNzPSJmb3JtLWhvcml6b250YWwiPgoJIDxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgogICAgICAgICAgPGxhYmVsIGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiBjb250cm9sLWxhYmVsIj7QmtCw0LrQvtC5INCz0YDRg9C/0L/QtSDRgNCw0LfRgNC10YjQtdC90L4g0YPQv9GA0LDQstC70Y/RgtGMINC40LPRgNC+0LrQsNC80LggPC9sYWJlbD4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYiPgogICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIiBzdHlsZT0ibWFyZ2luLWJvdHRvbTogN3B4OyI+CgkJCQk8c3BhbiBjbGFzcz0iaW5wdXQtZ3JvdXAtYWRkb24iPtCT0YDRg9C/0L/QsDwvc3Bhbj4KCQkJCTxzZWxlY3QgY2xhc3M9ImZvcm0tY29udHJvbCIgbmFtZT0iZGF0YVt1c2Vyc10iPnt1c2Vyc308L3NlbGVjdD4KCQkJICA8L2Rpdj4KICAgICAgICAgICAgIDwvZGl2PgkJCiAgICAgICAgIDwvZGl2PgkgCgkJIDxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgogICAgICAgICAgPGxhYmVsIGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiBjb250cm9sLWxhYmVsIj7QmtCw0LrQvtC5INCz0YDRg9C/0L/QtSDRgNCw0LfRgNC10YjQtdC90L4g0YPQv9GA0LDQstC70Y/RgtGMINGB0YLRgNCw0L3QuNGG0LDQvNC4PC9sYWJlbD4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYiPiAgICAKCQkJICAgPGRpdiBjbGFzcz0iaW5wdXQtZ3JvdXAiIHN0eWxlPSJtYXJnaW4tYm90dG9tOiA3cHg7Ij4KCQkJCTxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1hZGRvbiI+0JPRgNGD0L/Qv9CwPC9zcGFuPgoJCQkJPHNlbGVjdCBjbGFzcz0iZm9ybS1jb250cm9sIiBuYW1lPSJkYXRhW3BhZ2VzXSI+e3BhZ2VzfTwvc2VsZWN0PgoJCQkgIDwvZGl2PgogICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgIDwvZGl2PgoJCSA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgICAgICAgIDxsYWJlbCBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYgY29udHJvbC1sYWJlbCI+0JrQsNC60L7QuSDQs9GA0YPQv9C/0LUg0YDQsNC30YDQtdGI0LXQvdC+INGD0L/RgNCw0LLQu9GP0YLRjCDQvdC+0LLQvtGB0YLRj9C80Lg8L2xhYmVsPgogICAgICAgICAgICA8ZGl2IGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiI+CgkJCSAgIDxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIiBzdHlsZT0ibWFyZ2luLWJvdHRvbTogN3B4OyI+CgkJCQk8c3BhbiBjbGFzcz0iaW5wdXQtZ3JvdXAtYWRkb24iPtCT0YDRg9C/0L/QsDwvc3Bhbj4KCQkJCTxzZWxlY3QgY2xhc3M9ImZvcm0tY29udHJvbCIgbmFtZT0iZGF0YVtuZXdzXSI+e25ld3N9PC9zZWxlY3Q+CgkJCSAgPC9kaXY+CiAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgPC9kaXY+CgkJIDxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgogICAgICAgICAgPGxhYmVsIGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiBjb250cm9sLWxhYmVsIj7QmtCw0LrQvtC5INCz0YDRg9C/0L/QtSDRgNCw0LfRgNC10YjQtdC90L4g0YPQv9GA0LDQstC70Y/RgtGMINGA0LXQtNCw0LrRgtC+0YDQvtC8INGI0LDQsdC70L7QvdCwPC9sYWJlbD4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYiPgoJCQkgICAgPGRpdiBjbGFzcz0iaW5wdXQtZ3JvdXAiIHN0eWxlPSJtYXJnaW4tYm90dG9tOiA3cHg7Ij4KCQkJCTxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1hZGRvbiI+0JPRgNGD0L/Qv9CwPC9zcGFuPgoJCQkJPHNlbGVjdCBjbGFzcz0iZm9ybS1jb250cm9sIiBuYW1lPSJkYXRhW3RwbF0iPnt0cGx9PC9zZWxlY3Q+CgkJCSAgPC9kaXY+CiAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgPC9kaXY+CgkJIDxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgogICAgICAgICAgPGxhYmVsIGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiBjb250cm9sLWxhYmVsIj7QmtCw0LrQvtC5INCz0YDRg9C/0L/QtSDRgNCw0LfRgNC10YjQtdC90L4g0YPQv9GA0LDQstC70Y/RgtGMINC40YHRgtC+0YDQuNC10Lkg0L/Qu9Cw0YLQtdC20LXQuTwvbGFiZWw+CiAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KCQkJPGRpdiBjbGFzcz0iaW5wdXQtZ3JvdXAiIHN0eWxlPSJtYXJnaW4tYm90dG9tOiA3cHg7Ij4KCQkJCTxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1hZGRvbiI+0JPRgNGD0L/Qv9CwPC9zcGFuPgoJCQkJPHNlbGVjdCBjbGFzcz0iZm9ybS1jb250cm9sIiBuYW1lPSJkYXRhW2xvZ3NfcHV5XSI+e2xvZ3NfcHV5fTwvc2VsZWN0PgoJCQkgIDwvZGl2PgogICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgIDwvZGl2PgoJCSA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgICAgICAgIDxsYWJlbCBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYgY29udHJvbC1sYWJlbCI+0JrQsNC60L7QuSDQs9GA0YPQv9C/0LUg0YDQsNC30YDQtdGI0LXQvdC+INGD0L/RgNCw0LLQu9GP0YLRjCDRgNCw0LfQsdCw0L3QvtC8PC9sYWJlbD4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYiPgoJCQk8ZGl2IGNsYXNzPSJpbnB1dC1ncm91cCIgc3R5bGU9Im1hcmdpbi1ib3R0b206IDdweDsiPgoJCQkJPHNwYW4gY2xhc3M9ImlucHV0LWdyb3VwLWFkZG9uIj7Qk9GA0YPQv9C/0LA8L3NwYW4+CgkJCQk8c2VsZWN0IGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbYmFuc10iPntiYW5zfTwvc2VsZWN0PgoJCQkgIDwvZGl2PgogICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgIDwvZGl2PgogICAgICA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij48L2Rpdj4KICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgPGJ1dHRvbiB0eXBlPSJzdWJtaXQiIGNsYXNzPSJidG4gYnRuLXByaW1hcnkgYnRuLWJsb2NrIj7QodC+0YXRgNCw0L3QuNGC0Yw8L2J1dHRvbj4KICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgPC9kaXY+CSAgCgk8L2Rpdj4KICA8L2Rpdj4KPC9mb3JtPg=='),
(185, 'admin-settings', 'PGRpdiBjbGFzcz0icGFkZGluZy0xNSI+CiAgICA8Zm9ybSBhY3Rpb249Ii9hZG1pbi9zZXR0aW5ncyIgdXJsPSIvYWRtaW4vc2V0dGluZ3MiIG1ldGhvZD0iUE9TVCIgY2xhc3M9ImZvcm1fNyIgc3R5bGU9InBhZGRpbmc6MHB4OyBtYXJnaW46MHB4OyI+CiAgICAgICAgPGRpdiBjbGFzcz0icm93Ij4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTMgY29sLWxnLTMiPgogICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0icG9ydGxldCBsaWdodCBwcm9maWxlLXNpZGViYXItcG9ydGxldCIgc3R5bGU9InBhZGRpbmc6IDEwcHggMCAwIDAgIWltcG9ydGFudCI+CiAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0icHJvZmlsZS11c2VybWVudSIgc3R5bGU9Im1hcmdpbi10b3A6IDBweDsiPgogICAgICAgICAgICAgICAgICAgICAgICA8dWwgY2xhc3M9Im5hdiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8bGk+PGEgaHJlZj0iI2Jhc2UiIGNsYXNzPSJhY3RpdmUiIHJvbGU9InRhYiIgZGF0YS10b2dnbGU9InRhYiI+0J7RgdC90L7QstC90L7QtTwvYT48L2xpPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPGxpPjxhIGhyZWY9IiNtYWlsIiByb2xlPSJ0YWIiIGRhdGEtdG9nZ2xlPSJ0YWIiPtCf0L7Rh9GC0LA8L2E+PC9saT4KCQkJCQkJCTxsaT48YSBocmVmPSIjbW9uIiByb2xlPSJ0YWIiIGRhdGEtdG9nZ2xlPSJ0YWIiPtCc0L7QvdC40YLQvtGA0LjQvdCzPC9hPjwvbGk+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8bGk+PGEgaHJlZj0iI3BheW1lbnQiIHJvbGU9InRhYiIgZGF0YS10b2dnbGU9InRhYiI+0JzQtdGA0YfQsNC90YLRizwvYT48L2xpPgogICAgICAgICAgICAgICAgICAgICAgICA8L3VsPgogICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICA8ZGl2IGNsYXNzPSJjb2wteHMtOSBjb2wtbGctOSI+CiAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJ0YWItY29udGVudCBibG9ja19mdWxsIiBzdHlsZT0iYm9yZGVyLXRvcDowcHg7IHBhZGRpbmc6MTVweDtib3JkZXItcmFkaXVzOiAwcHg7Ij4KICAgICAgICAgICAgICAgICAgICA8ZGl2IHJvbGU9InRhYnBhbmVsIiBjbGFzcz0idGFiLXBhbmUgYWN0aXZlIiBpZD0iYmFzZSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZvcm0taG9yaXpvbnRhbCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8bGFiZWwgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02IGNvbnRyb2wtbGFiZWwiPtCU0L7QvNC10L08L2xhYmVsPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbZG9tYWluXSIgdmFsdWU9Intkb21haW59Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGxhYmVsIGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiBjb250cm9sLWxhYmVsIj7QndCw0LfQstCw0L3QuNC1INGB0LDQudGC0LA8L2xhYmVsPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbdGl0bGVdIiB2YWx1ZT0ie3RpdGxlfSI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KCQkJCQkJCTxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxsYWJlbCBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYgY29udHJvbC1sYWJlbCI+0J3QsNC30LLQsNC90LjQtSDRgdC10YDQstC10YDQsDwvbGFiZWw+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8aW5wdXQgdHlwZT0idGV4dCIgY2xhc3M9ImZvcm0tY29udHJvbCIgbmFtZT0iZGF0YVtzZXJ2ZXJuYW1lXSIgdmFsdWU9IntzZXJ2ZXJuYW1lfSI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxsYWJlbCBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYgY29udHJvbC1sYWJlbCI+0JrQu9GO0YfQtdCy0YvQtSDRgdC70L7QstCwPC9sYWJlbD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBjbGFzcz0iZm9ybS1jb250cm9sIiBuYW1lPSJkYXRhW2tleXdvcmRzXSIgdmFsdWU9IntrZXl3b3Jkc30iPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8bGFiZWwgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02IGNvbnRyb2wtbGFiZWwiPtCe0L/QuNGB0LDQvdC40LU8L2xhYmVsPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRleHRhcmVhIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbZGVzY3JpcHRpb25dIj57ZGVzY3JpcHRpb259PC90ZXh0YXJlYT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgoJCQkJCQkJPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGxhYmVsIGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiBjb250cm9sLWxhYmVsIj7QmtC+0LvQuNGH0LXRgdGC0LLQviDQvdC+0LLQvtGB0YLQtdC5INC90LAg0YHRgtGA0LDQvdC40YbRgzwvbGFiZWw+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBjbGFzcz0iZm9ybS1jb250cm9sIiBuYW1lPSJkYXRhW25ld3NfcGFnZV0iIHZhbHVlPSJ7bmV3c19wYWdlfSI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4JCQoJCQkJCQkJPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGxhYmVsIGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiBjb250cm9sLWxhYmVsIj7QmtC+0LzQvNC10L3RgtCw0YDQuNC4INC6INC90L7QstC+0YHRgtGP0Lw8L2xhYmVsPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHNlbGVjdCB0eXBlPSJ0ZXh0IiBjbGFzcz0iZm9ybS1jb250cm9sIiBuYW1lPSJkYXRhW21hc3NhZ2VdIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHttYXNzYWdlfQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L3NlbGVjdD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgoJCQkJCQkJPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGxhYmVsIGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiBjb250cm9sLWxhYmVsIj7QoNC10LPQuNGB0YLRgNCw0YbQuNGPINC90LAg0YHQsNC50YLQtTwvbGFiZWw+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8c2VsZWN0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbcmVnaXN0ZXJdIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHtyZWdpc3Rlcn0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9zZWxlY3Q+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij48L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxidXR0b24gdHlwZT0ic3VibWl0IiBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5IGJ0bi1ibG9jayI+0KHQvtGF0YDQsNC90LjRgtGMPC9idXR0b24+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgPGRpdiByb2xlPSJ0YWJwYW5lbCIgY2xhc3M9InRhYi1wYW5lIiBpZD0ibWFpbCI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZvcm0taG9yaXpvbnRhbCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgIAoJCQkJCQkgICA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8bGFiZWwgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02IGNvbnRyb2wtbGFiZWwiPtCn0LXRgNC10Lcg0YfRgtC+INC+0YLQv9GA0LDQstC70Y/RgtGMINC/0LjRgdGM0LzQsDwvbGFiZWw+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8c2VsZWN0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbbWFpbF90eXBlXSI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHttYWlsX3R5cGV9CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvc2VsZWN0PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8bGFiZWwgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02IGNvbnRyb2wtbGFiZWwiPtCh0LXRgNCy0LXRgCBTTVRQPC9sYWJlbD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBjbGFzcz0iZm9ybS1jb250cm9sIiBuYW1lPSJkYXRhW3NtdHBfc2VydmVyXSIgdmFsdWU9IntzbXRwX3NlcnZlcn0iPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CgkJCQkJCQkKCQkJCQkJCSA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8bGFiZWwgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02IGNvbnRyb2wtbGFiZWwiPtCf0L7RgNGCIFNNVFA8L2xhYmVsPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbc210cF9wb3J0XSIgdmFsdWU9IntzbXRwX3BvcnR9Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgoJCQkJCQkJCgkJCQkJCQkgPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGxhYmVsIGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiBjb250cm9sLWxhYmVsIj7Qn9C+0YfRgtCwIFNNVFA8L2xhYmVsPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbc210cF9tYWlsXSIgdmFsdWU9IntzbXRwX21haWx9Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgoJCQkJCQkJIDxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxsYWJlbCBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYgY29udHJvbC1sYWJlbCI+0J/QsNGA0L7Qu9GMIFNNVFA8L2xhYmVsPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbc210cF9wYXNzXSIgdmFsdWU9IntzbXRwX3Bhc3N9Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgoJCQkJCQkJCgkJCQkJCQk8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8bGFiZWwgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02IGNvbnRyb2wtbGFiZWwiPtCe0YIg0LrQvtCz0L4g0L7RgtC/0YDQsNCy0LvRj9GC0Yw8L2xhYmVsPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbbWFpbF0iIHZhbHVlPSJ7ZS1tYWlsfSI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYiPjwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGJ1dHRvbiB0eXBlPSJzdWJtaXQiIGNsYXNzPSJidG4gYnRuLXByaW1hcnkgYnRuLWJsb2NrIj7QodC+0YXRgNCw0L3QuNGC0Yw8L2J1dHRvbj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KCQkJCQk8ZGl2IHJvbGU9InRhYnBhbmVsIiBjbGFzcz0idGFiLXBhbmUiIGlkPSJtb24iPgogICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJmb3JtLWhvcml6b250YWwiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxsYWJlbCBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYgY29udHJvbC1sYWJlbCI+SVAg0KHQtdGA0LLQtdGA0LA8L2xhYmVsPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbc2VydmVyLWlwXSIgdmFsdWU9IntzZXJ2ZXItaXB9Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgoJCQkJCQkJPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGxhYmVsIGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiBjb250cm9sLWxhYmVsIj5QT1JUINCh0LXRgNCy0LXRgNCwPC9sYWJlbD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBjbGFzcz0iZm9ybS1jb250cm9sIiBuYW1lPSJkYXRhW3NlcnZlci1wb3J0XSIgdmFsdWU9IntzZXJ2ZXItcG9ydH0iPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYiPjwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGJ1dHRvbiB0eXBlPSJzdWJtaXQiIGNsYXNzPSJidG4gYnRuLXByaW1hcnkgYnRuLWJsb2NrIj7QodC+0YXRgNCw0L3QuNGC0Yw8L2J1dHRvbj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICA8ZGl2IHJvbGU9InRhYnBhbmVsIiBjbGFzcz0idGFiLXBhbmUiIGlkPSJwYXltZW50Ij4KICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0icGFuZWwtZ3JvdXAiIGlkPSJhY2NvcmRpb24iIHJvbGU9InRhYmxpc3QiIGFyaWEtbXVsdGlzZWxlY3RhYmxlPSJ0cnVlIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9InBhbmVsIHBhbmVsLWRlZmF1bHQiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9InBhbmVsLWhlYWRpbmciIHJvbGU9InRhYiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxoNCBjbGFzcz0icGFuZWwtdGl0bGUiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGEgZGF0YS10b2dnbGU9ImNvbGxhcHNlIiBkYXRhLXBhcmVudD0iI2FjY29yZGlvbiIgaHJlZj0iI3BheW1lbnQtd20iIGFyaWEtZXhwYW5kZWQ9InRydWUiIGFyaWEtY29udHJvbHM9InBheW1lbnQtd20iPldlYk1vbmV5PC9hPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2g0PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgaWQ9InBheW1lbnQtd20iIGNsYXNzPSJwYW5lbC1jb2xsYXBzZSBjb2xsYXBzZSBpbiIgcm9sZT0idGFicGFuZWwiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJwYW5lbC1ib2R5Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZvcm0taG9yaXpvbnRhbCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxsYWJlbCBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYgY29udHJvbC1sYWJlbCI+0JLQsNGIIFIg0LrQvtGI0LXQu9C10Lo8L2xhYmVsPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8aW5wdXQgdHlwZT0idGV4dCIgY2xhc3M9ImZvcm0tY29udHJvbCIgbmFtZT0iZGF0YVt3bXIxXSIgdmFsdWU9Int3bXIxfSI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8bGFiZWwgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02IGNvbnRyb2wtbGFiZWwiPtCh0LXQutGA0LXRgtC90YvQuSDQutC70Y7RhzwvbGFiZWw+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBjbGFzcz0iZm9ybS1jb250cm9sIiBuYW1lPSJkYXRhW3dtcjJdIiB2YWx1ZT0ie3dtcjJ9Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy0xMiBjb2wtbGctMTIiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGhyPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHA+0JIg0L3QsNGB0YLRgNC+0LnQutCw0YUg0LrQvtGI0LXQu9GM0LrQsCDQvdCwINGB0LDQudGC0LUg0LLQvCDRg9C60LDQt9GL0LLQsNC10Lwg0YHQu9C10LTRg9GO0YnQuNC1INGB0YHRi9C70LrQuCDQotC40L8g0LTQsNC90L3Ri9GFIDxzcGFuIGNsYXNzPSJhbGVydC1pbmZvIj5QT1NUPC9zcGFuPiwg0L/QvtC00L/QuNGB0YwgPHNwYW4gY2xhc3M9ImFsZXJ0LWluZm8iPnNoYTI1Njwvc3Bhbj48L3A+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cD48c3BhbiBjbGFzcz0ibGFiZWwtd2FybmluZyI+UmVzdWx0Ojwvc3Bhbj4ge2RvbWFpbn11c2Vycy9kZXBvc2l0L3dtL3Jlc3VsdC13bS88L3A+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cD48c3BhbiBjbGFzcz0ibGFiZWwtZGFuZ2VyIj5GYWlsOjwvc3Bhbj4ge2RvbWFpbn11c2Vycy9kZXBvc2l0L2ZhaWw8L3A+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cD48c3BhbiBjbGFzcz0iYWxlcnQtc3VjY2VzcyI+U3VjY2Vzczo8L3NwYW4+IHtkb21haW59dXNlcnMvZGVwb3NpdC9zdWNjZXNzPC9wPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KCQkJCQkJCQkKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0icGFuZWwgcGFuZWwtZGVmYXVsdCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0icGFuZWwtaGVhZGluZyIgcm9sZT0idGFiIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGg0IGNsYXNzPSJwYW5lbC10aXRsZSI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YSBkYXRhLXRvZ2dsZT0iY29sbGFwc2UiIGRhdGEtcGFyZW50PSIjYWNjb3JkaW9uIiBocmVmPSIjcGF5bWVudC15YW5kZXgiIGFyaWEtZXhwYW5kZWQ9InRydWUiIGFyaWEtY29udHJvbHM9InBheW1lbnQteWFuZGV4Ij7Qr9C90LTQtdC60YEg0JTQtdC90YzQs9C4ICjQmtCw0YDRgtGLIFZJU0EgLyBNQVNURVJDQVJEINCyINGC0L7QvCDRh9C40YHQu9C1KTwvYT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9oND4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGlkPSJwYXltZW50LXlhbmRleCIgY2xhc3M9InBhbmVsLWNvbGxhcHNlIGNvbGxhcHNlIiByb2xlPSJ0YWJwYW5lbCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9InBhbmVsLWJvZHkiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iZm9ybS1ob3Jpem9udGFsIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGxhYmVsIGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiBjb250cm9sLWxhYmVsIj7QktCw0Ygg0YHRh9C10YI8L2xhYmVsPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8aW5wdXQgdHlwZT0idGV4dCIgY2xhc3M9ImZvcm0tY29udHJvbCIgbmFtZT0iZGF0YVt5YW5kZXgxXSIgdmFsdWU9Int5YW5kZXgxfSI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8bGFiZWwgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02IGNvbnRyb2wtbGFiZWwiPtCh0LXQutGA0LXRgtC90YvQuSDQutC70Y7RhzwvbGFiZWw+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBjbGFzcz0iZm9ybS1jb250cm9sIiBuYW1lPSJkYXRhW3lhbmRleDJdIiB2YWx1ZT0ie3lhbmRleDJ9Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy0xMiBjb2wtbGctMTIiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGhyPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHA+0J3QsNGB0YLRgNC+0LnQutC4INC80LXRgNGH0LDQvdGC0LAg0L/RgNC+0LjQt9Cy0L7QtNGP0YLRgdGPINGC0YPRgiA8YSBocmVmPSJodHRwczovL3NwLW1vbmV5LnlhbmRleC5ydS9teXNlcnZpY2VzL29ubGluZS54bWwiIHRhcmdldD0iX0JMQU5LIj5odHRwczovL3NwLW1vbmV5LnlhbmRleC5ydS9teXNlcnZpY2VzL29ubGluZS54bWw8L2E+PC9wPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHA+0J7RgtGC0YPQtNCwINC20LUg0LHQtdGA0LXRgtGB0Y8g0YHQtdC60YDQtdGC0L3Ri9C5INC60LvRjtGHINC4INGD0LrQsNC30YvQstCw0LXQvCDRgdGB0YvQu9C60YMg0L3QsCDRg9Cy0LXQtNC+0LzQu9C10L3QuNGPIHtkb21haW59dXNlcnMvZGVwb3NpdC95YW5kZXgvcmVzdWx0LXlhbmRleC88L3A+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJwYW5lbCBwYW5lbC1kZWZhdWx0Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJwYW5lbC1oZWFkaW5nIiByb2xlPSJ0YWIiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8aDQgY2xhc3M9InBhbmVsLXRpdGxlIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhIGRhdGEtdG9nZ2xlPSJjb2xsYXBzZSIgZGF0YS1wYXJlbnQ9IiNhY2NvcmRpb24iIGhyZWY9IiNwYXltZW50LXJvYmFrYXNzYSIgYXJpYS1leHBhbmRlZD0idHJ1ZSIgYXJpYS1jb250cm9scz0icGF5bWVudC1yb2Jha2Fzc2EiPtCg0L7QsdC+0LrQsNGB0YHQsDwvYT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9oND4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGlkPSJwYXltZW50LXJvYmFrYXNzYSIgY2xhc3M9InBhbmVsLWNvbGxhcHNlIGNvbGxhcHNlIiByb2xlPSJ0YWJwYW5lbCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9InBhbmVsLWJvZHkiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iZm9ybS1ob3Jpem9udGFsIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGxhYmVsIGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiBjb250cm9sLWxhYmVsIj7QmNC00LXQvdGC0LjRhNC40LrQsNGC0L7RgCDQvNCw0LPQsNC30LjQvdCwPC9sYWJlbD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbcmJjMV0iIHZhbHVlPSJ7cmJjMX0iPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGxhYmVsIGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiBjb250cm9sLWxhYmVsIj7QodC10LrRgNC10YLQvdGL0Lkg0LrQu9GO0Yc8L2xhYmVsPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8aW5wdXQgdHlwZT0idGV4dCIgY2xhc3M9ImZvcm0tY29udHJvbCIgbmFtZT0iZGF0YVtyYmMyXSIgdmFsdWU9IntyYmMyfSI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8bGFiZWwgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02IGNvbnRyb2wtbGFiZWwiPtCh0LXQutGA0LXRgtC90YvQuSDQutC70Y7RhyDihJYyPC9sYWJlbD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbcmJjM10iIHZhbHVlPSJ7cmJjM30iPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTEyIGNvbC1sZy0xMiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8aHI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cD7QkiDQvdCw0YHRgtGA0L7QudC60LDRhSDQvNCw0LPQsNC30LjQvdCwINGD0LrQsNC30YvQstCw0LXQvCDRgdC70LXQtNGD0Y7RidC40LUg0YHRgdGL0LvQutC4LCDRgtC40L8g0L/QtdGA0LXQtNCw0YfQuCDQtNCw0L3QvdGL0YUgPHNwYW4gY2xhc3M9ImFsZXJ0LWluZm8iPlBPU1Q8L3NwYW4+PC9wPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHA+PHNwYW4gY2xhc3M9ImxhYmVsLXdhcm5pbmciPlJlc3VsdDo8L3NwYW4+IHtkb21haW59dXNlcnMvZGVwb3NpdC9yZXN1bHQtcm9ib2thc3NhLzwvcD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPjxzcGFuIGNsYXNzPSJsYWJlbC1kYW5nZXIiPkZhaWw6PC9zcGFuPiB7ZG9tYWlufXVzZXJzL2RlcG9zaXQvZmFpbDwvcD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPjxzcGFuIGNsYXNzPSJhbGVydC1zdWNjZXNzIj5TdWNjZXNzOjwvc3Bhbj4ge2RvbWFpbn11c2Vycy9kZXBvc2l0L3N1Y2Nlc3M8L3A+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJwYW5lbCBwYW5lbC1kZWZhdWx0Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJwYW5lbC1oZWFkaW5nIiByb2xlPSJ0YWIiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8aDQgY2xhc3M9InBhbmVsLXRpdGxlIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhIGRhdGEtdG9nZ2xlPSJjb2xsYXBzZSIgZGF0YS1wYXJlbnQ9IiNhY2NvcmRpb24iIGhyZWY9IiNwYXltZW50LVVuaXRwYXkiIGFyaWEtZXhwYW5kZWQ9InRydWUiIGFyaWEtY29udHJvbHM9InBheW1lbnQtVW5pdHBheSI+VW5pdHBheTwvYT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9oND4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGlkPSJwYXltZW50LVVuaXRwYXkiIGNsYXNzPSJwYW5lbC1jb2xsYXBzZSBjb2xsYXBzZSIgcm9sZT0idGFicGFuZWwiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJwYW5lbC1ib2R5Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZvcm0taG9yaXpvbnRhbCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxsYWJlbCBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYgY29udHJvbC1sYWJlbCI+0J/Rg9Cx0LvQuNGH0L3Ri9C5INC60LvRjtGHINC/0YDQvtC10LrRgtCwPC9sYWJlbD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29sLXhzLTYgY29sLWxnLTYiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIG5hbWU9ImRhdGFbdW5pdHBheV9rZXldIiB2YWx1ZT0ie3VuaXRwYXlfa2V5fSI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8bGFiZWwgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02IGNvbnRyb2wtbGFiZWwiPtCh0LXQutGA0LXRgtC90YvQuSDQutC70Y7RhzwvbGFiZWw+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBjbGFzcz0iZm9ybS1jb250cm9sIiBuYW1lPSJkYXRhW3VuaXRwYXldIiB2YWx1ZT0ie3VuaXRwYXl9Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iZm9ybS1ncm91cCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy0xMiBjb2wtbGctMTIiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGhyPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHA+0JIg0L3QsNGB0YLRgNC+0LnQutCw0YUg0LzQsNCz0LDQt9C40L3QsCDRg9C60LDQt9GL0LLQsNC10Lwg0YHQu9C10LTRg9GO0YnQuNC1INGB0YHRi9C70LrQuCwg0YLQuNC/INC/0LXRgNC10LTQsNGH0Lgg0LTQsNC90L3Ri9GFIDxzcGFuIGNsYXNzPSJhbGVydC1pbmZvIj5QT1NUPC9zcGFuPjwvcD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPjxzcGFuIGNsYXNzPSJsYWJlbC13YXJuaW5nIj5SZXN1bHQ6PC9zcGFuPiB7ZG9tYWlufXVzZXJzL2RlcG9zaXQvdW5pdHBheS9yZXN1bHQtdW5pdHBheS88L3A+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cD48c3BhbiBjbGFzcz0ibGFiZWwtZGFuZ2VyIj5GYWlsOjwvc3Bhbj4ge2RvbWFpbn11c2Vycy9kZXBvc2l0L2ZhaWw8L3A+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cD48c3BhbiBjbGFzcz0iYWxlcnQtc3VjY2VzcyI+U3VjY2Vzczo8L3NwYW4+IHtkb21haW59dXNlcnMvZGVwb3NpdC9zdWNjZXNzPC9wPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2PgoJCQkJCQkJCiAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2Pjxicj4KICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0iZm9ybS1ob3Jpem9udGFsIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZvcm0tZ3JvdXAiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbC14cy02IGNvbC1sZy02Ij48L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJjb2wteHMtNiBjb2wtbGctNiI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxidXR0b24gdHlwZT0ic3VibWl0IiBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5IGJ0bi1ibG9jayI+0KHQvtGF0YDQsNC90LjRgtGMPC9idXR0b24+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgPC9kaXY+CiAgICA8L2Zvcm0+CjwvZGl2Pg=='),
(186, 'users-register', 'W21vZGFsXQo8ZGl2IGlkPSJiYXNlLW1vZGFsIiBjbGFzcz0ibW9kYWwgZmFkZSIgdGFiaW5kZXg9Ii0xIiBkYXRhLXdpZHRoPSI0MjAiPgo8ZGl2IGNsYXNzPSJtb2RhbC1kaWFsb2ciIHJvbGU9ImRvY3VtZW50IiAgc3R5bGU9ICJ3aWR0aDogNDIwcHg7Ij4KIDxkaXYgY2xhc3M9Im1vZGFsLWNvbnRlbnQiPgoJPGZvcm0gYWN0aW9uPSJ1c2Vycy9yZWdpc3RlciIgdXJsPSIvIiBtZXRob2Q9IlBPU1QiIGNsYXNzPSJmb3JtXzAiIHN0eWxlPSJwYWRkaW5nOjBweDsgbWFyZ2luOjBweDsiPgoJCTxkaXYgY2xhc3M9Im1vZGFsLWhlYWRlciI+CgkJCTxidXR0b24gdHlwZT0iYnV0dG9uIiBjbGFzcz0iY2xvc2UiIGRhdGEtZGlzbWlzcz0ibW9kYWwiIGFyaWEtaGlkZGVuPSJ0cnVlIj4mdGltZXM7PC9idXR0b24+CgkJCTxoNCBjbGFzcz0ibW9kYWwtdGl0bGUiPtCg0LXQs9C40YHRgtGA0LDRhtC40Y88L2g0PgoJCTwvZGl2PgoJCTxkaXYgY2xhc3M9Im1vZGFsLWJvZHkiPgoJCQk8aW5wdXQgc3R5bGU9IndpZHRoOjEwMCU7IiBjbGFzcz0iZm9ybS1jb250cm9sIiB0eXBlPSJ0ZXh0IiBuYW1lPSJkYXRhW2xvZ2luXSIgdGl0bGU9ItCf0L7QtNGB0LrQsNC30LrQsDog0L3QuNC6INC00L7Qu9C20LXQvSDRgdC+0LTQtdGA0LDQttGC0Ywg0YLQsNC60L7QuSDRgdC40LzQstC+0Lsg0LrQsNC6ICdfJy4g0JHQtdC3INC90LXQtSDQstCw0Lwg0L3QtSDRg9C00LDRgdGG0LAg0L/RgNC+0LnRgtC4INGA0LXQs9C40YHRgtGA0LDRhtC40Y4uIiBwbGFjZWhvbGRlcj0i0JLQstC10LTQuNGC0LUg0L3QuNC60L3QtdC50Lwg0L/QtdGA0YHQvtC90LDQttCwIj4KCQkJPGJyPgogICAgICAgICAgICA8aW5wdXQgc3R5bGU9IndpZHRoOjEwMCU7IiBjbGFzcz0iZm9ybS1jb250cm9sIiB0eXBlPSJ0ZXh0IiBuYW1lPSJkYXRhW2VtYWlsXSIgdGl0bGU9ItCe0LHQsNC30LDRgtC10LvRjNC90L4g0LLQstC10LTQuNGC0LUg0LTQtdC50YHRgtCy0YPRidC40LkgRS1tYWlsLiIgcGxhY2Vob2xkZXI9ItCS0LLQtdC00LjRgtC1INCS0LDRiCBFLW1haWwiPgogICAgICAgICAgICA8YnI+CgkJCTxpbnB1dCBzdHlsZT0id2lkdGg6MTAwJTsiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIHR5cGU9InBhc3N3b3JkIiBuYW1lPSJkYXRhW3Bhc3N3b3JkXSIgdGl0bGU9ItCf0LDRgNC+0LvRjCDQtNC+0LvQttC10L0g0YHQvtC00LXRgNC20LDRgtGMINC80LjQvdC40LzRg9C8IDQg0YHQuNC80LLQvtC70LAuIiBwbGFjZWhvbGRlcj0i0JLQstC10LTQuNGC0LUg0L/QsNGA0L7Qu9GMINC/0LXRgNGB0L7QvdCw0LbQsCI+CiAgICAgICAgICAgIDxicj4KCQkJPGlucHV0IHN0eWxlPSJ3aWR0aDoxMDAlOyIgY2xhc3M9ImZvcm0tY29udHJvbCIgdHlwZT0icGFzc3dvcmQiIG5hbWU9ImRhdGFbcmVwZWF0XSIgcGxhY2Vob2xkZXI9ItCf0L7QstGC0L7RgNC90L4g0LLQstC10LTQuNGC0LUg0L/QsNGA0L7Qu9GMIj4gIAogICAgICAgICAgICA8YnI+CiAgICAgICAgICAgIDxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIj4KICAgICAgICAgICAgPHNwYW4gY2xhc3M9ImlucHV0LWdyb3VwLWFkZG9uIj7Qn9C+0Ls8L3NwYW4+CiAgICAgICAgICAgIDxzZWxlY3QgdHlwZT0idGV4dCIgY2xhc3M9ImZvcm0tY29udHJvbCIgbmFtZT0iZGF0YVtzZXhdIj4KICAgICAgICAgICAgICA8b3B0aW9uIHZhbHVlPSJzZCIgc2VsZWN0ZWQ9InNlbGVjdGVkIiBkaXNhYmxlZD0iZGlzYWJsZWQiPtCS0YvQsdC10YDQuNGC0LUg0L/QvtC7INCy0LDRiNC10LPQviDQv9C10YDRgdC+0L3QsNC20LA8L29wdGlvbj4KICAgICAgICAgICAgICA8b3B0aW9uIHZhbHVlPSJtIiA+0JzRg9C20YHQutC+0Lk8L29wdGlvbj4KICAgICAgICAgICAgICA8b3B0aW9uIHZhbHVlPSJmIj7QltC10L3RgdC60LjQuTwvb3B0aW9uPgogICAgICAgICAgICA8L3NlbGVjdD4KICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgIDxicj4KICAgICAgICAgICAgPGRpdiBjbGFzcz0iaW5wdXQtZ3JvdXAiPgogICAgICAgICAgICA8c3BhbiBjbGFzcz0iaW5wdXQtZ3JvdXAtYWRkb24iPtCh0LrQuNC9PC9zcGFuPgogICAgICAgICAgICA8c2VsZWN0IGlkPSJzZWxtIiB0eXBlPSJ0ZXh0IiBjbGFzcz0iZm9ybS1jb250cm9sIiBuYW1lPSJkYXRhW3NraW5dIj4KICAgICAgICAgICAgICA8b3B0aW9uIGRhdGEtcGF0aD0iL2ltZy9hdmF0YXJzL25vbmUucG5nIiB2YWx1ZT0ic2QiIHNlbGVjdGVkPSJzZWxlY3RlZCIgZGlzYWJsZWQ9ImRpc2FibGVkIj7QktGL0LHQtdGA0LjRgtC1INCy0L3QtdGI0L3QvtGB0YLRjCDQv9C10YDRgdC+0L3QsNC20LA8L29wdGlvbj4KICAgICAgICAgICAgICA8b3B0aW9uIGRhdGEtcGF0aD0iL2ltZy9hdmF0YXJzLzEzLnBuZyIgdmFsdWU9IjEzIj5JRDogMTMuINCf0L7Quzog0LbQtdC90YHQutC40Lk8L29wdGlvbj4KICAgICAgICAgICAgICA8b3B0aW9uIGRhdGEtcGF0aD0iL2ltZy9hdmF0YXJzLzc1LnBuZyIgdmFsdWU9Ijc1Ij5JRDogNzUuINCf0L7Quzog0LbQtdC90YHQutC40Lk8L29wdGlvbj4KICAgICAgICAgICAgICA8b3B0aW9uIGRhdGEtcGF0aD0iL2ltZy9hdmF0YXJzLzE1MS5wbmciIHZhbHVlPSIxNTEiPklEOiAxNTEuINCf0L7Quzog0LbQtdC90YHQutC40Lk8L29wdGlvbj4KICAgICAgICAgICAgICA8b3B0aW9uIGRhdGEtcGF0aD0iL2ltZy9hdmF0YXJzLzIxMi5wbmciIHZhbHVlPSIyMTIiPklEOiAyMTIuINCf0L7Quzog0LzRg9C20YHQutC+0Lk8L29wdGlvbj4KICAgICAgICAgICAgICA8b3B0aW9uIGRhdGEtcGF0aD0iL2ltZy9hdmF0YXJzLzIwMC5wbmciIHZhbHVlPSIyMDAiPklEOiAyMDAuINCf0L7Quzog0LzRg9C20YHQutC+0Lk8L29wdGlvbj4KICAgICAgICAgICAgICA8b3B0aW9uIGRhdGEtcGF0aD0iL2ltZy9hdmF0YXJzLzIzMC5wbmciIHZhbHVlPSIyMzAiPklEOiAyMzAuINCf0L7Quzog0LzRg9C20YHQutC+0Lk8L29wdGlvbj4KICAgICAgICAgICAgPC9zZWxlY3Q+CiAgICAgICAgICAgIDwvZGl2PiAgCiAgICAgICAgICAgIDxicj4KICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJpbWctdGh1bWJuYWlsIiBpZD0ic2VsbWltZyI+PGltZyBzcmM9Ii9pbWcvYXZhdGFycy9ub25lLnBuZyIgLz48L2Rpdj4KCQk8L2Rpdj4KCQk8ZGl2IGNsYXNzPSJtb2RhbC1mb290ZXIiPgoJCQk8YnV0dG9uIHR5cGU9InN1Ym1pdCIgY2xhc3M9ImJ0biBidG4tcHJpbWFyeSBzaWdudXAiIG5hbWU9ImJ1dHRvbiIgc3R5bGU9ImZsb2F0OiBsZWZ0OyI+0JfQsNGA0LXQs9C40YHRgtGA0LjRgNC+0LLQsNGC0YzRgdGPPC9idXR0b24+CgkJPC9kaXY+Cgk8L2Zvcm0+CjwvZGl2PjwvZGl2PjwvZGl2Pgo8c2NyaXB0PgogICQoZG9jdW1lbnQpLnJlYWR5KGZ1bmN0aW9uKCl7CgkkKCcjc2VsbScpLmNoYW5nZShmdW5jdGlvbigpewoJCSQoJyNzZWxtaW1nJykuZmluZCgnaW1nOmZpcnN0JykuYXR0cignc3JjJywgJCgnI3NlbG0gb3B0aW9uOnNlbGVjdGVkJykuYXR0cignZGF0YS1wYXRoJykpOwoJfSk7Cn0pOwo8L3NjcmlwdD4KWy9tb2RhbF0=');

-- --------------------------------------------------------

--
-- Структура таблицы `transfer_inv`
--

CREATE TABLE IF NOT EXISTS `transfer_inv` (
  `ID` int(11) DEFAULT NULL,
  `NameOne` varchar(32) NOT NULL,
  `NameTwo` varchar(32) NOT NULL,
  `AccountIDOne` int(11) NOT NULL,
  `AccountIDTwo` int(11) NOT NULL,
  `Money` int(11) NOT NULL,
  `invID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `transfer_money`
--

CREATE TABLE IF NOT EXISTS `transfer_money` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NameOne` varchar(32) NOT NULL,
  `NameTwo` varchar(32) NOT NULL,
  `AccountIDOne` int(11) NOT NULL,
  `AccountIDTwo` int(11) NOT NULL,
  `Money` int(11) NOT NULL,
  `Date` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ucp_answers`
--

CREATE TABLE IF NOT EXISTS `ucp_answers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Date` varchar(26) NOT NULL,
  `Sit1` varchar(1048) NOT NULL,
  `SitKey1` varchar(2048) NOT NULL,
  `Sit2` varchar(1048) NOT NULL,
  `SitKey2` varchar(2048) NOT NULL,
  `Sit3` varchar(1048) NOT NULL,
  `SitKey3` varchar(2048) NOT NULL,
  `Sit4` varchar(1048) NOT NULL,
  `SitKey4` varchar(2048) NOT NULL,
  `Sit5` varchar(1048) NOT NULL,
  `SitKey5` varchar(2048) NOT NULL,
  `Sit6` varchar(1048) NOT NULL,
  `SitKey6` varchar(2048) NOT NULL,
  `Check` int(1) NOT NULL DEFAULT '0',
  `Code` int(11) NOT NULL,
  `oName` varchar(32) NOT NULL,
  `oSurname` varchar(32) NOT NULL,
  `oPatronymic` varchar(32) NOT NULL,
  `oAge` int(2) NOT NULL,
  `oHobby` varchar(2048) NOT NULL,
  `oLessons` varchar(2048) NOT NULL,
  `oLink` varchar(256) NOT NULL,
  `Type` int(1) NOT NULL,
  `Ip` varchar(16) NOT NULL,
  `iAbout` varchar(2048) NOT NULL,
  `aReason` text NOT NULL,
  `aName` varchar(32) NOT NULL,
  `aDate` varchar(128) NOT NULL,
  `aHide` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ucp_retests`
--

CREATE TABLE IF NOT EXISTS `ucp_retests` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Date` varchar(16) NOT NULL,
  `Sit1` varchar(1048) NOT NULL,
  `SitKey1` varchar(2048) NOT NULL,
  `Sit2` varchar(1048) NOT NULL,
  `SitKey2` varchar(2048) NOT NULL,
  `Sit3` varchar(1048) NOT NULL,
  `SitKey3` varchar(2048) NOT NULL,
  `Sit4` varchar(1048) NOT NULL,
  `SitKey4` varchar(2048) NOT NULL,
  `Sit5` varchar(1048) NOT NULL,
  `SitKey5` varchar(2048) NOT NULL,
  `Sit6` varchar(1048) NOT NULL,
  `SitKey6` varchar(2048) NOT NULL,
  `oLink` varchar(256) NOT NULL,
  `iAbout` varchar(512) NOT NULL,
  `Check` int(1) NOT NULL DEFAULT '0',
  `Code` int(11) NOT NULL,
  `Ip` varchar(50) NOT NULL,
  `aReason` varchar(256) NOT NULL,
  `aName` varchar(25) NOT NULL,
  `aHide` int(11) NOT NULL DEFAULT '1',
  `aDate` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ucp_retest_situation`
--

CREATE TABLE IF NOT EXISTS `ucp_retest_situation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(512) NOT NULL,
  `Type` int(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ucp_retest_tests`
--

CREATE TABLE IF NOT EXISTS `ucp_retest_tests` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(512) NOT NULL,
  `Key1` varchar(128) NOT NULL,
  `Key2` varchar(128) NOT NULL,
  `Key3` varchar(128) NOT NULL,
  `Key4` varchar(128) NOT NULL,
  `Key5` varchar(128) NOT NULL,
  `Key6` varchar(128) NOT NULL,
  `Ans` varchar(64) NOT NULL,
  `Type` int(1) NOT NULL,
  `Accept` int(1) NOT NULL DEFAULT '1',
  `Owner` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ucp_settings`
--

CREATE TABLE IF NOT EXISTS `ucp_settings` (
  `Rules` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ucp_situation`
--

CREATE TABLE IF NOT EXISTS `ucp_situation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(512) NOT NULL,
  `Type` int(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ucp_tests`
--

CREATE TABLE IF NOT EXISTS `ucp_tests` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(512) NOT NULL,
  `Key1` varchar(128) NOT NULL,
  `Key2` varchar(128) NOT NULL,
  `Key3` varchar(128) NOT NULL,
  `Key4` varchar(128) NOT NULL,
  `Key5` varchar(128) NOT NULL,
  `Key6` varchar(128) NOT NULL,
  `Ans` varchar(64) NOT NULL,
  `Type` int(1) NOT NULL,
  `Accept` int(1) NOT NULL DEFAULT '1',
  `Owner` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
