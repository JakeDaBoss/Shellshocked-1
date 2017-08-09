local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Peanuts";
ITEM.uniqueID = "uu_peanuts";
ITEM.cost = 20;
ITEM.model = "models/bioshockinfinite/rag_of_peanuts.mdl";
ITEM.weight = 0.1;
ITEM.health = 1;
ITEM.hunger = 10;
ITEM.access = "u";
ITEM.business = true;
ITEM.category = "Union Consumables";
ITEM.description = "A classic burlap bag adorning the Union brand. While not salted, the peanuts inside do appear to be genuine.";

ITEM:Register();