#include <YSI\y_hooks>

#define d_death -1

hook OnPlayerDisconnect( playerid, reason ) {
	if( deathText[playerid] ) {
		DestroyDynamic3DTextLabel( deathText[playerid] );
	}
	return true;
}

stock deathPlayer( playerid, death ) {
	cstring[0] = 0;
	if( !Player[playerid][uDeath] ) {
		Player[playerid][uDeath] = 1;
	}
	if( Player[playerid][uDeath] == 1 ) {
		updateDeathText( playerid );
		setPlayerHealth( playerid, 5 );
		SetPlayerPos( playerid, GetPVarFloat( playerid, "death_posX" ), 
			GetPVarFloat( playerid, "death_posY" ),  GetPVarFloat( playerid, "death_posZ" ) );
		SetPlayerInterior( playerid, GetPVarInt( playerid, "death_int" ) ),
		SetPlayerVirtualWorld( playerid, GetPVarInt( playerid, "death_world" ) );
		
		ApplyAnimation(playerid,"PED","null",4.0, 0, 0, 0, 1, 0, 1);
		ApplyAnimation(playerid,"PED","KO_shot_stom",4.0, 0, 0, 0, 1, 0, 1);
		return true;
	}
	else if ( Player[playerid][uDeath] == 2 ) {
		setPlayerHealth( playerid, 5 );
		SetPlayerPos( playerid, GetPVarFloat( playerid, "death_posX" ), 
			GetPVarFloat( playerid, "death_posY" ),  GetPVarFloat( playerid, "death_posZ" ) );
		SetPlayerInterior( playerid, GetPVarInt( playerid, "death_int" ) ),
		SetPlayerVirtualWorld( playerid, GetPVarInt( playerid, "death_world" ) );
		
		ApplyAnimation( playerid, "WUZI", "null", 4.0, 0, 0, 0, 1, 0, 1);
		ApplyAnimation( playerid, "WUZI", "CS_Dead_Guy", 4.0, 0, 0, 0, 1, 0, 1 );
		return true;
	}
	return true;
}

stock getDeathPos( playerid ) {
	new Float:d_pos[3], damage; 
	GetPlayerPos( playerid, d_pos[0], d_pos[1], d_pos[2] );
	SetPVarFloat(playerid, "death_posX", d_pos[0]), SetPVarFloat(playerid, "death_posY", d_pos[1]), 
	SetPVarFloat(playerid, "death_posZ", d_pos[2]),
	SetPVarInt(playerid, "death_int", GetPlayerInterior(playerid) ),
	SetPVarInt(playerid, "death_world", GetPlayerVirtualWorld(playerid) );
	for(new i = 0; i < MAX_DAMAGE; i++) {
		if( playerDamage[playerid][i][damTime] ) damage++;
	}
	format( cstring, sizeof( cstring ), ""gbInfo"Вы были ранены %d раз(-а). Чтобы проверить свои повреждения напишите /damages %d.", damage, playerid );
	SendClientMessage( playerid, -1, cstring );
	return true;	
}

hook OnPlayerDeath( playerid, killerid, reason ) {
	if( !Player[playerid][uDeath] ) { 
		getDeathPos( playerid );
		Player[playerid][uDeath] = 1;
	}
	else if( Player[playerid][uDeath] == 1 ) {
		getDeathPos( playerid );
		SendClientMessage( playerid, -1, ""gbInfo"Вы были убиты, дождитесь пока закончится таймер" );
		Player[playerid][uDeath] = 2;
		Player[playerid][uDeathTimer] = 15;
	}
	return true;
}

stock updateDeathText( playerid ) {
	new idx;
	for( new i; i < MAX_DAMAGE; i++ ) {
	  	if( playerDamage[playerid][i][damTime] ) idx++;
  	}
	switch( idx + 1 ) {
		case 2, 3, 4: format( cstring, sizeof( cstring ), 
						"(( Игрок был ранен %d раза, для просмотра более точной информации введите /damages %d ))", idx + 1, playerid);
		default: format( cstring, sizeof( cstring ), 
					"(( Игрок был ранен %d раз, для просмотра более точной информации введите /damages %d ))", idx + 1, playerid);
	}	
	if( Player[playerid][uDeath] == 2 ) {
		format( cstring, sizeof cstring, "(( ДАННЫЙ ИГРОК МЕРТВ ))");
	}
	if ( !IsValidDynamic3DTextLabel( deathText[playerid] ) ) {
		deathText[playerid] = CreateDynamic3DTextLabel( cstring, 0xFF6347FF, 0.0, 0.0, 0.0, 10.0, playerid, INVALID_VEHICLE_ID);
	}
	else UpdateDynamic3DTextLabelText( deathText[playerid], 0xFF6347FF, cstring);
	return true;	
}		

stock deathTimer( playerid ) {
	cstring[0] = 0;
	if( Player[playerid][uDeath] > 1 && Player[playerid][uDeathTimer] > 1 ) {
		format( cstring, sizeof cstring, "%d", Player[playerid][uDeathTimer] );
		GameTextForPlayer( playerid, cstring, 3000, 3 );
		//ApplyAnimation( playerid, "WUZI", "CS_Dead_Guy", 4.0, 0, 0, 0, 1, 0, 1 );
		Player[playerid][uDeathTimer]--;
	}
	else if( Player[playerid][uDeath] > 1 && Player[playerid][uDeathTimer] == 1 ) {
		Player[playerid][uDeathTimer] = 0;
		ShowPlayerDialog( playerid, d_death, DIALOG_STYLE_MSGBOX, " ", "Ваш выбор, продолжить лежать на земле, или отправиться в госпиталь?", "Остаться", "Госпиталь" );
	}
	return true;
}
/*
if(GetPVarInt(i, "PlayerDeathTimer") != 0)
    	{
    	    format(string, sizeof string, "%d",GetPVarInt(i, "PlayerDeathTimer"));
    	    SetPVarInt(i,"PlayerDeathTimer",GetPVarInt(i, "PlayerDeathTimer")-1);
			GameTextForPlayer(i, string, 3000, 3);
			ApplyAnimation(i, "WUZI", "CS_Dead_Guy", 4.0, 0, 0, 0, 1, 0, 1);
			
			if(GetPVarInt(i,"PlayerDeathTimer") == 0)
			{
			    if (IsValidDynamic3DTextLabel(DeathScreen[i]))
					DestroyDynamic3DTextLabel(DeathScreen[i]);
					
                PlayerDeath[i] = 0;
                SetPVarInt(i,"PlayerDeathTimer", 0);
			    SetPVarInt(i, "RepeatKill", 0);
			    U::[i][uJailSettings][2] = 1;
				U::[i][uJailSettings][3] = 300;
				new rand = random(8);
				setPlayerPos(i,spawnHospital[rand][0],spawnHospital[rand][1],spawnHospital[rand][2]);
				ApplyAnimation(i, "CRACK", "crckdeth2", 4.0, 1, 0, 0, 0, 0);
				SetPVarInt(i,"playerDeathKiller",INVALID_PLAYER_ID);
				format(string,sizeof(string),"UPDATE gb_users SET uMoney = '%d' WHERE BINARY uName = '%s'",U::[i][uMoney],U::[i][uName]);
				mysql_tquery(1, string, "", "");
				SetPlayerInterior(i,15);
				SetPlayerVirtualWorld(i,26);
				togglePlayerControllable(i,false);
				U::[i][uJailSettings][4] = 0;
				SetPVarInt(i,"timerHospital",0);
				format(string,sizeof(string),"%d|%d|%d|%d|%d",U::[i][uJailSettings][0],U::[i][uJailSettings][1],U::[i][uJailSettings][2],U::[i][uJailSettings][3],U::[i][uJailSettings][4]);
				nowUpdateInfo(i , "s" , "gb_users" , "uName" , "uJailSettings" , string);
				foreach(new pl : Player)
				{
					if(U::[pl][uMember] == 0) continue;
					if(U::[pl][uMember] == 1 && U::[pl][uMember] == 2)
					{
						if(U::[pl][uIsPlayerJob][0] == 1)
						{
							format(string,sizeof(string),"[R] Aeniao?a?: Iai niiaueee, ?oi iiaic?aaaiue %s aue ioi?aaeai a aieuieoo.",U::[i][uName]);
							SendClientMessage(pl,FracColor[U::[i][uMember]],string);
						}
					}
				}
				if(_invPlayer[i][invSlot][50] != 0)
				{
					RemovePlayerWeapon(i,GetWeaponToObject(_itemsInfo[_invPlayer[i][invSlot][50]][invObject]));
					_invPlayer[i][invSlot][50] = 0, _invPlayer[i][invSlotKol][50] = 0;
				}
				if(_invPlayer[i][invSlot][51] != 0)
				{
					RemovePlayerWeapon(i,GetWeaponToObject(_itemsInfo[_invPlayer[i][invSlot][51]][invObject]));
					_invPlayer[i][invSlot][51] = 0, _invPlayer[i][invSlotKol][51] = 0;
				}
			}
    	}
*/