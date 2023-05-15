
/*
	1 - передача в банке
	2 - покупка дома
	3 - продажа дома
	4 - передача денег в банке
	5 - продажа дома игроку
*/

stock logs( type, text[], param, param_2 = -1, param_3 = -1, param_4 = -1, param_5 = -1 ) {
	printf( "[LOGS] %d, %s, %d, %d, %d, %d, %d",
		type, text, param, param_2, param_3, param_4, param_5 );
	format( vb_string, sizeof vb_string, "INSERT INTO `gb_logs` ( `lg_type`, `lg_text`, `lg_param_1`, `lg_param_2`, \
		`lg_param_3`, `lg_param_4`, `lg_param_5`, `lg_date` ) \
		VALUES ( '%d', '%s', '%d', '%d', '%d', '%d', '%d', '%d' )", type, text, param, param_2, 
		param_3, param_4, param_5, gettime() );
	mysql_query( mysql, vb_string );	
	return true;
} 