#include <YSI\y_hooks>


CMD:aheal( playerid, params[] ) {
	if(Player[playerid][uAdmin] < 2 || GetPVarInt(playerid,"playerAdmin") == 0) return true;
	if(sscanf(params, "u", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /aheal [ ID игрока ]");
	if(Player[params[0]][uJailSettings][2] != 0) Player[params[0]][uJailSettings][2] = 0;
	if(Player[params[0]][uJailSettings][3] != 0) Player[params[0]][uJailSettings][3] = 2;
	if(Player[params[0]][uJailSettings][4] != 0) Player[params[0]][uJailSettings][4] = 0;
		
	format( vb_string, sizeof vb_string,"%d|%d|%d|%d|%d",Player[params[0]][uJailSettings][0],Player[params[0]][uJailSettings][1],Player[params[0]][uJailSettings][2],Player[params[0]][uJailSettings][3],Player[params[0]][uJailSettings][4]);
	nowUpdateInfo(params[0] , "s" , "gb_users" , "uName" , "uJailSettings" , vb_string );
	SendMes( playerid, C_GRAY, "Вы вылечили игрока %s", Player[params[0]][uName]);
	ClearAnimations( params[0] );
	Player[ params[0] ][uDeath] = 0, delData( params[0], "Death:Timer" );
	togglePlayerControllable( params[0], true );
	DestroyDynamic3DTextLabel( DeathScreen[ params[0] ] );
	userUpdate( params[0], "uDeath", Player[ params[0] ][uDeath] );
	for(new i; i < MAX_DAMAGES; i++) {
		Damage_All[params[0]][i][damage_time] = 0, Damage_All[params[0]][i][damage_bodypart] = 0,
		Damage_All[params[0]][i][damage_amount] = 0, Damage_All[params[0]][i][damage_weapon] = 0,
		Damage_All[params[0]][i][damage_unixtime] = 0;
	}
	return true;
}
	
CMD:heal( playerid, params[] ) {
	new bool:cuff = false;
	for(new i; i != 48; i++) {
		if(Inv[playerid][invSlot][i] == 434 || Inv[playerid][invSlot][i] == 451 || Inv[playerid][invSlot][i] == 457) cuff = true;
	}
	if(cuff == false) return SendClientMessage(playerid,C_GRAY,""gbError"У вас нет с собой аптечки или сумки с медикаментами!");
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /heal [ ID игрока ]");
	if( Player[params[0]][uJailSettings][2] != 0) return SendClientMessage(playerid,C_GRAY,""gbError"Данный человек и так уже проходит реабилитацию!");
	if( Player[params[0]][uDeath] == 2 ) return SendClientMessage( playerid, C_GRAY, ""gbError"Данный человек мёртв, его невозможно вылечить!");
	if(!IsPlayerConnected(params[0]) || params[0] == playerid || IsPlayerNPC(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
	if(GetDistanceBetweenPlayers(playerid,params[0]) > 3.0 || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(params[0])) return SendClientMessage(playerid,C_GRAY,""gbError"Данного игрока нет рядом с вами!");
	for(new i; i != 48; i++) {
		switch(Inv[playerid][invSlot][i]) {
			case 434, 457: {
				if(Inv[playerid][invSlotKol][i] != 0) Inv[playerid][invSlotKol][i] --;
				else {
					Inv[playerid][invSlotKol][i] = 0;
					Inv[playerid][invSlot][i] = 0;
				}
				SendClientMessage(playerid,C_GRAY,""gbAccess"Вы использовали аптечку!");
				MeAction(playerid,"использовал(-а) аптечку",1);
				togglePlayerControllable( params[0], true );
				if(Player[params[0]][uJailSettings][2] != 0) Player[params[0]][uJailSettings][2] = 0;
				if(Player[params[0]][uJailSettings][3] != 0) Player[params[0]][uJailSettings][3] = 2;
				if(Player[params[0]][uJailSettings][4] != 0) Player[params[0]][uJailSettings][4] = 0;
				format( vb_string, sizeof vb_string,"%d|%d|%d|%d|%d",Player[params[0]][uJailSettings][0],Player[params[0]][uJailSettings][1],Player[params[0]][uJailSettings][2],Player[params[0]][uJailSettings][3],Player[params[0]][uJailSettings][4]);
				nowUpdateInfo(params[0] , "s" , "gb_users" , "uName" , "uJailSettings" , vb_string );
				break;
			}
			case 451: {
				SendClientMessage(playerid,C_GRAY,""gbAccess"Вы использовали сумку с медикаментами!");
				MeAction(playerid,"использовал(-а) сумку с медикаментами",1);
				togglePlayerControllable(params[0],true);
				if(Player[params[0]][uJailSettings][2] != 0) Player[params[0]][uJailSettings][2] = 0;
				if(Player[params[0]][uJailSettings][3] != 0) Player[params[0]][uJailSettings][3] = 2;
				if(Player[params[0]][uJailSettings][4] != 0) Player[params[0]][uJailSettings][4] = 0;
				format( vb_string, sizeof vb_string,"%d|%d|%d|%d|%d",Player[params[0]][uJailSettings][0],Player[params[0]][uJailSettings][1],Player[params[0]][uJailSettings][2],Player[params[0]][uJailSettings][3],Player[params[0]][uJailSettings][4]);
				nowUpdateInfo(params[0] , "s" , "gb_users" , "uName" , "uJailSettings" , vb_string );
				break;
			}
		}
	}
	ApplyAnimation( playerid, "MEDIC", "CPR",4.0, 0, 1, 1, 0, 0, 1);
	new Float:heal;
	GetPlayerHealth(params[0],heal);
	if(heal + 50.0 < 100.0) setPlayerHealth(params[0],heal + 50.0);
	else setPlayerHealth(params[0],100.0);
	Player[ params[0] ][uDeath] = 0, delData( params[0], "Death:Timer" );
	DestroyDynamic3DTextLabel( DeathScreen[ params[0] ] );
	userUpdate( params[0], "uDeath", Player[ params[0] ][uDeath] );
	for(new i; i < MAX_DAMAGES; i++) {
		Damage_All[params[0]][i][damage_time] = 0, Damage_All[params[0]][i][damage_bodypart] = 0,
		Damage_All[params[0]][i][damage_amount] = 0, Damage_All[params[0]][i][damage_weapon] = 0,
		Damage_All[params[0]][i][damage_unixtime] = 0;
	}
	return 1;
}


hook OnPlayerSpawn( playerid ) {
	clear_massive();
	if( getData( playerid, "Death:PreLoad" ) ) Player[playerid][uDeath] = 1, delData( playerid, "Death:PreLoad" );
	switch( Player[playerid][uDeath] ) {
		case 1: {
			SendMes( playerid, -1, "Вы ранены.." );
			userUpdate( playerid, "uDeath", Player[playerid][uDeath] );
			TogglePlayerControllable( playerid, false );
			ApplyAnimation( playerid, "SWEET", "null", 4.0, 0, 0, 0, 1, 0, 1);
			ApplyAnimation( playerid, "SWEET", "Sweet_injuredloop", 4.0,0,0,1,1,0);
			setPlayerHealth( playerid, 100.0 );
			setPlayerPos( playerid, deathPos[playerid][0], deathPos[playerid][1], deathPos[playerid][2] );
			SetPlayerFacingAngle( playerid, deathPos[playerid][3] );
			SetPlayerInterior( playerid, deathInt[playerid][0] );
			SetPlayerVirtualWorld( playerid, deathInt[playerid][1] );
			SetPlayerSkin( playerid, deathSkin[playerid] );
			new DamagedTimes;
			for( new i; i < MAX_DAMAGES; i++) {
				if( Damage_All[playerid][i][damage_time] ) DamagedTimes++;
			}
			if (!IsValidDynamic3DTextLabel(DeathScreen[playerid])) {
				format( gb_string, sizeof gb_string, "(( Игрок был ранен %d раз(-а), для просмотра более точной информации введите /damages %d ))", DamagedTimes, playerid);
				DeathScreen[playerid] = CreateDynamic3DTextLabel( gb_string, 0xFF6347FF, 0.0, 0.0, 0.0, 10.0, playerid, INVALID_VEHICLE_ID);
			}
			else {
				format( gb_string, sizeof gb_string, "(( Игрок был ранен %d раз(-а), для просмотра более точной информации введите /damages %d ))", DamagedTimes, playerid);
				UpdateDynamic3DTextLabelText(DeathScreen[playerid],0xFF6347FF, gb_string );
			}
			return true;
		}
		case 2: {
			SendMes( playerid, -1, "Вы убиты.." );
			ApplyAnimation(playerid,"PED","null",4.1,0,1,1,1,0);
			ApplyAnimation(playerid,"PED","BIKE_fall_off",4.1,0,1,1,1,0);
			setPlayerHealth( playerid, 100 );
			TogglePlayerControllable( playerid, false );
			setPlayerPos( playerid, deathPos[playerid][0], deathPos[playerid][1], deathPos[playerid][2] );
			SetPlayerFacingAngle( playerid, deathPos[playerid][3] );
			SetPlayerInterior( playerid, deathInt[playerid][0] );
			SetPlayerVirtualWorld( playerid, deathInt[playerid][1] );
			SetPlayerSkin( playerid, deathSkin[playerid] );
			if( getData( playerid, "Death:Enter" ) ) {
				setData( playerid, "Death:Timer", 300 );
				if (!IsValidDynamic3DTextLabel(DeathScreen[playerid])) {
					DeathScreen[playerid] = CreateDynamic3DTextLabel( "(( ДАННЫЙ ИГРОК МЕРТВ ))", 0xFF6347FF, 0.0, 0.0, 0.0, 10.0, playerid, INVALID_VEHICLE_ID);
				}
				else UpdateDynamic3DTextLabelText(DeathScreen[playerid],0xFF6347FF, "(( ДАННЫЙ ИГРОК МЕРТВ ))" );
			}
			return true;
		}
	}
	return true;
}

hook OnPlayerDisconnect( playerid, reason ) {
	if (IsValidDynamic3DTextLabel(DeathScreen[playerid]))
		DestroyDynamic3DTextLabel(DeathScreen[playerid]);
	delData( playerid, "Death:Timer" );
	for(new i; i < MAX_DAMAGES; i++) {
		Damage_All[playerid][i][damage_time] = 0, Damage_All[playerid][i][damage_bodypart] = 0,
		Damage_All[playerid][i][damage_amount] = 0, Damage_All[playerid][i][damage_weapon] = 0,
		Damage_All[playerid][i][damage_unixtime] = 0;
	}
	return true;
}

hook OnPlayerDeath( playerid, killerid, reason ) {
	setData( playerid, "CarSpWarn", 0 );
	Air_Gettime( playerid, 1 );
	
	// Забираем оружие у игрока
	if( Player[playerid][uMember] ) {
		for( new g; g != 56; g++ ) {
			switch( Inv[playerid][invSlot][g] ) { 
				case 426 .. 441, 451, 458, 340: {
					switch(Inv[playerid][invSlot][50]) {
						case 426,429,340: RemovePlayerWeapon(playerid,GetWeaponToObject(_itemsInfo[Inv[playerid][invSlot][50]][invObject]));
					}
					switch(Inv[playerid][invSlot][51]) {
						case 458,428,430: RemovePlayerWeapon(playerid,GetWeaponToObject(_itemsInfo[Inv[playerid][invSlot][51]][invObject]));
					}
					if(Inv[playerid][invSlot][54] == 431) setPlayerArmour(playerid,0);
					Inv[playerid][invSlot][g] = 0,Inv[playerid][invSlotKol][g] = 0;
				}
			}
		}
	}
	new DamagedTimes;
	for(new i; i < MAX_DAMAGES; i++) {
 		if( Damage_All[playerid][i][damage_time] ) DamagedTimes++;
	}
	if( !Player[playerid][uDeath] ) {
		SendMes( playerid, -1, ""gbInfo"Вы были ранены %d раз(-а). Чтобы проверить свои повреждения напишите /damages %d.", 
			DamagedTimes, playerid);
		GetPlayerPos(playerid, deathPos[playerid][0], deathPos[playerid][1], deathPos[playerid][2]);
		GetPlayerFacingAngle(playerid, deathPos[playerid][3]);
		deathInt[playerid][0] = GetPlayerInterior(playerid);
		deathInt[playerid][1] = GetPlayerVirtualWorld(playerid);
		deathSkin[playerid] = GetPlayerSkin( playerid );
		setData( playerid, "Death:PreLoad", 1 );
		ResetWeapons(playerid);
	}
	else if( Player[playerid][uDeath] == 1 ) {
		SendMes( playerid, -1, ""gbInfo"Вы были убиты!" );
		GetPlayerPos(playerid, deathPos[playerid][0], deathPos[playerid][1], deathPos[playerid][2]);
		GetPlayerFacingAngle(playerid, deathPos[playerid][3]);
		deathInt[playerid][0] = GetPlayerInterior(playerid);
		deathInt[playerid][1] = GetPlayerVirtualWorld(playerid);
		deathSkin[playerid] = GetPlayerSkin( playerid );
		Player[playerid][uDeath] = 2;
		userUpdate( playerid, "uDeath", Player[playerid][uDeath] );
		//SetSpawnInfo( playerid, GetPlayerSkin( playerid ), 0, deathPos[playerid][0], deathPos[playerid][1], deathPos[playerid][2], deathPos[playerid][3], 0, 0, 0, 0, 0, 0 );
	}
	return true;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	switch( dialogid ) {
		case d_death: {
			if(response) {// Госпиталь
				new rand = random(8);
				if( IsValidDynamic3DTextLabel( DeathScreen[playerid] ) ) DestroyDynamic3DTextLabel( DeathScreen[playerid] );
                delData( playerid, "Death:Timer" ), delData( playerid, "RepeatKill" );
				Player[playerid][uJailSettings][2] = 1, Player[playerid][uJailSettings][3] = 300;
				setPlayerPos( playerid, spawnHospital[rand][0], spawnHospital[rand][1], spawnHospital[rand][2] );
				SetPlayerInterior( playerid, 15 );
				SetPlayerVirtualWorld( playerid, 26 );
				Player[playerid][uDeath] = 0;
				userUpdate( playerid, "uDeath", Player[playerid][uDeath] );
				togglePlayerControllable( playerid, false );
				for(new i; i < MAX_DAMAGES; i++) {
					Damage_All[playerid][i][damage_time] = 0, Damage_All[playerid][i][damage_bodypart] = 0,
					Damage_All[playerid][i][damage_amount] = 0, Damage_All[playerid][i][damage_weapon] = 0,
					Damage_All[playerid][i][damage_unixtime] = 0;
				}
				if(Inv[playerid][invSlot][50] != 0) {
					RemovePlayerWeapon( playerid,GetWeaponToObject(_itemsInfo[Inv[playerid][invSlot][50]][invObject]));
					Inv[playerid][invSlot][50] = 0, Inv[playerid][invSlotKol][50] = 0;
				}
				if(Inv[playerid][invSlot][51] != 0) {
					RemovePlayerWeapon( playerid,GetWeaponToObject(_itemsInfo[Inv[playerid][invSlot][51]][invObject]));
					Inv[playerid][invSlot][51] = 0, Inv[playerid][invSlotKol][51] = 0;
				}
			}
			else {// На месте
				setData( playerid, "Death:Timer", 150 );
				showPlayerDialog( playerid, -1, DIALOG_STYLE_MSGBOX, " ", 
					"Вы выбрали остаться на месте.\
					\nПовторно диалог с выбором появится через 2.5 минуты", "Закрыть", "" );
			}
		}
	}
	return true;
}

stock GetInfoAboutDamage(playerid, userid) {
	clear_massive();
  	new gunname[32], nickname[32];
  	for(new i = 0; i < MAX_DAMAGES; i++) {
  	    if(Damage_All[userid][i][damage_time] != 0) {
  	        GetWeaponName(Damage_All[userid][i][damage_weapon],gunname,sizeof(gunname));
	  		format( vb_string, sizeof vb_string,"%s{696969}%d.{ffffff} %s, %s, %.1f DMG, %s\n", 
				vb_string, i + 1, GetDuration(gettime() - Damage_All[userid][i][damage_unixtime]), gunname, Damage_All[userid][i][damage_amount], GetBodypart(Damage_All[userid][i][damage_bodypart]));
		}
  	}
 	GetPlayerName(userid, nickname, sizeof(nickname));
    showPlayerDialog(playerid, d_checkdamages, DIALOG_STYLE_LIST, nickname, vb_string, "Закрыть", "");
	if(!strlen(vb_string)) SendClientMessage(playerid,C_GRAY,""gbError"У игрока нет активных повреждений.");
  	return 1;
}

stock deathtimer( playerid ) {
	clear_massive();
	if( Player[playerid][uDeath] == 1 ) {
		new animlib[32], animname[32];
        GetAnimationName( GetPlayerAnimationIndex( playerid ), animlib, 32, animname, 32 );
		if( strcmp( animlib, "SWEET", true ) && strcmp( animname, "Sweet_injuredloop", true ) ) {
			ApplyAnimation( playerid, "SWEET", "Sweet_injuredloop", 4.0,0,0,1,1,0);
		}
	}
	if( getData( playerid, "Death:Timer") > 0) {
    	giveData( playerid, "Death:Timer", -1);
		format( gb_string, sizeof gb_string, "%d", getData( playerid, "Death:Timer"));
		GameTextForPlayer( playerid, gb_string, 3000, 3);
		new animlib[32], animname[32];
        GetAnimationName( GetPlayerAnimationIndex( playerid ), animlib, 32, animname, 32 );
		if( strcmp( animlib, "PED", true ) && strcmp( animname, "BIKE_fall_off", true ) ) {
			ApplyAnimation(playerid,"PED","BIKE_fall_off",4.1,0,1,1,1,0);
		}
		//ApplyAnimation( playerid, "WUZI", "CS_Dead_Guy", 4.0, 0, 0, 0, 1, 0, 1);
		if( !getData( playerid, "Death:Timer" ) ) {
			showPlayerDialog( playerid, d_death, DIALOG_STYLE_MSGBOX, " ", 
				"Вы умерли. Остаться на месте смерти или отправится в госпиталь?\
				\nЕсли вы выберите пункт госпиталь, то вы будете обязаны забыть\
				\nкак проходило ваше убийство.", "Госпиталь", "Остаться" );
		}
	}
}

stock ArmorDamage(playerid,Float:ammount) {
	if(Player[playerid][uArmor] <= 0) return false;
	if(Player[playerid][uArmor] - ammount <= 0) setPlayerArmour(playerid,0.0);
  	else setPlayerArmour(playerid, Player[playerid][uArmor] - ammount);
	return true;
}

stock HealthDamage(playerid,Float:ammount) {
	clear_massive();
	if(Player[playerid][uHP] <= 0) return false;
  	if(Player[playerid][uHP] - ammount <= 0 && !Player[playerid][uDeath] ) {
	    ApplyAnimation(playerid,"PED","null",4.0, 0, 0, 0, 1, 0, 1);
		ApplyAnimation(playerid,"PED","KO_shot_stom",4.0, 0, 0, 0, 1, 0, 1);
		setPlayerHealth( playerid, 0 );
  	}
	else setPlayerHealth(playerid,Player[playerid][uHP] - ammount);
  	return true;
}

stock GiveDamageForPlayer(playerid,attackerid,weaponid,Float:ammount) {
	#pragma unused attackerid
	#pragma unused weaponid
	if(Player[playerid][uArmor] >= 1) {
		if(Player[playerid][uArmor] - ammount <= 0) {
			HealthDamage(playerid, ammount - Player[playerid][uArmor]);
			setPlayerArmour(playerid,0.0);
   		}
   		else ArmorDamage( playerid, ammount );
	}
	else HealthDamage( playerid, ammount );
  	return true;
}

hook OnPlayerGiveDamage( playerid, damagedid, Float: amount, weaponid, bodypart) {
	if( Player[ damagedid ][uDeath] == 1 && playerid != INVALID_PLAYER_ID ) {
	    Player[ damagedid ][uDeath] = 2;
		userUpdate( damagedid, "uDeath", Player[damagedid][uDeath] );
     	UpdateDynamic3DTextLabelText( DeathScreen[ damagedid ],0xFF6347FF,"(( ДАННЫЙ ИГРОК МЕРТВ ))");
		setPlayerHealth( damagedid, 100.0 );
     	setData( damagedid, "Death:Timer", 300 );
		return true;
	}
	return true;
}

hook OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid, bodypart) {
	if( Player[playerid][uDeath] == 1 ) return true;
	switch(weaponid) {
    	case 22: GiveDamageForPlayer(playerid,issuerid,22,40.0), RecordDamage(playerid, bodypart, 40.0, 22); // 9MM
	    case 23: {
     		if(GetPVarInt(playerid, "Tazer") == 0) {
				GiveDamageForPlayer(playerid,issuerid,23,35.0), RecordDamage(playerid, bodypart, 35.0, 23); // 9MM silet
			}
		}
 		case 24: GiveDamageForPlayer(playerid,issuerid,24,50.0), RecordDamage(playerid, bodypart, 50.0, 24); // Deagle
   		case 25: GiveDamageForPlayer(playerid,issuerid,25,60.0), RecordDamage(playerid, bodypart, 60.0, 25); // Shotgun
	    case 26: GiveDamageForPlayer(playerid,issuerid,26,50.0), RecordDamage(playerid, bodypart, 50.0, 26); // Sawnoff Shotgun
	    case 27: GiveDamageForPlayer(playerid,issuerid,27,65.0), RecordDamage(playerid, bodypart, 65.0, 27); // Sawnoff Shotgun
	    case 28: GiveDamageForPlayer(playerid,issuerid,28,35.0), RecordDamage(playerid, bodypart, 35.0, 28); // Sawnoff Shotgun
     	case 29: GiveDamageForPlayer(playerid,issuerid,29,42.0), RecordDamage(playerid, bodypart, 42.0, 29); // Sawnoff Shotgun
      	case 30: GiveDamageForPlayer(playerid,issuerid,30,65.0), RecordDamage(playerid, bodypart, 65.0, 30); // AK-47
		case 31: GiveDamageForPlayer(playerid,issuerid,31,65.0), RecordDamage(playerid, bodypart, 65.0, 31); // M4A1
		case 32: GiveDamageForPlayer(playerid,issuerid,32,35.0), RecordDamage(playerid, bodypart, 35.0, 32); // M4A1
		case 33: GiveDamageForPlayer(playerid,issuerid,33,50.0), RecordDamage(playerid, bodypart, 50.0, 33); // M4A1
  		case 34: GiveDamageForPlayer(playerid,issuerid,34,90.0), RecordDamage(playerid, bodypart, 90.0, 34); // M4A1
		default: RecordDamage(playerid, bodypart, amount, weaponid);
	}
    if(issuerid != INVALID_PLAYER_ID && GetPVarInt(playerid,"PlayerMenuShow") == 4) {
		new Float:health,Float:armour,string[10];
		GetPlayerHealth(playerid,health);
        GetPlayerArmour(playerid,armour);
        PlayerTextDrawSetString(playerid,invSPlayer[playerid][58],string);
		format(string,sizeof(string),"%.0f%",health);
		PlayerTextDrawSetString(playerid,invSPlayer[playerid][59],string);
		format(string,sizeof(string),"%.0f%",armour);
		PlayerTextDrawSetString(playerid,invSPlayer[playerid][60],string);
        PlayerTextDrawTextSize(playerid,invSPlayer[playerid][56], 224.4+health/100.0*190.0, -31.000000);
        PlayerTextDrawTextSize(playerid,invSPlayer[playerid][57], 224.4+armour/100.0*190.0, -31.000000);
        PlayerTextDrawShow(playerid,invSPlayer[playerid][56]);
        PlayerTextDrawShow(playerid,invSPlayer[playerid][57]);
    }
    if(Inv[playerid][invSlot][54] != 0) {
	    new Float:armour;
		GetPlayerArmour(playerid, armour);
        if(Inv[playerid][invSlotKol][54] != 0) Inv[playerid][invSlotKol][54] = floatround(armour);
        else {
            Inv[playerid][invSlot][54] = 0;
            Inv[playerid][invSlotKol][54] = 0;
            setPlayerArmour(playerid,0);
        }
	}
    return 1;
}