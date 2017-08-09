local ITEM = Clockwork.item:New();
ITEM.name = "Scrap Glass";
ITEM.uniqueID = "scrap_glass";
ITEM.spawnValue = 30;
ITEM.spawnType = "crafting";
ITEM.cost = 0;
ITEM.model = "models/props_junk/garbage_glassbottle001a_chunk03.mdl";
ITEM.weight = 0.15;
ITEM.category = "Junk";
ITEM.business = false;
ITEM.description = "A broken piece of glass.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();