
#define MAX_DAMAGE	20

enum damInfo {
  	damTime, damBody,
	Float:damAm,
	damWeap
}
new playerDamage[MAX_PLAYERS][MAX_DAMAGE][damInfo];

/*


stock GetDuration(time)
{
	new
	    str[32];

	if (time < 0 || time == gettime()) {
	    format(str, sizeof(str), "Ieeiaaa");
	    return str;
	}
	else if (time < 60)
		format(str, sizeof(str), "%d naeoia(-o, -a)", time);

	else if (time >= 0 && time < 60)
		format(str, sizeof(str), "%d naeoiaa", time);

	else if (time >= 60 && time < 3600)
		format(str, sizeof(str), (time >= 120) ? ("%d ieioo(-u)") : ("%d ieiooo"), time / 60);

	else if (time >= 3600 && time < 86400)
		format(str, sizeof(str), (time >= 7200) ? ("%d ?ana(-ia)") : ("%d ?an"), time / 3600);

	else if (time >= 86400 && time < 2592000)
 		format(str, sizeof(str), (time >= 172800) ? ("%d aiy(-ae)") : ("%d aaiu"), time / 86400);

	else if (time >= 2592000 && time < 31536000)
 		format(str, sizeof(str), (time >= 5184000) ? ("%d ianyoa(-aa)") : ("%d ianyo"), time / 2592000);

	else if (time >= 31536000)
		format(str, sizeof(str), (time >= 63072000) ? ("%d aiaa(eao)") : ("%d aia"), time / 31536000);

	strcat(str, " iacaa");

	return str;
}


disconnect

	if (IsValidDynamic3DTextLabel(DeathScreen[playerid]))
		DestroyDynamic3DTextLabel(DeathScreen[playerid]);

	PlayerDeath[playerid] = 0;
	SetPVarInt(playerid,"PlayerDeathTimer", 0);
   	SetPVarInt(playerid, "RepeatKill", 0);

	for(new i = 0; i < MAX_DAMAGES; i++)
	{
		Damage_All[playerid][i][damage_time] = 0;
		Damage_All[playerid][i][damage_bodypart] = 0;
		Damage_All[playerid][i][damage_amount] = 0;
		Damage_All[playerid][i][damage_weapon] = 0;
		Damage_All[playerid][i][damage_unixtime] = 0;
	}
	
spawn

if(PlayerDeath[playerid] > 0 && PlayerDeath[playerid] != 1)
	{
	    new string[256], DamagedTimes;
		setPlayerPos(playerid, DeathPos[playerid][0], DeathPos[playerid][1], DeathPos[playerid][2]);
		ResetWeapons(playerid);
		SetPlayerFacingAngle(playerid, DeathPos[playerid][3]);
		SetPlayerVirtualWorld(playerid, DeathIntVW[playerid][0]);
		SetPlayerInterior(playerid, DeathIntVW[playerid][1]);

		ApplyAnimation(playerid, "WUZI", "null", 4.0, 0, 0, 0, 1, 0, 1);
		ApplyAnimation(playerid, "WUZI", "CS_Dead_Guy", 4.0, 0, 0, 0, 1, 0, 1);
		setPlayerHealth(playerid,100);
		if(U::[playerid][uIsPlayerJob][0] == 1 || U::[playerid][uIsPlayerJob][1] == 1 || U::[playerid][uIsPlayerJob][2] == 1)
  		{
			if(GetPVarInt(playerid, "PlayerColor") == 1)
			{
   				SetPlayerColor(playerid,FracColor[0]);
			}
			else SetPlayerColor(playerid,FracColor[U::[playerid][uMember]]);
			SetPlayerSkin(playerid, U::[playerid][uJobSkin]);
   		}
		for(new i = 0; i < MAX_DAMAGES; i++)
	  	{
	  	    if(Damage_All[playerid][i][damage_time] != 0)
	  	    {
				DamagedTimes++;
			}
  		}
		if (!IsValidDynamic3DTextLabel(DeathScreen[playerid]))
		{
			format(string, sizeof(string), "(( Игрок был ранен %d раз(-а), для просмотра более точной информации введите /damages %d ))", DamagedTimes, playerid);
			DeathScreen[playerid] = CreateDynamic3DTextLabel(string, 0xFF6347FF, 0.0, 0.0, 0.0, 10.0, playerid, INVALID_VEHICLE_ID);
		}
		else
		{
            format(string, sizeof(string), "(( Игрок был ранен %d раз(-а), для просмотра более точной информации введите /damages %d ))", DamagedTimes, playerid);
            UpdateDynamic3DTextLabelText(DeathScreen[playerid],0xFF6347FF,string);
		}
		return 1;
	}

death

new string[256], DamagedTimes;
	for(new i = 0; i < MAX_DAMAGES; i++)
	{
 		if(Damage_All[playerid][i][damage_time] != 0)
   		{
			DamagedTimes++;
		}
	}
	format(string, sizeof(string), ""gbInfo"Au auee ?aiaiu %d ?ac(-a). ?oiau i?iaa?eou naie iia?a?aaiey iaieoeoa /damages %d.", DamagedTimes, playerid);
	SendClientMessage(playerid, -1, string);
	GetPlayerPos(playerid, DeathPos[playerid][0], DeathPos[playerid][1], DeathPos[playerid][2]);
	GetPlayerFacingAngle(playerid, DeathPos[playerid][3]);
	DeathIntVW[playerid][0] = GetPlayerVirtualWorld(playerid);
	DeathIntVW[playerid][1] = GetPlayerInterior(playerid);
	PlayerDeath[playerid] = 1;




stock GiveDamageForPlayer(playerid,attackerid,weaponid,Float:ammount) // AIAAAEOU!
{
	#pragma unused attackerid
	#pragma unused weaponid
	
	if(U::[playerid][uArmor] >= 1)
	{
		if(U::[playerid][uArmor] - ammount <= 0)
		{
			HealthDamage(playerid, ammount - U::[playerid][uArmor]);
			setPlayerArmour(playerid,0.0);
   		}
   		else ArmorDamage(playerid, ammount);
	}
	else HealthDamage(playerid,ammount);
  	return true;
}	


public OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid, bodypart) {
	if(PlayerDeath[playerid] == 1) {
	    PlayerDeath[playerid] = 2;
     	UpdateDynamic3DTextLabelText(DeathScreen[playerid],0xFF6347FF,"(( AAIIUE EA?IE IA?OA ))");
     	SetPVarInt(playerid,"PlayerDeathTimer", 300 );
	}
	switch(weaponid)
	{
    	case 22: GiveDamageForPlayer(playerid,issuerid,22,40.0), RecordDamage(playerid, bodypart, 40.0, 22); // 9MM
	    case 23:
	    {
     		if(GetPVarInt(playerid, "Tazer") == 0)
       		{
				GiveDamageForPlayer(playerid,issuerid,23,35.0), RecordDamage(playerid, bodypart, 35.0, 23); // 9MM silet
			}
			else {}
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
    if(_invPlayer[playerid][invSlot][54] != 0) {
	    new Float:armour;
		GetPlayerArmour(playerid, armour);
        if(_invPlayer[playerid][invSlotKol][54] != 0) _invPlayer[playerid][invSlotKol][54] = floatround(armour);
        else {
            _invPlayer[playerid][invSlot][54] = 0;
            _invPlayer[playerid][invSlotKol][54] = 0;
            setPlayerArmour(playerid,0);
        }
	}
	if(GetPVarInt(playerid, "Tazer") >= 1) { }
    return 1;
}
*/