local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Apple";
ITEM.uniqueID = "uu_apple";
ITEM.cost = 30;
ITEM.model = "models/bioshockinfinite/hext_apple.mdl";
ITEM.weight = 0.2;
ITEM.health = 2;
ITEM.hunger = 15;
ITEM.thirst = 5;
ITEM.access = "u";
ITEM.business = true;
ITEM.category = "Union Consumables";
ITEM.description = "A red, somewhat rotten apple with a smooth surface. It has a Union stamp on it.";

ITEM:Register();