if (player getVariable "side_mission") then {
	hint "Request granted: UAV en route";
	sleep 5;
	_crew1 = creategroup WEST;
	_airframe1 = [getpos btc_create_object_point, 200, "B_T_UAV_03_dynamicLoadout_F", _crew1] call BIS_fnc_spawnVehicle;
	_wp1 = _crew1 addWaypoint [(getmarkerpos "btc_log_point"), 0];
	_wp1 setWaypointType "LOITER";
} else {
hint "You're not the officer, you can't access this command"};