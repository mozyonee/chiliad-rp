
new Menu:Admin;


new admin_help[7][] = {
	{ "\t\t\t\t\t{ffffff}Уровень 1\n\n\
		{4a86b6}/goto {ffffff}- телпорт к игроку {4a86b6}/gethere {ffffff}- телепорт игрока к себе\n\
		{4a86b6}/sp {ffffff}- войти в наблюдение {4a86b6}/unfreeze {ffffff}- разморозить игрокa\n\
		{4a86b6}/mute {ffffff}- выдать блокировку чата {4a86b6}/unmute {ffffff}- снять блокировку чата\n\
		{4a86b6}/stats {ffffff}- статистика игрока {4a86b6}/h чат Support\n\
		{4a86b6}/kick {ffffff}- кикнуть игрока {4a86b6}/a {ffffff}- админ-чат {4a86b6}/ans {ffffff}- ответ в репорт\n\
		{4a86b6}/tp {ffffff}- список телепортов {4a86b6}/adm {ffffff}- панель администратора\n\
		{4a86b6}/hp {ffffff}- пополнить здоровье на 255 единиц {4a86b6}/adellaction {ffffff}- удалить дейтсвие\n\
		{4a86b6}/unjail {ffffff}- выпустить игрока из деморгана {4a86b6}/jail {ffffff}- отправить игрока в деморган\n\
		{4a86b6}/afrisk {ffffff}- обыскать игрока" 
	},
	{ "\n\n\t\t\t\t\tУровень 2\n\n\
		{4a86b6}/getcar {ffffff}- телпорт авто к себе {4a86b6}/slap {ffffff}- подбросить игрока вверх\n\
		{4a86b6}/warn {ffffff}- выдать предупреждение {4a86b6}/vrepair {ffffff}- установить HP авто\n\
		{4a86b6}/vspawn {ffffff}- заспавнить авто\n\
		{4a86b6}/sethp {ffffff}- установить здоровье {4a86b6}/aheal {ffffff}- поднять игрока с земли\n\
		{4a86b6}/getbuycar {ffffff}- телепорт личного авто к себе\n\
		{4a86b6}/gfmenu {ffffff}- управление граффити {4a86b6}/gfids {ffffff}- список граффити рядом\n\
		{4a86b6}/gfdell {ffffff}- удаление граффити по MySQL_ID {4a86b6}/setint {ffffff}- установить интерьер\n\
		{4a86b6}/setworld {ffffff}- установить вирт.мир"
	},	
	{
		"\n\n\t\t\t\t\tУровень 3\n\n\
		{4a86b6}/ban {ffffff}- забанить игрока {4a86b6}/leave {ffffff}- уволить игрока из организации\n\
		{4a86b6}/vfuel {ffffff}- установить уровень бензина {4a86b6}/ahevict {ffffff}- выселить игрока из дома\n\
		{4a86b6}/iban {ffffff}- блокировка игрока навсегда"
	},		
	{
		"\n\n\t\t\t\t\tУровень 4\n\n\
		{4a86b6}/banip {ffffff}- заблокировать IP {4a86b6}/o {ffffff}- общий чат\n\
		{4a86b6}/dveh {ffffff}- удалить транспорт {4a86b6}/setpaytime {ffffff}- установить отыгранное время игрокy\n\
		{4a86b6}/setfrac {ffffff}- временно установить себе фракцию {4a86b6}/mycar {ffffff}- создать транспорт\n\
		{4a86b6}/crimepark {ffffff}- припарковать машину криминала {4a86b6}/crimedelcar {ffffff}- удалить машину криминала\n\
		{4a86b6}/crimecar {ffffff}- создать машину криминала{4a86b6}/createcrime {ffffff}- создать крим. структуру\n\
		{4a86b6}/crimeenter {ffffff}- установить вход в интерьер крим. структуры {4a86b6}/crimeleader {ffffff}- выдать лидерку крим. структуры"
		/*{4a86b6}/ {ffffff}- */
	},
	{
		"\n\n\t\t\t\t\tУровень 5\n\n\
		{4a86b6}/settime {ffffff}- сменить время {4a86b6}/weaponstats {ffffff}- статистика оружия игрока\n\
		{4a86b6}/fleader {ffffff}- смена лидера {4a86b6}/restart {ffffff}- рестарт сервера\n\
		{4a86b6}/get {ffffff}- игровые параметры персонажа {4a86b6}/makeleader {ffffff}- назначить лидера\n\
		{4a86b6}/house {ffffff}- телепорт к дому {4a86b6}/binfo {ffffff}- информация о бизнесе\n\
		{4a86b6}/biz {ffffff}- телепорт к бизнесу {4a86b6}/setprod {ffffff}- установить продукты в бизнес\n\
		{4a86b6}/unretest {ffffff}- отменить ретест игроку {4a86b6}/unwarn {ffffff}- снять предупреждения \n\
		{4a86b6}/unbanip {ffffff}- разблокировать IP {4a86b6}/unban {ffffff}- разблокировать аккаунт\n\
		{4a86b6}/unprison {ffffff}- выпустить игрока из тюрьмы"
	},
	{
		"\n\n\t\t\t\t\tУровень 6\n\n\
		{4a86b6}/payday {ffffff}- сменить время {4a86b6}/sellbiz {ffffff}- слить бизнес в гос {4a86b6}/create {ffffff}- создать дом\n\
		{4a86b6}/giveitem {ffffff}- выдать предмет себе в инвентарь {4a86b6}/payday {ffffff}- вызывать у себя PayDay"
	},
	{ "" }
};	