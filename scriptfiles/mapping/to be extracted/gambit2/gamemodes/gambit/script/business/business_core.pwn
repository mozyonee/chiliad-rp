
/*
	Business System
	- Found
*/

function OnBusinessUpdate()
{
	for( new b; b != cBizz; b++ ) 
	{
		if( !IsBuyingBusiness( b ) )
			continue;

		if( Bizz::[b][bSettings][3] <= 0 )
		{
			Bizz::[b][ bSellHour ]++;
			SetBizzStr( Bizz::[b][bID], "bSellHour", Bizz::[b][bSellHour] );

			if( Bizz::[b][ bSellHour ] >= 72 )
			{
				mysql_format:query( "INSERT INTO `gb_business_money` \
					( ID, Name, Money, BizzID ) \ 
					VALUES \ 
					( '%d', '%s', '%d', '%d' )",
					Bizz::[b][bOwnerID], 
					Bizz::[b][bOwner], 
					Bizz::[b][bSettings][0] / 100 * 80, 
					b+1
				);
				
				mysql_tquery( mysql, query, "", "" );

				Bizz::[b][bUpdate][0] = 0;
				Bizz::[b][bUpdate][1] = 0;
				Bizz::[b][bUpdate][2] = 0;
				
				mysql_format:gb_string( "%d|%d|%d",
					Bizz::[b][bUpdate][0],
					Bizz::[b][bUpdate][1],
					Bizz::[b][bUpdate][2]
				);
				
				SetBizzStr( Bizz::[b][bID], "bUpdate", gb_string );

				strmid( Bizz::[b][bOwner], "None", 0, strlen("None"), MAX_PLAYER_NAME ); 
				Bizz::[b][bOwnerID] = 0; 

				SetBizzInt( Bizz::[b][bID], "bOwnerID", Bizz::[b][bOwnerID] );
				SetBizzStr( Bizz::[b][bID], "bOwner", Bizz::[b][bOwner] ); 			
				
				switch( Bizz::[b][bSettings][7] ) 
				{
					case 3 :
					{
						if( Bizz::[b][bUpdate][1] == 1 )
						{
							for(new s; s != 351; s ++) 
							{
								DestroyDynamicObject( Bizz::[b][bObjects][s] );
							}
							
							for(new s; s != 5; s ++) 
							{
								if( IsValidDynamic3DTextLabel(Bizz::[b][bTextBuy][s]) )
								{
									DestroyDynamic3DTextLabel( Bizz::[b][bTextBuy][s] );
									Bizz::[b][bTextBuy][s] = Text3D: INVALID_3DTEXT_ID;
								}
							}
						}
					}
					case 8 :
					{
						if( Bizz::[b][bUpdate][1] == 1 )
						{
							for(new i; i < 54; i ++) 
							{
								DestroyDynamicObject(Bizz::[b][bAObject][i]);
							}
							
							if( IsValidDynamic3DTextLabel( Bizz::[b][bAText] ) )
							{
								DestroyDynamic3DTextLabel( Bizz::[b][bAText] );
								Bizz::[b][bAText] = Text3D: INVALID_3DTEXT_ID;
							}
						}
					}
				}
			}
		}
		else
		{
			if( Bizz::[b][bSettings][3] >= 20 )
			{
				Bizz::[b][bSettings][3] -= 20;
				Bizz::[b][bSettings][6] += Bizz::[b][bSettings][5] * 20;
			}
			else if( Bizz::[b][bSettings][3] < 0 )
			{
				Bizz::[b][bSettings][3] = 0;
			}
			
			format:gb_string( "%d|%d|%d|%d|%d|%d|%d|%d",
				Bizz::[b][bSettings][0],
				Bizz::[b][bSettings][1],
				Bizz::[b][bSettings][2],
				Bizz::[b][bSettings][3],
				Bizz::[b][bSettings][4],
				Bizz::[b][bSettings][5],
				Bizz::[b][bSettings][6],
				Bizz::[b][bSettings][7]
			);
			
			SetBizzStr( Bizz::[b][bID], "bSettings", gb_string );
		}
	}
	
	return 1;
}

IsOwnerBusiness( b, playerid )
{
	if( !strcmp( Bizz::[b][bOwner], Player[playerid][uName], true ) )
		return 1;
		
	return 0;
}

IsBuyingBusiness( b )
{
	if( !strcmp( Bizz::[ b ][ bOwner ], "None", true ) ) 
		return 0;
		
	return 1;
}