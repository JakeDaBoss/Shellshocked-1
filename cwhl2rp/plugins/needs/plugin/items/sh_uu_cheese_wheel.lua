local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Cheese Wheel";
ITEM.uniqueID = "uu_cheese_wheel";
ITEM.cost = 60;
ITEM.model = "models/bioshockinfinite/pound_cheese.mdl";
ITEM.weight = 1;
ITEM.health = 3;
ITEM.hunger = 30;
ITEM.access = "u";
ITEM.business = true;
ITEM.category = "Union Consumables";
ITEM.description = "A slice of yellow cheese with a Union stamp, which feels oddly oily and seems to fall apart in the hand. It smells fatty and greasy.";

ITEM:Register();