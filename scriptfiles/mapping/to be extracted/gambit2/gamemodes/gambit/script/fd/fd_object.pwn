#include <YSI\y_hooks>

#define d_fd_object				( 2150 )

enum e_FD_OBJECT_INFO
{
	fd_obj_name[ 64 ],
	fd_obj_model,
}

new const
	fd_objects[][e_FD_OBJECT_INFO] = 
	{
		{ "Борд-ограждение [левосторонний]", 979 },
		{ "Борд-ограждение [правосторонний]", 978 },
		{ "Перекрытие шоссе", 981 },
		{ "Каталка", 1997  },
		{ "Бочка", 1237 },
		{ "Двойные каменные плиты", 1422 },
		{ "Ограждение с лампами", 1423 },
		{ "Дорожный барьер", 1427 },
		{ "Одиночная каменная плита", 1434 },
		{ "Деревянные подпорки", 1448 },
		{ "Красная мед. сумка", 11738 },
		{ "Серый борд-ограждение", 973 },
		{ "Конус – фишка", 1238 },
		{ "Железный барьер ограждение", 1424 },
		{ "Табличка «DETOUR» [Объезд]", 1425 },
		{ "Деревянный барьер ограждение", 1459 },
		{ "Лестницы для машины Ladder [1]", 13011 },
		{ "Лестницы для машины Ladder [2]", 12839 },
		{ "Лестницы для машины Ladder [3]", 12950 },
		{ "Лестницы для машины Ladder [4]", 12987 },
		{ "Большая штурмовая лестница", 1437 },
		{ "Маленькая штурмовая лестница", 1428 },
		{ "Красный дымовой флаер", 18728 },
		{ "Желтый прожектор", 19143 },
		{ "Желтый мигающий прожектор", 19150 },
		{ "Столб с белым фонарем", 19121 },
		{ "Столб с красным фонарем", 19124 },
		{ "Пневматическая подушка", 1579 },
		{ "Огнетушитель статичный", 2690 },
		{ "Цинковый гроб", 3799 },
		{ "Железная подпорка", 2372 },
		{ "Тренировочный манекен [светлый]", 2411 },
		{ "Тренировочный манекен [темный]", 2407 },
		{ "Батут", 14449 }
	};

enum e_FD_OBJECT
{
	fd_object_id,
	fd_object,
	fd_object_model,
	Text3D: fd_object_text,
}

new 
	Object[ MAX_OBJECT ][ e_FD_OBJECT ];

	
hook OnPlayerConnect( playerid )
{
	SetPVarInt( playerid, "FDObject:Mode", -1 );
	SetPVarInt( playerid, "FDObject:Id", -1 );
	SetPVarInt( playerid, "FDObject:Select", 0 );
	return 1;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) 
{
	if( dialog_cheat_use[playerid] == true ) return true;
	switch( dialogid ) 
	{
		case d_fd_object :
		{
			if( !response )
				return 1;
				
			for( new i; i < MAX_OBJECT; i++ )
			{
				if( Object[i][fd_object_id] != 0 )
					continue;
					
				new 
					Float: x,
					Float: y,
					Float: z;
					
				GetPlayerPos( playerid, x, y, z );
				
				Object[i][fd_object_id] = i + 1;
				Object[i][fd_object] = CreateDynamicObject( 
					fd_objects[listitem][fd_obj_model], 
					x + 2.0,
					y,
					z,
					0.0,
					0.0,
					0.0,
					-1,
					-1,
					-1,
					150
				);
				
				
				SetPVarInt( playerid, "FDObject:Mode", 1 );
				SetPVarInt( playerid, "FDObject:Id", i );
				
				Streamer_UpdateEx( playerid, x, y, z );
				
				EditDynamicObject( playerid, Object[i][fd_object] );
				
				break;
			}
		}
		
		case d_fd_object + 1 :
		{
			if( !response )
				return 1;
				
			if( listitem == 0 )
			{
				return SendClientMessage( playerid, C_WHITE, ""gbInfo"Для удаления объекта используйте - "cBLUE"/delobject [id]" );
			}
			else if( listitem == 1 )
			{
				SetPVarInt( playerid, "FDObject:Select", 1 );
				SetPVarInt( playerid, "d_select", 1 );
			    SelectObject( playerid );
				
				return SendClientMessage( playerid, C_WHITE, ""gbInfo"Выберите объект для удаления на карте." );
			}
			
		}
	}
	
	return 1;
}



hook OnPlayerEditDynamicObject( playerid, objectid, response, Float: x, Float:y, Float:z, Float:rx, Float:ry, Float:rz ) 
{ 
	clear_massive();
	
	if( GetPVarInt( playerid, "FDObject:Mode" ) != -1 )
	{
		switch( response )
		{
			case EDIT_RESPONSE_UPDATE :
			{
				new
					Float: distance = GetPlayerDistanceFromPoint( playerid, x, y, z ),
					id = GetPVarInt( playerid, "FDObject:Id" );
					
				if( distance > 130.0 )
				{
					DestroyDynamicObject( Object[ id ][fd_object] );
					
					ClearFDObjectData( id );
					CancelEdit( playerid );
					SetPVarInt( playerid, "FDObject:Mode", -1 );
					SetPVarInt( playerid, "FDObject:Id", -1 );
				}
				
			}
			
			case EDIT_RESPONSE_FINAL :
			{
				if( !IsValidDynamicObject( objectid ) ) 
					return 1;
				
				MoveDynamicObject( objectid, x, y, z, 10.0, rx, ry, rz );
				
				new
					id = GetPVarInt( playerid, "FDObject:Id" );
					
				format:gb_string( "[%d]", Object[id][fd_object_id] );
				Object[id][fd_object_text] = CreateDynamic3DTextLabel( gb_string, 0xE6E6E6AA, x, y, z + 0.5, 3.0 );
				
				SetPVarInt( playerid, "FDObject:Mode", -1 );
				SetPVarInt( playerid, "FDObject:Id", -1 );
			}
			
			case EDIT_RESPONSE_CANCEL :
			{
				if( !IsValidDynamicObject( objectid ) ) 
					return 1;
				
				new
					id = GetPVarInt( playerid, "FDObject:Id" );
				
				DestroyDynamicObject( Object[ id ][fd_object] );
				
				ClearFDObjectData( id );
				
				SetPVarInt( playerid, "FDObject:Mode", -1 );
				SetPVarInt( playerid, "FDObject:Id", -1 );
			}
		}
	}
	return 1;
}

hook OnPlayerSelectDynamicObject( playerid, objectid, modelid, Float: x, Float: y, Float: z ) 
{
	if( !GetPVarInt( playerid, "FDObject:Select" ) ) 
		return 1;
		
	for( new i; i < MAX_OBJECT; i++ ) 
	{
		if( !Object[i][fd_object_id] )
			continue;
			
		if( Object[i][fd_object] == objectid )
		{
			DestroyDynamicObject( objectid );
			
			if( IsValidDynamic3DTextLabel( Object[i][fd_object_text] ) )
			{
				DestroyDynamic3DTextLabel( Object[i][fd_object_text] );
				Object[i][fd_object_text] = Text3D: INVALID_3DTEXT_ID;
			}
			
			ClearFDObjectData( i );
			CancelEdit( playerid );
			
			SendMes( playerid, C_WHITE, ""gbAccess"Вы удалили объект с ID: "cBLUE"%d"cWHITE".", Object[i][fd_object_id] );
			SetPVarInt( playerid, "FDObject:Select", 0 );
			break;
		}
	}
	
	return 1;
}

ClearFDObjectData( id )
{
	Object[ id ][fd_object_id] =
	Object[ id ][fd_object] =
	Object[ id ][fd_object_model] = 0;
	Object[ id ][fd_object_text] = Text3D: INVALID_3DTEXT_ID;
}