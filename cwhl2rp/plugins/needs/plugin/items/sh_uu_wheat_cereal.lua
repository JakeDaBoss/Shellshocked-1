local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Bran Flakes";
ITEM.uniqueID = "uu_cereal";
ITEM.cost = 60;
ITEM.model = "models/bioshockinfinite/hext_cereal_box_cornflakes.mdl";
ITEM.weight = 2;
ITEM.health = 3;
ITEM.hunger = 15;
ITEM.access = "u";
ITEM.category = "Union Consumables";
ITEM.business = true;
ITEM.description = "A box of still sealed cereal, adorning the Union brand. The cereals are clearly produced cheaply, and seem stale to the taste.";

ITEM:Register();