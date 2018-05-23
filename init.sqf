enableSaving [false,false];

if (hasInterface) then {btc_intro_done = [] spawn btc_fnc_intro;};

call compile preprocessFile "core\def\mission.sqf";
call compile preprocessFile "define_mod.sqf";

if (isServer) then {
    call compile preprocessFile "core\init_server.sqf";
};

call compile preprocessFile "core\init_common.sqf";

if (!isDedicated && hasInterface) then {
    call compile preprocessFile "core\init_player.sqf";
};

if (!isDedicated && !hasInterface) then {
    call compile preprocessFile "core\init_headless.sqf";
};
// call butt scripts
//call compile preprocessFile "butts\pad_lights.sqf";
call compile preprocessFile "butts\b_compile.sqf";