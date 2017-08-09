local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

local COMMAND = Clockwork.command:New("CharSetAge");
COMMAND.tip = "Set a character's age.";
COMMAND.text = "<string Name> <number Age>";
COMMAND.access = "a";
COMMAND.arguments = 2;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local target = Clockwork.player:FindByID(arguments[1]);
	local age = math.floor(tonumber(arguments[2]));

	if (target) then
		if (age and age > 0) then
			PLUGIN:SetAge(target, age);

			target:Notify(player:Name().." has set your age to "..age..".");
			player:Notify(target:Name().."'s age has been set to "..age..".");
		else
			player:Notify(arguments[2].." is not a valid age!");
		end;
	else
		player:Notify(arguments[1].." is not a valid character!");
	end;
end;

COMMAND:Register();