local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Potato";
ITEM.uniqueID = "uu_potato";
ITEM.model = "models/bioshockinfinite/hext_potato.mdl";
ITEM.plural = "Union Potatoes";
ITEM.cost = 25;
ITEM.weight = 0.15;
ITEM.health = 2;
ITEM.hunger = 15;
ITEM.access = "u";
ITEM.category = "Union Consumables";
ITEM.business = true;
ITEM.description = "A lumpy, brown potato with a Union stamp on the side. It doesn't taste very good.";

ITEM:Register();