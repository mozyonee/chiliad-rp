
// Стадии
enum 
{
	PLAYER_HEALTHY = 0,
	PLAYER_INJURED,
	PLAYER_DIED
}
	
enum e_DAMAGES
{
	dm_body,
	Float: dm_amount,
	dm_weapon,
	dm_unix
}

enum e_DEATH_POS
{
	Float: d_pos_x,
	Float: d_pos_y,
	Float: d_pos_z,
	Float: d_angle,
	d_world,
	d_int
}

new 
	Damage				[ MAX_PLAYERS ][ MAX_DAMAGES ][ e_DAMAGES ];
	
new 
	Text3D: death_text	[ MAX_PLAYERS ],
	death_pos			[ MAX_PLAYERS ][ e_DEATH_POS ],
	death_timer			[ MAX_PLAYERS ];
	
	
new const 
	Float:spawnHospital[][] = 
	{
		{ 1149.2261, -1338.7825, 2804.9955 },
		{ 1151.9579, -1334.6521, 2804.9955 },
		{ 1156.0265, -1334.8046, 2804.9955 },
		{ 1155.8165, -1338.6012, 2804.9955 },
		{ 1141.4697, -1316.7407, 2804.9955 },
		{ 1137.2612, -1316.6311, 2804.9955 },
		{ 1141.0443, -1311.7603, 2804.9955 },
		{ 1142.8049, -1311.9259, 2804.9955 }
	};