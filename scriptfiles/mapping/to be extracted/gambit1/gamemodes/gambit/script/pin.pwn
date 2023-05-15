#include <YSI\y_hooks>

#define PIN_REASON_KICK			""gbError"Вы были отсоединены от сервера за отказ от ввода пин-кода."

stock showPin( playerid ) {
	for( new i = 1; i <= 10; i++) {
		format( gb_string, sizeof gb_string, "%d", KeyNumber[playerid][i-1]);
		PlayerTextDrawSetString( playerid, AloginTextDraw[playerid][i], gb_string );
		PlayerTextDrawShow( playerid, AloginTextDraw[playerid][i]);
	}
	for(new i = 0;i < 17;i++) PlayerTextDrawShow( playerid, AloginTextDraw[playerid][i]);
	setData( playerid, "Login:aloginTD", 1);
	PlayerKey[playerid] = "";
	SelectTextDraw(playerid,0xAA3333AA);
}

hook OnPlayerClickTextDraw(playerid, Text:clickedid) 
{
	if(_:clickedid == INVALID_TEXT_DRAW) 
	{
	    if( getData(playerid, "Login:aloginTD") ) 
		{
		    CancelSelectTextDraw(playerid);
			for(new i; i < 17; i++) 
			{
				PlayerTextDrawHide(playerid, AloginTextDraw[playerid][i]);
			}
			
			SendClientMessage(playerid, C_WHITE, !PIN_REASON_KICK);
			return KickEx( playerid );
		}
	}
	
	return true;
}

hook OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid) {
	clear_massive();
	for(new i = 1; i <= 10; i++) {
	    if( playertextid == AloginTextDraw[playerid][i] ) {
	        if( !strlen(PlayerKey[playerid]) ) {//если это первый символ в массиве
	            format( gb_string, sizeof gb_string, "%d", KeyNumber[playerid][i-1]);
	            strcat( PlayerKey[playerid], gb_string ); //заносим первый символ в массив
	        }
	        else {//если не первый
	            format( gb_string, sizeof gb_string, "%d", KeyNumber[playerid][i-1]);
	            strcat( PlayerKey[playerid], gb_string );
	        }
	        PlayerTextDrawSetString(playerid, AloginTextDraw[playerid][14], PlayerKey[playerid] );
	        PlayerTextDrawHide(playerid,AloginTextDraw[playerid][14]);
			PlayerTextDrawShow(playerid,AloginTextDraw[playerid][14]);
			break;
	    }
	}
	if( playertextid == AloginTextDraw[playerid][16] ) {
	    CancelSelectTextDraw(playerid);
		for(new i; i < 17; i++) PlayerTextDrawHide(playerid,AloginTextDraw[playerid][i]);
		KickEx(playerid);
	}
	if(playertextid == AloginTextDraw[playerid][11]) {
        PlayerKey[playerid] = "";
        PlayerTextDrawSetString(playerid, AloginTextDraw[playerid][14], PlayerKey[playerid]);
        PlayerTextDrawHide(playerid,AloginTextDraw[playerid][14]);
		PlayerTextDrawShow(playerid,AloginTextDraw[playerid][14]);
	}
	if(playertextid == AloginTextDraw[playerid][12]) 
	{
	    if( strval(PlayerKey[playerid]) == Player[playerid][uPinCode] ) 
		{
	        CancelSelectTextDraw(playerid);
			for(new i; i < 17; i++) 
			{
				PlayerTextDrawHide( playerid, AloginTextDraw[playerid][i] );
	        }
			
			SendClientMessage(playerid, C_WHITE, ""gbAccess"Вы успешно прошли двухфакторную аутентификацию.");
	        PlayerKey[playerid] = "";
			delData( playerid, "Login:aloginTD" );
			
			LoadPlayer( playerid );
	    }
	    else 
		{
	        SendClientMessage(playerid, C_WHITE, !PIN_REASON_KICK);
	        KickEx(playerid);
	    }
		//Function
	}
	return true;
}

hook OnPlayerConnect( playerid ) {
	new random_array[10] = {-1, ...}; // заполним массив -1, чтобы 0 в результирующем массиве мог быть на любом месте
	random_values_array( random_array, 10 );
 	for(new i; i < 10; i++) KeyNumber[playerid][i] = random_array[i];
	//Двуфакторная авторизация
	AloginTextDraw[playerid][0] = CreatePlayerTextDraw(playerid, 389.764678, 193.416687, "usebox");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][0], 0.000000, 14.399790);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][0], 245.529342, 0.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][0], 1);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][0], 0);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][0], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][0], 17);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][0], 0x00000000);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][0], 0);

	AloginTextDraw[playerid][1] = CreatePlayerTextDraw(playerid, 269.764465, 198.583419, "1");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][1], 0.511176, 2.119167);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][1], 20.000000, 20.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][1], 2);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][1], -1);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][1], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][1], 37);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][1], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][1], 2);
	PlayerTextDrawSetProportional(playerid, AloginTextDraw[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, AloginTextDraw[playerid][1], true);

	AloginTextDraw[playerid][2] = CreatePlayerTextDraw(playerid, 317.352600, 198.583419, "2");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][2], 0.511176, 2.119167);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][2], 20.000000, 20.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][2], 2);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][2], -1);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][2], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][2], 37);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][2], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][2], 2);
	PlayerTextDrawSetProportional(playerid, AloginTextDraw[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, AloginTextDraw[playerid][2], true);

	AloginTextDraw[playerid][3] = CreatePlayerTextDraw(playerid, 364.940734, 198.583419, "3");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][3], 0.511176, 2.119167);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][3], 20.000000, 20.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][3], 2);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][3], -1);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][3], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][3], 37);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][3], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][3], 2);
	PlayerTextDrawSetProportional(playerid, AloginTextDraw[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, AloginTextDraw[playerid][3], true);

	AloginTextDraw[playerid][4] = CreatePlayerTextDraw(playerid, 269.764465, 232.833374, "4");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][4], 0.511176, 2.119167);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][4], 20.000000, 20.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][4], 2);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][4], -1);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][4], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][4], 37);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][4], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][4], 2);
	PlayerTextDrawSetProportional(playerid, AloginTextDraw[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, AloginTextDraw[playerid][4], true);

	AloginTextDraw[playerid][5] = CreatePlayerTextDraw(playerid, 317.352600, 233.833374, "5");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][5], 0.511176, 2.119167);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][5], 20.000000, 20.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][5], 2);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][5], -1);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][5], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][5], 37);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][5], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][5], 2);
	PlayerTextDrawSetProportional(playerid, AloginTextDraw[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, AloginTextDraw[playerid][5], true);

	AloginTextDraw[playerid][6] = CreatePlayerTextDraw(playerid, 364.940734, 234.250045, "6");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][6], 0.511176, 2.119167);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][6], 20.000000, 20.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][6], 2);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][6], -1);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][6], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][6], 37);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][6], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][6], 2);
	PlayerTextDrawSetProportional(playerid, AloginTextDraw[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, AloginTextDraw[playerid][6], true);

	AloginTextDraw[playerid][7] = CreatePlayerTextDraw(playerid, 269.764465, 266.166717, "7");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][7], 0.511176, 2.119167);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][7], 20.000000, 20.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][7], 2);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][7], -1);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][7], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][7], 37);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][7], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][7], 2);
	PlayerTextDrawSetProportional(playerid, AloginTextDraw[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, AloginTextDraw[playerid][7], true);

	AloginTextDraw[playerid][8] = CreatePlayerTextDraw(playerid, 317.352600, 266.000030, "8");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][8], 0.511176, 2.119167);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][8], 20.000000, 20.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][8], 2);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][8], -1);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][8], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][8], 37);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][8], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][8], 2);
	PlayerTextDrawSetProportional(playerid, AloginTextDraw[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, AloginTextDraw[playerid][8], true);

	AloginTextDraw[playerid][9] = CreatePlayerTextDraw(playerid, 364.940734, 265.833312, "9");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][9], 0.511176, 2.119167);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][9], 20.000000, 20.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][9], 2);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][9], -1);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][9], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][9], 37);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][9], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][9], 2);
	PlayerTextDrawSetProportional(playerid, AloginTextDraw[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, AloginTextDraw[playerid][9], true);

	AloginTextDraw[playerid][10] = CreatePlayerTextDraw(playerid, 269.764465, 298.916687, "0");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][10], 0.511176, 2.119167);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][10], 20.000000, 20.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][10], 2);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][10], -1);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][10], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][10], 37);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][10], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][10], 2);
	PlayerTextDrawSetProportional(playerid, AloginTextDraw[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid, AloginTextDraw[playerid][10], true);

	AloginTextDraw[playerid][11] = CreatePlayerTextDraw(playerid, 317.352600, 299.916625, "X");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][11], 0.186470, 2.002500);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][11], 20.000000, 20.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][11], 2);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][11], -1);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][11], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][11], -1711275910);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][11], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][11], 2);
	PlayerTextDrawSetProportional(playerid, AloginTextDraw[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid, AloginTextDraw[playerid][11], true);

	AloginTextDraw[playerid][12] = CreatePlayerTextDraw(playerid, 364.940734, 299.749938, "V");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][12], 0.235881, 1.973334);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][12], 20.000000, 20.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][12], 2);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][12], -1);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][12], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][12], 10485838);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][12], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][12], 2);
	PlayerTextDrawSetProportional(playerid, AloginTextDraw[playerid][12], 1);
	PlayerTextDrawSetSelectable(playerid, AloginTextDraw[playerid][12], true);

	AloginTextDraw[playerid][13] = CreatePlayerTextDraw(playerid, 389.764648, 169.500015, "usebox");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][13], 0.000000, 1.945641);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][13], 245.529388, 0.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][13], 1);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][13], 0);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][13], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][13], 11);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][13], 0x00000000);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][13], 0);

	AloginTextDraw[playerid][14] = CreatePlayerTextDraw(playerid, 317.646942, 171.500061, "_");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][14], 0.449999, 1.600000);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][14], 14.117649, 132.416702);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][14], 2);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][14], -1);
	PlayerTextDrawUseBox(playerid, AloginTextDraw[playerid][14], true);
	PlayerTextDrawBoxColor(playerid, AloginTextDraw[playerid][14], 35);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][14], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, AloginTextDraw[playerid][14], 1);
	//PlayerTextDrawSetSelectable(playerid, AloginTextDraw[playerid][14], true);

	AloginTextDraw[playerid][15] = CreatePlayerTextDraw(playerid, 381.176330, 142.916656, "LD_BEAT:chit");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][15], 0.449999, 1.600000);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][15], 30.588251, 33.250000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][15], 1);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][15], 10348344);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][15], 1);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][15], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][15], 4);

	AloginTextDraw[playerid][16] = CreatePlayerTextDraw(playerid, 397.176452, 151.083328, "X");
	PlayerTextDrawLetterSize(playerid, AloginTextDraw[playerid][16], 0.449999, 1.600000);
	PlayerTextDrawTextSize(playerid, AloginTextDraw[playerid][16], 20.000000, 20.000000);
	PlayerTextDrawAlignment(playerid, AloginTextDraw[playerid][16], 2);
	PlayerTextDrawColor(playerid, AloginTextDraw[playerid][16], 38);
	PlayerTextDrawSetShadow(playerid, AloginTextDraw[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, AloginTextDraw[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, AloginTextDraw[playerid][16], 51);
	PlayerTextDrawFont(playerid, AloginTextDraw[playerid][16], 2);
	PlayerTextDrawSetProportional(playerid, AloginTextDraw[playerid][16], 1);
	PlayerTextDrawSetSelectable(playerid, AloginTextDraw[playerid][16], true);
	return true;
}
