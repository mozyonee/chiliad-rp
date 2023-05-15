
#include <YSI\y_hooks>

hook OnGameModeInit() {
	mysql_tquery( mysql, "SELECT * FROM `gb_spraytag` ORDER BY `sID`", "LoadSpray","");
	return true;
}

stock ShowSprayMenu( playerid ) {
    new Text[128], TextFont[64], TextSize[15], TextBold[15], TextColor[15];
    GetPVarString(playerid, "Graffiti:Text", Text, sizeof( Text ));
    GetPVarString(playerid, "Graffiti:Font", TextFont, sizeof(TextFont));
	GetPVarString(playerid, "Graffiti:Color", TextColor, sizeof(TextColor));
	if( strlen(Text) ) Text = "Указан";
	else Text = "Не указан";
	if( strlen(TextFont) )  TextFont = "Указан";
	else TextFont = "Не указан";
	if( strlen(TextColor) ) TextColor = "Указан";
	else TextColor = "Не указан";
	if(GetPVarInt(playerid, "Graffiti:Size") < 12) TextSize = "Не указан";
	else TextSize = "Указан";
	if( !GetPVarInt(playerid, "Graffiti:Bold") ) TextBold = "Выключена";
	else TextBold = "Включена";
    format( vb_string, sizeof vb_string, "1. "cGRAY"Текст граффити - %s{ffffff}\n2. "cGRAY"Шрифт граффити — %s{ffffff}\n3. "cGRAY"Цвет граффити — %s\n4. "cGRAY"Размер граффити — %s{ffffff}\n5. "cGRAY"Обводка — %s{ffffff}\n6. "cGRAY"Нарисовать граффити", 
		Text, TextFont, TextColor, TextSize, TextBold);
	showPlayerDialog(playerid, d_spraytag, DIALOG_STYLE_LIST, " ", vb_string, "Далее", "Отмена");
	return true;
}

function LoadSpray() {
	clear_massive();
	new rows, fields;
    cache_get_data(rows, fields);
    
	for( new j; j < rows; j++) 
	{
			if( j >= MAX_SPRAY )
				break;
				
		//if( !SprayInfo[j][grID] ) {
			SprayInfo[j][grID] = cache_get_field_content_int(j, "sID"); //загружаем айди граффити
			SprayInfo[j][grX] = cache_get_field_content_float(j, "sX"); //Загрузка координат!
			SprayInfo[j][grY] = cache_get_field_content_float(j, "sY");
			SprayInfo[j][grZ] = cache_get_field_content_float(j, "sZ");
			SprayInfo[j][grRX] = cache_get_field_content_float(j, "sRX");
			SprayInfo[j][grRY] = cache_get_field_content_float(j, "sRY");
			SprayInfo[j][grRZ] = cache_get_field_content_float(j, "sRZ");
			//;Загрузка информации о владельце графити
			SprayInfo[j][grAuthorID] = cache_get_field_content_int(j, "sAuthorID"); //Загрузка ID аккаунта автора граффити
			
			cache_get_field_content(j, "sAuthorName", SprayInfo[j][grAuthorName], mysql, 255);
			//Загрузка информации о Тексте 	s Text
			SprayInfo[j][grFontSize] = cache_get_field_content_int(j, "sFontSize"); //размер текста
			cache_get_field_content(j, "sText", SprayInfo[j][grText], mysql, 255);
			cache_get_field_content(j, "sFontColor", SprayInfo[j][grFontColor], mysql, 255);
			cache_get_field_content(j, "sFont", SprayInfo[j][grFont], mysql, 255);
			
			if( strfind( SprayInfo[j][grFontColor], "0xFF", true ) != -1 ) {
				strdel( SprayInfo[j][grFontColor], 0, 4 );
			}
			//Информация о верефикации
			SprayInfo[j][grVarificated] = cache_get_field_content_int(j, "sVarificated");
			if(SprayInfo[j][grVarificated] == 1) {
				SprayInfo[j][grObject] = CreateDynamicObject( 19482, SprayInfo[j][grX], SprayInfo[j][grY],
				SprayInfo[j][grZ], SprayInfo[j][grRX], SprayInfo[j][grRY], SprayInfo[j][grRZ], -1, -1, -1, 300 );
				format( gb_string, sizeof gb_string, "{%s}%s", SprayInfo[j][grFontColor], SprayInfo[j][grText]);
				
				SetDynamicObjectMaterialText( SprayInfo[j][grObject], 0, gb_string, OBJECT_MATERIAL_SIZE_128x128, 
				SprayInfo[j][grFont], SprayInfo[j][grFontSize], 1, 0xFFFFFF00, 0, 1 );
			}
		//}
	}
	printf("[SYSTEM] Граффити загружено - [%d]", rows );
	return true;
}

function AddSprayTag(i, playerid) 
{
	SprayInfo[i][grID] = cache_insert_id();
	format( gb_string, sizeof gb_string, "[A] %s[%d] нарисовал граффити. MysqlID: %d", Player[playerid][uName], playerid, SprayInfo[i][grID]);
	SendAdminMessage( C_YELLOW, gb_string );
	return 1;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	clear_massive();
	switch( dialogid ) {
		case d_spraytag: {
	        if(!response) return true;
	        switch(listitem) {
		        case 0: showPlayerDialog(playerid, d_spraytag + 1, DIALOG_STYLE_INPUT, " ", "{FFFFFF}Введите текст граффити. Обращаем Ваше внимание\nчто некоторые шрифты не поддерживают русский язык.", "Далее", "Отмена");
				case 1: {
		            strcat( gb_string, "{FFFFFF}1. "cGRAY"Ghostmeat\n");
		            strcat( gb_string, "{FFFFFF}2. "cGRAY"Courier\n");
		            strcat( gb_string, "{FFFFFF}3. "cGRAY"Algerian\n");
		            strcat( gb_string, "{FFFFFF}4. "cGRAY"Wide Latin\n");
		            strcat( gb_string, "{FFFFFF}5. "cGRAY"Bauhaus 93\n");
		            strcat( gb_string, "{FFFFFF}6. "cGRAY"Arial\n");
		            strcat( gb_string, "{FFFFFF}7. "cGRAY"Arial Black\n");
		            strcat( gb_string, "{FFFFFF}8. "cGRAY"Comic Sans MS\n");
		            strcat( gb_string, "{FFFFFF}9. "cGRAY"Lucida Bright\n");
		            strcat( gb_string, "{FFFFFF}10. "cGRAY"Lucida Handwriting Italic\n");
					strcat( gb_string, "{FFFFFF}11. "cGRAY"Papyrus\n");
					strcat( gb_string, "{FFFFFF}12. "cGRAY"Bell MT\n");
					strcat( gb_string, "{FFFFFF}13. "cGRAY"Berlin Sans FB Demi\n");
					strcat( gb_string, "{FFFFFF}14. "cGRAY"Viner Hand ITC\n");
					strcat( gb_string, "{FFFFFF}15. "cGRAY"Wesmo\n");
					strcat( gb_string, "{FFFFFF}16. "cGRAY"WishfulWaves\n");
					strcat( gb_string, "{FFFFFF}17. "cGRAY"WOOD");
		            showPlayerDialog(playerid, d_spraytag + 2, DIALOG_STYLE_LIST, " ", gb_string, "Далее", "Отмена");
		        }
		        case 2: showPlayerDialog(playerid, d_spraytag + 3, DIALOG_STYLE_LIST, " ", "{FFFFFF}1. "cGRAY"Желтый{ffffff}\n{FFFFFF}2. "cGRAY"Красный{ffffff}\n{FFFFFF}3. "cGRAY"Синий{ffffff}\n{FFFFFF}1. "cGRAY"Белый{ffffff}\n{FFFFFF}5. "cGRAY"Зеленый{ffffff}\n{FFFFFF}6. "cGRAY"Черный{ffffff}\n{FFFFFF}7. "cGRAY"Ввести вручную", "Далее", "Отмена");
				case 3: showPlayerDialog(playerid, d_spraytag + 5, DIALOG_STYLE_INPUT, " ", "{ffffff}Введите размер шрифта в диапазоне от 12 до 100:", "Далее", "Отмена");
				case 4: {
				    if( getData( playerid, "Graffiti:Bold" ) ) setData( playerid, "Graffiti:Bold", 0 );
		            else setData( playerid, "Graffiti:Bold", 1 );
		            ShowSprayMenu(playerid);
				}
				case 5: {
				    new 
						Float: ppPos[3],
						text[128],
						font[32],
						color[16];
		            GetPlayerPos(playerid, ppPos[0], ppPos[1], ppPos[2]);
					GetPVarString( playerid, "Graffiti:Text", text, sizeof text ),
					GetPVarString( playerid, "Graffiti:Font", font, sizeof font ),
					GetPVarString( playerid, "Graffiti:Color", color, sizeof color );
					
					
					if( !strlen( text ) ) return SendClientMessage(playerid, -1, ""gbError"Вы не указали текст граффити!"), ShowSprayMenu(playerid);
					if( !strlen( font ) ) return SendClientMessage(playerid, -1, ""gbError"Вы не указали шрифт граффити!"), ShowSprayMenu(playerid);
                    if( !strlen( color ) ) return SendClientMessage(playerid, -1, ""gbError"Вы не указали цвет граффити!"), ShowSprayMenu(playerid);
                    if( getData( playerid, "Graffiti:Size" ) < 12) return SendClientMessage(playerid, -1, ""gbError"Вы не указали размер граффити!"), ShowSprayMenu(playerid);
					SendClientMessage(playerid, -1, "Для отмены нажмите клавишу «"cBLUE"ESC{ffffff}» для поворота камеры нажмите «"cBLUE"Пробел{ffffff}»");
					
					for(new i = 0; i < MAX_SPRAY; i++) {
					    if( !SprayInfo[i][grID] ) {
					        SprayInfo[i][grObject] = CreateDynamicObject(19482, ppPos[0]+0.5, ppPos[1], ppPos[2],
								0.000, 0.000, 0.000, -1, -1, -1, 300 );
							format( gb_string, sizeof gb_string, "{%s}%s", color, text );
					        
							SetDynamicObjectMaterialText( SprayInfo[i][grObject], 0, gb_string, OBJECT_MATERIAL_SIZE_128x128, 
								font, getData(playerid, "Graffiti:Size"), 
								getData(playerid, "Graffiti:Bold"), 
								0xFFFFFF00, 0, 1);
							EditDynamicObject( playerid, SprayInfo[i][grObject] );
							setData( playerid, "Graffiti:ID", i);
							break;
						}
					}
					setData( playerid, "Graffiti:Spray", 1 );
					Streamer_UpdateEx( playerid, ppPos[0], ppPos[1], ppPos[2] );
				}
			}
		}
	    case d_spraytag + 1: {
	        if(!response) return true;
	        if( !strlen(inputtext) || strlen(inputtext) > 90 ) return showPlayerDialog(playerid, d_spraytag + 1, DIALOG_STYLE_INPUT, " ", "{FFFFFF}Введите текст граффити. Обращаем Ваше внимание\nчто некоторые шрифты не поддерживают русский язык.", "Далее", "Отмена");
			setDataText( playerid, "Graffiti:Text", inputtext );
	  		ShowSprayMenu(playerid);
	    }
	    case d_spraytag + 2: {
	        if(!response) return true;
		    switch(listitem) {
		        case 0: setDataText(playerid, "Graffiti:Font", "Ghostmeat");
		        case 1: setDataText(playerid, "Graffiti:Font", "Courier");
		        case 2: setDataText(playerid, "Graffiti:Font", "Algerian");
		        case 3: setDataText(playerid, "Graffiti:Font", "Wide Latin");
		        case 4: setDataText(playerid, "Graffiti:Font", "Bauhaus 93");
		        case 5: setDataText(playerid, "Graffiti:Font", "Arial");
		        case 6: setDataText(playerid, "Graffiti:Font", "Arial Black");
		        case 7: setDataText(playerid, "Graffiti:Font", "Comic Sans MS");
		        case 8: setDataText(playerid, "Graffiti:Font", "Lucida Bright");
		        case 9: setDataText(playerid, "Graffiti:Font", "Lucida Handwriting Italic");
		        case 10: setDataText(playerid, "Graffiti:Font", "Papyrus");
		        case 11: setDataText(playerid, "Graffiti:Font", "Bell MT");
		        case 12: setDataText(playerid, "Graffiti:Font", "Berlin Sans FB Demi");
		        case 13: setDataText(playerid, "Graffiti:Font", "Viner Hand ITC");
		        case 14: setDataText(playerid, "Graffiti:Font", "Wesmo");
		        case 15: setDataText(playerid, "Graffiti:Font", "WishfulWaves");
		        case 16: setDataText(playerid, "Graffiti:Font", "WOOD");
		    }
            ShowSprayMenu(playerid);
	    }
	    case d_spraytag + 3: {
	        if(!response) return true;
		    switch(listitem) {
		        case 0: setDataText(playerid, "Graffiti:Color", "FFFF00"), ShowSprayMenu(playerid);
		        case 1: setDataText(playerid, "Graffiti:Color", "FF0000"), ShowSprayMenu(playerid);
		        case 2: setDataText(playerid, "Graffiti:Color", "0000FF"), ShowSprayMenu(playerid);
		        case 3: setDataText(playerid, "Graffiti:Color", "FFFFFF"), ShowSprayMenu(playerid);
		        case 4: setDataText(playerid, "Graffiti:Color", "03C03C"), ShowSprayMenu(playerid);
		        case 5: setDataText(playerid, "Graffiti:Color", "000000"), ShowSprayMenu(playerid);
		        case 6: showPlayerDialog(playerid, d_spraytag + 4, DIALOG_STYLE_INPUT, " ", "{ffffff}Введите HEX цвет вашего будущего граффити:", "Далее", "Отмена");
		    }
	    }
	    case d_spraytag + 4: {
	        if(!response) return true;
		    if(strlen(inputtext) != 6) return showPlayerDialog(playerid, d_spraytag + 4, DIALOG_STYLE_INPUT, " ", "{ffffff}Введите HEX цвет вашего будущего граффити:", "Далее", "Отмена");
			format( gb_string, sizeof gb_string, "%s", inputtext);
			setDataText( playerid, "Graffiti:Color", gb_string );
		    ShowSprayMenu( playerid );
	    }
	    case d_spraytag + 5: {
	        if(!response) return true;
		    if( sscanf( inputtext, "d", inputtext[0] ) ) return showPlayerDialog(playerid, d_spraytag + 5, DIALOG_STYLE_INPUT, "", "{ffffff}Введите размер шрифта в диапазоне от 12 до 100:", "Далее", "Отмена");
			if( inputtext[0] < 12 || inputtext[0] > 100 ) return showPlayerDialog(playerid, d_spraytag + 5, DIALOG_STYLE_INPUT, " ", "{ffffff}Введите размер шрифта в диапазоне от 12 до 100:", "Далее", "Отмена");
			setData( playerid, "Graffiti:Size", inputtext[0] );
		    ShowSprayMenu(playerid);
	    }
		
		
	    case d_spraytag + 6: 
		{// Admin
	        if(!response) return true;
		    new totalcirc;
		    for( new i; i < MAX_SPRAY; i++ ) 
			{
				if( !SprayInfo[i][grID] ) 
					continue;
			    if( SprayInfo[i][grVarificated] == 0 && strlen(SprayInfo[i][grAuthorName]) > 2) 
				{
			        totalcirc++;
					
			        if( totalcirc != listitem + 1 ) 
						continue;
					
			        setData(playerid, "AdminSprayIndex", i);
			        setData(playerid, "AdminSprayID", SprayInfo[i][grID]);
					
			        showPlayerDialog( playerid, d_spraytag + 7, DIALOG_STYLE_LIST, " ", "\
						"cWHITE"1."cGRAY" Телепортироваться\n\
						"cWHITE"2."cGRAY" Посмотреть информацию\n\
						"cWHITE"3."cGRAY" Одобрить\n\
						"cWHITE"4."cGRAY" Удалить", 
						"Далее", "Отмена"
					);
			        break;
			    }
			}
	    }
	    case d_spraytag + 7: 
		{
		    if( !response ) 
				return 1;
		   
			new 
				id = GetPVarInt(playerid, "AdminSprayIndex"),
				ids = GetPVarInt(playerid, "AdminSprayID");
		   
		    switch( listitem ) 
			{
		        case 0: 
				{
		        	setPlayerPos( playerid, SprayInfo[id][grX] + 0.5, SprayInfo[id][grY], SprayInfo[id][grZ] );
			        SetPlayerInterior( playerid, 0 );
			        SetPlayerVirtualWorld( playerid, 0 );
		        }
				
		        case 1: 
				{
		            format( vb_string, sizeof vb_string, 
					""gbInfo"Информация о граффити ID: "cBLUE"%d"cWHITE":\n\n\
						Текст: "cGRAY"%s"cWHITE"\n\
						Автор: "cGRAY"%s"cWHITE"\n\
						Шрифт: "cGRAY"%s"cWHITE"\n\
						Размер шрифта: "cGRAY"%d"cWHITE"", 
						SprayInfo[id][grID],
						SprayInfo[id][grText], 
						SprayInfo[id][grAuthorName], 
						SprayInfo[id][grFont], 
						SprayInfo[id][grFontSize]
					);
                    showPlayerDialog( playerid, -1,0, " ", vb_string, "Выход", "" );
		        }
		        case 2: {
		            SprayInfo[id][grObject] = CreateDynamicObject(19482,SprayInfo[id][grX],SprayInfo[id][grY],SprayInfo[id][grZ],SprayInfo[id][grRX],SprayInfo[id][grRY],SprayInfo[id][grRZ],-1,-1,-1,300);

					format( gb_string, sizeof gb_string, "{%s}%s", SprayInfo[id][grFontColor], SprayInfo[id][grText]);
			        SetDynamicObjectMaterialText( SprayInfo[id][grObject], 0, gb_string, OBJECT_MATERIAL_SIZE_128x128, 
						SprayInfo[id][grFont], SprayInfo[id][grFontSize], getData( playerid, "Graffiti:Bold"), 0xFFFFFF00, 0, 1);
					SprayInfo[id][grVarificated] = 1;
					
					mysql_format( mysql, query, sizeof query, "UPDATE `gb_spraytag` SET `sVarificated`='%d' WHERE `sID`= '%d'", 1, ids);
                    mysql_tquery( mysql, query );
                    SendClientMessage( playerid, -1, ""gbAccess"Вы успешно одобрили данное граффити." );
                    Streamer_UpdateEx( playerid, SprayInfo[id][grX], SprayInfo[id][grY], SprayInfo[id][grZ] );
		        }
		        case 3: {
		            for(new Grnfo:i; i < Grnfo; ++i) SprayInfo[id][i] = 0;
		            SendClientMessage( playerid, -1, ""gbAccess"Вы удалили данное граффити." );
		            format( query, sizeof query, "DELETE FROM `gb_spraytag` WHERE sID = %d", ids);
					mysql_tquery( mysql, query );
		        }
		    }
		}
		case d_spraytag + 8: {
		    if(!response) return true;
		    new totalcirc = 0;
		    for(new i; i < MAX_SPRAY; i++) {
				if( !SprayInfo[i][grID] ) continue;
		        if( !strcmp( SprayInfo[i][grAuthorName], Player[playerid][uName], true ) ) {
		            totalcirc++;
		            if( totalcirc != listitem + 1 ) continue;
		            setData( playerid, "gfclear_MassiveID", i);
		            setData( playerid, "gfclear_GRID", SprayInfo[i][grID] );
		            showPlayerDialog( playerid, d_spraytag + 9, 0, " ", "{FFFFFF}Вы действительно хотите удалить это граффити?","Удалить","Закрыть" );
		            break;
		        }
		    }
		}
		case d_spraytag + 9: {
		    if(!response) return true;
		    new id = GetPVarInt(playerid, "gfclear_MassiveID"), ids = GetPVarInt(playerid, "gfclear_GRID");
		    if(IsValidDynamicObject(SprayInfo[id][grObject])) DestroyDynamicObject( SprayInfo[id][grObject] );
		    format( query, sizeof query,"DELETE FROM `gb_spraytag` WHERE sID = %d", ids);
			mysql_tquery(mysql, query );
		    for(new Grnfo:i; i < Grnfo; ++i) SprayInfo[id][i] = 0;
			SendClientMessage( playerid, -1, ""gbAccess"Граффити успешно удалено!" );
		}
	}
	return true;
}

hook OnPlayerEditDynamicObject(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz) {
	if(response == EDIT_RESPONSE_FINAL) {
		if( getData(playerid, "Graffiti:Spray") ) {
			new Float:ppPos[3], id = getData( playerid, "Graffiti:ID" ), text[128], font[32], color[16];
		    GetPlayerPos(playerid, ppPos[0], ppPos[1], ppPos[2]);
			GetPVarString( playerid, "Graffiti:Text", text, sizeof text );
			GetPVarString( playerid, "Graffiti:Font", font, sizeof font );
			GetPVarString( playerid, "Graffiti:Color", color, sizeof color );
			
            if(!IsValidDynamicObject(objectid)) return SendClientMessage(playerid, C_GRAY, "Ошибка в системе. Обратитесь к администратору! [#0001]");
			MoveDynamicObject( objectid, x, y, z, 10.0, rx, ry, rz );
			if( IsValidDynamicObject( SprayInfo[id][grObject] ) ) DestroyDynamicObject( SprayInfo[id][grObject] );
			
			SendClientMessage( playerid, -1, ""gbError"Граффити создано. Ожидайте одобрения администратором!" );
            mysql_format(mysql, query, sizeof query,  
				"INSERT INTO `gb_spraytag` (`sX`, `sY`, `sZ`, `sRX`, `sRY`, `sRZ`, `sAuthorID`,\
				`sAuthorName`, `sFontSize`, `sText`, `sFontColor`, `sFont`, `sVarificated`) VALUES \
				('%f', '%f', '%f', '%f', '%f', '%f', '%d', '%s', '%d', '%s', '%s', '%s', '%d')", 
				x, y, z, rx, ry, rz, Player[playerid][uID], Player[playerid][uName], 
				getData( playerid, "Graffiti:Size"), text, color, font, 0);
				
	        mysql_tquery( mysql, query, "AddSprayTag", "dd", id, playerid);
			
			SprayInfo[id][grX] = x, SprayInfo[id][grY] = y, SprayInfo[id][grZ] = z,
			SprayInfo[id][grRX] = rx, SprayInfo[id][grRY] = ry, SprayInfo[id][grRZ] = rz;
            SprayInfo[id][grAuthorID] = Player[playerid][uID];
            
			strmid( SprayInfo[id][grAuthorName], Player[playerid][uName], 0, strlen( Player[playerid][uName] ), MAX_PLAYER_NAME );

			SprayInfo[id][grFontSize] = getData( playerid, "Graffiti:Size" );
			
			strmid(SprayInfo[id][grText], text, 0, strlen(text), 255);
			strmid(SprayInfo[id][grFontColor], color, 0, strlen(color), 255);
            strmid(SprayInfo[id][grFont], font, 0, strlen(font), 255);
			
			SprayInfo[id][grVarificated] = 0;
            delData(playerid, "Graffiti:Spray"), delData(playerid, "Graffiti:Text"),
            delData(playerid, "Graffiti:Font"), delData(playerid, "Graffiti:Color");
        }
	}
	else if( response == EDIT_RESPONSE_CANCEL ) {
		if( GetPVarInt(playerid, "Graffiti:Spray") ) {
 			new id = GetPVarInt(playerid, "Graffiti:ID");
            if( IsValidDynamicObject( SprayInfo[id][grObject] ) ) {
	            DestroyDynamicObject( SprayInfo[id][grObject] );
	            delData(playerid, "Graffiti:Spray"), delData(playerid, "Graffiti:Text"),
	            delData(playerid, "Graffiti:Font"), delData(playerid, "Graffiti:Color");
				printf( "Удалил" );
			}
        }
	}
	return true;
}

// CMD

CMD:graffiti( playerid, params[] ) {
	new bool:selecttrue;
	for(new i; i != 56; i++) {
		if(Inv[playerid][invSlot][i] == 339) selecttrue = true;
	}
	if( GetPlayerInterior( playerid ) != 0 || GetPlayerVirtualWorld( playerid ) != 0 ) return SendMes( playerid, C_GRAY, ""gbError"Вы должны находиться на улице!" );
	if( selecttrue == false ) return SendClientMessage(playerid,C_GRAY,""gbError"У Вас нет балончика с краской. Купить его можно в магазине «{4a86b6}Всё для отдыха{ffffff}»");
	if( getData( playerid, "Graffiti:Spray" ) ) return SendMes( playerid, C_GRAY, ""gbError"Вы уже рисуете граффити!" );
	ShowSprayMenu(playerid);
	return true;
}
	
CMD:gfmenu( playerid, params[] ) {
	if(Player[playerid][uAdmin] < 2 || GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	new count;
	for(new i; i < MAX_SPRAY; i++) {
		if( !SprayInfo[i][grID] ) continue;
		if( SprayInfo[i][grVarificated] == 0 && strlen( SprayInfo[i][grAuthorName] ) > 2) {
			if( count > 14 ) break;
			format( gb_string, sizeof gb_string, "[%d] — %s\n", count + 1, SprayInfo[i][grAuthorName] );
			strcat( query, gb_string );
			count++;
		}
	}
	if( !count ) return SendClientMessage( playerid, C_GRAY, ""gbError"Нет граффити для одобрения!" );
	showPlayerDialog( playerid, d_spraytag + 6, DIALOG_STYLE_LIST, " ", query, "Далее", "Отмена");
	return true;
}
	
CMD:gfids( playerid, params[] ) {
	if(Player[playerid][uAdmin] < 2 || GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage( playerid, C_GRAY, ""gbError"У вас недостаточно прав для данной команды!");
	new count;
	for(new i; i < MAX_SPRAY; i++) {
		if( !SprayInfo[i][grID] ) continue;
		if(IsPlayerInRangeOfPoint(playerid,5.0,SprayInfo[i][grX], SprayInfo[i][grY], SprayInfo[i][grZ])) {
			format( gb_string, sizeof gb_string, "[ID: %d] %s\n", SprayInfo[i][grID], SprayInfo[i][grAuthorName]);
			strcat( query, gb_string );
			count++;
			if(count >= 15) break;
		}
	}
	if( !count ) return SendClientMessage( playerid, C_GRAY, ""gbError"Рядом с Вами нет граффити!" );
	showPlayerDialog( playerid, 9999, 0, " ", query, "Закрыть","");
	return true;
}
	
CMD:gfclear( playerid, params[] ) {
	new bool: status = false;
	for( new i; i < MAX_SPRAY; i++) {
		if(!strcmp( SprayInfo[i][grAuthorName], Player[playerid][uName], true )) {
			format( gb_string, sizeof gb_string, "[Mysql ID: %d] %s\n", SprayInfo[i][grID], SprayInfo[i][grText]);
			strcat( query, gb_string);
			status = true;
		}
	}
	if(status == false) return SendClientMessage( playerid, C_GRAY, ""gbError"Вы еще не рисовали граффити!" );
	showPlayerDialog( playerid, d_spraytag + 8, DIALOG_STYLE_LIST," ", query, "Далее", "Закрыть" );
	return true;
}
	
CMD:gfdell( playerid, params[] ) {
	if( Player[playerid][uAdmin] < 2 || GetPVarInt(playerid,"playerAdmin") == 0) return SendClientMessage(playerid,C_GRAY,""gbError"У вас недостаточно прав для данной команды!");
	if( sscanf( params, "d", params[0] ) ) return SendClientMessage(playerid,C_GRAY,""gbInfo"Введите: /gfdell [Mysql ID]"), SendClientMessage(playerid,C_GRAY,""gbInfo"Просмотреть список граффити в 5-ти метрах можно командой /gfids");
	new id, bool: status = false;
	for(new i; i != MAX_SPRAY; i++) {
		if( !SprayInfo[i][grID] ) continue;
		if( SprayInfo[i][grID] == params[0]) {
			id = i, status = true;
			break;
		}
	}
	if( status == false ) return SendClientMessage(playerid,C_GRAY,""gbError"Не найдено граффити с таким ID");
	if( IsValidDynamicObject( SprayInfo[id][grObject] ) ) DestroyDynamicObject( SprayInfo[id][grObject] );
	for(new Grnfo:i; i < Grnfo; ++i) SprayInfo[id][i] = 0;
	SendClientMessage(playerid, -1, "Вы удалили граффити!");
	
	format( query,sizeof(query),"DELETE FROM `gb_spraytag` WHERE `sID` = %d", params[0]);
	mysql_tquery( mysql, query, "", "");
	return true;
}