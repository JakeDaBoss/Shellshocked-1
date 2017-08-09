local ITEM = Clockwork.item:New();
ITEM.name = "Casting Mold";
ITEM.uniqueID = "casting_mold";
ITEM.spawnValue = 13;
ITEM.spawnType = "crafting";
ITEM.model = "models/props_lab/box01a.mdl";
ITEM.weight = 1;
ITEM.category = "Crafting";
ITEM.business = true;
ITEM.access = "Mv";
ITEM.cost = 100;
ITEM.description = "A box containing one low grade casting mold. Probably used for making something.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();