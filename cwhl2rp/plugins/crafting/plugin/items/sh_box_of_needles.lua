local ITEM = Clockwork.item:New();
ITEM.name = "Box of Needles";
ITEM.uniqueID = "box_of_needles";
ITEM.spawnValue = 16;
ITEM.spawnType = "crafting";
ITEM.model = "models/props_lab/box01a.mdl";
ITEM.weight = 0.1;
ITEM.category = "Crafting";
ITEM.business = false;
ITEM.description = "A tiny box containing needles fit for sewing.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();