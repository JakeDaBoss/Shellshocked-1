local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Orange";
ITEM.uniqueID = "uu_orange";
ITEM.cost = 30;
ITEM.model = "models/bioshockinfinite/hext_orange.mdl";
ITEM.weight = 0.25;
ITEM.health = 3;
ITEM.hunger = 15;
ITEM.thirst = 5;
ITEM.access = "u";
ITEM.category = "Union Consumables";
ITEM.business = true;
ITEM.description = "A round, faded orange fruit with a Union stamp and multiple spoiled spots on the side of it.";

ITEM:Register(ITEM);