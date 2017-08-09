local ITEM = Clockwork.item:New();
ITEM.name = "Electronic Parts";
ITEM.uniqueID = "electronic_parts";
ITEM.spawnValue = 12;
ITEM.spawnType = "crafting";
ITEM.model = "models/props/cs_office/computer_caseb_p3a.mdl";
ITEM.weight = 0.1;
ITEM.category = "Crafting";
ITEM.business = false;
ITEM.description = "A printed circuit board with some copper wiring.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();