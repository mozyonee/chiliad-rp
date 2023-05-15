#include <YSI\y_hooks>

enum fd_a_info {
	fd_a_name[64],
	fd_a_object,
	fd_a_bone,
	Float:fd_a_pos[6],
}

new fd_attach[][fd_a_info] = {
	{ "Рация [грудь]", 19942, 1, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Рация [пояс]", 19942, 7, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Жёлтая желетка [тело]", 19904, 1, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Пожарный шлем ( чёрный ) [голова]", 19331, 2, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Пожарный шлем ( жёлтый ) [голова]", 19330, 2, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Противогаз", 19472 , 2, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Фонарик [правая рука]", 18641 , 6, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Фонарик [левая рука]", 18641 , 5, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Фонарик [пояс]", 18641 , 7, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Гаечный ключ [правая рука]", 19627, 6, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Гаечный ключ [левая рука]", 19627, 5, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Гаечный ключ [пояс]", 19627, 5, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	
	
	{ "Шлем для пилотов [голова]", 19200 , 2, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Отвёртка [правая рука]", 18644 , 6, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Отвёртка [левая рука]", 18644 , 5, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Отвёртка [пояс]", 18644 , 7, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	
	{ "Молоток [правая рука]", 18635 , 6, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Молоток [левая рука]", 18635 , 5, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Молоток [пояс]", 18635 , 7, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Серебряный бейдж [Грудь]", 19774 , 15, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Золотой бейдж [Пояс]", 19775 , 8, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Золотой бейдж [Грудь]", 19775 , 15, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Монтировка [Пояс]", 18634 , 7, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Монтировка [Рука]", 18634 , 6, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Кислородный баллон [Спина]", 1008 , 1, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Монтировка [Пояс]", 18634 , 7, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Красная сумка BLS [Рука]", 11738 , 5, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Зеленая аптечка [Рука]", 11736 , 5, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Рюкзак [Спина]", 19559 , 1, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Лопата [Рука]", 19626 , 6, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } },
	{ "Лопата [Пояс]", 19626 , 7, { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 } }
};

CMD:mdattach( playerid, params[] ) return CallLocalFunction( "cmd_fdattach", "ds", playerid, params );
CMD:fdattach( playerid, params[] ) {
	if( Player[playerid][uMember] != 5 && Player[playerid][uMember] != 3 ) return SendMes( playerid, C_GRAY, ""gbError"У вас нет доступа для использования этой команды!");
	new slot;
	for( new i; i < sizeof fd_attach; i++ ) {
		format( vb_string, sizeof vb_string, "%s%d. %s\n", vb_string, slot + 1, fd_attach[i][fd_a_name] );
		slot++;
	}
	format( gb_string, sizeof gb_string, "%d. Очистить объекты", slot + 1 ), strcat( vb_string, gb_string );
	showPlayerDialog( playerid, 3002, DIALOG_STYLE_LIST, "Список объектов", vb_string, "Выбрать", "Отмена");
	return true;
}

hook OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] ) {
	if( dialog_cheat_use[playerid] == true ) return true;
	switch( dialogid ) {
		case 3002: {
			if(!response) return true;
			if( listitem == sizeof( fd_attach ) ) {
				RemovePlayerAttachedObject( playerid, 6 ), RemovePlayerAttachedObject( playerid, 7 );
	            return SendMes( playerid, -1, ""gbInfo"Вы очистили список объектов!" );
			}
			if( IsPlayerAttachedObjectSlotUsed( playerid, 6 ) 
				&& IsPlayerAttachedObjectSlotUsed( playerid, 7 ) ) return SendMes(playerid, -1, ""gbError"Все слоты заняты, очистите их в меню!");
	        if( !IsPlayerAttachedObjectSlotUsed( playerid, 6 )) {
	            SetPlayerAttachedObject( playerid, 6, fd_attach[listitem][fd_a_object], fd_attach[listitem][fd_a_bone] );
    			return EditAttachedObject( playerid, 6 );
	        }
	        else if( IsPlayerAttachedObjectSlotUsed( playerid, 6 )) {
	            SetPlayerAttachedObject( playerid, 7, fd_attach[listitem][fd_a_object], fd_attach[listitem][fd_a_bone] );
    			return EditAttachedObject( playerid, 7 );
	        }
	    }
	}
	return true;
}