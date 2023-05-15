#include <YSI\y_hooks>

// CMD

CMD:damages( playerid, params[] ) {
	if( sscanf( params, "u", params[0] )) return SendClientMessage( playerid, C_GRAY, ""gbInfo"Введите: /damages [ID]");
	if( GetDistanceBetweenPlayers( playerid, params[0] ) > 10.0 || 
		GetPlayerVirtualWorld( playerid ) != GetPlayerVirtualWorld( params[0] )) 
			return SendClientMessage( playerid, C_GRAY, ""gbError"Данного игрока нет рядом с вами!");
	GetInfoAboutDamage( playerid, params[0] );
	return 1;
}

//

hook OnPlayerDisconnect( playerid, reason ) {
	for( new d; d < MAX_DAMAGE; d++ ) {
		playerDamage[playerid][d][damTime] = 0, playerDamage[playerid][d][damBody] = 0, 
		playerDamage[playerid][d][damAm] = 0, playerDamage[playerid][d][damWeap] = 0;
	}
	return true;
}

hook OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid, bodypart) {
	if( Player[playerid][uDeath] == 1 ) {
		SetPlayerHealth( playerid, 0 );
     	return UpdateDynamic3DTextLabelText( deathText[playerid], 0xFF6347FF, "(( ДАННЫЙ ИГРОК МЕРТВ ))");
	}
	new Float:health, Float:armour, string[10], bool:wd;
	GetPlayerArmour( playerid, armour ), GetPlayerHealth( playerid, health );
	switch(weaponid) {
		case 22: amount = 40.0;
		case 23: {
			if( !GetPVarInt( playerid, "Tazer" ) ) amount = 35.0;
		}
		case 24, 26, 33: amount = 50.0;
		case 25: amount = 60.0;
		case 27, 30, 31: amount = 65.0;
		case 28: amount = 35.0;
		case 29: amount = 42.0;
		case 34: amount = 90.0;
		default: RecordDamage( playerid, bodypart, amount, weaponid ), wd = true;
	}
	if( !wd ) GiveDamageForPlayer( playerid, issuerid, weaponid, amount ), RecordDamage( playerid, bodypart, amount, weaponid );	
	
	if(issuerid != INVALID_PLAYER_ID && GetPVarInt(playerid,"PlayerMenuShow") == 4) {
		format( string, sizeof(string), "%.0f%", health ), PlayerTextDrawSetString( playerid, invSPlayer[playerid][59], string );
		format( string, sizeof(string), "%.0f%", armour ), PlayerTextDrawSetString( playerid, invSPlayer[playerid][60], string );
		
        PlayerTextDrawTextSize( playerid, invSPlayer[playerid][56], 224.4 + health/100.0*190.0, -31.000000);
        PlayerTextDrawTextSize( playerid, invSPlayer[playerid][57], 224.4 + armour/100.0*190.0, -31.000000);
        PlayerTextDrawShow( playerid, invSPlayer[playerid][56] );
        PlayerTextDrawShow( playerid, invSPlayer[playerid][57] );
    }
	if( Inv[playerid][invSlot][54] != 0 ) {
        if( Inv[playerid][invSlotKol][54] != 0 ) Inv[playerid][invSlotKol][54] = floatround( armour );
        else {
            Inv[playerid][invSlot][54] = 0, Inv[playerid][invSlotKol][54] = 0;
            setPlayerArmour( playerid, 0 );
        }
	}
	return true;
}

stock GiveDamageForPlayer( playerid, attackerid, weaponid, Float:ammount ) {
	#pragma unused attackerid
	#pragma unused weaponid
	if( Player[playerid][uArmor] ) {
		if( Player[playerid][uArmor] - ammount < 1) {
			HealthDamage( playerid, ammount - Player[playerid][uArmor] );
			setPlayerArmour( playerid, 0.0 );
   		}
   		else ArmorDamage( playerid, ammount );
	}
	else HealthDamage( playerid, ammount );
  	return true;
}	


stock RecordDamage(playerid, bodypart, Float:amount, weaponid) {
	for(new i = 0; i < MAX_DAMAGE; i++) {
	    if( !playerDamage[playerid][i][damTime] ) {
			playerDamage[playerid][i][damBody] = bodypart;
			playerDamage[playerid][i][damAm] = amount;
			playerDamage[playerid][i][damWeap] = weaponid;
			playerDamage[playerid][i][damTime] = gettime();
			break;
		}
	}
	return 1;
}

stock ArmorDamage( playerid, Float:ammount ) {
	if( Player[playerid][uArmor] < 1 ) return false;
	if( Player[playerid][uArmor] - ammount < 1 ) setPlayerArmour(playerid,0.0);
  	else setPlayerArmour(playerid, Player[playerid][uArmor] - ammount);
	return true;
}

stock HealthDamage( playerid, Float:ammount ) {
	if( Player[playerid][uHP] < 1) return false;
  	else if( Player[playerid][uHP] - ammount < 1 && Player[playerid][uDeath] != 1) {
	    ApplyAnimation(playerid,"PED","null",4.0, 0, 0, 0, 1, 0, 1);
		ApplyAnimation(playerid,"PED","KO_shot_stom",4.0, 0, 0, 0, 1, 0, 1);
		setPlayerHealth( playerid, 5 );
		Player[playerid][uDeath] = 1;
		updateDeathText( playerid );
		getDeathPos( playerid );
  	}
	else if( Player[playerid][uHP] - ammount < 1 && Player[playerid][uDeath] == 2 ) {
		SetPlayerHealth( playerid, 5.0 );
	}
	else setPlayerHealth( playerid, Player[playerid][uHP] - ammount);
  	return true;
}

stock GetInfoAboutDamage(playerid, userid) {
  	cstring[0] = 0;
	new gunname[16];
  	for(new i = 0; i < MAX_DAMAGE; i++) {
  	    if( playerDamage[userid][i][damTime] ) {
  	        GetWeaponName( playerDamage[userid][i][damWeap], gunname, sizeof( gunname ) );
	  		format( cstring, sizeof cstring, "%s{696969}%d.{ffffff} %s, %s, %.1f DMG, %s\n",
				cstring, 
				i + 1, GetDuration( gettime() - playerDamage[userid][i][damTime] ), 
				gunname, playerDamage[userid][i][damAm], 
				GetBodypart( playerDamage[userid][i][damBody] ) );
		}
  	}
	if( !strlen( cstring ) ) SendClientMessage(playerid,C_GRAY,""gbError"У игрока нет активных повреждений.");
 	ShowPlayerDialog(playerid, d_checkdamages, DIALOG_STYLE_LIST, Player[userid][uName], cstring, "Закрыть", "");
  	return 1;
}

stock GetBodypart( id ) {
	new name[64];
	switch( id ) {
		case 3: name = "Торс";
		case 4: name = "Пах";
		case 5: name = "Левая рука";
		case 6: name = "Правая рука";
		case 7: name = "Левая нога";
		case 8: name = "Правая нога";
		case 9: name = "Голова";
		default: name = "Неизвестно";
	}	
    return name;
}

stock GetDuration( time ) {
	new str[32];
    if (time < 0 || time == gettime() ) {
	    format(str, sizeof(str), "Никогда");
	    return str;
	}
	else if (time < 60) format(str, sizeof(str), "%d секунд(-у, -а)", time);
	else if (time >= 0 && time < 60) format(str, sizeof(str), "%d секунда", time);
	else if (time >= 60 && time < 3600) format(str, sizeof(str), (time >= 120) ? ("%d минут(-ы)") : ("%d минуту"), time / 60);
	else if (time >= 3600 && time < 86400) format(str, sizeof(str), (time >= 7200) ? ("%d часа(-ов)") : ("%d час"), time / 3600);
	else if (time >= 86400 && time < 2592000) format(str, sizeof(str), (time >= 172800) ? ("%d дня(-ей)") : ("%d день"), time / 86400);
	else if (time >= 2592000 && time < 31536000) format(str, sizeof(str), (time >= 5184000) ? ("%d месяца(-ев)") : ("%d месяц"), time / 2592000);
	else if (time >= 31536000) format(str, sizeof(str), (time >= 63072000) ? ("%d года(лет)") : ("%d год"), time / 31536000);
	strcat(str, " назад");
	return str;
}