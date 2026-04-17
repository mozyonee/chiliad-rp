#if defined CHILIAD_CHARACTERS_DB
	#endinput
#endif
#define CHILIAD_CHARACTERS_DB

CharacterDB_EnsureTables()
{
	mysql_query(Database_GetHandle(),
		"CREATE TABLE IF NOT EXISTS `characters` (\
			`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,\
			`account_id` INT UNSIGNED NOT NULL,\
			`name` VARCHAR(24) NOT NULL,\
			`skin` SMALLINT UNSIGNED NOT NULL DEFAULT 60,\
			`age` TINYINT UNSIGNED NOT NULL DEFAULT 18,\
			`sex` TINYINT UNSIGNED NOT NULL DEFAULT 0,\
			`ethnos` TINYINT UNSIGNED NOT NULL DEFAULT 0,\
			`last_x` FLOAT NOT NULL DEFAULT 1958.3783,\
			`last_y` FLOAT NOT NULL DEFAULT 1343.1572,\
			`last_z` FLOAT NOT NULL DEFAULT 15.3746,\
			`last_angle` FLOAT NOT NULL DEFAULT 269.1425,\
			`last_interior` INT NOT NULL DEFAULT 0,\
			`last_world` INT NOT NULL DEFAULT 0,\
			`last_unloaded_at` TIMESTAMP NULL DEFAULT NULL,\
			`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,\
			`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,\
			`last_login_at` TIMESTAMP NULL DEFAULT NULL,\
			PRIMARY KEY (`id`),\
			UNIQUE KEY `uq_characters_name` (`name`),\
			KEY `idx_characters_account_id` (`account_id`),\
			CONSTRAINT `fk_characters_account_id` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE\
		) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;",
		false
	);
	Database_EnsureColumn("characters", "last_x", "FLOAT NOT NULL DEFAULT 1958.3783");
	Database_EnsureColumn("characters", "last_y", "FLOAT NOT NULL DEFAULT 1343.1572");
	Database_EnsureColumn("characters", "last_z", "FLOAT NOT NULL DEFAULT 15.3746");
	Database_EnsureColumn("characters", "last_angle", "FLOAT NOT NULL DEFAULT 269.1425");
	Database_EnsureColumn("characters", "last_interior", "INT NOT NULL DEFAULT 0");
	Database_EnsureColumn("characters", "last_world", "INT NOT NULL DEFAULT 0");
	Database_EnsureColumn("characters", "last_unloaded_at", "TIMESTAMP NULL DEFAULT NULL");
	return 1;
}

CharacterDB_LoadAccountCharacters(playerid)
{
	new query[256];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"SELECT `id`, `name`, `skin` FROM `characters` WHERE `account_id` = %d ORDER BY `id` ASC LIMIT %d",
		Account_GetID(playerid),
		CHARACTER_MAX_PER_ACCOUNT
	);

	mysql_tquery(Database_GetHandle(), query, "Character_OnListLoaded", "i", playerid);
	return 1;
}

CharacterDB_FindAccountByCharacterName(playerid, const name[])
{
	new query[384];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"SELECT c.`id` AS `character_id`, a.`id` AS `account_id`, a.`username`, a.`password_hash`, \
		a.`last_ip`, IFNULL(UNIX_TIMESTAMP(a.`last_login_at`), 0) AS `last_login_at` \
		FROM `characters` c \
		INNER JOIN `accounts` a ON a.`id` = c.`account_id` \
		WHERE BINARY c.`name` = '%e' LIMIT 1",
		name
	);

	mysql_tquery(Database_GetHandle(), query, "Character_OnAccountNameLookup", "i", playerid);
	return 1;
}

CharacterDB_FindByName(playerid, const name[])
{
	new query[192];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"SELECT `id` FROM `characters` WHERE BINARY `name` = '%e' LIMIT 1",
		name
	);

	mysql_tquery(Database_GetHandle(), query, "Character_OnNameLookup", "is", playerid, name);
	return 1;
}

CharacterDB_Insert(playerid, const name[])
{
	new query[384];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"INSERT INTO `characters` (`account_id`, `name`, `skin`) VALUES (%d, '%e', %d)",
		Account_GetID(playerid),
		name,
		CHARACTER_DEFAULT_SKIN
	);

	mysql_tquery(Database_GetHandle(), query, "Character_OnInserted", "i", playerid);
	return 1;
}

CharacterDB_Load(playerid, character_id)
{
	new query[512];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"SELECT `id`, `account_id`, `name`, `skin`, `age`, `sex`, `ethnos`, \
		`last_x`, `last_y`, `last_z`, `last_angle`, `last_interior`, `last_world`, \
		IFNULL(UNIX_TIMESTAMP(`last_unloaded_at`), 0) AS `last_unloaded_at` \
		FROM `characters` WHERE `id` = %d AND `account_id` = %d LIMIT 1",
		character_id,
		Account_GetID(playerid)
	);

	mysql_tquery(Database_GetHandle(), query, "Character_OnLoaded", "i", playerid);
	return 1;
}

CharacterDB_UpdateLogin(playerid)
{
	new query[128];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"UPDATE `characters` SET `last_login_at` = NOW() WHERE `id` = %d LIMIT 1",
		CharacterData[playerid][ID]
	);

	mysql_tquery(Database_GetHandle(), query);
	return 1;
}

CharacterDB_UpdateUnloadPosition(playerid, Float:x, Float:y, Float:z, Float:angle, interior, world)
{
	new query[384];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"UPDATE `characters` SET `last_x` = %f, `last_y` = %f, `last_z` = %f, `last_angle` = %f, \
		`last_interior` = %d, `last_world` = %d, `last_unloaded_at` = NOW() WHERE `id` = %d LIMIT 1",
		x,
		y,
		z,
		angle,
		interior,
		world,
		CharacterData[playerid][ID]
	);

	mysql_tquery(Database_GetHandle(), query);
	return 1;
}
