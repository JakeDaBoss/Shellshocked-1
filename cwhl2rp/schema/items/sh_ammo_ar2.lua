--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("ammo_base");
	ITEM.name = "5.56 Ammunition";
	ITEM.cost = 30;
	ITEM.classes = {CLASS_EOW};
	ITEM.model = "models/Items/BoxMRounds.mdl";
	ITEM.plural = "5.56 Ammunition";
	ITEM.weight = 1;
	ITEM.uniqueID = "ammo_ar2";
	ITEM.business = true;
	ITEM.ammoClass = "ar2";
	ITEM.ammoAmount = 30;
	ITEM.description = "A container filled with bullets and 5.56 NATO printed on the side.";
ITEM:Register();