#if defined CHILIAD_DIALOGS
	#endinput
#endif
#define CHILIAD_DIALOGS

#define DIALOG_ACCOUNT_BASE (1000)
#define DIALOG_CHARACTER_BASE (1100)
#define DIALOG_MENU_BASE (1200)
#define DIALOG_INVENTORY_BASE (1300)

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
