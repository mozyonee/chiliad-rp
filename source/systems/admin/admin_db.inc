#if defined CHILIAD_ADMIN_DB
	#endinput
#endif
#define CHILIAD_ADMIN_DB

AdminDB_EnsureTables()
{
	mysql_query(Database_GetHandle(),
		"CREATE TABLE IF NOT EXISTS `admins` (\
			`account_id` INT UNSIGNED NOT NULL,\
			`level` TINYINT UNSIGNED NOT NULL DEFAULT 0,\
			`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,\
			`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,\
			PRIMARY KEY (`account_id`),\
			CONSTRAINT `fk_admins_account_id` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE\
		) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;",
		false
	);
	return 1;
}

AdminDB_Load(playerid)
{
	new query[128];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"SELECT `level` FROM `admins` WHERE `account_id` = %d LIMIT 1",
		Account_GetID(playerid)
	);

	mysql_tquery(Database_GetHandle(), query, "Admin_OnLoaded", "i", playerid);
	return 1;
}

AdminDB_SetLevel(playerid, level)
{
	new query[256];

	if (level <= 0)
	{
		mysql_format(Database_GetHandle(), query, sizeof(query),
			"DELETE FROM `admins` WHERE `account_id` = %d LIMIT 1",
			Account_GetID(playerid)
		);
	}
	else
	{
		mysql_format(Database_GetHandle(), query, sizeof(query),
			"INSERT INTO `admins` (`account_id`, `level`) VALUES (%d, %d) \
			ON DUPLICATE KEY UPDATE `level` = VALUES(`level`)",
			Account_GetID(playerid),
			level
		);
	}

	mysql_tquery(Database_GetHandle(), query);
	return 1;
}
