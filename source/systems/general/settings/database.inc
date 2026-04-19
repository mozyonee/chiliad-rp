#if defined CHILIAD_GENERAL_SETTINGS_DATABASE
	#endinput
#endif
#define CHILIAD_GENERAL_SETTINGS_DATABASE

SettingsDB_EnsureTables()
{
	mysql_query(Database_GetHandle(),
		"CREATE TABLE IF NOT EXISTS `settings` (\
			`character_id` INT UNSIGNED NOT NULL,\
			`pm_enabled` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,\
			`ooc_chat_enabled` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,\
			`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,\
			`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,\
			PRIMARY KEY (`character_id`),\
			CONSTRAINT `fk_settings_character_id` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE\
		) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;",
		false
	);
	return 1;
}

SettingsDB_Load(playerid)
{
	new query[128];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"SELECT `pm_enabled`, `ooc_chat_enabled` FROM `settings` WHERE `character_id` = %d LIMIT 1",
		CharacterData[playerid][ID]
	);

	mysql_tquery(Database_GetHandle(), query, "Settings_OnLoaded", "i", playerid);
	return 1;
}

SettingsDB_Save(playerid)
{
	new query[256];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"INSERT INTO `settings` (`character_id`, `pm_enabled`, `ooc_chat_enabled`) VALUES (%d, %d, %d) \
		ON DUPLICATE KEY UPDATE `pm_enabled` = VALUES(`pm_enabled`), `ooc_chat_enabled` = VALUES(`ooc_chat_enabled`)",
		CharacterData[playerid][ID],
		SettingsData[playerid][PMEnabled],
		SettingsData[playerid][OOCChatEnabled]
	);

	mysql_tquery(Database_GetHandle(), query);
	return 1;
}
