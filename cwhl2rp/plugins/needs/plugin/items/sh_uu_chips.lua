local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Chips";
ITEM.uniqueID = "uu_chips";
ITEM.cost = 20;
ITEM.model = "models/bioshockinfinite/bag_of_hhips.mdl";
ITEM.weight = 0.3;
ITEM.health = 1;
ITEM.hunger = 10;
ITEM.access = "u";
ITEM.business = false;
ITEM.category = "Union Consumables";
ITEM.description = "A small bag adorning the Union branding, filled with stale potato chips. They're not flavoured at all and seem somewhat soggy.";

ITEM:Register();