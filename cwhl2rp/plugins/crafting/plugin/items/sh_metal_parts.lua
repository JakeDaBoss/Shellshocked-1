local ITEM = Clockwork.item:New();
ITEM.name = "Metal Parts";
ITEM.uniqueID = "metal_parts";
ITEM.spawnValue = 7;
ITEM.spawnType = "crafting";
ITEM.model = "models/props_junk/vent001_chunk4.mdl";
ITEM.weight = 0.5;
ITEM.category = "Crafting Resource";
ITEM.business = false;
ITEM.description = "Assorted metal parts used for various things.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();