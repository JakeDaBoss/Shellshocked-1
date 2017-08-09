--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
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