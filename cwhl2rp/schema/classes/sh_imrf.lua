--[[
	© 2017 Shellshock-RP. Do not redistribute without written consent. Created by Jake.
--]]

local CLASS = Clockwork.class:New("Independent MIlitary Remnant Force");
	CLASS.color = Color(190, 81, 58, 255);
	CLASS.factions = {FACTION_IMRF};
	CLASS.isDefault = true;
	CLASS.wagesName = "Supplies";
	CLASS.wages = 0;
	CLASS.description = "A regular human.";
	CLASS.defaultPhysDesc = "Wearing dirty clothes.";
CLASS_IMRF = CLASS:Register();