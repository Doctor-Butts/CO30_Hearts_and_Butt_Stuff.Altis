tp_cooldown = 0;
if (hasInterface) then {

	//butts_addac = compile preprocessFileLineNumbers "butts\b_actions.sqf";

	[player] execVM "butts\b_actions.sqf";

	//butts scripts
	butts_fuel = compile preprocessFileLineNumbers "butts\butts_veh_refuel.sqf";
	butts_at = compile preprocessFileLineNumbers "butts\uav_at.sqf";
	butts_cas = compile preprocessFileLineNumbers "butts\uav_cas.sqf";
	butts_rearm = compile preprocessFileLineNumbers "butts\butts_rearm.sqf";
	butts_tow = compile preprocessFileLineNumbers "butts\replace_tow.sqf";
	butts_tp = compile preprocessFileLineNumbers "butts\teleport_home.sqf";
	butts_mg = compile preprocessFileLineNumbers "butts\auto_mg.sqf";
	butts_gmg = compile preprocessFileLineNumbers "butts\auto_gmg.sqf";
	butts_praetor = compile preprocessFileLineNumbers "butts\praetor.sqf";
	butts_centurion = compile preprocessFileLineNumbers "butts\centurion.sqf";
	butts_spartan = compile preprocessFileLineNumbers "butts\spartan.sqf";
	butts_falc = compile preprocessFileLineNumbers "butts\uav_falcon.sqf";
	butts_sent = compile preprocessFileLineNumbers "butts\uav_sentinel.sqf";
	butts_stomp = compile preprocessFileLineNumbers "butts\uav_stomper.sqf";
	//butts_addac = compile preprocessFileLineNumbers "butts\b_actions.sqf";
	
};

/* if (isServer) then {
	[] execVM "butts\pad_lights.sqf";
}; */