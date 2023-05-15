/*
 * anim.pwn
 *
 * Модуль анимаций
 * @author Lux <lsrp@ro.ru>
 * @version 0.3
 *
*/

#include <YSI\y_hooks>

new walktime[MAX_PLAYERS], favorite_anim[MAX_PLAYERS][10][2];

new walk_anim[][] = {
	{  "WALK_civi" },
	{  "WALK_gang1" },
	{  "WALK_gang2" },
	{  "WALK_old" },
	{  "WALK_fatold" },
	{  "WALK_fat" },
	{  "WOMAN_walknorm" },
	{  "WOMAN_walkbusy" },
	{  "WOMAN_walkpro" },
	{  "WOMAN_walksexy" },
	{  "WALK_drunk" },
	{  "Walk_Wuzi" }
};

enum an_Info{
	anName[64],
	anType,
}

new anim_id[][an_Info] = { 
	{ "/handsup", 0 }, {"/sit", 0 }, {"/aim",  }, {"/cellin", 0 }, {"/cellout", 0 }, {"/drunk", 0 },//7
	{ "/bomb", 0 }, {"/bar", 0 }, {"/stoptaxi", 0 }, {"/getarrested", 0 }, {"/laugh", 0 }, {"/lookout", 0 }, {"/cry", 0 },//7
	{ "/crossarms", 0 }, {"/hide", 0 }, {"/vomit", 0 }, {"/eat", 0 }, {"/sipdrink", 0 }, {"/slapass", 0 },
	{ "/chat", 0 }, {"/fucku", 0 }, {"/taichi", 0 }, {"/injured", 0 }, {"/no", 0 }, {"/yes", 0 }, {"/crawl", 0 }, {"/push", 0 },
	{ "/akick", 0 }, {"/facepalm", 0 }, {"/balls", 0 }, {"/lowbodypush", 0 }, {"/aspray", 0 }, {"/medic" },
	{ "/koface", 0 }, {"/kostomach", 0 }, {"/lifejump", 0 }, {"/rollfall", 0 }, {"/hoodfrisked", 0 }, {"/flip", 0 },
	{ "/tired", 0 }, {"/box", 0 }, {"/chant", 0 }, {"/finger", 0 }, {"/gpunch", 0 }, {"/gkick", 0 }, {"/lowthrow", 0 },
	{ "/riot", 0 }, {"/abp", 0 }, {"/taxir", 0 }, {"/taxil", 0 }, {"/gro", 0 }, {"/seat", 0 }, {"/shotgun", 1}, {"/colt", 1},
	{ "/tatto", 0 }, {"/strip", 1}, {"/dance", 1}, {"/deal", 1}, {"/asmoke", 1}, {"/rap", 1 }, {"/bat", 1}, {"/car", 1},
	{ "/basket", 1 }, { "/lean", 1}, {"/lay", 1}, {"/gsign", 1}, {"/walk", 0 }, {"/wave", 1}, {"/police", 1}, {"/crack", 1},
	{ "/waiml", 0 }, {"/waimr", 0 }, {"/lookback", 0 }, {"/caim", 0 }, {"/creep", 0 }, {"/sroll", 0 }, {"/gesture", 0 },
	{ "/lookoutr", 0 }, {"/lookoutl", 0 }, {"/agreement", 0 }, {"/bend", 0 }, {"/rod", 0 }, {"/tgro", 0 }, {"/cmouth", 0 },
	{ "/gog", 0 }, {"/nfall", 0 }, {"/hsit", 0 }, {"/csit", 0 }, {"/bracing", 0 }, {"/pool", 0 }, {"/ssearch", 0 }, {"/daim", 0 },
	{ "/rhandl", 0 }, {"/rhandr", 0 }, {"/hstand", 0 }, {"/nlean", 0 }, {"/shelter", 0 }, {"/lookback", 0 }, {"/wsit", 0 },
	{ "/waim", 0 }, {"/hangon", 0 }, {"/sleepl", 0 }, {"/sleepr", 0 }, {"/blowj", 0 }, {"/rseat", 0 }, {"/polwalk", 0 },
	{ "/wallow", 1}, {"/nflip", 0 }, {"/csdead", 0 }, {"/follow", 0 }, {"/grnd", 0 }, {"/copa", 0 }, {"/cmon", 0 }, {"/lose", 0 },
	{ "/win", 0 }, {"/gunthreat", 0 }, {"/givecash", 0 }, {"/robr", 0 }, {"/serend", 0 }, {"/heist", 0 }, {"/beckon", 1},
	{ "/frontfall", 0 }, {"/pants", 0 }, {"/tired", 0 }, {"/climb", 0 }, {"/tlean", 0 }, {"/pushup", 0 }, {"/protection",},
	{ "/swallow", 0 }, {"/stand", 0 }, {"/pullhand", 0 }, {"/nlook", 0 }, {"/extend", 0 }, {"/stopit", 0 }, {"/ksit", 0 },
	{ "/esit", 0 }, {"/tsit", 0 }, {"/repcar", 1}, {"/onehand", 0 }, {"/backwalk", 0 }, {"/feettog", 0 }, {"/mirro", 0 },
	{ "/hips", 0 }, {"/pullo", 0 }, {"/rtake", 0 }, {"/obalance", 0 }, {"/wobalance", 0 }, {"/taction", 0 }, {"/catch", 0 },
	{ "/despair", 0 }, {"/rooting", 0 }, {"/spyglass", 0 }, {"/looksky", 0 }, {"/mshow", 0 }, {"/wshow", 0 }, {"/hshow", 0 },
	{ "/sh", 0 }, {"/crossfingers", 0 }, {"/delight", 0 }, {"/hdelight", 0 }, {"/showtable", 0 }, {"/tfacepalm", 0 },
	{ "/tpull", 0 }, {"/fail", 0 }, {"/joy", 0 }, {"/fsit", 0 }, {"/crushjump", 0 }, {"/scatch", 0 }, {"/lookfloor", 0 }, {"/wear", 0 },
	{ "/tramplefloor", 0 }, {"/swing", 0 }, {"/nbp", 0 }, {"/takehead", 0 }, {"/readtable", 0 }, {"/squat", 0 },
	{ "/sprawl", 0 }, {"/throwmoney", 0 }, {"/sho", 0 }, {"/faim", 0 }, {"/piss", 0 }, {"/swingback", 0 }, {"/hnds", 1},
	{ "/bj", 1 }, { "/spank", 1 }
};

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if (((newkeys & KEY_WALK && newkeys & KEY_UP) || (newkeys & KEY_WALK && newkeys & KEY_DOWN) || (newkeys & KEY_WALK && newkeys & KEY_LEFT) || (newkeys & KEY_WALK && newkeys & KEY_RIGHT))
	|| ((oldkeys & KEY_WALK && newkeys & KEY_UP) || (oldkeys & KEY_WALK && newkeys & KEY_DOWN) || (oldkeys & KEY_WALK && newkeys & KEY_LEFT) || (oldkeys & KEY_WALK && newkeys & KEY_RIGHT))
	|| ((newkeys & KEY_WALK && oldkeys & KEY_UP) || (newkeys & KEY_WALK && oldkeys & KEY_DOWN) || (newkeys & KEY_WALK && oldkeys & KEY_LEFT) || (newkeys & KEY_WALK && oldkeys & KEY_RIGHT))
	&& GetPlayerState(playerid) == PLAYER_STATE_ONFOOT) {
		if(Player[playerid][uSettings][6] != 0) walktime[playerid] = SetTimerEx( "AnimationWalk", 200, 0, "d", playerid );
	}
	return true;
}

hook OnPlayerSpawn(playerid) {
	PreloadAnimLib(playerid,"BOMBER");
	PreloadAnimLib(playerid,"RAPPING");
	PreloadAnimLib(playerid,"SHOP");
	PreloadAnimLib(playerid,"BEACH");
	PreloadAnimLib(playerid,"SMOKING");
	PreloadAnimLib(playerid,"FOOD");
	PreloadAnimLib(playerid,"ON_LOOKERS");
	PreloadAnimLib(playerid,"DEALER");
	PreloadAnimLib(playerid,"CRACK");
	PreloadAnimLib(playerid,"CARRY");
	PreloadAnimLib(playerid,"COP_AMBIENT");
	PreloadAnimLib(playerid,"PARK");
	PreloadAnimLib(playerid,"INT_HOUSE");
	PreloadAnimLib(playerid,"FOOD");
	PreloadAnimLib(playerid,"GHANDS");
	PreloadAnimLib(playerid,"GANGS");
	PreloadAnimLib(playerid,"PED");
	PreloadAnimLib(playerid,"RIOT");
	PreloadAnimLib(playerid,"PAULNMAC");
	PreloadAnimLib(playerid,"FIGHT_B");
	PreloadAnimLib(playerid,"FIGHT_D");
	PreloadAnimLib(playerid,"SPRAYCAN");
	PreloadAnimLib(playerid,"MISC");
	PreloadAnimLib(playerid,"GRAVEYARD");
	PreloadAnimLib(playerid,"POLICE");
	PreloadAnimLib(playerid,"CAR_CHAT");
	PreloadAnimLib(playerid,"SWEET");
	PreloadAnimLib(playerid,"SUNBATHE");
	PreloadAnimLib(playerid,"CRIB");
	PreloadAnimLib(playerid,"BAR");
	PreloadAnimLib(playerid,"DANCING");
	PreloadAnimLib(playerid,"VENDING");
	PreloadAnimLib(playerid,"BSKTBALL");
	PreloadAnimLib(playerid,"BD_FIRE");
	PreloadAnimLib(playerid,"COLT45");
	PreloadAnimLib(playerid,"SILENCED");
	PreloadAnimLib(playerid,"TEC");
	PreloadAnimLib(playerid,"UZI");
	PreloadAnimLib(playerid,"OTB");
	PreloadAnimLib(playerid,"CAR");
	PreloadAnimLib(playerid,"MEDIC");
	PreloadAnimLib(playerid,"WUZI");
	PreloadAnimLib(playerid,"BLOWJOBZ");
	PreloadAnimLib(playerid,"LOWRIDER");
	PreloadAnimLib(playerid,"FINALE");
	PreloadAnimLib(playerid,"CLOTHES");
	PreloadAnimLib(playerid,"SNM" );
	PreloadAnimLib(playerid,"SEX" );
}

publics: AnimationWalk(playerid) {
    new keys, updown, leftright;
	GetPlayerKeys(playerid,keys,updown,leftright);
	if(Player[playerid][uSettings][6] != 0) {
	    if ((keys & KEY_WALK && updown & KEY_UP) || (keys & KEY_WALK && updown & KEY_DOWN) || (keys & KEY_WALK && leftright & KEY_LEFT) || (keys & KEY_WALK && leftright & KEY_RIGHT)) {
            KillTimer( walktime[playerid] );
			UseAnim(playerid,"PED",walk_anim[Player[playerid][uSettings][6] - 1],4.1,1,1,1,1,1);
			walktime[playerid] = SetTimerEx( "AnimationWalk",200,0,"d",playerid );
        }
        else {
            UseAnim(playerid,"PED",walk_anim[Player[playerid][uSettings][6] - 1],4.0,0,0,0,0,1);
            KillTimer( walktime[playerid] );
        }
	}
	return 1;
}

publics: walktimer( playerid ) {
	if( GetPVarInt( playerid, "player_walk" ) ) {
		UseAnim( playerid, "PED", walk_anim[Player[playerid][uSettings][6]], 4.1, 1, 1, 1, 1, 1);
		printf("WALK TIMER, %d", getData( playerid, "player_walk" ) );
	}
	return true;
}

UseAnim(playerid, animlib[], animname[], Float:speed, looping, lockx, locky, lockz, lp, time = 0) {
	if( Player[playerid][uDeath] ) return;
	SetPVarInt(playerid, "UsingAnimation", 1);
    ApplyAnimation(playerid, animlib, animname, speed, looping, lockx, locky, lockz, lp, time);
    ApplyAnimation(playerid, animlib, animname, speed, looping, lockx, locky, lockz, lp, time);
    ApplyAnimation(playerid, animlib, animname, speed, looping, lockx, locky, lockz, lp, time);
}

PreloadAnimLib(playerid, animlib[]) {
	ApplyAnimation(playerid,animlib,"null",0.0,0,0,0,0,0);
}

StopUsingAnim(playerid) {
	DeletePVar(playerid, "UsingAnimation");
    ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0);
    ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0);
    ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0);
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	cstring[0] = 0;
	switch( dialogid ) {
		case d_anim: {
			if(!response) return true;
			if(!strlen(inputtext)) return ShowPlayerDialog( playerid, d_anim, DIALOG_STYLE_INPUT, "Поиск анимации", ""cGRAY"Введите в окошко анимацию которую хотите добавить в избранное\n"cBLUE"Пример: /dance 4, /handsup", "Ввод", "Выход" );	
			new param;
			if( sscanf( inputtext, "s[64]i", inputtext, param ) ) {
				if( sscanf( inputtext, "s[64]", inputtext ) ) {
					return ShowPlayerDialog( playerid, d_anim, DIALOG_STYLE_INPUT, "Поиск анимации", ""cGRAY"Введите в окошко анимацию которую хотите добавить в избранное\n"cBLUE"Пример: /dance 4, /handsup", "Ввод", "Выход" );	
				}
			}
			for( new i; i < sizeof anim_id; i++ ) {
				if( !strcmp( inputtext, anim_id[i][anName], true ) ) {
					if( anim_id[i][anType] ) {
						if( !param ) return SendClientMessage( playerid, C_GRAY, ""gbError"Вы не указали параметр!" );
						new bool:slot = false;
						for( new al; al < 10; al++ ) {
							if( !Player[playerid][uAnimList][al] ) {
								Player[playerid][uAnimList][al] = i, Player[playerid][uAnimListParam][al] = param;
								saveFavoriteAnimation( playerid );
								SendClientMessage( playerid, C_GRAY, ""gbInfo"Анимация успешно добавлена в избранное!" );
								return true;
							}
						}
						if(!slot) return SendClientMessage( playerid, C_GRAY, ""gbError"Все слоты для анимаций заняты!" );
					}
					else {
						new bool:slot = false;
						for( new al; al < 10; al++ ) {
							if( !Player[playerid][uAnimList][al] ) {
								Player[playerid][uAnimList][al] = i, Player[playerid][uAnimListParam][al] = 0;
								saveFavoriteAnimation( playerid );
								SendClientMessage( playerid, C_GRAY, ""gbInfo"Анимация успешно добавлена в избранное!" );
								return true;
							}
						}
						if(!slot) return SendClientMessage( playerid, C_GRAY, ""gbError"Все слоты для анимаций заняты!" );
					}
					break;
				}
			}
			SendClientMessage( playerid, C_GRAY, ""gbError"Анимация не найдена, повторите попытку" );
			ShowPlayerDialog( playerid, d_anim, DIALOG_STYLE_INPUT, "Поиск анимации", ""cGRAY"Введите в окошко анимацию которую хотите добавить в избранное\n"cBLUE"Пример: /dance 4, /handsup", "Ввод", "Выход" );	
		}
		case d_anim + 1: {
			if(!response) return true;
			new i = favorite_anim[playerid][listitem][0], 
				param = favorite_anim[playerid][listitem][1],
				str[64]; 
			if( i == -1 ) {
				if( listitem == GetPVarInt( playerid, "anim_list" ) ) {
					if( GetPVarInt( playerid, "anim_list" ) == 9 ) {
						SendClientMessage( playerid, C_GRAY, ""gbError"Все слоты для анимаций заняты!" );
						return CallLocalFunction( "cmd_favanim", "i", playerid );
					}
					ShowPlayerDialog( playerid, d_anim, DIALOG_STYLE_INPUT, "Поиск анимации", ""cGRAY"Введите в окошко анимацию которую хотите добавить в избранное\n"cBLUE"Пример: /dance 4, /handsup", "Ввод", "Выход" );	
				}
				else if ( listitem == GetPVarInt( playerid, "anim_list" ) + 1 ) {
					if( !GetPVarInt ( playerid, "anim_list" ) ) {
						SendClientMessage( playerid, C_GRAY, ""gbError"У вас нет избранных анимаций!" );
						return CallLocalFunction( "cmd_favanim", "i", playerid );
					}
					new slot;
					for( new id; id < 10; id++ ) {
						favorite_anim[playerid][slot][0] = -1;
						if( Player[playerid][uAnimList][id] ) {
							if( !Player[playerid][uAnimListParam][id] ) format( str, sizeof str, ""cGRAY"%d. "cBLUE"%s\n", slot + 1, anim_id[ Player[playerid][uAnimList][id] ][anName] ), strcat( cstring, str );
							else format( str, sizeof str, ""cGRAY"%d. "cBLUE"%s %d\n", slot + 1, anim_id[ Player[playerid][uAnimList][id] ][anName], Player[playerid][uAnimListParam][id] ), strcat( cstring, str );
							favorite_anim[playerid][slot][0] = id, favorite_anim[playerid][slot][1] = Player[playerid][uAnimListParam][id];
							slot++;
						}
					}
					if( !slot ) return SendClientMessage( playerid, C_GRAY, ""gbError"У вас нет избранных анимаций!" );
					ShowPlayerDialog( playerid, d_anim + 2, DIALOG_STYLE_LIST, "Избранные анимации | Удаление", cstring, "Выбор", "Выход" );
				}
				return true;
			}
			format( str, sizeof str, "%s", anim_id[ Player[playerid][uAnimList][i] ][anName] ), strdel( str, 0, 1);
			format( cstring, sizeof cstring, "cmd_%s", str );
			format( str, sizeof str, "%d", param );
			CallLocalFunction( cstring, "is", playerid, str );		
		}
		case d_anim + 2: {
			if(!response) return CallLocalFunction( "cmd_favanim", "i", playerid );
			new i = favorite_anim[playerid][listitem][0];
			Player[playerid][uAnimListParam][i] = 0, Player[playerid][uAnimList][i] = 0;
			SendClientMessage( playerid, C_GRAY, ""gbInfo"Анимация успешно удалена!" );
			saveFavoriteAnimation( playerid );
			CallLocalFunction( "cmd_favanim", "i", playerid );
		}
		case d_anim + 3: {
			if(response) return DeletePVar( playerid, "AnimList:Page" );
			cstring[0] = 0;
			new idx = 22 * getData( playerid, "AnimList:Page" );
			if( getData( playerid, "AnimList:Page" ) == 4 ) {
				for( new i = idx; i < idx + 3; i++ ) strcat( cstring, anim_list[i] );
				DeletePVar( playerid, "AnimList:Page" );
				ShowPlayerDialog(playerid, d_anim + 3, DIALOG_STYLE_MSGBOX, "Список анимаций", cstring, "Закрыть", "");
			}
			else {
				for( new i = idx; i < idx + 22; i++ ) strcat( cstring, anim_list[i] );
				giveData( playerid, "AnimList:Page", 1 );
				ShowPlayerDialog(playerid, d_anim + 3, DIALOG_STYLE_MSGBOX, "Список анимаций", cstring, "Закрыть", ">>>>>>");   
			}
		}
	}
	return true;
}

CMD:favanim( playerid, params[] ) {
	new str[64], slot;
	format( cstring, sizeof cstring, ""cGRAY"" );
	for( new i; i < 10; i++ ) {
		favorite_anim[playerid][i][0] = -1;
		if( Player[playerid][uAnimList][i] ) {
			if( !Player[playerid][uAnimListParam][i] ) format( str, sizeof str, ""cGRAY"%d. "cBLUE"%s\n", slot + 1, anim_id[ Player[playerid][uAnimList][i] ][anName] ), strcat( cstring, str );
			else format( str, sizeof str, ""cGRAY"%d. "cBLUE"%s %d\n", slot + 1, anim_id[ Player[playerid][uAnimList][i] ][anName], Player[playerid][uAnimListParam][i] ), strcat( cstring, str );
			favorite_anim[playerid][slot][0] = i, favorite_anim[playerid][slot][1] = Player[playerid][uAnimListParam][i];
			slot++;
		}
	}
	SetPVarInt( playerid, "anim_list", slot );
	strcat( cstring, ""cGRAY"Добавить анимацию\n"cGRAY"Удалить анимацию" );
	ShowPlayerDialog( playerid, d_anim + 1, DIALOG_STYLE_LIST, "Избранные анимации", cstring, "Выбор", "Выход" );
	return true;
}

CMD:animtest( playerid, params[] ) {
	if( Player[playerid][uDeath] ) return true;
	ShowPlayerDialog( playerid, d_anim, DIALOG_STYLE_INPUT, "Поиск анимации", ""cGRAY"Введите в окошко анимацию которую хотите добавить в избранное", "Ввод", "Выход" );
	return true;
}

publics: clearWalk( playerid ) {
	ApplyAnimation(playerid, "PED", "IDLE_chat", 4.1, 1, 0, 0, 0, 1, 1 );
	return true;
}

CMD:walk( playerid, params[] ) {
	if( Player[playerid][uDeath] ) return true;
	if(IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid,C_GRAY,""gbError"Нельзя использовать в машине!");
	if( GetPVarInt( playerid, "player_walk" ) ) {
	    DeletePVar( playerid, "player_walk" );
	    DeletePVar(playerid, "UsingAnimation");
	    SendClientMessage(playerid, C_GRAY, ""gbInfo"Вы выключили автоматическую походку!");
		togglePlayerControllable( playerid, true );
		StopUsingAnim(playerid);
		SetTimerEx( "clearWalk", 1000, false, "i", playerid );
		return true;
    }
	else {
 	   	UseAnim(playerid,"PED", walk_anim[Player[playerid][uSettings][6]], 6.0, 1, 1, 1, 1, 1);
	    SetPVarInt( playerid, "player_walk", 1 );
	    SendClientMessage(playerid, C_GRAY, ""gbInfo"Вы включили автоматическую походку!");
		return true;
	}
}

stock saveFavoriteAnimation( playerid ) {
	cstring[0] = 0;
	format( cstring, sizeof cstring, "UPDATE `gb_users` SET \
	`favAnim` = '%d|%d|%d|%d|%d|%d|%d|%d|%d|%d', \
	`favAnimParams` = '%d|%d|%d|%d|%d|%d|%d|%d|%d|%d' WHERE BINARY `uName` = '%s'",
	Player[playerid][uAnimList][0], Player[playerid][uAnimList][1], Player[playerid][uAnimList][2],
	Player[playerid][uAnimList][3], Player[playerid][uAnimList][4], Player[playerid][uAnimList][5],
	Player[playerid][uAnimList][6], Player[playerid][uAnimList][7], Player[playerid][uAnimList][8],
	Player[playerid][uAnimList][9],
	Player[playerid][uAnimListParam][0], Player[playerid][uAnimListParam][1], Player[playerid][uAnimListParam][2],
	Player[playerid][uAnimListParam][3], Player[playerid][uAnimListParam][4], Player[playerid][uAnimListParam][5],
	Player[playerid][uAnimListParam][6], Player[playerid][uAnimListParam][7], Player[playerid][uAnimListParam][8],
	Player[playerid][uAnimListParam][9],
	Player[playerid][uName] );
	mysql_tquery( mysql, cstring, "", "");
	return true;
}	

CMD:anim(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	setData( playerid, "AnimList:Page", 1 );
    for( new i; i < 22; i++ ) strcat( cstring, anim_list[i] );
    return ShowPlayerDialog(playerid, d_anim + 3, DIALOG_STYLE_MSGBOX, "Список анимаций", cstring, "Закрыть", ">>>>>>");   
}

CMD:stop( playerid, params[] ) return CallLocalFunction( "cmd_stopanim", "i", playerid );
CMD:sa( playerid, params[] ) return CallLocalFunction( "cmd_stopanim", "i", playerid );
CMD:stopanim(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	StopUsingAnim(playerid);
	return true;
}
// ------------------------------------------------------------------------------------------------------------------------------------------------------

CMD:handsup(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid, "ROB_BANK","SHP_HandsUp_Scr", 4.0, 0, 1, 1, 1, 0);
	return true;
}

CMD:sit(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","SEAT_down",4.0,0,0,1,1,0);
	return true;
}

CMD:aim(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","gang_gunstand",3.0,0,1,1,1,0);
	return true;
}

CMD:cellin(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	SetPlayerSpecialAction(playerid,SPECIAL_ACTION_USECELLPHONE);
	return true;
}

CMD:cellout(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	SetPlayerSpecialAction(playerid,SPECIAL_ACTION_STOPUSECELLPHONE);
	return true;
}


CMD:drunk(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","WALK_DRUNK",4.1,1,1,1,1,1);
	return true;
}

CMD:bomb(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid, "BOMBER","BOM_Plant",4.0,0,0,0,0,0);
	return true;
}

CMD:bar(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"BAR","Barserve_bottle",4.0,0,0,0,0,0);
	return true;
}

CMD:stoptaxi(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","IDLE_taxi",4.0,0,0,0,0,0);
	return true;
}

CMD:getarrested(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"ped", "ARRESTgun", 4.0, 0, 1, 1, 1, -1);
	return true;
}

CMD:laugh(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid, "RAPPING", "Laugh_01", 4.0, 0, 0, 0, 0, 0);
	return true;
}

CMD:lookout(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid, "SHOP", "ROB_Shifty", 4.0, 0, 0, 0, 0, 0);
	return true;
}

CMD:crossarms(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid, "COP_AMBIENT", "Coplook_loop", 4.0, 0, 1, 1, 1, -1);
	return true;
}

CMD:hide(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid, "ped", "cower", 3.0, 1, 0, 0, 0, 0);
	return true;
}

CMD:vomit(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid, "FOOD", "EAT_Vomit_P", 3.0, 0, 0, 0, 0, 0);
	return true;
}

CMD:eat(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid, "FOOD", "EAT_Burger", 4.1,1,1,1,1,1);
	return true;
}

CMD:sipdrink(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid, "GANGS", "drnkbr_prtl", 4.1,1,1,1,1,1);
	return true;
}

CMD:slapass(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid, "SWEET", "sweet_ass_slap", 4.0, 0, 0, 0, 0, 0);
	return true;
}

CMD:chat(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","IDLE_CHAT",4.0,1,0,0,1,1);
	return true;
}

CMD:fucku(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","fucku",4.0,0,0,0,0,0);
	return true;
}

CMD:taichi(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PARK","Tai_Chi_Loop",4.0,1,0,0,0,0);
	return true;
}

CMD:injured(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid, "SWEET", "Sweet_injuredloop", 4.0,0,0,1,1,0);
	return true;
}

CMD:no(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"GANGS","Invite_No",4.0,0,0,0,0,0);
	return true;
}

CMD:yes(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"GANGS","Invite_Yes",4.0,0,0,0,0,0);
	return true;
}

CMD:crawl(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","CAR_crawloutRHS",4.0,0,0,0,0,0);
	return true;
}

CMD:push(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"GANGS","shake_cara",4.0,0,0,0,0,0);
	return true;
}

CMD:akick(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"POLICE","Door_Kick",4.0,0,0,0,0,0);
	return true;
}

CMD:facepalm(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"MISC","plyr_shkhead",4.0,0,0,0,0,0);
	return true;
}

CMD:balls(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"MISC","scratchballs_01",4.0,0,0,0,0,0);
	return true;
}

CMD:lowbodypush(playerid, params[]) {
	UseAnim(playerid,"GANGS","shake_carSH",4.0,0,0,0,0,0);
	return true;
}

CMD:aspray(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SPRAYCAN","spraycan_full",4.0,0,0,0,0,0);
	return true;
}

CMD:medic(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"MEDIC","CPR",4.0,0,0,0,0,0);
	return true;
}

CMD:koface(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","KO_shot_face",4.0,0,1,1,1,0);
	return true;
}

CMD:kostomach(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","KO_shot_stom",4.0,0,1,1,1,0);
	return true;
}

CMD:lifejump(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","EV_dive",4.0,0,1,1,1,0);
	return true;
}

CMD:rollfall(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","BIKE_fallR",4.0,0,1,1,1,0);
	return true;
}

CMD:hoodfrisked(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"POLICE","crm_drgbst_01",1.0,0,1,1,1,0);
	return true;
}

CMD:flip(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","KD_left",4.1,0,1,1,1,0);
	return true;
}

CMD:box(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"GYMNASIUM","GYMshadowbox",4.0,1,1,1,1,0);
	return true;
}

CMD:chant(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"RIOT","RIOT_CHANT",4.0,1,1,1,1,0);
	return true;
}

CMD:finger(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"RIOT","RIOT_FUKU",2.0,0,0,0,0,0);
	return true;
}

CMD:gpunch(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"FIGHT_B","FightB_G",4.0,0,0,0,0,0);
	return true;
}

CMD:gkick(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"FIGHT_D","FightD_G",4.0,0,0,0,0,0);
	return true;
}

CMD:lowthrow(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"GRENADE","WEAPON_throwu",3.0,0,0,0,0,0);
	return true;
}

CMD:riot(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"RIOT","RIOT_ANGRY",4.0,0,0,0,0,0);
	return true;
}

CMD:abp(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"benchpress","gym_bp_celebrate",4.0,0,0,0,0,0);
	return true;
}

CMD:cry(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"GRAVEYARD","mrnF_loop",4.0,1,0,0,0,0);
	return true;
}

CMD:taxir(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid, "MISC","hiker_pose", 3.0,0,1,1,1,0);
	return true;
}

CMD:taxil(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid, "MISC","hiker_pose_L", 3.0,0,1,1,1,0);
	return true;
}

CMD:gro(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"BEACH", "ParkSit_M_loop", 4.0, 1, 0, 0, 0, 0);
	return true;
}

CMD:seat(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"INT_HOUSE","LOU_In",4.0,0,0,1,1,0);
	return true;
}

CMD:tatto(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"TATTOOS", "TAT_ArmR_Pose_P", 4.1, 0, 1, 1, 1, 0);
	return true;
}

CMD:waiml(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","Driveby_L",4.1,0,1,1,1,1);
	return true;
}

CMD:waimr(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","Driveby_R",4.1,0,1,1,1,1);
	return true;
}

CMD:caim(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","IDLE_ROCKET",4.1,0,1,1,1,1);
	return true;
}

CMD:creep(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","Player_Sneak",4.1,1,1,1,1,1);
	return true;
}

CMD:sroll(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SWAT","JMP_Wall1m_180",4.1,0,1,1,1,0);
	return true;
}

CMD:gesture(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SWAT","swt_lkt",4.0,0,0,0,0,0);
	return true;
}

CMD:lookoutr(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SWAT","swt_wllpk_L",4.0,0,0,1,1,0);
	return true;
}

CMD:lookoutl(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SWAT","swt_wllpk_R",4.0,0,0,1,1,0);
	return true;
}

CMD:agreement(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"COP_AMBIENT","Coplook_think",4.0,1,0,0,0,0);
	return true;
}

CMD:bend(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"BAR","Barserve_order",4.0,0,0,0,0,0);
	return true;
}

CMD:rod(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"benchpress","gym_bp_up_A",4.0,0,0,1,1,0);
	return true;
}

CMD:tgro(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"CAMERA","camcrch_cmon",4.0,0,0,1,1,0);
	return true;
}

CMD:cmouth(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"ON_LOOKERS","panic_in",4.0,0,0,1,1,0);
	return true;
}

CMD:gog(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"goggles","goggles_put_on",4.1,0,1,1,1,1);
	return true;
}

CMD:nfall(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"HEIST9","CAS_G2_GasKO",4.1,0,1,1,1,0);
	return true;
}

CMD:hsit(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"INT_OFFICE","OFF_Sit_Bored_Loop",4.0,1,0,1,1,0);
	return true;
}

CMD:csit(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"INT_OFFICE","OFF_Sit_Type_Loop",4.0,1,0,1,1,0);
	return true;
}

CMD:bracing(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PLAYIDLES","stretch",4.0,0,0,0,0,0);
	return true;
}

CMD:pool(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"POOL","POOL_Long_Start",4.1,0,1,1,1,0);
	return true;
}

CMD:ssearch(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"ROB_BANK","CAT_Safe_Rob",4.0,1,0,0,0,0);
	return true;
}

CMD:daim(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"RYDER","Van_Stand_Crate",3.0,0,1,1,1,0);
	return true;
}

CMD:rhandl(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SCRATCHING","scdlulp",4.0,0,0,1,1,0);
	return true;
}

CMD:rhandr(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SCRATCHING","scdrulp",4.0,0,0,1,1,0);
	return true;
}

CMD:hstand(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SCRATCHING","scdrdlp",4.0,0,0,1,1,0);
	return true;
}

CMD:nlean(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SHAMAL","SHAMAL_align",4.1,0,1,1,1,0);
	return true;
}

CMD:shelter(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SHOP","SHP_Duck_Fire",4.0,0,0,1,1,0);
	return true;
}

CMD:lookback(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","flee_lkaround_01",4.0,0,0,0,0,0);
	return true;
}

CMD:wsit(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SHOP","SHP_Gun_Duck",4.0,0,0,1,1,0);
	return true;
}

CMD:waim(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"TEC","TEC_reload",4.1,0,1,1,1,1);
	return true;
}

CMD:hangon(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"TRAIN","tran_ouch",4.0,0,0,1,1,0);
	return true;
}

CMD:sleepl(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"INT_HOUSE","BED_In_L",4.0,0,0,1,1,0);
	return true;
}

CMD:sleepr(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"INT_HOUSE","BED_In_R",4.0,0,0,1,1,0);
	return true;
}

CMD:blowj(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"BLOWJOBZ", "BJ_COUCH_START_W", 4.1, 0, 1, 1, 1, 0 );
	return true;
}

CMD:rseat(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"BLOWJOBZ", "BJ_COUCH_START_P", 4.1, 0, 1, 1, 1, 0 );
	return true;
}

CMD:polwalk(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"POLICE","Cop_move_FWD",3.0,1,1,1,1,1);
	return true;
}

CMD:nflip(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","BIKE_fall_off",4.1,0,1,1,1,0);
	return true;
}

CMD:csdead(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"WUZI","CS_Dead_Guy",4.1,0,1,1,1,0);
	return true;
}

CMD:follow(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"WUZI","Wuzi_follow",4.1,0,1,1,1,1);
	return true;
}

CMD:grnd(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"WUZI","Wuzi_grnd_chk",4.0,0,0,0,0,0);
	return true;
}

CMD:copa(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"COP_AMBIENT","Copbrowse_in",4.1,0,1,1,1,0);
	return true;
}

CMD:cmon(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"OTB","wtchrace_cmon",4.1,0,1,1,1,0);
	return true;
}

CMD:lose(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"OTB","wtchrace_lose",4.1,0,1,1,1,0);
	return true;
}

CMD:win(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"OTB","wtchrace_win",4.1,0,1,1,1,0);
	return true;
}

CMD:gunthreat(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SHOP","SHP_Gun_Threat",4.1,0,1,1,1,0);
	return true;
}

CMD:givecash(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SHOP","SHP_Rob_GiveCash",4.1,0,1,1,1,0);
	return true;
}

CMD:robr(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SHOP","SHP_Rob_React",4.1,0,1,1,1,0);
	return true;
}

CMD:serend(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SHOP","SHP_Serve_End",4.1,0,1,1,1,0);
	return true;
}

CMD:heist(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"HEIST9","Use_SwipeCard",4.0,0,0,0,0,0);
	return true;
}

CMD:frontfall(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","FLOOR_hit_f",4.1,0,1,1,1,0);
	return true;
}

CMD:pants(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"BLOWJOBZ","BJ_STAND_END_P",4.0,0,0,0,0,0);
	return true;
}
/////////////////////////////////////////////////////////////////////////
CMD:tired(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"FAT","IDLE_tired",4.0,0,0,1,1,0);
	return true;
}

CMD:climb(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","CLIMB_jump",4.0,0,0,1,1,0);
	return true;
}

CMD:tlean(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","DRIVE_BOAT",4.0,0,0,1,1,0);
	return true;
}

CMD:pushup(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","getup_front",4.0,1,0,1,1,0);
	return true;
}

CMD:protection(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","FightShB",4.0,0,1,1,1,1);
	return true;
}

CMD:swallow(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","gum_eat",4.0,0,0,0,0,0);
	return true;
}

CMD:stand(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","IDLE_HBHB",3.0,0,1,1,1,0);
	return true;
}

CMD:pullhand(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","Jetpack_Idle",3.0,0,1,1,1,0);
	return true;
}

CMD:nlook(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","roadcross_gang",4.0,0,0,0,0,0);
	return true;
}

CMD:extend(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","Shove_Partial",4.1,0,1,1,1,1);
	return true;
}

CMD:stopit(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","Walk_DoorPartial",4.0,0,0,0,0,0);
	return true;
}

CMD:ksit(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"INT_OFFICE","OFF_Sit_Crash",4.0,1,0,1,1,0);
	return true;
}

CMD:esit(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"INT_OFFICE","OFF_Sit_Drink",4.0,1,0,1,1,0);
	return true;
}

CMD:tsit(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"INT_OFFICE","OFF_Sit_Watch",4.0,0,0,1,1,0);
	return true;
}

CMD:rtake(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"BAR","Barserve_give",4.0,0,0,0,0,0);
	return true;
}

CMD:forwardlook(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"BD_FIRE","BD_Panic_02",4.1,0,1,1,1,0);
	return true;
}

CMD:wforwardlook(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"BD_FIRE","BD_Panic_03",4.1,0,1,1,1,0);
	return true;
}

CMD:taction(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"BD_FIRE","wash_up",4.0,0,0,0,0,0);
	return true;
}

CMD:catch(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"MD_CHASE","MD_HANG_Loop",4.1,0,1,1,1,0);
	return true;
}

CMD:despair(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"BSKTBALL","BBALL_react_miss",4.0,0,0,0,0,0);
	return true;
}

CMD:rooting(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"BSKTBALL","BBALL_react_score",4.1,1,1,1,1,0);
	return true;
}

CMD:spyglass(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"CAMERA","picstnd_take",4.1,0,1,1,1,0);
	return true;
}

CMD:looksky(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"ON_LOOKERS","lkup_loop",4.1,0,1,1,1,0);
	return true;
}

CMD:mshow(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"ON_LOOKERS","panic_point",4.1,0,1,1,1,0);
	return true;
}

CMD:wshow(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"ON_LOOKERS","panic_shout",4.1,0,1,1,1,0);
	return true;
}

CMD:hshow(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"ON_LOOKERS","point_loop",4.1,0,1,1,1,0);
	return true;
}

CMD:sh(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"ON_LOOKERS","shout_in",4.0,0,0,0,0,0);
	return true;
}

CMD:crossfingers(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"CASINO","cards_loop",4.1,0,1,1,1,0);
	return true;
}

CMD:delight(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"CASINO","manwinb",4.0,0,0,0,0,0);
	return true;
}

CMD:hdelight(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"CASINO","manwind",4.0,0,0,0,0,0);
	return true;
}

CMD:showtable(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"CASINO","Roulette_bet",4.1,0,1,1,1,0);
	return true;
}

CMD:tfacepalm(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"CASINO","Roulette_lose",4.1,0,1,1,1,0);
	return true;
}

CMD:tpull(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"CASINO","Slot_in",4.1,0,1,1,1,0);
	return true;
}

CMD:fail(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"CASINO","Slot_lose_out",4.0,0,0,0,0,0);
	return true;
}

CMD:joy(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"CASINO","Slot_win_out",4.0,0,0,0,0,0);
	return true;
}

CMD:wear(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"CARRY","crry_prtial",4.1,0,1,1,1,1);
	return true;
}

CMD:fsit(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"JST_BUISNESS","girl_02",4.1,0,1,1,1,0);
	return true;
}

CMD:crushjump(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"DODGE","Crush_Jump",4.1,0,1,1,1,0);
	return true;
}

CMD:scatch(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"FINALE","FIN_LegsUp_Loop",4.1,0,1,1,1,0);
	return true;
}

CMD:lookfloor(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"FINALE","FIN_Cop1_Loop",4.1,0,1,1,1,0);
	return true;
}

CMD:tramplefloor(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"FINALE","FIN_Cop1_Stomp",4.1,1,1,1,1,0);
	return true;
}

CMD:swing(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"Freeweights","gym_free_B",4.1,0,1,1,1,0);
	return true;
}

CMD:nbp(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"Freeweights","gym_free_celebrate",4.0,0,0,0,0,0);
	return true;
}

CMD:takehead(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"HAIRCUTS","BRB_Cut",4.1,0,1,1,1,0);
	return true;
}

CMD:readtable(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SCRATCHING","sclng_r",4.1,0,1,1,1,0);
	return true;
}

CMD:squat(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"TEC","TEC_crouchfire",4.1,0,1,1,1,0);
	return true;
}

CMD:sprawl(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"TATTOOS","TAT_Idle_Loop_T",4.1,0,1,1,1,0);
	return true;
}

CMD:throwmoney(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"STRIP","PUN_CASH",4.0,0,0,0,0,0);
	return true;
}

CMD:sho(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"STRIP","PUN_HOLLER",4.0,0,0,0,0,0);
	return true;
}

CMD:faim(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"SWORD","sword_IDLE",4.1,0,1,1,1,0);
	return true;
}

CMD:piss(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PAULNMAC","Piss_in",4.1,0,1,1,1,0);
	return true;
}

CMD:swingback(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","getup",4.1,1,1,1,1,0);
	return true;
}

CMD:onehand(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","CLIMB_jump2fall",4.1,0,1,1,1,0);
	return true;
}

CMD:backwalk(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","gas_cwr",4.1,1,1,1,1,1);
	return true;
}

CMD:feettog(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"PED","Idlestance_fat",4.1,0,1,1,1,0);
	return true;
}

CMD:mirro(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"CLOTHES","CLO_Pose_Hat",4.1,0,1,1,1,0);
	return true;
}

CMD:hips(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"COP_AMBIENT","Coplook_shake",4.1,0,1,1,1,0);
	return true;
}

CMD:pullo(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"AIRPORT","thrw_barl_thrw",4.1,0,1,1,1,0);
	return true;
}

CMD:obalance(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"BD_FIRE","BD_Panic_02",4.1,0,1,1,1,0);
	return true;
}

CMD:wobalance(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	UseAnim(playerid,"BD_FIRE","BD_Panic_03",4.1,0,1,1,1,0);
	return true;
}

CMD:dance(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /dance [1-12]");
	switch(params[0]) {
		case 1 : SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DANCE1);
		case 2 : SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DANCE2);
		case 3 : SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DANCE3);
		case 4 : SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DANCE4);
		case 5 : UseAnim(playerid,"DANCING","bd_clap",4.1,1,1,1,1,1);
		case 6 : UseAnim(playerid,"DANCING","bd_clap1",4.1,1,1,1,1,1);
		case 7 : UseAnim(playerid,"DANCING","DAN_Down_A",4.1,1,1,1,1,1);
		case 8 : UseAnim(playerid,"DANCING","DAN_Left_A",4.1,1,1,1,1,1);
		case 9 : UseAnim(playerid,"DANCING","DAN_Loop_A",4.1,1,1,1,1,1);
		case 10 : UseAnim(playerid,"DANCING","DAN_Right_A",4.1,1,1,1,1,1);
		case 11 : UseAnim(playerid,"DANCING","DAN_Up_A",4.1,1,1,1,1,1);
		case 12 : UseAnim(playerid,"DANCING","dnce_M_a",4.1,1,1,1,1,1);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /dance [1-12]");
	}
	return true;
}

CMD:repcar(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /repcar [1-2]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"CAR","Fixn_Car_Loop",3.0,0,1,1,1,0);
		case 2 : UseAnim(playerid,"CAR","Fixn_Car_Out",3.0,0,1,1,1,0);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /repcar [1-2]");
	}
	return true;
}


CMD:hnds(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /hnds [1-7]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"LOWRIDER","prtial_gngtlkB",4.1,0,1,1,1,1);
		case 2 : UseAnim(playerid,"LOWRIDER","prtial_gngtlkC",4.1,0,1,1,1,1);
		case 3 : UseAnim(playerid,"LOWRIDER","prtial_gngtlkD",4.1,0,1,1,1,1);
		case 4 : UseAnim(playerid,"LOWRIDER","prtial_gngtlkE",4.1,0,1,1,1,1);
		case 5 : UseAnim(playerid,"LOWRIDER","prtial_gngtlkF",4.1,0,1,1,1,1);
		case 6 : UseAnim(playerid,"LOWRIDER","prtial_gngtlkG",4.1,0,1,1,1,1);
		case 7 : UseAnim(playerid,"LOWRIDER","prtial_gngtlkH",4.1,0,1,1,1,1);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /hnds [1-7]");
	}
	return true;
}

CMD:strip(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /strip [1-14]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"STRIP", "strip_A", 4.1, 1, 1, 1, 1, 1 );
		case 2 : UseAnim(playerid,"STRIP", "strip_B", 4.1, 1, 1, 1, 1, 1 );
		case 3 : UseAnim(playerid,"STRIP", "strip_C", 4.1, 1, 1, 1, 1, 1 );
		case 4 : UseAnim(playerid,"STRIP", "strip_D", 4.1, 1, 1, 1, 1, 1 );
		case 5 : UseAnim(playerid,"STRIP", "strip_E", 4.1, 1, 1, 1, 1, 1 );
		case 6 : UseAnim(playerid,"STRIP", "strip_F", 4.1, 1, 1, 1, 1, 1 );
		case 7 : UseAnim(playerid,"STRIP", "strip_G", 4.1, 1, 1, 1, 1, 1 );
     	case 8: ApplyAnimation(playerid,"STRIP","STR_A2B",4.1,1,1,1,1,1);
        case 9: ApplyAnimation(playerid,"STRIP","STR_B2C",4.1,1,1,1,1,1);
        case 10: ApplyAnimation(playerid,"STRIP","STR_C1",4.1,1,1,1,1,1);
        case 11: ApplyAnimation(playerid,"STRIP","STR_C2",4.1,1,1,1,1,1);
        case 12: ApplyAnimation(playerid,"STRIP","STR_Loop_A",4.1,1,1,1,1,1);
        case 13: ApplyAnimation(playerid,"STRIP","STR_Loop_B",4.1,1,1,1,1,1);
        case 14: ApplyAnimation(playerid,"STRIP","STR_Loop_C",4.1,1,1,1,1,1);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /strip [1-14]");
	}
	return true;
}


CMD:deal(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /deal [1-3]");
	switch(params[0]) {
		case 1 : UseAnim(playerid, "DEALER", "DEALER_DEAL", 4.0, 0, 0, 0, 0, 0);
		case 2 : UseAnim(playerid, "DEALER","DEALER_IDLE", 3.0,0,1,1,1,0);
		case 3 : UseAnim(playerid,"GRAVEYARD","mrnM_loop",3.0,0,1,1,1,0);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /deal [1-3]");
	}
	return true;
}

CMD:asmoke(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /asmoke [1-6]");
	switch(params[0]) {
		case 1 : UseAnim(playerid, "SMOKING", "M_smklean_loop", 4.0, 1, 0, 0, 0, 0);
		case 2 : UseAnim(playerid, "SMOKING", "F_smklean_loop", 4.0, 1, 0, 0, 0, 0);
		case 3 : UseAnim(playerid, "SMOKING","M_smkstnd_loop", 4.0, 1, 0, 0, 0, 0);
		case 4 : UseAnim(playerid, "SMOKING","M_smk_out", 4.0, 0, 0, 0, 0, 0);
		case 5 : UseAnim(playerid, "SMOKING","M_smk_in",3.0,0,0,0,0,0);
		case 6 : UseAnim(playerid, "SMOKING","M_smk_tap",3.0,0,0,0,0,0);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /asmoke [1-6]");
	}
	return true;
}

CMD:rap(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /rap [1-9]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"RAPPING","RAP_A_Loop",4.0,1,0,0,0,0);
		case 2 : UseAnim(playerid,"RAPPING","RAP_C_Loop",4.0,1,0,0,0,0);
		case 3 : UseAnim(playerid,"GANGS","prtial_gngtlkD",4.0,1,0,0,1,1);
		case 4 : UseAnim(playerid,"GANGS","prtial_gngtlkH",4.0,1,0,0,1,1);
		case 5 : UseAnim(playerid,"GANGS","prtial_gngtlkF",4.0,1,0,0,1,1);
		case 6 : UseAnim(playerid,"GANGS","prtial_gngtlkG",4.0,1,0,0,1,1);
		case 7 : UseAnim(playerid,"PED","ATM",4.0,0,0,0,0,0);
		case 8 : UseAnim(playerid,"RAPPING","RAP_B_IN",3.0,0,1,1,1,0);
		case 9 : UseAnim(playerid,"GYMNASIUM","gym_tread_celebrate",4.1,0,1,1,1,0);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /rap [1-9]");
	}
	return true;
}

CMD:bat(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /bat [1-2]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"CRACK","Bbalbat_Idle_02",4.0, 1, 0, 0, 0, 0);
		case 2 : UseAnim(playerid,"CRACK","Bbalbat_Idle_01",4.0, 1, 0, 0, 0, 0);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /bat [1-2]");
	}
	return true;
}

CMD:basket(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /basket [1-6]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"BSKTBALL","BBALL_idleloop",4.0,1,0,0,0,0);
		case 2 : UseAnim(playerid,"BSKTBALL","BBALL_Jump_Shot",4.0,0,0,0,0,0);
		case 3 : UseAnim(playerid,"BSKTBALL","BBALL_pickup",4.0,0,0,0,0,0);
		case 4 : UseAnim(playerid,"BSKTBALL","BBALL_run",4.1,1,1,1,1,1);
		case 5 : UseAnim(playerid,"BSKTBALL","BBALL_def_loop",4.0,1,0,0,0,0);
		case 6 : UseAnim(playerid,"BSKTBALL","BBALL_Dnk",4.0,0,0,0,0,0);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /basket [1-6]");
	}
	return true;
}

CMD:lean(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /lean [1-3]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"GANGS","leanIDLE",4.0,0,0,1,1,0);
		case 2 : UseAnim(playerid,"MISC","Plyrlean_loop",4.0,0,1,1,1,0);
		case 3 : UseAnim(playerid,"CAR_CHAT","car_talkm_loop",4.0,0,1,1,1,0);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /lean [1-3]");
	}
	return true;
}

CMD:lay(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /lay [1-5]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"BEACH", "bather", 4.0, 1, 0, 0, 0, 0);
		case 2 : UseAnim(playerid,"SUNBATHE","Lay_Bac_in",3.0,0,1,1,1,0);
		case 3 : UseAnim(playerid,"BEACH","ParkSit_W_loop",3.0,0,1,1,1,0);
		case 4 : UseAnim(playerid,"BEACH","SitnWait_loop_W",4.0, 1, 0, 0, 0, 0);
		case 5 : UseAnim(playerid,"SUNBATHE","SBATHE_F_LieB2Sit",3.0,0,1,1,1,0);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /lay [1-5]");
	}
	return true;
}

CMD:gsign(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /gsign [1-10]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"GHANDS","gsign1",4.1,0,1,1,1,1);
		case 2 : UseAnim(playerid,"GHANDS","gsign1LH",4.1,0,1,1,1,1);
		case 3 : UseAnim(playerid,"GHANDS","gsign2",4.1,0,1,1,1,1);
		case 4 : UseAnim(playerid,"GHANDS","gsign2LH",4.1,0,1,1,1,1);
		case 5 : UseAnim(playerid,"GHANDS","gsign3",4.1,0,1,1,1,1);
		case 6 : UseAnim(playerid,"GHANDS","gsign3LH",4.1,0,1,1,1,1);
		case 7 : UseAnim(playerid,"GHANDS","gsign4",4.1,0,1,1,1,1);
		case 8 : UseAnim(playerid,"GHANDS","gsign4LH",4.1,0,1,1,1,1);
		case 9 : UseAnim(playerid,"GHANDS","gsign5",4.1,0,1,1,1,1);
		case 10 : UseAnim(playerid,"GHANDS","gsign5LH",4.1,0,1,1,1,1);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /gsign [1-10]");
	}
	return true;
}

CMD:wave(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /wave [1-4]");
	switch(params[0]) {
		case 1 : UseAnim(playerid, "KISSING","gfwave2", 4.1,0,1,1,0,0);
		case 2 : UseAnim(playerid, "ON_LOOKERS","wave_loop", 4.1,1,1,1,0,0);
		case 3 : UseAnim(playerid,"CAMERA","camstnd_cmon",4.0,0,0,0,0,0);
		case 4 : UseAnim(playerid,"PED","endchat_01",4.1,0,1,1,0,0);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /wave [1-4]");
	}
	return true;
}

CMD:police(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /police [1-4]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"POLICE","CopTraf_Away",3.0,1,0,0,1,0);
		case 2 : UseAnim(playerid,"POLICE","CopTraf_Come",3.0,1,0,0,1,0);
		case 3 : UseAnim(playerid,"POLICE","CopTraf_Left",3.0,1,0,0,1,0);
		case 4 : UseAnim(playerid,"POLICE","CopTraf_Stop",3.0,1,0,0,1,0);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /police [1-4]");
	}
	return true;
}

CMD:crack(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /crack [1-7]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"CRACK","crckdeth2",3.0,1,1,1,1,0);
		case 2 : UseAnim(playerid,"CRACK","crckdeth4",3.0,0,1,1,1,0);
		case 3 : UseAnim(playerid,"CRACK","crckidle1",3.0,0,1,1,1,0);
		case 4 : UseAnim(playerid,"CRACK","crckidle2",3.0,0,1,1,1,0);
		case 5 : UseAnim(playerid,"CRACK","crckidle3",3.0,0,1,1,1,0);
		case 6 : UseAnim(playerid,"CRACK","crckdeth1",3.0,0,1,1,1,0);
		case 7 : UseAnim(playerid,"CRACK","crckdeth3",3.0,0,1,1,1,0);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /crack [1-7]");
	}
	return true;
}

CMD:car(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /car [1-11]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"LOWRIDER","lrgirl_bdbnce",4.1,0,1,1,1,0);
		case 2 : UseAnim(playerid,"LOWRIDER","lrgirl_hair",4.1,0,1,1,1,0);
		case 3 : UseAnim(playerid,"LOWRIDER","lrgirl_idle_to_l0",4.1,0,1,1,1,0);
		case 4 : UseAnim(playerid,"PED","Tap_hand",4.1,0,1,1,1,0);
		case 5 : UseAnim(playerid,"PED","Tap_handP",4.1,0,1,1,1,0);
		case 6 : UseAnim(playerid,"LOWRIDER","lrgirl_l12_to_l0",4.1,0,1,1,1,0);
		case 7 : UseAnim(playerid,"LOWRIDER","lrgirl_l2_to_l3",4.1,0,1,1,1,0);
		case 8 : UseAnim(playerid,"PED","CAR_LB",4.1,0,1,1,1,0);
		case 9 : UseAnim(playerid,"PED","CAR_sitp",4.1,0,1,1,1,0);
		case 10 : UseAnim(playerid,"PED","CAR_sitpLO",4.1,0,1,1,1,0);
		case 11 : UseAnim(playerid,"CAR_CHAT","carfone_loopA",4.1,1,1,1,1,0);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /car [1-11]");
	}
	return true;
}

CMD:wallow(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /wallow [1-2]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"MD_CHASE","MD_BIKE_Lnd_Roll",4.1,0,1,1,1,0);
		case 2 : UseAnim(playerid,"MD_CHASE","MD_BIKE_Lnd_Roll_F",4.1,0,1,1,1,0);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /wallow [1-2]");
	}
	return true;
}

CMD:beckon(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /beckon [1-3]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"RYDER","RYD_Beckon_01",4.1,0,1,1,1,1);
		case 2 : UseAnim(playerid,"RYDER","RYD_Beckon_02",4.1,0,1,1,1,1);
		case 3 : UseAnim(playerid,"RYDER","RYD_Beckon_03",4.1,0,1,1,1,1);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /beckon [1-3]");
	}
	return true;
}

CMD:shotgun(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /shotgun [1-3]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"SHOTGUN","shotgun_crouchfire",4.1,0,1,1,1,1);
		case 2 : UseAnim(playerid,"SHOTGUN","shotgun_fire",4.1,0,1,1,1,1);
		case 3 : UseAnim(playerid,"SHOTGUN","shotgun_fire_poor",4.1,0,1,1,1,1);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /shotgun [1-3]");
	}
	return true;
}

CMD:colt(playerid, params[]) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /colt [1-3]");
	switch(params[0]) {
		case 1 : UseAnim(playerid,"COLT45","colt45_fire_2hands",4.1,0,1,1,1,1);
		case 2 : UseAnim(playerid,"COLT45","colt45_reload",4.1,0,1,1,1,1);
		case 3 : UseAnim(playerid,"COLT45","sawnoff_reload",4.1,0,1,1,1,1);
		default : SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /colt [1-3]");
	}
	return true;
}

CMD:bj( playerid, params[] ) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /bj [1-18]");
	switch (params[0]) {
		  case 1: UseAnim(playerid, "BLOWJOBZ", "BJ_COUCH_START_W", 4.0, 1, 1, 1, 1, 1);
		  case 2: UseAnim(playerid, "BLOWJOBZ", "BJ_COUCH_START_P", 4.0, 1, 1, 1, 1, 1);
		  case 3: UseAnim(playerid, "BLOWJOBZ", "BJ_COUCH_LOOP_W", 4.0, 1, 1, 1, 1, 1);
		  case 4: UseAnim(playerid, "BLOWJOBZ", "BJ_COUCH_LOOP_P", 4.0, 1, 1, 1, 1, 1);
		  case 5: UseAnim(playerid, "BLOWJOBZ", "BJ_COUCH_END_W", 4.0, 1, 1, 1, 1, 1);
		  case 6: UseAnim(playerid, "BLOWJOBZ", "BJ_COUCH_END_P", 4.0, 1, 1, 1, 1, 1);
		  case 7: UseAnim(playerid, "BLOWJOBZ", "BJ_STAND_START_W", 4.0, 1, 1, 1, 1, 1);
		  case 8: UseAnim(playerid, "BLOWJOBZ", "BJ_STAND_START_P", 4.0, 1, 1, 1, 1, 1);
		  case 9: UseAnim(playerid, "BLOWJOBZ", "BJ_STAND_LOOP_W", 4.0, 1, 1, 1, 1, 1);
		  case 10: UseAnim(playerid, "BLOWJOBZ", "BJ_STAND_LOOP_P", 4.0, 1, 1, 1, 1, 1);
		  case 11: UseAnim(playerid, "BLOWJOBZ", "BJ_STAND_END_W", 4.0, 1, 1, 1, 1, 1);
		  case 12: UseAnim(playerid, "BLOWJOBZ", "BJ_STAND_END_P", 4.0, 1, 1, 1, 1, 1);
		  case 13: UseAnim(playerid, "BLOWJOBZ", "BJ_CAR_START_W", 4.0, 1, 1, 1, 1, 1);
		  case 14: UseAnim(playerid, "BLOWJOBZ", "BJ_CAR_START_P", 4.0, 1, 1, 1, 1, 1);
		  case 15: UseAnim(playerid, "BLOWJOBZ", "BJ_CAR_LOOP_W", 4.0, 1, 1, 1, 1, 1);
		  case 16: UseAnim(playerid, "BLOWJOBZ", "BJ_CAR_LOOP_P", 4.0, 1, 1, 1, 1, 1);
		  case 17: UseAnim(playerid, "BLOWJOBZ", "BJ_CAR_END_W", 4.0, 1, 1, 1, 1, 1);
		  case 18: UseAnim(playerid, "BLOWJOBZ", "BJ_CAR_END_P", 4.0, 1, 1, 1, 1, 1);
		  default: SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /bj [1-18]");
  	}
  	return 1;
}

CMD:spank( playerid, params[] ) {
	if( Player[playerid][uDeath] ) return true;
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /spank [1-8]");
	switch (params[0]) {
		  case 1: UseAnim(playerid, "SNM", "SPANKING_IDLEW", 4.0, 1, 1, 1, 1, 1);
		  case 2: UseAnim(playerid, "SNM", "SPANKING_IDLEP", 4.0, 1, 1, 1, 1, 1);
		  case 3: UseAnim(playerid, "SNM", "SPANKINGW", 4.0, 1, 1, 1, 1, 1);
		  case 4: UseAnim(playerid, "SNM", "SPANKINGP", 4.0, 1, 1, 1, 1, 1);
		  case 5: UseAnim(playerid, "SNM", "SPANKEDW", 4.0, 1, 1, 1, 1, 1);
		  case 6: UseAnim(playerid, "SNM", "SPANKEDP", 4.0, 1, 1, 1, 1, 1);
		  case 7: UseAnim(playerid, "SNM", "SPANKING_ENDW", 4.0, 1, 1, 1, 1, 1);
		  case 8: UseAnim(playerid, "SNM", "SPANKING_ENDP", 4.0, 1, 1, 1, 1, 1);
		  default: SendClientMessage(playerid, C_GRAY, ""gbInfo"Введите: /spank [1-8]");
  	}
  	return 1;
}
