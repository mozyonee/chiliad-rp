#if defined CHILIAD_BANKING_DB
	#endinput
#endif
#define CHILIAD_BANKING_DB

BankingDB_EnsureTables()
{
	mysql_query(Database_GetHandle(),
		"CREATE TABLE IF NOT EXISTS `bank_cards` (\
			`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,\
			`character_id` INT UNSIGNED NOT NULL,\
			`pin_hash` CHAR(64) NOT NULL,\
			`balance` INT UNSIGNED NOT NULL DEFAULT 0,\
			`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,\
			`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,\
			PRIMARY KEY (`id`),\
			KEY `idx_bank_cards_character_id` (`character_id`),\
			CONSTRAINT `fk_bank_cards_character_id` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE\
		) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;",
		false
	);
	return 1;
}

BankingDB_LoadCards(playerid)
{
	new query[192];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"SELECT `id`, `balance` FROM `bank_cards` WHERE `character_id` = %d ORDER BY `id` ASC LIMIT %d",
		CharacterData[playerid][ID],
		BANKING_MAX_CARDS
	);

	mysql_tquery(Database_GetHandle(), query, "Banking_OnCardsLoaded", "i", playerid);
	return 1;
}

BankingDB_CreateCard(playerid, const pin[])
{
	new query[256];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"INSERT INTO `bank_cards` (`character_id`, `pin_hash`) VALUES (%d, SHA2('%e', 256))",
		CharacterData[playerid][ID],
		pin
	);

	mysql_tquery(Database_GetHandle(), query, "Banking_OnCardCreated", "i", playerid);
	return 1;
}

BankingDB_VerifyPin(playerid, const pin[])
{
	new query[256];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"SELECT `id`, `balance` FROM `bank_cards` WHERE `id` = %d AND `character_id` = %d AND `pin_hash` = SHA2('%e', 256) LIMIT 1",
		BankingSelectedCardID[playerid],
		CharacterData[playerid][ID],
		pin
	);

	mysql_tquery(Database_GetHandle(), query, "Banking_OnPinVerified", "i", playerid);
	return 1;
}

BankingDB_LoadSelectedCard(playerid)
{
	new query[192];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"SELECT `id`, `balance` FROM `bank_cards` WHERE `id` = %d AND `character_id` = %d LIMIT 1",
		BankingSelectedCardID[playerid],
		CharacterData[playerid][ID]
	);

	mysql_tquery(Database_GetHandle(), query, "Banking_OnSelectedCardLoaded", "i", playerid);
	return 1;
}

BankingDB_Deposit(playerid, amount)
{
	new query[192];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"UPDATE `bank_cards` SET `balance` = `balance` + %d WHERE `id` = %d AND `character_id` = %d LIMIT 1",
		amount,
		BankingSelectedCardID[playerid],
		CharacterData[playerid][ID]
	);

	mysql_tquery(Database_GetHandle(), query, "Banking_OnOperationDone", "i", playerid);
	return 1;
}

BankingDB_Withdraw(playerid, amount)
{
	new query[256];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"UPDATE `bank_cards` SET `balance` = `balance` - %d WHERE `id` = %d AND `character_id` = %d AND `balance` >= %d LIMIT 1",
		amount,
		BankingSelectedCardID[playerid],
		CharacterData[playerid][ID],
		amount
	);

	mysql_tquery(Database_GetHandle(), query, "Banking_OnWithdrawDone", "ii", playerid, amount);
	return 1;
}

BankingDB_Transfer(playerid, target_card_id, amount)
{
	new query[320];

	mysql_format(Database_GetHandle(), query, sizeof(query),
		"UPDATE `bank_cards` sender \
		JOIN `bank_cards` receiver ON receiver.`id` = %d \
		SET sender.`balance` = sender.`balance` - %d, receiver.`balance` = receiver.`balance` + %d \
		WHERE sender.`id` = %d AND sender.`character_id` = %d AND sender.`balance` >= %d",
		target_card_id,
		amount,
		amount,
		BankingSelectedCardID[playerid],
		CharacterData[playerid][ID],
		amount
	);

	mysql_tquery(Database_GetHandle(), query, "Banking_OnTransferDone", "i", playerid);
	return 1;
}
