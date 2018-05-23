hint "Checking bomb area for cache present";
sleep 5;

if ((blow_house distance btc_cache_obj) < 4) then {
hint "Cache found in bomb house. Will destruct in 30 seconds";
sleep 20;
hint "Cache will explode in 10 seconds";
sleep 10;
    btc_cache_obj setVariable ["btc_hd_cache",true];
    {detach _x; deleteVehicle _x;} forEach attachedObjects btc_cache_obj;
    //Effects
    private ["_pos","_marker"];
    _pos = getposATL btc_cache_obj;
//    "Bo_GBU12_LGB_MI10" createVehicle _pos;
//    _pos spawn {sleep 2;"M_PG_AT" createVehicle _this;sleep 2;"M_Titan_AT" createVehicle _this;};
    _pos spawn {"M_Titan_AT" createVehicle _this;};
    [_pos] call btc_fnc_deaf_earringing;
    deleteVehicle btc_cache_obj;
    _marker = createmarker [format ["btc_cache_%1", btc_cache_n], btc_cache_pos];
    _marker setmarkertype "hd_destroy";
    [_marker,"STR_BTC_HAM_O_EH_HDCACHE_MRK",btc_cache_n] remoteExec ["btc_fnc_set_markerTextLocal", [0, -2] select isDedicated, _marker]; //Cached %1 destroyed
    // Vehicle needs assistance
    _marker setMarkerSize [1, 1];
    _marker setMarkerColor "ColorRed";
    if (btc_debug_log) then    {
        diag_log format ["CACHE DESTROYED: ID %1 POS %2",btc_cache_n,btc_cache_pos];
    };
    btc_rep_bonus_cache spawn btc_fnc_rep_change;

    btc_cache_pos = [];
    btc_cache_n = btc_cache_n + 1;
    btc_cache_obj = objNull;
    btc_cache_info = btc_info_cache_def;
    {deleteMarker _x} foreach btc_cache_markers;
    btc_cache_markers = [];

    //Notification
    [0] remoteExec ["btc_fnc_show_hint", 0];

    [] spawn {[] call btc_fnc_cache_find_pos;};
	} else {
	hint "Cache not found, please place closer inside of Bomb House"; };