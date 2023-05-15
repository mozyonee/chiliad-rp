#include <YSI\y_hooks>

#define d_fd_attach				( 2155 )

#define attach_bone 		""cGRAY"— Выберите часть тела:\n\
							"cWHITE"1."cGRAY" Спина\n\
							"cWHITE"2."cGRAY" Голова\n\
							"cWHITE"3."cGRAY" Плечо левой руки\n\
							"cWHITE"4."cGRAY" Плечо правой руки\n\
							"cWHITE"5."cGRAY" Левая рука\n\
							"cWHITE"6."cGRAY" Правая рука\n\
							"cWHITE"7."cGRAY" Левое бедро\n\
							"cWHITE"8."cGRAY" Правое бедро\n\
							"cWHITE"9."cGRAY" Левая нога\n\
							"cWHITE"10."cGRAY" Правая нога\n\
							"cWHITE"11."cGRAY" Правые икры\n\
							"cWHITE"12."cGRAY" Левые икры\n\
							"cWHITE"13."cGRAY" Левое предплечье\n\
							"cWHITE"14."cGRAY" Правое предплечье\n\
							"cWHITE"15."cGRAY" Левая ключица\n\
							"cWHITE"16."cGRAY" Правая ключица\n\
							"cWHITE"17."cGRAY" Шея\n\
							"cWHITE"18."cGRAY" Челюсть"

enum fd_a_info 
{
	fd_a_name [ 64 ],
	fd_a_object,
}


new const 
	fd_attach[][fd_a_info] = 
	{
		{ "Гаечный ключ", 19627 },
		{ "Шлем для пилотов", 19200 },
		{ "Отвертк", 18644 },
		{ "Молоток", 18635 },
		{ "Жетон (серебряный)", 19774 },
		{ "Жетон (золотой)", 19775 },
		{ "Пожарный хулиган", 18634 },
		{ "Кислородный баллон", 1008 },
		{ "Красная мед. сумка", 11738 },
		{ "Зеленная аптечка", 11736 },
		{ "Большая сумка парамедика", 19559 },
		{ "Лопата совковая", 19626 },
		{ "Лопата совковая 2", 2228 },
		{ "Лопата штыковая", 2237 },
		{ "Лопата штыковая 2", 6 },
		{ "Рация", 19942 },
		{ "Желтый дорожный жилет", 19904 },
		{ "Пожарный шлем (черный)", 19331 },
		{ "Пожарный шлем (желтый)", 19330 },
		{ "Противогаз", 19472 },
		{ "Фонарик", 18641 },
		{ "Разводной ключ", 18633 },
		{ "Дорожная сумка", 11745 },
		{ "Кувалда", 19631 },
		{ "Микрофон", 19610 },
		{ "Упаковка таблеток", 2709 },
		{ "Фуражка HC", 19520 },
		{ "Фуражка", 19521 },
		{ "Наушники для пилотов", 19421 },
		{ "Сапог", 11735 },
		{ "Шлем парамедика HC", 18638 },
		{ "Бронежилет", 19515 },
		{ "Шлем парамедика (черный)", 19116 },
		{ "Шлем парамедика (красный)", 19117 },
		{ "Шлем парамедика (зеленый)", 19118 },
		{ "Шлем парамедика (голубой)", 19119 },
		{ "Шлем парамедика (желтый)", 19120 }
	};

hook OnPlayerConnect( playerid )
{
	SetPVarInt( playerid, "FDAttach:Id", -1 );
	SetPVarInt( playerid, "FDAttach:Mode", 0 );
	return 1;
}
	
hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) 
{
	if( dialog_cheat_use[playerid] == true ) 
		return 1;
	
	switch( dialogid )
	{
		case d_fd_attach :
		{
			if( !response )
				return 1;
				
			if( sizeof fd_attach == listitem )
			{		
				RemovePlayerAttachedObject( playerid, 6 ); 
				RemovePlayerAttachedObject( playerid, 7 ); 
				return SendMes( playerid, -1, ""gbAccess"Вы успешно очистили список прикреплённых объектов." );
			}
			
			SetPVarInt( playerid, "FDAttach:Id", listitem );
			SetPVarInt( playerid, "FDAttach:Mode", 1 );
			
			ShowPlayerDialog( playerid, d_fd_attach + 1, DIALOG_STYLE_LIST, " ", attach_bone, "Выбрать", "Назад" );
		}
		
		case d_fd_attach + 1 :
		{
			if( !response )
			{
				SetPVarInt( playerid, "FDAttach:Id", -1 );
				return cmd_fdattach( playerid );
			}
			
			if( listitem == 0 )
			{
				return ShowPlayerDialog( playerid, d_fd_attach + 1, DIALOG_STYLE_LIST, " ", attach_bone, "Выбрать", "Назад" );
			}
			
			new 
				id = GetPVarInt( playerid, "FDAttach:Id" );
				
			if( !IsPlayerAttachedObjectSlotUsed( playerid, 6 ) ) 
			{
				SetPlayerAttachedObject( playerid, 6, fd_attach[id][fd_a_object], listitem );
				return EditAttachedObject( playerid, 6 );
			}
			
    		else if( !IsPlayerAttachedObjectSlotUsed( playerid, 7 ) ) 
			{
				SetPlayerAttachedObject( playerid, 7, fd_attach[id][fd_a_object], listitem );
				return EditAttachedObject( playerid, 7 );
			}
			
			else if( IsPlayerAttachedObjectSlotUsed( playerid, 7 ) &&
					 IsPlayerAttachedObjectSlotUsed( playerid, 6 )
				   )
			{
				return SendMes( playerid, C_WHITE, ""gbError"Вы не можете прикрепить предмет так, как слоты заняты." );
			}
		}
	}
	
	return 1;
}

hook OnPlayerEditAttachedObject( playerid, response, index, modelid, boneid, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ )
{
	if( !GetPVarInt( playerid, "FDAttach:Mode" ) )
		return 1;
		
	if( response )
	{
		SetPlayerAttachedObject( playerid, index, modelid, boneid );
		SendMes( playerid, C_WHITE, ""gbAccess"Вы успешно прикрепили объект к персонажу." );
	}
	else 
	{
		RemovePlayerAttachedObject( playerid, index );
		SendMes( playerid, C_WHITE, ""gbAccess"Вы отменили прикрепление объекта к персонажу." );
	}
	
	SetPVarInt( playerid, "FDAttach:Mode", 0 );
	SetPVarInt( playerid, "FDAttach:Id", 0 );
	return 1;
}
