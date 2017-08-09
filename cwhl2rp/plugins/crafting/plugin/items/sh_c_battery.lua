
local ITEM = Clockwork.item:New();
ITEM.name = "1.5v Battery";
ITEM.uniqueID = "c_battery";
ITEM.model = "models/pg_props/pg_obj/pg_battery.mdl";
ITEM.weight = 0.2;
ITEM.category = "Crafting";
ITEM.business = false;
ITEM.description = "A small 1.5 volt 'C' battery, still seems to have some juice left.";
ITEM.spawnType = "crafting";
ITEM.spawnValue = 10;

function ITEM:OnDrop() end;

ITEM:Register();