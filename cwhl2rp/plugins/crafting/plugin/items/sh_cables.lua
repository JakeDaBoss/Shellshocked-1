local ITEM = Clockwork.item:New();
ITEM.name = "Cables";
ITEM.uniqueID = "cables";
ITEM.spawnValue = 18;
ITEM.spawnType = "crafting";
ITEM.model = "models/props_lab/solderingspool01a.mdl";
ITEM.weight = 0.1;
ITEM.category = "Crafting";
ITEM.business = false;
ITEM.description = "A small spool of braided metal cables.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();