
local ITEM = Clockwork.item:New();
ITEM.name = "Batteryless Handheld Radio";
ITEM.uniqueID = "handheld_radio_batteryless";
ITEM.model = "models/deadbodies/dead_male_civilian_radio.mdl";
ITEM.weight = 1;
ITEM.category = "Junk";
ITEM.business = false;
ITEM.description = "A handheld radio that is missing its batteries, but otherwise looks fine.";
ITEM.spawnType = "crafting";
ITEM.spawnValue = 2;

function ITEM:OnDrop() end;

ITEM:Register();