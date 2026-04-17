#if defined CHILIAD_ACCOUNTS_DB
	#endinput
#endif
#define CHILIAD_ACCOUNTS_DB

AccountDB_EnsureTables()
{
	mysql_query(Database_GetHandle(),
		"CREATE TABLE IF NOT EXISTS `accounts` (\
			`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,\
			`username` VARCHAR(24) NOT NULL,\
			`password_hash` CHAR(60) NOT NULL,\
			`reg_ip` VARCHAR(45) NOT NULL,\
			`last_ip` VARCHAR(45) NOT NULL,\
			`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,\
			`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,\
			`last_login_at` TIMESTAMP NULL DEFAULT NULL,\
			PRIMARY KEY (`id`),\
			UNIQUE KEY `uq_accounts_username` (`username`)\
		) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;",
		false
	);
	return 1;
}

AccountDB_FindByName(playerid)
{
	new query[192];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"SELECT `id`, `username`, `password_hash`, `last_ip`, IFNULL(UNIX_TIMESTAMP(`last_login_at`), 0) AS `last_login_at` \
		FROM `accounts` WHERE BINARY `username` = '%e' LIMIT 1",
		AccountData[playerid][Name]
	);

	mysql_tquery(Database_GetHandle(), query, "Account_OnLookup", "i", playerid);
	return 1;
}

AccountDB_Insert(playerid, const password_hash[])
{
	new query[512], ip[46];

	GetPlayerIp(playerid, ip, sizeof(ip));
	mysql_format(Database_GetHandle(), query, sizeof(query),
		"INSERT INTO `accounts` (`username`, `password_hash`, `reg_ip`, `last_ip`) VALUES ('%e', '%e', '%e', '%e')",
		AccountData[playerid][Name],
		password_hash,
		ip,
		ip
	);

	mysql_tquery(Database_GetHandle(), query, "Account_OnInserted", "i", playerid);
	return 1;
}

AccountDB_UpdateLogin(playerid)
{
	new query[256], ip[46];

	GetPlayerIp(playerid, ip, sizeof(ip));
	mysql_format(Database_GetHandle(), query, sizeof(query),
		"UPDATE `accounts` SET `last_ip` = '%e', `last_login_at` = NOW() WHERE `id` = %d LIMIT 1",
		ip,
		AccountData[playerid][ID]
	);

	mysql_tquery(Database_GetHandle(), query);
	return 1;
}
