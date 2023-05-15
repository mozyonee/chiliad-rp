
#define MAX_DISCONNECTS		( 40 )

enum e_DISCONNECTS
{
	dis_name[ MAX_PLAYER_NAME ],
	dis_time[ 16 ],
	dis_reason[ 32 ],
}

new 
	Disconnect[ MAX_DISCONNECTS ][ e_DISCONNECTS ];
	
new 
	count_disconnect = 0;
	
//	kill_counts				[ MAX_PLAYERS char ];
	
new 
	PlayerText: admin_player_name	[ MAX_PLAYERS ],
	PlayerText: admin_player_info	[ MAX_PLAYERS ],
	admin_spectate_timer			[ MAX_PLAYERS ];
	
new 
	Menu: Admin;
	
