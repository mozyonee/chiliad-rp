#include <YSI\y_hooks>

hook OnGameModeInit() {
	LoadMySQLSettings();
	//printf("MYSQL");
    mysql = mysql_connect(
		MySQLSettings[HOST],
		MySQLSettings[USERNAME],
		MySQLSettings[DATABASE],
		MySQLSettings[PASSWORD],
		MySQLSettings[PORT][1] );
 	mysql_tquery( mysql, "SET NAMES 'utf8'", "", "");
    mysql_tquery( mysql, "SET CHARACTER SET 'cp1251'", "", "");
	mysql_tquery( mysql, "UPDATE gb_users SET uStatus = '0'", "", "");
	return true;
}

stock LoadMySQLSettings() {
	new FileID = ini_openFile("mysql_settings.ini"),errCode;
	if(FileID < 0) {
		printf("Error while opening MySQL settings file. Error code: %d",FileID);
		return 0;
	}
	errCode = ini_getString(FileID,"host",MySQLSettings[HOST]);
	if(errCode < 0) printf("Error while reading MySQL settings file (host). Error code: %d",errCode);
	errCode = ini_getString(FileID,"username",MySQLSettings[USERNAME]);
	if(errCode < 0) printf("Error while reading MySQL settings file (username). Error code: %d",errCode);
	errCode = ini_getString(FileID,"password",MySQLSettings[PASSWORD]);
	if(errCode < 0) printf("Error while reading MySQL settings file (password). Error code: %d",errCode);
	errCode = ini_getString(FileID,"database",MySQLSettings[DATABASE]);
	if(errCode < 0) printf("Error while reading MySQL settings file (database). Error code: %d",errCode);
	errCode = ini_getString(FileID,"port",MySQLSettings[PORT][1] );
	if(errCode < 0) printf("Error while reading MySQL settings file (port). Error code: %d",errCode);
	ini_closeFile(FileID);
	return 1;
}