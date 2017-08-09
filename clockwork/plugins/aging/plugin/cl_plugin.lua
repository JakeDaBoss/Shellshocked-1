local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

PLUGIN.timeLine = {
	[1] = "teens",
	[2] = "twenties",
	[3] = "thirties",
	[4] = "forties",
	[5] = "fifties",
	[6] = "sixties",
	[7]	= "seventies",
	[8] = "eighties",
	[9] = "nineties"
};

-- A function to get a rough estimate of a player's age.
function PLUGIN:GetRoughEstimate(player)
	local age = player:GetSharedVar("Age"); 
	local length = string.len(age);
	local firstDigit, lastDigit, estimate;

	if (length > 2) then
		return "hundreds";
	end;

	firstDigit = tonumber(string.sub(age, 1, 1));
	lastDigit = tonumber(string.sub(age, length));

	if (lastDigit <= 3) then
		estimate = "early "
	elseif (lastDigit <= 6) then
		estimate = "mid ";
	elseif (lastDigit <= 9) then
		estimate = "late ";
	end;

	return estimate..self.timeLine[firstDigit];
end;

-- A function to send the player's age to the server.
function PLUGIN.SendAge(age)
	Clockwork.datastream:Start("RequestAge", age);
end;