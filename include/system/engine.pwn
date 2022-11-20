#if !defined GetPlayerClientID
native GetPlayerClientID(playerid, buffer[], size = sizeof(buffer)) = gpci;
#endif

static
	bool:gIsPlayerInAndroid[MAX_PLAYERS char],
	a_VEHICLE_Engine[MAX_VEHICLES] = {VEHICLE_PARAMS_OFF, ...};

stock a_SetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective)
{
	a_VEHICLE_Engine[vehicleid] = engine;
	return SetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
}

#if defined _ALS_SetVehicleParamsEx
	#undef SetVehicleParamsEx
#else
	#define _ALS_SetVehicleParamsEx
#endif
#define SetVehicleParamsEx a_SetVehicleParamsEx

stock a_GetVehicleParamsEx(vehicleid, &engine, &lights, &alarm, &doors, &bonnet, &boot, &objective)
{
	new a_params = GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
	engine = a_VEHICLE_Engine[vehicleid];
	return a_params;
}

#if defined _ALS_GetVehicleParamsEx
	#undef GetVehicleParamsEx
#else
	#define _ALS_GetVehicleParamsEx
#endif
#define GetVehicleParamsEx a_GetVehicleParamsEx

public OnPlayerConnect(playerid)
{
	new a_buffer[40 + 1];
	GetPlayerClientID(playerid, a_buffer);
	if (strcmp(a_buffer, "5638413348335738345A4536524D4A524539334B", true) == 0 || strcmp(a_buffer, "5A4D574253415337304A5A593654444A32584A30", true) == 0)
		gIsPlayerInAndroid{playerid} = true;
	else
		gIsPlayerInAndroid{playerid} = false;
		
	#if defined aa_OnPlayerConnect
		return aa_OnPlayerConnect(playerid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerConnect
	#undef OnPlayerConnect
#else
	#define _ALS_OnPlayerConnect
#endif
#define OnPlayerConnect aa_OnPlayerConnect
#if defined aa_OnPlayerConnect
	forward aa_OnPlayerConnect(playerid);
#endif

public OnVehicleSpawn(vehicleid)
{
	a_VEHICLE_Engine[vehicleid] = VEHICLE_PARAMS_OFF;
	
	#if defined aa_OnVehicleSpawn
		return aa_OnVehicleSpawn(vehicleid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnVehicleSpawn
	#undef OnVehicleSpawn
#else
	#define _ALS_OnVehicleSpawn
#endif
#define OnVehicleSpawn aa_OnVehicleSpawn
#if defined aa_OnVehicleSpawn
	forward aa_OnVehicleSpawn(vehicleid);
#endif

public OnPlayerUpdate(playerid)
{
	if (gIsPlayerInAndroid{playerid} == true) {
		if (GetPlayerState(playerid) == PLAYER_STATE_DRIVER) {
			new a_vehicleid = GetPlayerVehicleID(playerid);
			if (a_VEHICLE_Engine[a_vehicleid] != VEHICLE_PARAMS_ON)
				SetVehicleVelocity(a_vehicleid, 0.0, 0.0, 0.0);
		}
	}
	
	#if defined aa_OnPlayerUpdate
		return aa_OnPlayerUpdate(playerid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerUpdate
	#undef OnPlayerUpdate
#else
	#define _ALS_OnPlayerUpdate
#endif
#define OnPlayerUpdate aa_OnPlayerUpdate
#if defined aa_OnPlayerUpdate
	forward aa_OnPlayerUpdate(playerid);
#endif