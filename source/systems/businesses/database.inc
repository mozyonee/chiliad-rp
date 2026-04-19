#if defined CHILIAD_BUSINESSES_DATABASE
	#endinput
#endif
#define CHILIAD_BUSINESSES_DATABASE

stock BusinessDB_EnsureTables()
{
	mysql_query(Database_GetHandle(),
		"CREATE TABLE IF NOT EXISTS `businesses` (\
			`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,\
			`owner_id` INT UNSIGNED NOT NULL DEFAULT 0,\
			`type` TINYINT UNSIGNED NOT NULL DEFAULT 0,\
			`name` VARCHAR(64) NOT NULL DEFAULT 'Business',\
			`price` INT UNSIGNED NOT NULL DEFAULT 100000,\
			`balance` INT UNSIGNED NOT NULL DEFAULT 0,\
			`stock` INT UNSIGNED NOT NULL DEFAULT 1000,\
			`max_stock` INT UNSIGNED NOT NULL DEFAULT 1000,\
			`locked` TINYINT(1) NOT NULL DEFAULT 0,\
			`ext_x` FLOAT NOT NULL DEFAULT 0.0,\
			`ext_y` FLOAT NOT NULL DEFAULT 0.0,\
			`ext_z` FLOAT NOT NULL DEFAULT 0.0,\
			`int_x` FLOAT NOT NULL DEFAULT 0.0,\
			`int_y` FLOAT NOT NULL DEFAULT 0.0,\
			`int_z` FLOAT NOT NULL DEFAULT 0.0,\
			`int_id` INT UNSIGNED NOT NULL DEFAULT 0,\
			`vw` INT UNSIGNED NOT NULL DEFAULT 0,\
			PRIMARY KEY (`id`)\
		)", false);
	return 1;
}

stock BusinessDB_LoadAll()
{
	mysql_tquery(Database_GetHandle(), "SELECT * FROM `businesses` LIMIT 100", "Business_OnAllLoaded");
	return 1;
}

stock BusinessDB_Create(type, price, const name[], Float:x, Float:y, Float:z, Float:ix, Float:iy, Float:iz, iid)
{
	new query[512];
	mysql_format(Database_GetHandle(), query, sizeof(query),
		"INSERT INTO `businesses` (`type`, `price`, `name`, `stock`, `max_stock`, `ext_x`, `ext_y`, `ext_z`, `int_x`, `int_y`, `int_z`, `int_id`) VALUES (%d, %d, '%e', 1000, 1000, %f, %f, %f, %f, %f, %f, %d)",
		type, price, name, x, y, z, ix, iy, iz, iid);
	
	mysql_tquery(Database_GetHandle(), query, "Business_OnCreated");
	return 1;
}

stock BusinessDB_UpdateOwner(bid, oid)
{
	new query[128];
	mysql_format(Database_GetHandle(), query, sizeof(query), "UPDATE `businesses` SET `owner_id` = %d WHERE `id` = %d LIMIT 1", oid, bid);
	mysql_tquery(Database_GetHandle(), query);
	return 1;
}

stock BusinessDB_UpdateBalance(bid, bal)
{
	new query[128];
	mysql_format(Database_GetHandle(), query, sizeof(query), "UPDATE `businesses` SET `balance` = %d WHERE `id` = %d LIMIT 1", bal, bid);
	mysql_tquery(Database_GetHandle(), query);
	return 1;
}

stock BusinessDB_UpdateStock(bid, stk)
{
	new query[128];
	mysql_format(Database_GetHandle(), query, sizeof(query), "UPDATE `businesses` SET `stock` = %d WHERE `id` = %d LIMIT 1", stk, bid);
	mysql_tquery(Database_GetHandle(), query);
	return 1;
}

stock BusinessDB_UpdateLocked(bid, lck)
{
	new query[128];
	mysql_format(Database_GetHandle(), query, sizeof(query), "UPDATE `businesses` SET `locked` = %d WHERE `id` = %d LIMIT 1", lck, bid);
	mysql_tquery(Database_GetHandle(), query);
	return 1;
}

stock BusinessDB_Delete(bid)
{
	new query[96];
	mysql_format(Database_GetHandle(), query, sizeof(query), "DELETE FROM `businesses` WHERE `id` = %d LIMIT 1", bid);
	mysql_tquery(Database_GetHandle(), query, "Business_OnDeleted");
	return 1;
}
