local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

-- Called when the target player's text is needed.
function PLUGIN:GetTargetPlayerText(player, targetPlayerText)
	if (Schema.PlayerIsCombine and Schema:PlayerIsCombine(player) and !Clockwork.config:Get("show_combine_age"):Get()) then
		return;
	end;

	local gender = "He";
	local their = "his ";
	
	if (player:GetGender() == GENDER_FEMALE) then
		gender = "She";
		their = "her ";
	end;

	if (player:GetSharedVar("Age")) then
		targetPlayerText:Add("AGE", gender.." looks to be in "..their..self:GetRoughEstimate(player)..".");
	else
		targetPlayerText:Add("AGE", gender.." doesn't appear to be of any particular age.");
	end;
end;

-- Called when the player info text is needed.
function PLUGIN:GetPlayerInfoText(playerInfoText)
	local age = Clockwork.Client:GetSharedVar("Age");
	
	if (age) then
		playerInfoText:Add("AGE", "Age: "..age);
	end;
end;

Clockwork.datastream:Hook("RequestAge", function(data)
	local minimum = tostring(math.floor(Clockwork.config:Get("minimum_age"):Get()));
	local maximum = tostring(math.floor(Clockwork.config:Get("maximum_age"):Get()));

	Derma_StringRequest("Aging", "Character aging has been enabled. Your character does not have an age set. Please select an age between "..(minimum).." and "..maximum..".", "", PLUGIN.SendAge, PLUGIN.SendAge);
end);