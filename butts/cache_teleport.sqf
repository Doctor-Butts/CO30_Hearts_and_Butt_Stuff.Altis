hint "Please use the cache teleport responsibly :)"
sleep 5;

if (serverCommandAvailable "#kick") then
{
	hint "Teleporting 'lost' cache to bomb area.";
	sleep 5;
	btc_cache_obj setPos (getpos blow_house);
	hint "Done.";
} else {
	hint "Only voted or logged in admin can perform this action!";
	};