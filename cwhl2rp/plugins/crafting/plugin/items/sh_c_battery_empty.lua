
local ITEM = Clockwork.item:New();
ITEM.name = "Empty 1.5v Battery";
ITEM.uniqueID = "c_battery_empty";
ITEM.model = "models/pg_props/pg_obj/pg_battery.mdl";
ITEM.weight = 0.2;
ITEM.category = "Junk";
ITEM.business = false;
ITEM.description = "A single 1.5 volt 'C' battery. Doesn't seem to have any charge left.";
ITEM.spawnType = "junk";
ITEM.spawnValue = 1;

function ITEM:OnDrop() end;

ITEM:Register();