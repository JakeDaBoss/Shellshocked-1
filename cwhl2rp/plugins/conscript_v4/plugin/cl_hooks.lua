local PLUGIN = PLUGIN;

-- Called when a player's scoreboard class is needed.
function PLUGIN:GetPlayerScoreboardClass(player)
	local faction = player:GetFaction();

	if (faction == FACTION_CONSCRIPT) then
		return "Conscript";
	end;
end;