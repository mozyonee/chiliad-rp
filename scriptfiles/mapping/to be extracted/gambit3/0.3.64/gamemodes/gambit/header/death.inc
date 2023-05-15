
// Режим смерти
enum damage_info
{
  	damage_time[32],
  	damage_bodypart,
	Float:damage_amount,
	damage_weapon,
  	damage_unixtime
}
new Damage_All[MAX_PLAYERS][MAX_DAMAGES][damage_info];

new Text3D:DeathScreen[MAX_PLAYERS],
	Float:deathPos[MAX_PLAYERS][6], deathInt[MAX_PLAYERS][2],
	deathSkin[MAX_PLAYERS];