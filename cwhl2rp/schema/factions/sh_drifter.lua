--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Drifter");

FACTION.useFullName = true;
-- FACTION.material = "halfliferp/factions/citizen"; <-- Does this need changing? If not, let me know.
--[[ FACTION.models = {
	female = {
		"models/humans/group17/female_01.mdl",
		"models/humans/group17/female_02.mdl",
		"models/humans/group17/female_03.mdl",
		"models/humans/group17/female_04.mdl",
		"models/humans/group17/female_06.mdl",
		"models/humans/group17/female_07.mdl"
	},
	male = {
		"models/humans/group17/male_01.mdl",
		"models/humans/group17/male_02.mdl",
		"models/humans/group17/male_03.mdl",
		"models/humans/group17/male_04.mdl",
		"models/humans/group17/male_05.mdl",
		"models/humans/group17/male_06.mdl",
		"models/humans/group17/male_07.mdl",
		"models/humans/group17/male_08.mdl",
		"models/humans/group17/male_09.mdl"
	};
};

<< These are the models that require the insurgency models. TBI. >>
--]]

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

FACTION_DRIFTER = FACTION:Register();