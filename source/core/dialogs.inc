#if defined CHILIAD_DIALOGS
	#endinput
#endif
#define CHILIAD_DIALOGS

enum
{
	DIALOG_ACCOUNT_LOGIN = 1000,
	DIALOG_ACCOUNT_REGISTER,

	DIALOG_CHARACTER_SELECT = 1100,
	DIALOG_CHARACTER_CREATE_NAME,
	DIALOG_CHARACTER_RESUME_SESSION,

	DIALOG_MENU_MAIN = 1200,
	DIALOG_GENERAL_HELP,

	DIALOG_INVENTORY_LIST = 1300,
	DIALOG_INVENTORY_ITEM,
	DIALOG_INVENTORY_GIVE,
	DIALOG_INVENTORY_THROW,
	DIALOG_INVENTORY_STATISTICS,

	DIALOG_BANKING_CARDS = 1400,
	DIALOG_BANKING_CREATE_PIN,
	DIALOG_BANKING_ENTER_PIN,
	DIALOG_BANKING_ACCOUNT,
	DIALOG_BANKING_WITHDRAW,
	DIALOG_BANKING_TOP_UP,
	DIALOG_BANKING_TRANSFER,
	DIALOG_BANKING_BALANCE,

	DIALOG_SETTINGS_MAIN = 1500,

	DIALOG_ADMIN_LIST = 1600,
	DIALOG_ADMIN_MENU,
	DIALOG_ADMIN_HELP,

	DIALOG_VEHICLE_LIST = 1700,
	DIALOG_VEHICLE_OPTIONS
}

static bool:DialogOpen[MAX_PLAYERS];

stock Dialog_ShowPlayer(playerid, dialogid, t_DIALOG_STYLE:style, const caption[], const info[], const button1[], const button2[])
{
	DialogOpen[playerid] = (dialogid != -1);
	return ShowPlayerDialog(playerid, dialogid, style, caption, info, button1, button2);
}

stock Dialog_ClearOpen(playerid)
{
	DialogOpen[playerid] = false;
	return 1;
}

stock bool:Dialog_IsOpen(playerid)
{
	return DialogOpen[playerid];
}
