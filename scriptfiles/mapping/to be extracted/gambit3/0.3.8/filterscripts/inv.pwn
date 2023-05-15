#include <a_samp>
#include <foreach>

new PlayerText:inventory_background[MAX_PLAYERS];


public OnFilterScriptInit() {
	
	return true;
}

public OnPlayerConnect( playerid ) {
	
	return true;
}

public OnFilterScriptExit() {
	foreach(new i : Player) {
		PlayerTextDrawHide( i, inventory_background[i] );
		PlayerTextDrawDestroy( i, inventory_background[i] );
	}
	return true;
}