


stock payDay( playerid ) 
{
	Player[playerid][uPayTime] = 0;
	printf("У игрока %s [%d] произошел PayDay", Player[playerid][uName], playerid);
	
	switch( Player[playerid][uPremium] ) 
	{
		case 1 : 
		{
			Player[playerid][uJobValue] += 30;
			if( Player[playerid][uJobValue] > 300 ) Player[playerid][uJobValue] = 300;
		}	
		
		case 2 : 
		{
			Player[playerid][uJobValue] += 40;
			if( Player[playerid][uJobValue] > 400 ) Player[playerid][uJobValue] = 400;
		}	
		
		case 3 : 
		{
			Player[playerid][uJobValue] += 45;
			if( Player[playerid][uJobValue] > 450 ) Player[playerid][uJobValue] = 450;
		}	
		
		case 4 :
		{
			Player[playerid][uJobValue] += 45;
			
			if( Player[playerid][uJobValue] > 500 ) 
			{
				Player[playerid][uJobValue] = 500;
			}
		}
		
		default: 
		{
			Player[playerid][uJobValue] += 20;
			if( Player[playerid][uJobValue] > 200 ) Player[playerid][uJobValue] = 200;
		}
	}
	userUpdate( playerid, "uJobValue", Player[playerid][uJobValue] );
	clear_massive();
	if( Player[playerid][uShowJobValue] ) {
		format( gb_string, sizeof gb_string, "Очки работы: %d", Player[playerid][uJobValue] );
		PlayerTextDrawSetString( playerid, JobValueText[playerid], gb_string );
		PlayerTextDrawShow( playerid, JobValueText[playerid] );
	}
	clear_massive();
	new zarplata, gmoney, bank;
	if( Player[playerid][uMember] ) {
		if( Player[playerid][uRank] == 1 ) {
			zarplata =  S::[0][sMeria][ Player[playerid][uMember] + 1 ];
			S::[0][sMeria][0] -= zarplata;
		}
		else if( Player[playerid][uRank] != 1 ) {
			zarplata = S::[0][sMeria][ Player[playerid][uMember] + 1 ] + ( Player[playerid][uRank] * 100 );
			S::[0][sMeria][0] -= zarplata;
		}
		format( vb_string, sizeof vb_string, "Зарплата" );
	}	
	else 
	{
		if( Player[playerid][uJob] == 0 ) 
		{
			zarplata = 200;	
			
			if( Player[playerid][uPremium] == 4 )
			{
				zarplata += floatround( zarplata * 0.25 );
			}
		
			format( vb_string, sizeof vb_string, "Пособие по безработице" );
		}
		else {
			format( vb_string, sizeof vb_string, "Зарплата" );
		}
	}	
	switch( Player[playerid][uPremium] ) {
		case 1: {
			zarplata += floatround( zarplata * 0.5 );
			format( gb_string, sizeof gb_string, "( Премиум аккаунт «Light» )" );
		}
		case 2: {
			zarplata += floatround( zarplata * 0.10 );
			gmoney = 2, bank = floatround( Player[playerid][uBank] * 0.003 );
			format( gb_string, sizeof gb_string, "( Премиум аккаунт «Medium» )" );
			format( query, sizeof query, "+ "cGREEN"$%d", bank );
		}
		case 3: {
			zarplata += floatround( zarplata * 0.15 );
			gmoney = 4, bank = floatround( Player[playerid][uBank] * 0.005 );
			format( gb_string, sizeof gb_string, "( Премиум аккаунт «Hard» )" );
			format( query, sizeof query, "+ "cGREEN"$%d", bank );
		}
		
		case 4 : 
		{
			zarplata += floatround( zarplata * 0.25 );
			gmoney = 5;
			bank = floatround( Player[playerid][uBank] * 0.005 );
			format( gb_string, sizeof gb_string, "( Премиум аккаунт «Platinum» )" );
			format( query, sizeof query, "+ "cGREEN"$%d", bank );
		}
	}
	SendMes( playerid, C_GRAY, ""gbAccess"Вы отыграли час %s", gb_string );
	SendMes( playerid, C_GRAY, ""gbAccess"%s: $%d", vb_string, zarplata );
	SendMes( playerid, C_GRAY, ""gbAccess"На банковском счету: $%d %s", Player[playerid][uBank], query );
	if( gmoney ) SendMes( playerid, C_GRAY, ""gbAccess"Начисленно GMoney: %d", gmoney );
	
	if( Player[playerid][uPremium] != 4 )
	{
		if( gettime() > Player[playerid][uPremiumDate] + (2592000) && Player[playerid][uPremiumDate] && Player[playerid][uPremium] ) {
			SendMes( playerid, C_GRAY, ""gbAccess"Действие вашего премиум аккаунта закончилось. Спасибо за вашу помощь проекту!" );
			Player[playerid][uPremium] = 0, Player[playerid][uPremiumDate] = 0;
			userUpdate( playerid, "uPremium", 0 );
			userUpdate( playerid, "uPremiumDate", 0 );
		}
	}
	
	Player[playerid][uMoney] += zarplata;
	Player[playerid][uGMoney] += gmoney;
	Player[playerid][uBank] += bank;
	if( Player[playerid][uValueSt] > 0 ) {
		Player[playerid][uValueSt] -= 20;
		if( Player[playerid][uValueSt] < 0 ) Player[playerid][uValueSt] = 0;
	}	
	userUpdate( playerid, "ValueSt", Player[playerid][uValueSt] );
	userUpdate( playerid, "uMoney", Player[playerid][uMoney] );
	userUpdate( playerid, "uGMoney", Player[playerid][uGMoney] );
	userUpdate( playerid, "uBank", Player[playerid][uBank] );
	return true;
}	