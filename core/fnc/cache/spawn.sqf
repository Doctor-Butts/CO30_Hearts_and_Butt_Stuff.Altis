// Params: A building is passed in from /core/fnc/find_pos.sqf

// Randomly select one of the building's preset positions
btc_cache_pos = selectRandom (_this buildingPos -1);

// If the building doesn't have any preset positions, nothing is returned
// Try again I guess...
if (isNil "btc_cache_pos") exitWith
{
	[] spawn {[] call btc_fnc_cache_find_pos;};

	// Todo: Spawn the cache somewhere outside the invalid building and throw a 
	// camonet over it instead trying again.
};

call btc_fnc_cache_create;