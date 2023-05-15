/*
	AttachObject-Editor by IPrototypeI

*/
#if !defined _pcmd_included
    #include <pcmd>
#endif

#if !defined _sscanf2_included
    #include <sscanf2>
#endif

#if !defined _streamer_included
    #include <streamer>
#endif

#if !defined _a_mysql_included
    #include <a_mysql>
#endif

#define MAX_ATTACHED_OBJECTS 100

enum vehData {
    vCarID,
    vObjID,
	Float:voObjX,
	Float:voObjY,
	Float:voObjZ,
	Float:voObjRx,
	Float:voObjRy,
	Float:voObjRz,
}


static PlayerData[MAX_PLAYERS][vehData],
	   sqlHandler;

native IsValidVehicle(vehicleid);





native __CreateVehicle(modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, respawn_delay) = CreateVehicle;
stock _CreateVehicle(modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, respawn_delay) {
	new veh = __CreateVehicle(modelid, x, y, z, angle, color1, color2, respawn_delay), IDstr[4];
	valstr(IDstr,veh);
	setproperty(.name = IDstr, .value = (color1 |( color2 << 16)));
	return veh;
}
#if defined _ALS_CreateVehicle
        #undef CreateVehicle
#else
        #define _ALS_CreateVehicle
#endif
#define CreateVehicle _CreateVehicle


native __ChangeVehicleColor(veh, color1, color2) = ChangeVehicleColor;
stock _ChangeVehicleColor(veh, color1, color2) {
	static IDstr[4];
	valstr(IDstr,veh);
	setproperty(.name = IDstr, .value = (color1 |( color2 << 16)));
	__ChangeVehicleColor(veh, color1, color2);
	return 1;
}
#if defined _ALS_ChangeVehicleColor
        #undef ChangeVehicleColor
#else
        #define _ALS_ChangeVehicleColor
#endif
#define ChangeVehicleColor _ChangeVehicleColor



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





#if !defined _ALS_
    forward public _ALS_();
    _ALS_()<_ALS_:unhooked>{}
    _ALS_()<_ALS_:hooked>{}
    _ALS_()<>{}
#endif

#if !defined AL_
    forward public AL_();
    AL_()<AL_:unhooked>{}
    AL_()<AL_:hooked>{}
    AL_()<>{}
#endif


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
enum loadData {
	lID,
	lVehID,
	lObjectID,
}
forward @InsertObject(ObjectID,ModelID);
@InsertObject(ObjectID,ModelID){
	new query[256];
	mysql_format(sqlHandler,query,256,"INSERT INTO `objects`(`cID`,`ObjectID`,`oModelID`,`oX`,`oY`,`oZ`) VALUES (%d, %d, %d,5.0, 5.0, 2.0);",cache_get_field_content_int(0,"cID",sqlHandler), ObjectID,ModelID);
	return mysql_pquery(sqlHandler,query,"","");
}
forward @Load_Data();

@Load_Data() {
	new id,LoadData[loadData],query[128];
	static data[MAX_ATTACHED_OBJECTS];
	for(new i, j = cache_get_row_count();  i != j; ++i){
		id = cache_get_field_content_int(i,"cID",sqlHandler);
		if(LoadData[lID] != id){
			LoadData[lID] = id;
			LoadData[lVehID] = CreateVehicle(cache_get_field_content_int(i,"ModelID",sqlHandler),cache_get_field_content_float(i,"X",sqlHandler),cache_get_field_content_float(i,"Y",sqlHandler),cache_get_field_content_float(i,"Z",sqlHandler),cache_get_field_content_float(i,"A",sqlHandler),cache_get_field_content_int(i,"ColorID1",sqlHandler),cache_get_field_content_int(i,"ColorID2",sqlHandler),-1);
			if(cache_get_field_content_int(i,"oModelID",sqlHandler)!= 0){
				LoadData[lObjectID] = CreateDynamicObject(cache_get_field_content_int(i,"oModelID",sqlHandler),0.0,0.0,0.0,0.0,0.0,0.0);
				AttachDynamicObjectToVehicle(LoadData[lObjectID] , LoadData[lVehID], cache_get_field_content_float(i,"oX",sqlHandler),cache_get_field_content_float(i,"oY",sqlHandler), cache_get_field_content_float(i,"oZ",sqlHandler), cache_get_field_content_float(i,"oRx",sqlHandler), cache_get_field_content_float(i,"oRy",sqlHandler), cache_get_field_content_float(i,"oRy",sqlHandler));
				Streamer_SetIntData(STREAMER_TYPE_OBJECT, LoadData[lObjectID], E_STREAMER_EXTRA_ID,LoadData[lVehID]);
				data[0] = LoadData[lObjectID];
				setproperty(0, "", LoadData[lVehID], data);
			}
			mysql_format(sqlHandler,query,128,"UPDATE `vehicles` SET  `VehID` = %d WHERE `VehID` = %d;",LoadData[lVehID],cache_get_field_content_int(i,"VehID",sqlHandler));
			mysql_pquery(sqlHandler,query,"","");
			mysql_format(sqlHandler,query,128,"UPDATE `objects` SET `ObjectID` = %d WHERE  `ObjectID` = %d;",LoadData[lObjectID],cache_get_field_content_int(i,"ObjectID",sqlHandler));
			mysql_pquery(sqlHandler,query,"","");
		} else {
			LoadData[lObjectID] = CreateDynamicObject(cache_get_field_content_int(i,"oModelID",sqlHandler),0.0,0.0,0.0,0.0,0.0,0.0);
			Streamer_SetIntData(STREAMER_TYPE_OBJECT, LoadData[lObjectID], E_STREAMER_EXTRA_ID,LoadData[lVehID]);
			AttachDynamicObjectToVehicle(LoadData[lObjectID], LoadData[lVehID], cache_get_field_content_float(i,"oX",sqlHandler),cache_get_field_content_float(i,"oY",sqlHandler), cache_get_field_content_float(i,"oZ",sqlHandler), cache_get_field_content_float(i,"oRx",sqlHandler), cache_get_field_content_float(i,"oRy",sqlHandler), cache_get_field_content_float(i,"oRy",sqlHandler));
			mysql_format(sqlHandler,query,128,"UPDATE `objects` SET `ObjectID` = %d WHERE  `ObjectID` = %d;",LoadData[lObjectID],cache_get_field_content_int(i,"ObjectID",sqlHandler));
			mysql_pquery(sqlHandler,query,"","");
	        getproperty(0, "", LoadData[lVehID], data);
			strunpack(data,data);
	        AddToArray(data,LoadData[lObjectID]);
	        setproperty(0, "", LoadData[lVehID], data);
		}
	}
	return 1;
}
stock SaveData() {
	static data[MAX_ATTACHED_OBJECTS], Float:Pos[6],query[256];
	for(new x; x != MAX_VEHICLES; ++x){
		if(!existproperty(0, "", x))continue;
		getproperty(0, "", x, data);
		strunpack(data,data);
		for(new i; i != MAX_ATTACHED_OBJECTS; ++i){
			if(!data[i])continue;
			Streamer_GetFloatData(STREAMER_TYPE_OBJECT, data[i], E_STREAMER_ATTACH_OFFSET_X,Pos[0]);
			Streamer_GetFloatData(STREAMER_TYPE_OBJECT, data[i], E_STREAMER_ATTACH_OFFSET_Y,Pos[1]);
			Streamer_GetFloatData(STREAMER_TYPE_OBJECT, data[i], E_STREAMER_ATTACH_OFFSET_Z,Pos[2]);
			Streamer_GetFloatData(STREAMER_TYPE_OBJECT, data[i], E_STREAMER_ATTACH_R_X,Pos[3]);
			Streamer_GetFloatData(STREAMER_TYPE_OBJECT, data[i], E_STREAMER_ATTACH_R_Y,Pos[4]);
			Streamer_GetFloatData(STREAMER_TYPE_OBJECT, data[i], E_STREAMER_ATTACH_R_Z,Pos[5]);
			mysql_format(sqlHandler,query,256,"UPDATE `objects` SET `oX` = %f, `oY` = %f, `oZ` = %f,`oRx` = %f, `oRy` = %f, `oRz` = %f WHERE  `ObjectID` = %d;",Pos[0],Pos[1],Pos[2],Pos[3],Pos[4],Pos[5],data[i]);
			mysql_pquery(sqlHandler,query,"","");
		}
	}
	return 1;
}
public OnGameModeExit()
{
    state _A_:hooked;
	SaveData();
    return H_OnGameModeExit();
}
forward H_OnGameModeExit();
#if defined _A_OnGameModeExit
    #undef OnGameModeExit
#else
    #define _A_OnGameModeExit
#endif
public H_OnGameModeExit() <_A_:unhooked> return 1;
public H_OnGameModeExit() <> return 1;
#define OnGameModeExit(%0) H_OnGameModeExit(%0)<_A_:hooked>
public OnGameModeInit()
{
    state _ALS_:hooked;
	mysql_log(LOG_DEBUG,LOG_TYPE_TEXT);
	sqlHandler = mysql_connect("localhost", "root", "amazing", "");
	mysql_errno() && print("Verbindung nicht hergestellt") || print("Verbindung hergestellt");
    mysql_pquery(sqlHandler,"CREATE TABLE IF NOT EXISTS `vehicles`(`cID` INT AUTO_INCREMENT,`VehID` INT,`ModelID` INT,`ColorID1` INT,`ColorID2` INT,`X` DOUBLE NOT NULL,`Y` DOUBLE NOT NULL,`Z` DOUBLE NOT NULL,`A` DOUBLE NOT NULL,PRIMARY KEY(`cID`))ENGINE = InnoDB;","","");
	mysql_pquery(sqlHandler,"CREATE TABLE IF NOT EXISTS `objects`(`cID` INT,`ObjectID` INT,`oModelID` INT,`oX` DOUBLE NOT NULL,`oY` DOUBLE NOT NULL,`oZ` DOUBLE NOT NULL,`oRx` DOUBLE NOT NULL,`oRy` DOUBLE NOT NULL,`oRz` DOUBLE NOT NULL)ENGINE = InnoDB;","","");
    mysql_tquery(sqlHandler,"SELECT * FROM `vehicles` LEFT JOIN `objects` ON `objects`.`cID` = `vehicles`.`cID`;","@Load_Data","");
	return H_OnGameModeInit();
}

forward H_OnGameModeInit();
#if defined _ALS_OnGameModeInit
    #undef OnGameModeInit
#else
    #define _ALS_OnGameModeInit
#endif
public H_OnGameModeInit() <_ALS_:unhooked> return 1;
public H_OnGameModeInit() <> return 1;
#define OnGameModeInit(%0) H_OnGameModeInit(%0)<_ALS_:hooked>

public OnPlayerEditDynamicObject(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz){
    state _ALS_:hooked;
	switch(response){
		case EDIT_RESPONSE_CANCEL:{
		    AttachDynamicObjectToVehicle(objectid, PlayerData[playerid][vCarID],PlayerData[playerid][voObjX],PlayerData[playerid][voObjY],PlayerData[playerid][voObjZ],PlayerData[playerid][voObjRx],PlayerData[playerid][voObjRy],PlayerData[playerid][voObjRz]);
			PlayerData[playerid][vObjID] = false;
			return 1;
		}
		case EDIT_RESPONSE_FINAL:{
			static Float:Pos[6];
			GetVehiclePos(PlayerData[playerid][vCarID],Pos[0],Pos[1],Pos[2]);
			GetVehicleZAngle(PlayerData[playerid][vCarID],Pos[3]);
			AttachDynamicObjectToVehicle(objectid, PlayerData[playerid][vCarID], ((x - Pos[0])*floatcos(Pos[3],degrees)+(y - Pos[1])*floatsin(Pos[3],degrees)), ((-(x - Pos[0]))*floatsin(Pos[3],degrees)+(y - Pos[1])*floatcos(Pos[3],degrees)), z-Pos[2], rx, ry, rz-Pos[3]);
			PlayerData[playerid][vObjID] = false;
			return SelectObject(playerid);
		}
	}
    return H_OnPlayerEditDynamicObject(playerid, objectid, response, x, y, z, rx, ry, rz);
}
forward H_OnPlayerEditDynamicObject(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz);
#if defined _ALS_OnPlayerEditDynamicObject
    #undef OnPlayerEditDynamicObject
#else
    #define _ALS_OnPlayerEditDynamicObject
#endif
public H_OnPlayerEditDynamicObject(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz) <_ALS_:unhooked> return 1;
public H_OnPlayerEditDynamicObject(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz) <> return 1;
#define OnPlayerEditDynamicObject(%0,%1,%2,%3,%4,%5,%6,%7,%8) H_OnPlayerEditDynamicObject(%0,%1,%2,%3,%4,%5,%6,%7,%8)<_ALS_:hooked>


public OnPlayerSelectDynamicObject(playerid, objectid, modelid, Float:x, Float:y, Float:z) {
    state AL_:hooked;
	if(!PlayerData[playerid][vCarID])return SendClientMessage(playerid,-1,"Du bist in keinem Auto");
	PlayerData[playerid][vObjID] = objectid;
	if(Streamer_GetIntData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_EXTRA_ID) != PlayerData[playerid][vCarID])return SendClientMessage(playerid,-1,"Dieses Objekt gehort nicht zu deinem Fahrzeug");
	static Float:Rot;
	Streamer_GetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_ATTACH_R_X,PlayerData[playerid][voObjRx]);
	Streamer_SetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_R_X,PlayerData[playerid][voObjRx]);
	Streamer_GetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_ATTACH_R_Y,PlayerData[playerid][voObjRy]);
	Streamer_SetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_R_Y,PlayerData[playerid][voObjRy]);
	GetVehicleZAngle(PlayerData[playerid][vCarID],Rot);
	Streamer_GetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_ATTACH_R_Z,PlayerData[playerid][voObjRz]);
	Streamer_SetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_R_Z,PlayerData[playerid][voObjRz]+Rot);
	Streamer_GetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_ATTACH_OFFSET_X,PlayerData[playerid][voObjX]);
	Streamer_GetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_ATTACH_OFFSET_Y,PlayerData[playerid][voObjY]);
	Streamer_GetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_ATTACH_OFFSET_Z,PlayerData[playerid][voObjZ]);
	Streamer_SetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_X,x);
	Streamer_SetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_Y,y);
	Streamer_SetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_Z,z);

	Streamer_SetIntData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_ATTACHED_VEHICLE,65535);
	EditDynamicObject(playerid, objectid);
    return H_OnPlayerSelectDynamicObject(playerid, objectid, modelid, x, y, z);
}
forward H_OnPlayerSelectDynamicObject(playerid, objectid, modelid, Float:x, Float:y, Float:z);
#if defined AL_OnPlayerSelectDynamicObject
    #undef OnPlayerSelectDynamicObject
#else
    #define AL_OnPlayerSelectDynamicObject
#endif
public H_OnPlayerSelectDynamicObject(playerid, objectid, modelid, Float:x, Float:y, Float:z) <AL_:unhooked> return 1;
public H_OnPlayerSelectDynamicObject(playerid, objectid, modelid, Float:x, Float:y, Float:z) <> return 1;
#define OnPlayerSelectDynamicObject(%0,%1,%2,%3,%4,%5) H_OnPlayerSelectDynamicObject(%0,%1,%2,%3,%4,%5)<AL_:hooked>


public OnQueryError(errorid, error[], callback[], query[], connectionHandle) {
   printf("Errorid %d",errorid);
   print(error);
   print(callback);
   print(query);
   return 1;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

stock AddToArray(str[],value) {
	static i;
	for(;i != MAX_ATTACHED_OBJECTS;++i){
		if(str[i])continue;
		str[i] = value;
		return 1;
	}
	return 0;

}
stock RemoveFromArray(str[],value) {
	static i;
	for(; i != MAX_ATTACHED_OBJECTS;++i){
		if(value != str[i])continue;
		str[i] = false;
		return 1;
	}
	return 1;

}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

CMD->help(playerid,params[]){
	SendClientMessage(playerid,-1,"/veh [ModelID] [ColorID 1] [ColorID 2]");
	SendClientMessage(playerid,-1,"/delveh [VehID]");
	SendClientMessage(playerid,-1,"/setcolor [VehID] [ColorID 1] [ColorID 2]");
	SendClientMessage(playerid,-1,"/savepos");
	SendClientMessage(playerid,-1,"/respawn [VehID]");
	SendClientMessage(playerid,-1,"/respawnall");
	SendClientMessage(playerid,-1,"/delete");
	SendClientMessage(playerid,-1,"/attachobject");
	SendClientMessage(playerid,-1,"/editid");
	return SendClientMessage(playerid,-1,"/edit");
}
CMD->veh(playerid,params[]){
	static veh[4];
	if(sscanf(params,"e<k<vehicle>dd>",veh))return SendClientMessage(playerid,-1,"Benutze: /veh [ModelID] [ColorID 1] [ColorID 2]");
	static Float:Pos[3];
	GetPlayerPos(playerid,Pos[0],Pos[1],Pos[2]);
	PutPlayerInVehicle(playerid,veh[3]=CreateVehicle(veh[0],Pos[0],Pos[1],Pos[2],0.0,veh[1],veh[2],-1),0);
	new query[256];
	mysql_format(sqlHandler,query,256,"INSERT INTO `vehicles`(`VehID`,`ModelID`,`ColorID1`,`ColorID2`,`X`,`Y`,`Z`,`A`) VALUES (%d,%d,%d,%d,%f,%f,%f,%f);",veh[3],veh[0],veh[1],veh[2],Pos[0],Pos[1],Pos[2],0.0);
	mysql_pquery(sqlHandler,query,"","");
	return SendClientMessage(playerid,-1,"Erfolgreich erstellt!");
}
CMD->delveh(playerid,params[]){
	extract params -> new veh; else veh = GetPlayerVehicleID(playerid);
	if(!veh)return SendClientMessage(playerid,-1,"Du bist in keinem Fahrzeug!");
	DestroyVehicle(veh);
	new query[256];
	mysql_format(sqlHandler,query,256,"DELETE FROM `objects`, `vehicles` USING `objects`, `vehicles` WHERE `objects`.`cID` = `vehicles`.`cID`  AND `vehicles`.`VehID` = %d;",veh);
	mysql_pquery(sqlHandler,query,"","");
    static data[MAX_ATTACHED_OBJECTS];
    getproperty(0, "", veh, data);
	strunpack(data,data);
    for(new i; i != MAX_ATTACHED_OBJECTS; ++i){
        if(!data[i])continue;
		DestroyDynamicObject(data[i]);
	}
	deleteproperty(0, "", veh);
	return SendClientMessage(playerid,-1,"Das Fahrzeug wurde geloscht!");
}


CMD->setcolor(playerid,params[]){
	new veh[3];
	if(sscanf(params, "a<i>[3]",veh))return SendClientMessage(playerid,-1,"Benutze: /setcolor [VehID] [ColorID 1] [ColorID 2]");
	veh[0] && ChangeVehicleColor(veh[0] ,veh[1],veh[2]) || ChangeVehicleColor(GetPlayerVehicleID(playerid),veh[1],veh[2]);
	new query[128];
	mysql_format(sqlHandler,query,128,"UPDATE `vehicles` SET `ColorID1` = %d, `ColorID2` = %d WHERE  `VehID` = %d;",veh[1],veh[2],((veh[0] != 0)?(veh[0]):(GetPlayerVehicleID(playerid))));
	mysql_pquery(sqlHandler,query,"","");
	return SendClientMessage(playerid,-1,"Die Farbe wurde geandert!");
}

CMD->savepos(playerid,params[]){
    if(!IsPlayerInAnyVehicle(playerid))return SendClientMessage(playerid,-1,"Du bist in keinem Fahrzeug!");
    static Float:Pos[6], veh[3],IDstr[4];
	veh[0] = GetPlayerVehicleID(playerid);
	valstr(IDstr,veh[0]);
	veh[1] = getproperty(0, .name =  IDstr);
	veh[2] = veh[0];
    GetVehiclePos(veh[0],Pos[0],Pos[1],Pos[2]);
    GetVehicleZAngle(veh[0],Pos[3]);

    static data[MAX_ATTACHED_OBJECTS];
    getproperty(0, "", veh[0], data);
	strunpack(data,data);
    deleteproperty(0, "", veh[0]);
    veh[0] = CreateVehicle(GetVehicleModel(veh[0]),Pos[0],Pos[1],Pos[2],Pos[3],(veh[1] & ~0xFFFF0000),(veh[1] >> 16),-1);
	new query[256];
	mysql_format(sqlHandler,query,256,"UPDATE `vehicles` SET `VehID` = %d, `X` = %f, `Y` = %f, `Z` = %f, `A` = '%f' WHERE  `VehID` = %d;",veh[0],Pos[0],Pos[1],Pos[2],Pos[3],GetPlayerVehicleID(playerid));
	print(query);
	mysql_pquery(sqlHandler,query,"","");
    setproperty(0, "", veh[0], data);
    for(new i; i != MAX_ATTACHED_OBJECTS; ++i){
        if(!data[i])continue;
		Streamer_GetFloatData(STREAMER_TYPE_OBJECT, data[i], E_STREAMER_ATTACH_OFFSET_X,Pos[0]);
		Streamer_GetFloatData(STREAMER_TYPE_OBJECT, data[i], E_STREAMER_ATTACH_OFFSET_Y,Pos[1]);
		Streamer_GetFloatData(STREAMER_TYPE_OBJECT, data[i], E_STREAMER_ATTACH_OFFSET_Z,Pos[2]);
		Streamer_GetFloatData(STREAMER_TYPE_OBJECT, data[i], E_STREAMER_ATTACH_R_X,Pos[3]);
		Streamer_GetFloatData(STREAMER_TYPE_OBJECT, data[i], E_STREAMER_ATTACH_R_Y,Pos[4]);
		Streamer_GetFloatData(STREAMER_TYPE_OBJECT, data[i], E_STREAMER_ATTACH_R_Z,Pos[5]);
		Streamer_SetIntData(STREAMER_TYPE_OBJECT, data[i], E_STREAMER_EXTRA_ID,veh[0]);
		Streamer_SetIntData(STREAMER_TYPE_OBJECT, data[i], E_STREAMER_ATTACHED_VEHICLE,65535);
	    AttachDynamicObjectToVehicle(data[i], veh[0],Pos[0],Pos[1],Pos[2],Pos[3],Pos[4],Pos[5]);
    }
    PutPlayerInVehicle(playerid,veh[0],0);
    DestroyVehicle(veh[2]);
	return 1;
}
CMD->respawn(playerid,params[]){
	extract params -> new veh; else veh = GetPlayerVehicleID(playerid);
	if(!veh)return SendClientMessage(playerid,-1,"Benutze: /respawn [vehicleid optional] || Sitze in einem Fahrzeug");
	SetVehicleToRespawn(veh);
	return SendClientMessage(playerid,-1,"Das Fahrzeug wurde respawnt!");
}
CMD->respawnall(playerid,params[]){
	static i;
	for(; i != MAX_VEHICLES; ++i) {
	    if(!IsValidVehicle(i))continue;
	    SetVehicleToRespawn(i);
	}
	return SendClientMessage(playerid,-1,"Fahrzeuge wurden respawnt!");
}

CMD->edit(playerid,params[]){
	PlayerData[playerid][vCarID]= GetPlayerVehicleID(playerid);
	if(!PlayerData[playerid][vCarID])return SendClientMessage(playerid,-1,"Du bist in keinem Auto");
    SelectObject(playerid);
	return 1;
}
CMD->editid(playerid,params[]){
	new objectid;
	PlayerData[playerid][vCarID]= GetPlayerVehicleID(playerid);
	if(sscanf(params,"d",objectid))return SendClientMessage(playerid,-1,"Benutze: /edit [objectid]");
	if(!PlayerData[playerid][vCarID])return SendClientMessage(playerid,-1,"Du bist in keinem Auto");
	PlayerData[playerid][vObjID] = objectid;
	if(Streamer_GetIntData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_EXTRA_ID) != PlayerData[playerid][vCarID])return SendClientMessage(playerid,-1,"Dieses Objekt gehort nicht zu deinem Fahrzeug");
	static Float:Rot;
	Streamer_GetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_ATTACH_R_X,PlayerData[playerid][voObjRx]);
	Streamer_SetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_R_X,PlayerData[playerid][voObjRx]);
	Streamer_GetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_ATTACH_R_Y,PlayerData[playerid][voObjRy]);
	Streamer_SetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_R_Y,PlayerData[playerid][voObjRy]);
	GetVehicleZAngle(PlayerData[playerid][vCarID],Rot);
	Streamer_GetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_ATTACH_R_Z,PlayerData[playerid][voObjRz]);
	Streamer_SetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_R_Z,PlayerData[playerid][voObjRz]+Rot);
	Streamer_GetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_ATTACH_OFFSET_X,PlayerData[playerid][voObjX]);
	Streamer_GetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_ATTACH_OFFSET_Y,PlayerData[playerid][voObjY]);
	Streamer_GetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_ATTACH_OFFSET_Z,PlayerData[playerid][voObjZ]);
	new Float:Pos[3];
	GetVehiclePos(PlayerData[playerid][vCarID],Pos[0],Pos[1],Pos[2]);
	Streamer_SetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_X,floatsin(360-Rot,degrees) * PlayerData[playerid][voObjY] + floatcos(360-Rot,degrees) * PlayerData[playerid][voObjX] + Pos[0]);
	Streamer_SetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_Y,floatcos(360-Rot,degrees) * PlayerData[playerid][voObjY] - floatsin(360-Rot,degrees) * PlayerData[playerid][voObjX] + Pos[1]);
	Streamer_SetFloatData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_Z,Pos[2]+PlayerData[playerid][voObjZ]);
	Streamer_SetIntData(STREAMER_TYPE_OBJECT, objectid, E_STREAMER_ATTACHED_VEHICLE,65535);
	EditDynamicObject(playerid, objectid);
	return 1;
}



CMD->delete(playerid,params[]){
	if(!PlayerData[playerid][vObjID])return SendClientMessage(playerid,-1,"Du hast kein Object ausgewahlt");
    DestroyDynamicObject(PlayerData[playerid][vObjID]);
    static data[MAX_ATTACHED_OBJECTS];
    getproperty(0, "", PlayerData[playerid][vCarID], data);
	strunpack(data,data);
    RemoveFromArray(data,PlayerData[playerid][vObjID]);
	SendClientMessage(playerid,-1,"Object wurde geloscht");
	setproperty(0, "", PlayerData[playerid][vCarID], data);
	new query[64];
	mysql_format(sqlHandler,query,64,"DELETE FROM `objects` WHERE `ObjectID` = %d LIMIT 1;",PlayerData[playerid][vObjID]);
	mysql_pquery(sqlHandler,query,"","");
	return CancelEdit(playerid);
}
CMD->saveall(playerid,params[]){
	return SaveData();
}
CMD->attachobject(playerid,params[]){
	static obj[2];
    if(sscanf(params,"d",obj[0]))return SendClientMessage(playerid,-1,"Benutze: /attachobject [modelid]");
    static Float:Pos[3];
	PlayerData[playerid][vCarID]= GetPlayerVehicleID(playerid);
	if(!PlayerData[playerid][vCarID])return SendClientMessage(playerid,-1,"Du bist in keinem Auto");
    GetVehiclePos(PlayerData[playerid][vCarID],Pos[0],Pos[1],Pos[2]);
    AttachDynamicObjectToVehicle(obj[1] = CreateDynamicObject(obj[0],Pos[0],Pos[1],Pos[2],0.0,0.0,0.0), PlayerData[playerid][vCarID], 5.0, 5.0, 2.0, 0.0, 0.0, 0.0);
    Streamer_SetIntData(STREAMER_TYPE_OBJECT, obj[1], E_STREAMER_EXTRA_ID,PlayerData[playerid][vCarID]);
	new query[64];
	Streamer_Update(playerid);
	mysql_format(sqlHandler,query,64,"SELECT `cID` FROM `vehicles` WHERE `VehID` = %d LIMIT 1;",PlayerData[playerid][vCarID]);
	mysql_pquery(sqlHandler,query,"@InsertObject","dd",obj[1],obj[0]);
	static data[MAX_ATTACHED_OBJECTS];
	switch(existproperty(0, "", PlayerData[playerid][vCarID])){
	    case 0:{
	        data[0] = obj[1];
	        setproperty(0, "", PlayerData[playerid][vCarID], data);
	 	}
	    case 1:{
	        getproperty(0, "", PlayerData[playerid][vCarID], data);
			strunpack(data,data);
	        AddToArray(data,obj[1]);
	        setproperty(0, "", PlayerData[playerid][vCarID], data);
	    }
	}
	SelectObject(playerid);
	new str[20];
	format(str,20,"ObjectID: %d",obj[1]);
	SendClientMessage(playerid,-1,str);
	return SendClientMessage(playerid,-1,"Objekt wurde erstellt!");
}
