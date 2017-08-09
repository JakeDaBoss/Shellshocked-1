--[[
	© 2017 Shellshock-RP. Do not redistribute without written consent. Created by Jake.
--]]

local FACTION = Clockwork.faction:New("Independent MIlitary Remnant Force");

FACTION.whitelist = true;
FACTION.useFullName = true;
-- FACTION.material = "halfliferp/factions/citizen"; <-- Does this need changing? If not, let me know.
 FACTION.models = {
	female = {
		"models/kz2/helghast2.mdl"
	},
	male = {
		"models/kz2/helghast2.mdl"
	};
};


-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
	if (Schema:PlayerIsCombine(player)) then
		if (name) then
			local models = self.models[ string.lower( player:QueryCharacter("gender") ) ];
			
			if (models) then
				player:SetCharacterData("model", models[ math.random(#models) ], true);
				
				Clockwork.player:SetName(player, name, true);
			end;
		else
			return false, "You need to specify a name as the third argument!";
		end;
	end;
end;

FACTION_IMRF = FACTION:Register();