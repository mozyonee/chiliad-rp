

enum hoinfo {
	hoi_model, hoi_type, hoi_inv,
}

new halloween_object[12][hoinfo] = {
	{ 11704, 1, -1 },
	{ 19632, 1, -1 }, 
	{ 19319, 1, -1 },
	{ 19320, 1, -1 }, 
	{ 19527, 1, -1 },
	{ 11725, 1, -1 }, 
	{ 11733, 1, -1 }, 
	{ 11734, 1, -1 }, 
	{ 19806, 1, -1 }, 
	
	{ 19319, 2, 517 },
	{ 19528, 2, 518 }, 
	{ 19624, 2, 519 }
};

stock testHalloween( playerid ) {
	PlayerTextDrawShow(playerid, HalloweenSelect[12][playerid]);
	for( new i; i < 12; i++ ) {
		PlayerTextDrawSetPreviewModel(playerid, HalloweenSelect[i][playerid], halloween_object[i][hoi_model] );
		PlayerTextDrawShow(playerid, HalloweenSelect[i][playerid]);
	}	
	SelectTextDraw(playerid, 0xd3d3d3FF);
	SetPVarInt( playerid, "halloween", 1 );
	return true;
}

stock loadHalloween() {
	new actor = CreateActor( 238, 2254.5100,-37.2061,26.4844,356.8669 );
	ApplyActorAnimation( actor, "MISC","null",0.0,0,0,0,0,0 );
	ApplyActorAnimation( actor, "MISC","seat_LR",4.1, 1, 0, 0, 0, 0 );
	CreateDynamic3DTextLabel("[ Чародейка ]",0xFFFFFFFF,2254.5100,-37.2061,26.48444 + 1, 10.0, INVALID_PLAYER_ID,INVALID_VEHICLE_ID, -1);
	return true;
}

stock createHalloweenTextDraw( playerid ) {
	new Float:x = 78.0, Float:y = 146.42;
	for( new i; i < 12; i++ ) {
		if( i < 6 ) x += 64.0;
		else {
			if ( i == 6 ) x = 78.0, y += 75.0;
			x += 64.0;
		}	
		HalloweenSelect[i][playerid] = CreatePlayerTextDraw(playerid, x, y, "PreviewModel");
		PlayerTextDrawLetterSize(playerid,HalloweenSelect[i][playerid], 0.095666, 3.364151);
		PlayerTextDrawTextSize(playerid,HalloweenSelect[i][playerid], 61.666648, 69.274085);
		PlayerTextDrawAlignment(playerid,HalloweenSelect[i][playerid], 1);
		PlayerTextDrawColor(playerid,HalloweenSelect[i][playerid], -1);
		PlayerTextDrawSetShadow(playerid,HalloweenSelect[i][playerid], 0);
		PlayerTextDrawSetOutline(playerid,HalloweenSelect[i][playerid], 0);
		PlayerTextDrawBackgroundColor(playerid,HalloweenSelect[i][playerid], -707406934);
		PlayerTextDrawFont(playerid,HalloweenSelect[i][playerid], 5);
		PlayerTextDrawSetPreviewModel(playerid,HalloweenSelect[i][playerid], 0);
		PlayerTextDrawSetPreviewRot(playerid,HalloweenSelect[i][playerid], 0.000000, 0.000000, 0.000000, 1.000000);
		PlayerTextDrawSetSelectable(playerid,HalloweenSelect[i][playerid], true);
	}
	HalloweenSelect[12][playerid] = CreatePlayerTextDraw(playerid,535.666625, 144.611114, "usebox");
	PlayerTextDrawLetterSize(playerid,HalloweenSelect[12][playerid], 0.000000, 16.829011);
	PlayerTextDrawTextSize(playerid,HalloweenSelect[12][playerid], 131.333328, 0.000000);
	PlayerTextDrawAlignment(playerid,HalloweenSelect[12][playerid], 1);
	PlayerTextDrawColor(playerid,HalloweenSelect[12][playerid], 0);
	PlayerTextDrawUseBox(playerid,HalloweenSelect[12][playerid], true);
	PlayerTextDrawBoxColor(playerid,HalloweenSelect[12][playerid], 102);
	PlayerTextDrawSetShadow(playerid,HalloweenSelect[12][playerid], 0);
	PlayerTextDrawSetOutline(playerid,HalloweenSelect[12][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid,HalloweenSelect[12][playerid], 1438569727);
	PlayerTextDrawFont(playerid,HalloweenSelect[12][playerid], 0);
	return true;
}