local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Bread";
ITEM.uniqueID = "uu_bread";
ITEM.cost = 60;
ITEM.model = "models/bioshockinfinite/dread_loaf.mdl";
ITEM.weight = 0.7;
ITEM.health = 2;
ITEM.hunger = 30;
ITEM.access = "u";
ITEM.category = "Union Consumables";
ITEM.business = true;
ITEM.description = "A moldy, somewhat fool smelling loaf of bread, it appears to look and taste stale.";
 
ITEM:Register();