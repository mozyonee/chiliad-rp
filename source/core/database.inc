#if defined CHILIAD_DATABASE
	#endinput
#endif
#define CHILIAD_DATABASE

#include <a_mysql>

#define MYSQL_CONFIG_FILE "mysql.ini"
#define MYSQL_DEFAULT_PORT (3306)

static MySQL:gDatabase = MYSQL_INVALID_HANDLE;
static gDatabaseHost[64];
static gDatabaseUser[64];
static gDatabasePassword[128];
static gDatabaseName[64];
static gDatabasePort = MYSQL_DEFAULT_PORT;

static Database_Trim(value[])
{
	new start, end = strlen(value) - 1;

	while (value[start] <= ' ' && value[start] != EOS)
	{
		start++;
	}

	while (end >= start && value[end] <= ' ')
	{
		end--;
	}

	if (start > 0)
	{
		strmid(value, value, start, end + 1, strlen(value) + 1);
	}

	value[(end - start) + 1] = EOS;
	return 1;
}

static Database_SetConfigValue(const key[], const value[])
{
	if (!strcmp(key, "host", true))
	{
		format(gDatabaseHost, sizeof(gDatabaseHost), "%s", value);
		return 1;
	}

	if (!strcmp(key, "user", true) || !strcmp(key, "username", true))
	{
		format(gDatabaseUser, sizeof(gDatabaseUser), "%s", value);
		return 1;
	}

	if (!strcmp(key, "password", true) || !strcmp(key, "pass", true))
	{
		format(gDatabasePassword, sizeof(gDatabasePassword), "%s", value);
		return 1;
	}

	if (!strcmp(key, "database", true) || !strcmp(key, "db", true))
	{
		format(gDatabaseName, sizeof(gDatabaseName), "%s", value);
		return 1;
	}

	if (!strcmp(key, "port", true))
	{
		gDatabasePort = strval(value);
		return 1;
	}

	return 0;
}

static bool:Database_LoadConfig()
{
	gDatabaseHost[0] = EOS;
	gDatabaseUser[0] = EOS;
	gDatabasePassword[0] = EOS;
	gDatabaseName[0] = EOS;
	gDatabasePort = MYSQL_DEFAULT_PORT;

	new File:file = fopen(MYSQL_CONFIG_FILE, io_read);
	if (!file)
	{
		printf("[Database] Missing scriptfiles/%s. Copy scriptfiles/mysql.example.ini to scriptfiles/%s and update it.", MYSQL_CONFIG_FILE, MYSQL_CONFIG_FILE);
		return false;
	}

	new line[256], key[64], value[128], separator;

	while (fread(file, line, sizeof(line)))
	{
		Database_Trim(line);

		if (!line[0] || line[0] == '#' || line[0] == ';' || line[0] == '[')
		{
			continue;
		}

		separator = strfind(line, "=");
		if (separator == -1)
		{
			continue;
		}

		strmid(key, line, 0, separator, sizeof(key));
		strmid(value, line, separator + 1, strlen(line), sizeof(value));

		Database_Trim(key);
		Database_Trim(value);
		Database_SetConfigValue(key, value);
	}

	fclose(file);

	if (!strlen(gDatabaseHost) || !strlen(gDatabaseUser) || !strlen(gDatabaseName))
	{
		printf("[Database] Missing host, user, or database in scriptfiles/%s.", MYSQL_CONFIG_FILE);
		return false;
	}

	if (gDatabasePort <= 0 || gDatabasePort > 65535)
	{
		printf("[Database] Invalid port in scriptfiles/%s.", MYSQL_CONFIG_FILE);
		return false;
	}

	return true;
}

bool:Database_Init()
{
	if (gDatabase != MYSQL_INVALID_HANDLE)
	{
		return true;
	}

	if (!Database_LoadConfig())
	{
		return false;
	}

	new MySQLOpt:options = mysql_init_options();
	mysql_set_option(options, AUTO_RECONNECT, true);
	mysql_set_option(options, SERVER_PORT, gDatabasePort);

	gDatabase = mysql_connect(gDatabaseHost, gDatabaseUser, gDatabasePassword, gDatabaseName, options);

	if (gDatabase == MYSQL_INVALID_HANDLE || mysql_errno(gDatabase) != 0)
	{
		new error[144];
		mysql_error(error, sizeof(error), gDatabase);
		printf("[Database] Connection failed: %d (%s)", mysql_errno(gDatabase), error);
		gDatabase = MYSQL_INVALID_HANDLE;
		return false;
	}

	printf("[Database] Connected to %s:%d/%s.", gDatabaseHost, gDatabasePort, gDatabaseName);
	return true;
}

Database_Shutdown()
{
	if (gDatabase == MYSQL_INVALID_HANDLE)
	{
		return 1;
	}

	mysql_close(gDatabase);
	gDatabase = MYSQL_INVALID_HANDLE;

	print("[Database] Connection closed.");
	return 1;
}

stock MySQL:Database_GetHandle()
{
	return gDatabase;
}

stock bool:Database_IsConnected()
{
	return gDatabase != MYSQL_INVALID_HANDLE && mysql_errno(gDatabase) == 0;
}

stock Database_EnsureColumn(const table[], const column[], const definition[])
{
	new query[256];
	new exists;

	mysql_format(gDatabase, query, sizeof(query),
		"SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS \
		WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = '%e' AND COLUMN_NAME = '%e'",
		table,
		column
	);

	new Cache:cache = mysql_query(gDatabase, query);

	if (cache != MYSQL_INVALID_CACHE && cache_num_rows())
	{
		cache_get_value_index_int(0, 0, exists);
		cache_delete(cache);
	}

	if (exists)
	{
		return 1;
	}

	mysql_format(gDatabase, query, sizeof(query),
		"ALTER TABLE `%e` ADD COLUMN `%e` %s",
		table,
		column,
		definition
	);

	mysql_query(gDatabase, query, false);
	return 1;
}
