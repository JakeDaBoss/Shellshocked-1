local ITEM = Clockwork.item:New();
ITEM.name = "Flash Powder";
ITEM.uniqueID = "flash_powder";
ITEM.spawnValue = 8;
ITEM.spawnType = "crafting";
ITEM.model = "models/props/CS_militia/bottle03.mdl";
ITEM.weight = 0.5;
ITEM.category = "Crafting Resource";
ITEM.business = false;
ITEM.description = "A dirty, small bottle filled with magnesium and nitrate. This stuff could be quite dangerous.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();