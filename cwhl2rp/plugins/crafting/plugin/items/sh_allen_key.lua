local ITEM = Clockwork.item:New();
ITEM.name = "Allen Key";
ITEM.model = "models/props_c17/trappropeller_lever.mdl";
ITEM.uniqueID = "allen_key";
ITEM.weight = 0.4;
ITEM.category = "Tools";
ITEM.business = false;
ITEM.description = "A beautiful hex key that has been shaped by skilled people.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();