#include <YSI\y_hooks>

#define d_teleport              ( 170 )

enum e_ADMIN_TELEPORT
{
	at_cat,
	at_text[ 32 ],
	Float: at_pos[ 3 ]
}

new const 
	admin_teleport_list[][ e_ADMIN_TELEPORT ] = 
	{
		{ 0, "Организации", { 0.0, 0.0, 0.0 } }, //1
		{ 0, "Криминальные структуры", { 0.0, 0.0, 0.0 } }, //2
		{ 0, "Работы", { 0.0, 0.0, 0.0 } }, //3
		{ 0, "Транспортные узлы", { 0.0, 0.0, 0.0 } }, //4
		{ 0, "Окрестности Лос-Сантоса", { 0.0, 0.0, 0.0 } }, //5
		{ 0, "Разное", { 0.0, 0.0, 0.0 } }, //6
		{ 0, "Билборды", { 0.0, 0.0, 0.0 } }, //7
		
		{ 1, "Полицейский участок", { 1549.2544, -1681.7498, 13.5569 } },
		{ 1, "Полицейский участок в гетто", { 2321.1255, -1376.4082, 24.0258 } },
		{ 1, "Полицейский участок в аэропорту", { 2008.9414, -2118.3098, 13.5469 } },
		{ 1, "Пожарная станция под вайнвудом", { 1314.9484, -911.2266, 38.1315 } },
		{ 1, "Пожарная станция на востоке", { 2735.2874, -1448.0320, 30.2813 } },
		{ 1, "Участок шерифов", { 631.0885, -552.3140, 16.3904 } },
		{ 1, "Госпиталь", { 1176.2433, -1332.4413, 14.0005 } },
		{ 1, "Новости", { 1676.5369, -1618.7322, 13.5469 } },
		{ 1, "Мэрия", { 1471.7003, -1769.3623, 18.7958 } },
		{ 1, "Автошкола", { 697.0453, -1438.4695, 13.5391 } },
		{ 1, "Тюрьма", { 91.3038, -241.8010, 1.5781 } },
		
		{ 3, "Таксопарк", { 1121.2871, -1199.3208, 17.5786 } },
		{ 3, "Автостанция", { 1020.6926, -1389.3180, 14.1715 } },
		{ 3, "Транспортная компания", { 2161.9583, -2293.3748, 14.3224 } },
		{ 3, "Центральный склад", { -95.2658, -2.8136, 3.1094 } },
		{ 3, "Лесопилка", { -462.0121, -105.9000, 63.1072 } },
		
		{ 4, "Утилизация", { 225.8599, -238.4566, 1.5781 } },
		{ 4, "Автосалон #1", { 570.1545, -1295.4088, 17.2482 } },
		{ 4, "Автосалон #2", { 2137.1978, -1152.0609, 24.0400 } },
		{ 4, "Мотосалон", { 870.9617, -595.1693, 18.1821 } },
		{ 4, "СТО Лос-Сантос", { 610.6465, -1496.9198, 14.9069 } },
		{ 4, "СТО Округ Рэд", { 1376.9435, 195.8388, 19.5547 } },
		{ 4, "СТО Гетто", { 2522.7483, -1529.0106, 24.0029 } },
		
		{ 5, "Монтгомери", { 1345.9460, 281.3643, 19.5615 } },
		{ 5, "Блюберри", { 215.0418, -89.2333, 1.5645 } },
		{ 5, "Диллиморе", { 634.4473, -507.5717, 16.3359 } },
		{ 5, "Паломино-Крик", { 2417.9055, 85.2037, 26.4714 } },
		
		{ 6, "Спортзал Лос-Сантос", { 818.8697,-1750.6791,13.5469 } },
		{ 6, "Спортзал Гетто", { 2227.3850,-1716.0735,13.5253 } },
		{ 6, "Банк", { 1475.7240,-1016.6109,25.7628 } },
		{ 6, "Центр купли-продажи", { 1461.7343,-1484.3254,13.5469 } },
		{ 6, "Чайнатаун", { 1575.8945,-1490.1130,13.5549 } },
		{ 6, "Церковь округа рэд", { 2237.4453,-36.8058,26.4844 } },
		{ 6, "Церковь ЛС", { 2215.4592,-1318.0049,24.1816 } },
		{ 6, "Мотель ЛС", { 1263.4188,-1525.4016,13.5594 } },
		{ 6, "Пирс ЛС", { 2202.7761,-2672.4392,13.5469 } },
		{ 6, "Спортзал Округ Рэд", { 2273.2031,86.1600,26.4844 } },
		
		{ 7, "Ай-Пицца #1", { 2065.5427, -1797.3911, 29.4541 } },
		{ 7, "Ай-Пицца #2", { 2129.7471,-1772.3279,31.3526 } },
		{ 7, "Глен-Парк", { 2090.2114, -1481.0773, 38.6406 } },
		{ 7, "Альхамбра", { 1796.6656, -1684.6328, 28.4537 } },
		{ 7, "Эль-Корона", { 1849.3757, -1835.4558, 22.2422 } }
	};
	
new 
	admin_teleport_select[ MAX_PLAYERS ][ sizeof admin_teleport_list ];
	
ShowAdminTeleportList( playerid, cat, type, dynamic = 1 )
{
	clear_massive( );
	
	if( dynamic == 1 )
	{
		for( new i, slot; i < sizeof admin_teleport_list; i++ )
		{
			if( cat == admin_teleport_list[i][at_cat] )
			{
				format:gb_string( ""cWHITE"%d."cGRAY" %s\n", 
					slot + 1,
					admin_teleport_list[i][at_text]
				);
				
				strcat( vb_string, gb_string );
				
				admin_teleport_select[ playerid ][ slot ] = i;
				
				slot++;
			}
		}
	}
	else if( dynamic == 2 )
	{	
		for( new i, slot; i < sizeof CrimeInfo; i++ )
		{
			if( CrimeInfo[ i ][crID] )
			{
				format:gb_string( ""cWHITE"%d."cGRAY" %s[%d]\n", 
					i + 1,
					CrimeInfo[ i ][crName],
					CrimeInfo[ i ][crID]
				);
				
				strcat( vb_string, gb_string );
				
				admin_teleport_select[ playerid ][ slot ] = i;
				
				slot++;
			}
		}
	}
	
	return ShowPlayerDialog( playerid, d_teleport + type, DIALOG_STYLE_LIST, " ", vb_string, "Выбрать", "Закрыть" );
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) 
{
	clear_massive();
	
	if( dialog_cheat_use[playerid] ) 
		return 1;
		
	switch( dialogid ) 
	{
		case d_teleport : 
		{
			if( !response )
				return 1;
				
			if( 1 == listitem )
			{
				return ShowAdminTeleportList( playerid, listitem + 1, 2, 2 );
			}
			
			ShowAdminTeleportList( playerid, listitem + 1, 1 );
		}
		
		case d_teleport + 1 :
		{
			if( !response )
				return 1;
				
			if( GetPlayerVehicleID( playerid ) )
				return SendClientMessage( playerid, C_WHITE, ""gbError"Вы не должны находится в транспорте в момент телепортации." );
				
			new 
				select = admin_teleport_select[ playerid ][ listitem ];
				
			if( _: admin_teleport_list[ select ][ at_pos ][0] == _: 0.0 )
				return SendClientMessage( playerid, C_WHITE, ""gbError"Вы не можете телепортироваться." );
				
			SetPlayerPos( playerid, 
				admin_teleport_list[ select ][ at_pos ][0],
				admin_teleport_list[ select ][ at_pos ][1],
				admin_teleport_list[ select ][ at_pos ][2]
			);
			
			SetPlayerVirtualWorld( playerid, 0 );
			SetPlayerInterior( playerid, 0 );
			
			delData( playerid, "User:inInt" ); 
			updateWeather( playerid );
			
			admin_teleport_select[ playerid ][ listitem ] = 0;
		}
		
		case d_teleport + 2 :
		{
			if( !response )
				return 1;
				
			if( GetPlayerVehicleID( playerid ) )
				return SendClientMessage( playerid, C_WHITE, ""gbError"Вы не должны находится в транспорте в момент телепортации." );
				
			new 
				select = admin_teleport_select[ playerid ][ listitem ];
				
			
			SetPlayerPos( 
				playerid, 
				CrimeInfo[ select ][crPos][0], 
				CrimeInfo[ select ][crPos][1], 
				CrimeInfo[ select ][crPos][2] 
			);
			
			SetPlayerFacingAngle( playerid, CrimeInfo[ select ][crPos][3] );	
			SetPlayerVirtualWorld( playerid, 0 );
			SetPlayerInterior( playerid, 0 );
			
			delData( playerid, "User:inInt" ); 
			updateWeather( playerid );
			
			admin_teleport_select[ playerid ][ listitem ] = 0;
		}
	}
	
	return 1;
}
