--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Drifter");

FACTION.useFullName = true;
FACTION.whitelist = false;
FACTION.material = "halfliferp/factions/citizen";
FACTION.models = {
	female = {
		"models/cakez/dust/civilians/female/female_05.mdl",
		"models/cakez/dust/civilians/female/female_07.mdl",
		"models/cakez/dust/civilians/female/female_08.mdl",
		"models/cakez/dust/civilians/female/female_10.mdl",
		"models/cakez/dust/civilians/female/female_11.mdl",
		"models/cakez/dust/civilians/female/female_12.mdl",
		"models/cakez/dust/civilians/female/female_15.mdl",
		"models/cakez/dust/civilians/female/female_17.mdl",
		"models/cakez/dust/civilians/female/female_19.mdl",
		"models/cakez/dust/civilians/female/female_20.mdl",
		"models/cakez/dust/civilians/female/female_22.mdl",
		"models/cakez/dust/civilians/female/female_23.mdl",
		"models/cakez/dust/civilians/female/female_24.mdl",
		"models/cakez/dust/civilians/female/female_25.mdl",
		"models/cakez/dust/civilians/female/female_26.mdl",
		"models/cakez/dust/civilians/female/female_27.mdl"
	},
	male = {
		"models/cakez/dust/civilians/male/male_10.mdl",
 		"models/cakez/dust/civilians/male/male_11.mdl",
		"models/cakez/dust/civilians/male/male_12.mdl",
		"models/cakez/dust/civilians/male/male_13.mdl",
		"models/cakez/dust/civilians/male/male_14.mdl",
		"models/cakez/dust/civilians/male/male_15.mdl",
		"models/cakez/dust/civilians/male/male_16.mdl",
		"models/cakez/dust/civilians/male/male_17.mdl",
		"models/cakez/dust/civilians/male/male_18.mdl",
		"models/cakez/dust/civilians/male/male_22.mdl",
		"models/cakez/dust/civilians/male/male_23.mdl",
		"models/cakez/dust/civilians/male/male_24.mdl",
		"models/cakez/dust/civilians/male/male_25.mdl",
		"models/cakez/dust/civilians/male/male_26.mdl",
		"models/cakez/dust/civilians/male/male_30.mdl",
		"models/cakez/dust/civilians/male/male_31.mdl",
		"models/cakez/dust/civilians/male/male_32.mdl",
		"models/cakez/dust/civilians/male/male_42.mdl",
		"models/cakez/dust/civilians/male/male_43.mdl",
		"models/cakez/dust/civilians/male/male_44.mdl",
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

FACTION_DRIFTER = FACTION:Register();