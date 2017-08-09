local PLUGIN = PLUGIN;

-- Called when a player's scoreboard class is needed.
function PLUGIN:GetPlayerScoreboardClass(player)
	local customClass = player:GetSharedVar("customClass");
	local faction = player:GetFaction();
	
	if (customClass != "") then
		return customClass;
	end;
	
	if (faction == FACTION_DRIFTER) then
		return "Drifter";
	elseif (faction == FACTION_CONSCRIPT) then
		return "Independent Military Remnant Force";
	end;
end;