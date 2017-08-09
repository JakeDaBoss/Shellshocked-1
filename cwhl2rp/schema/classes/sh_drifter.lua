--[[
	© 2017 Shellshock-RP. Do not redistribute without written consent. Created by Jake.
--]]

local CLASS = Clockwork.class:New("Drifter");
	CLASS.color = Color(66, 134, 244, 255);
	CLASS.factions = {FACTION_DRIFTER};
	CLASS.isDefault = true;
	CLASS.wagesName = "Supplies";
	CLASS.wages = 0;
	CLASS.description = "A regular human.";
	CLASS.defaultPhysDesc = "Wearing dirty clothes.";
CLASS_DRIFTER = CLASS:Register();