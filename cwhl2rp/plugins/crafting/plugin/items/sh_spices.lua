local ITEM = Clockwork.item:New();
ITEM.name = "Spices";
ITEM.uniqueID = "spices";
ITEM.model = "models/props_junk/garbage_bag001a.mdl";
ITEM.value = 30;
ITEM.type = "crafting";
ITEM.weight = 0.1;
ITEM.category = "Junk";
ITEM.business = false;
ITEM.description = "A pouch containing some tasty spices.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();