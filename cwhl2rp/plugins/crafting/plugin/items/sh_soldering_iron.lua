local ITEM = Clockwork.item:New();
ITEM.name = "Soldering Iron";
ITEM.cost = 0;
ITEM.model = "models/props_lab/solderingiron01a.mdl";
ITEM.uniqueID = "soldering_iron";
ITEM.craftingStation = true;
ITEM.weight = 2;
ITEM.category = "Crafting Station";
ITEM.business = false;
ITEM.description = "An electric soldering iron, useful for working with electronics.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

function ITEM:CanPickup(player, bQuickUse, entity)
	return false;
end;

ITEM:Register();