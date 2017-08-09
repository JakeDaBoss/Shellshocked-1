local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

-- A function to set a player's age.
function PLUGIN:SetAge(player, age)
	player:SetSharedVar("Age", age);
	player:SetCharacterData("Age", age);
end;

-- A function to request a player to set their age.
function PLUGIN:RequestAge(player, recursive)
	if (recursive or !player:GetCharacterData("Age")) then
		Clockwork.datastream:Start(player, "RequestAge");
	end;
end;