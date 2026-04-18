#if defined CHILIAD_INVENTORY_DB
	#endinput
#endif
#define CHILIAD_INVENTORY_DB

InventoryDB_EnsureTables()
{
	mysql_query(Database_GetHandle(),
		"CREATE TABLE IF NOT EXISTS `character_inventory` (\
			`character_id` INT UNSIGNED NOT NULL,\
			`item_id` INT UNSIGNED NOT NULL,\
			`amount` INT UNSIGNED NOT NULL DEFAULT 0,\
			`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,\
			`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,\
			PRIMARY KEY (`character_id`, `item_id`),\
			CONSTRAINT `fk_character_inventory_character_id` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE\
		) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;",
		false
	);
	return 1;
}

InventoryDB_Load(playerid)
{
	new query[160];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"SELECT `item_id`, `amount` FROM `character_inventory` WHERE `character_id` = %d AND `amount` > 0 ORDER BY `item_id` ASC",
		CharacterData[playerid][ID]
	);

	mysql_tquery(Database_GetHandle(), query, "Inventory_OnLoaded", "i", playerid);
	return 1;
}

InventoryDB_SetItem(playerid, itemid, amount)
{
	new query[256];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"INSERT INTO `character_inventory` (`character_id`, `item_id`, `amount`) VALUES (%d, %d, %d) \
		ON DUPLICATE KEY UPDATE `amount` = VALUES(`amount`)",
		CharacterData[playerid][ID],
		itemid,
		amount
	);

	mysql_tquery(Database_GetHandle(), query);
	return 1;
}

InventoryDB_DeleteItem(playerid, itemid)
{
	new query[160];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"DELETE FROM `character_inventory` WHERE `character_id` = %d AND `item_id` = %d LIMIT 1",
		CharacterData[playerid][ID],
		itemid
	);

	mysql_tquery(Database_GetHandle(), query);
	return 1;
}
