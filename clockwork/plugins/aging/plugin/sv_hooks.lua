local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

-- Called when a player's character creation info should be adjusted.
function PLUGIN:PlayerAdjustCharacterCreationInfo(player, info, data) 
	local age = tonumber(data.age);
	local minimum = math.floor(Clockwork.config:Get("minimum_age"):Get());
	local maximum = math.floor(Clockwork.config:Get("maximum_age"):Get());

	if (!age or age < minimum or age > maximum) then
		return "You did not choose an age or the one you have chosen is not valid!";
	end;

	info.data["Age"] = age;
end;

-- Called when a player's character screen info should be adjusted.
function PLUGIN:PlayerAdjustCharacterScreenInfo(player, character, info) 
	if (info.details) then
		local age = character.data["Age"];

		if (age) then
			info.details = "This character is "..tostring(age).." years old.\n"..info.details;
		else
			info.details = "This character has no age set.\n"..info.details;
		end;
	else
		local age = character.data["Age"];

		if (age) then
			info.details = "This character is "..tostring(age).." years old.";
		end;
	end;
end;

-- Called when time has passed.
function PLUGIN:TimePassed(quantity) 
	if (quantity == TIME_YEAR) then
		for k, v in pairs(cwPlayer.GetAll()) do
			if (v:HasInitialized()) then
				local age = tonumber(v:GetCharacterData("Age"));

				if (age) then
					self:SetAge(v, age + 1);
				end;
			end;
		end;
	end;
end;

-- Called when a player's character has loaded.
function PLUGIN:PlayerCharacterLoaded(player)
	self:RequestAge(player);

	local age = player:GetCharacterData("Age");

	if (age) then
		player:SetSharedVar("Age", age);
	else
		player:SetSharedVar("Age", nil);
	end;
end;

Clockwork.datastream:Hook("RequestAge", function(player, data)
	if (!data or player:GetSharedVar("Age") or player:GetCharacterData("Age")) then return; end;

	local age = tonumber(data);
	local minimum = math.floor(Clockwork.config:Get("minimum_age"):Get());
	local maximum = math.floor(Clockwork.config:Get("maximum_age"):Get());

	if (!age or age < minimum or age > maximum) then
		Clockwork.player:CinematicText(player, "You did not choose an age or the one you have chosen is not valid!");
				
		PLUGIN:RequestAge(player, true);
	else
		PLUGIN:SetAge(player, age);
	end;
end);