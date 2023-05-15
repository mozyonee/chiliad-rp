
new dialog_anticheat[MAX_PLAYERS],
	bool:dialog_cheat_use[MAX_PLAYERS] = false;

showPlayerDialog( playerid, dialogid, style, caption[], info[], button1[], button2[] ) {
	dialog_anticheat[playerid] = dialogid;
	dialog_cheat_use[playerid] = false;
    ShowPlayerDialog( playerid, dialogid, style, caption, info, button1, button2 );
	return true;
}

stock antiDialogHider( playerid, dialogid ) {
	
	if( dialog_anticheat[playerid] == 0 && Player[playerid][uID] != 0
		&& !dialog_cheat_use[playerid] ) {
        format( gb_string, sizeof gb_string, "<AntiCheat> %s[%d] возможно использует чит на подмену диалога.",
			Player[playerid][uName], playerid );
		SendAdminMessage( C_RED, gb_string);
		//SendMes( playerid, -1, "Чит использует диалог %d", dialogid );
		printf( "<AntiCheat> возможно %s использует чит на подмену диалога, диалог %d", Player[playerid][uName], dialogid );
		logs( 6, "использует подмену диалога", Player[playerid][uID], dialogid );
		dialog_cheat_use[playerid] = true;
		return true;
	}
	if( dialog_anticheat[playerid] == dialogid && dialog_cheat_use[playerid] == false ) dialog_anticheat[playerid] = 0;
	return true;
}

stock GivePlayerCash( playerid, cash ) {
	Player[playerid][uMoney] += cash;
	return true;
}

stock SetPlayerCash( playerid, cash ) {
	Player[playerid][uMoney] = cash;
	return true;
}