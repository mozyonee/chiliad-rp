#include <a_samp>
#include <streamer>

#define gbInfo   	"{FFFF00}| {ffffff}"
#define cGRAY   	"{AFAFAF}"
#define C_GRAY 		0xAFAFAFAA
#define d_hellquest 2595


new helloween_npc[8], Text3D:helloween_text[8];

enum h_qInfo {
	h_name[32],
	h_qID,
	h_qNPC,
	h_qText[256],
	h_qAnsw[256],
	Float:q_Coord[3],
	h_qPrize,
	h_qPrizeAmmount,
	h_qZad[256],
};

new helloween_quest[7][h_qInfo] = {
    {"Пират", 1, 1, "{ffffff}Эгегей, ничерта не видно выручи, включи лампу на маяке!", "{ffffff}Спасибо тебе, вот твои конфеты", { 2157.8518,-104.5742,2.7131 }, 513, 1, "Вы успешно включили лампу на маяке, вернитесь к пирату" },
	{"Продавец", 1, 2, "{ffffff}Эй братишка, я тут прогуливался недалеко\nи потерял свой чемодан, не поможешь найти его?", "{ffffff}Спасибо за помощь, вот тебе пара конфет", { 2316.1382,61.0467,26.4822 }, 513, 1, "Вы успешно нашли чемодан, отнесите его к тороговцу" },
	{"Механик", 1, 3, "{ffffff}Привет! Я потерял у коробку с инструментами у разбитой машины.Можешь мне принести ее?", "{ffffff}Ах ты черт, вот же они. Спасибо тебе, на вот, держи конфет.", { 2460.7891,44.6030,26.3359 }, 513, 1, "Вы успешно нашли инструменты, отнесите их механику" },

	{"Целитель", 1, 4, "{ffffff}Вийвин! Я тут пытаюсь изготовить зелье \nмолодости, не поможешь мне найти \nнехватающих трав?", "{ffffff}Спасибо тебе дитя богов, вот держи \nв знак благодарности.", { 2668.1946,224.8086,56.7205 }, 513, 1, "Вы успешно нашли травы, отнесите их целителю" },
    {"Священник", 1, 5, "{ffffff}Доброй ночи! Я тут обитаю давно, и без библии моя жизнь ничто, не мог бы ты принести мне библию?\nЯ спрятал её в почтовый ящик на против церкви", "{ffffff}Спасибо тебе дитя. Мой дух теперь упокоен. \nДержи, это в знак благодарности.", { 2243.6453,-18.7117,26.4844 }, 513, 1, "Вы нашли бибилю, вернитесь к священнику" },
	{"Пьяница", 1, 6, "{ffffff}Стоять! Ты не уйдешь отсюда пока не принесешь мне выпить! \nК тому же, я тебя отблагодарю, что скажешь?", "{ffffff}Ах ты молодчяга, на держи, заработал.", { 2269.4878,27.9320,26.4292 }, 513, 1, "Вы нашли выпивку, вернитесь к пьянице" },
    {"Фермер", 1, 6, "{ffffff}Не люблю я эти праздники.. Но всё же заставили\nменя помогать. Тащил кусок тела в магазин, и посеял ключи\nНе поможешь найти? ", "{ffffff}Ах ты молодчяга, на держи, заработал.", { 2269.4878,27.9320,26.4292 }, 513, 1, "Вы нашли ключи, вернитесь к фермеру" }

};

new player_hell_quest[MAX_PLAYERS][15];

new Float:hap[8][4] = {
	{2684.1316,226.0882,59.0855,57.3425},
	{2039.6995,-171.7923,10.5566,2.1760},
	{2315.1155,-17.9683,32.5313,0.9403},
	{2239.7073,-84.1837,26.4729,0.6267},
	{2461.1812,-130.9594,31.3575,36.8049},
	{2326.9893,-1.1639,26.5387,320.9207},
	{2414.6084,93.8622,26.4702,131.6131},
	{2362.8669,153.2692,28.4480,89.7685}
};

stock helloweenLoad() {
    helloween_text[0] = CreateDynamic3DTextLabel("[ Ведьма ]", 0xFFFFFFFF, hap[0][0], hap[0][1], hap[0][2] + 1, 10.0, INVALID_PLAYER_ID,INVALID_VEHICLE_ID, -1);
	helloween_npc[0] = CreateActor( 238, hap[0][0], hap[0][1], hap[0][2], hap[0][3]); // Ведьма у которой можно купить кучу говна
	ApplyActorAnimation(helloween_npc[0], "MISC","null",0.0,0,0,0,0,0);
	ApplyActorAnimation(helloween_npc[0], "MISC","seat_LR",4.1, 1, 0, 0, 0, 0);

    helloween_text[1] = CreateDynamic3DTextLabel("[ Пират ]", 0xFFFFFFFF, hap[1][0], hap[1][1], hap[1][2] + 1, 10.0, INVALID_PLAYER_ID,INVALID_VEHICLE_ID, -1);
	helloween_npc[1] = CreateActor(71, hap[1][0], hap[1][1], hap[1][2], hap[1][3]); // Пират
	ApplyActorAnimation( helloween_npc[1], "DEALER","null",0.0,0,0,0,0,0);
	ApplyActorAnimation( helloween_npc[1], "DEALER","Dealer_idle",4.1, 0, 0, 0, 0, 0);

	helloween_text[2] = CreateDynamic3DTextLabel("[ Продавец ]", 0xFFFFFFFF, hap[2][0], hap[2][1], hap[2][2] + 1, 10.0, INVALID_PLAYER_ID,INVALID_VEHICLE_ID, -1);
	helloween_npc[2] = CreateActor(168, hap[2][0], hap[2][1], hap[2][2], hap[2][3]); // Чувак на крыше
	ApplyActorAnimation( helloween_npc[2], "MISC","null",0.0,0,0,0,0,0);
	ApplyActorAnimation( helloween_npc[2], "MISC","seat_LR",4.1, 1, 0, 0, 0, 0);

	helloween_text[3] = CreateDynamic3DTextLabel("[ Механик ]", 0xFFFFFFFF, hap[3][0], hap[3][1], hap[3][2] + 1, 10.0, INVALID_PLAYER_ID,INVALID_VEHICLE_ID, -1);
	helloween_npc[3] = CreateActor(50, hap[3][0], hap[3][1], hap[3][2], hap[3][3]); // Чувак на крыше
	ApplyActorAnimation( helloween_npc[3], "DEALER","null",0.0,0,0,0,0,0);
	ApplyActorAnimation( helloween_npc[3], "DEALER","Dealer_idle",4.1, 1, 0, 0, 0, 0);

	helloween_text[4] = CreateDynamic3DTextLabel("[ Целитель ]", 0xFFFFFFFF, hap[4][0], hap[4][1], hap[4][2] + 1, 10.0, INVALID_PLAYER_ID,INVALID_VEHICLE_ID, -1);
	helloween_npc[4] = CreateActor(34, hap[4][0], hap[4][1], hap[4][2], hap[4][3]); // Чувак на крыше
	ApplyActorAnimation( helloween_npc[4], "DEALER","null",0.0,0,0,0,0,0);
	ApplyActorAnimation( helloween_npc[4], "DEALER","Dealer_idle",4.1, 1, 0, 0, 0, 0);

	helloween_text[5] = CreateDynamic3DTextLabel("[ Священник ]", 0xFFFFFFFF, hap[5][0], hap[5][1], hap[5][2] + 1, 10.0, INVALID_PLAYER_ID,INVALID_VEHICLE_ID, -1);
	helloween_npc[5] = CreateActor(68, hap[5][0], hap[5][1], hap[5][2], hap[5][3]); // Чувак на крыше
	ApplyActorAnimation( helloween_npc[5], "DEALER","null",0.0,0,0,0,0,0);
	ApplyActorAnimation( helloween_npc[5], "DEALER","Dealer_idle",4.1, 1, 0, 0, 0, 0);

	helloween_text[6] = CreateDynamic3DTextLabel("[ Пьяница ]", 0xFFFFFFFF, hap[6][0], hap[6][1], hap[6][2] + 1, 10.0, INVALID_PLAYER_ID,INVALID_VEHICLE_ID, -1);
	helloween_npc[6] = CreateActor(168, hap[6][0], hap[6][1], hap[6][2], hap[6][3]); // Чувак на крыше
	ApplyActorAnimation( helloween_npc[6], "DEALER","null",0.0,0,0,0,0,0);
	ApplyActorAnimation( helloween_npc[6], "DEALER","Dealer_idle",4.1, 1, 0, 0, 0, 0);
	
	helloween_text[7] = CreateDynamic3DTextLabel("[ Фермер ]", 0xFFFFFFFF, hap[7][0], hap[7][1], hap[7][2] + 1, 10.0, INVALID_PLAYER_ID,INVALID_VEHICLE_ID, -1);
	helloween_npc[7] = CreateActor(158, hap[7][0], hap[7][1], hap[7][2], hap[7][3]); // Чувак на крыше
	ApplyActorAnimation( helloween_npc[7], "DEALER","null",0.0,0,0,0,0,0);
	ApplyActorAnimation( helloween_npc[7], "DEALER","Dealer_idle",4.1, 1, 0, 0, 0, 0);
	return true;
}

public OnFilterScriptInit() {
    helloweenLoad();
    for( new i; i < MAX_PLAYERS; i++ ) {
	    for(new p; p < 15; p++ ) {
	        player_hell_quest[i][p] = 0;
	    }
    }
	return 1;
}

public OnFilterScriptExit()
{
	for( new h; h < 7; h++ ) {
		DestroyActor( helloween_npc[h] );
		DestroyDynamic3DTextLabel( helloween_text[h] );
	}
	return 1;
}

public OnPlayerConnect(playerid)
{
    for(new p; p < 15; p++ ) {
        player_hell_quest[playerid][p] = 0;
    }
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	new string[128];
    if( newkeys == KEY_WALK ) {// helloween
        if( GetPVarInt( playerid, "helloween" ) ) {
			for( new ac; ac < 8; ac++ ) {
			    if( IsPlayerInRangeOfPoint( playerid, 1.5, hap[ac][0], hap[ac][1], hap[ac][2] ) ) {
					for( new hq; hq < sizeof(helloween_quest); hq++ ) {
					    if( helloween_quest[hq][h_qNPC] == ac ) {
							//printf("%d | %s", player_hell_quest[playerid][ac], helloween_quest[hq][h_qAnsw] );
					        if( player_hell_quest[playerid][ac] == 0 ) {
					        	SetPVarInt( playerid, "hell_quest_ac", ac );
					        	showPlayerDialog( playerid, d_hellquest + 1, DIALOG_STYLE_MSGBOX, helloween_quest[hq][h_name], helloween_quest[hq][h_qText], "Да", "Нет" );
					        	break;
					        }
					        else if( player_hell_quest[playerid][ac] == 2 ) {
					            CallRemoteFunction( "GivePlayerItem", "ddd", playerid, 514, 1 );
					        	SetPVarInt( playerid, "hell_quest_ac", ac );
                                player_hell_quest[playerid][ac]++;
					            showPlayerDialog( playerid, d_hellquest + 2, DIALOG_STYLE_MSGBOX, helloween_quest[hq][h_name], helloween_quest[hq][h_qAnsw], "Уйти", "" );
					            break;
					        }
					    }
					}
			    }
			}
			for( new q; q < sizeof(helloween_quest); q++ ) {
			    if( IsPlayerInRangeOfPoint( playerid, 1.5, helloween_quest[q][q_Coord][0], helloween_quest[q][q_Coord][1], helloween_quest[q][q_Coord][2] ) ) {
       				if( player_hell_quest[playerid][ helloween_quest[q][h_qNPC] ] == 1 ) {
           				player_hell_quest[playerid][ helloween_quest[q][h_qNPC] ]++;
						format( string, sizeof string, ""gbInfo"%s", helloween_quest[q][h_qZad] );
      					SendClientMessage( playerid, C_GRAY, string );
           				break;
           			}
      			}
			}
        }
    }
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	switch(dialogid) {
    	case d_hellquest + 1: {
	        if(!response) return true;
			new ac = GetPVarInt( playerid, "hell_quest_ac" ), hq = GetPVarInt( playerid, "hell_quest_hq" );
			player_hell_quest[playerid][ac] = 1;
			SendClientMessage(playerid,C_GRAY,""gbInfo"Вы взяли задание");
	    }
 	}
	return 1;
}

showPlayerDialog(playerid, dialogid, style, caption[], info[], button1[], button2[]) {
    if(GetPVarInt(playerid, "DialogID") != -2) return 1;
    if(dialogid == -1) SetPVarInt(playerid, "DialogID", -2);
    SetPVarInt(playerid, "DialogID", dialogid);
    SetPVarInt(playerid, "DialogHider", 1);
    return ShowPlayerDialog(playerid, dialogid, style, caption, info, button1, button2);
}
