local PLUGIN = PLUGIN;
local Clockwork = Clockwork;
local PerformDateTimeThink = Clockwork.kernel.PerformDateTimeThink;

Clockwork.kernel:IncludePrefixed("sv_plugin.lua");
Clockwork.kernel:IncludePrefixed("cl_plugin.lua");
Clockwork.kernel:IncludePrefixed("sv_hooks.lua");
Clockwork.kernel:IncludePrefixed("cl_hooks.lua");

if (SERVER) then
	Clockwork.config:Add("minimum_age", 18, true);
	Clockwork.config:Add("maximum_age", 65, true);
	Clockwork.config:Add("time_paused", false, true);

	if (Clockwork.kernel:GetSchemaFolder() == "cwhl2rp") then
		Clockwork.config:Add("show_combine_age", false);
	end;

	AddCSLuaFile("cl_character.lua");
else
	Clockwork.config:AddToSystem("Minimum age", "minimum_age", "The minimum age a character must be.");
	Clockwork.config:AddToSystem("Maximum age", "maximum_age", "The maximum age a character may be (during creation).");
	Clockwork.config:AddToSystem("Time paused", "time_paused", "Whether or not time is paused.");

	if (Clockwork.kernel:GetSchemaFolder() == "cwhl2rp") then
		Clockwork.config:AddToSystem("Show Combine age", "show_combine_age", "Whether or not Combine characters have their ages shown.");
	end;

	--[[ 
		Run the file now that the schema has 
		loaded and we can override the default
		menu.
	--]]
	function PLUGIN:ClockworkSchemaLoaded() 
		include(self:GetBaseDir().."/cl_character.lua");
	end;
end;

-- A function to perform the date and time think.
function Clockwork.kernel:PerformDateTimeThink()
	if (!Clockwork.config:Get("time_paused"):Get()) then
		PerformDateTimeThink(self);
	end;
end;