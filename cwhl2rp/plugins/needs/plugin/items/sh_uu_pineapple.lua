local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Pineapple";
ITEM.uniqueID = "uu_pineapple";
ITEM.cost = 40;
ITEM.model = "models/bioshockinfinite/hext_pineapple.mdl";
ITEM.weight = 0.2;
ITEM.health = 2;
ITEM.hunger = 20;
ITEM.thirst = 10;
ITEM.access = "u";
ITEM.business = true;
ITEM.category = "Union Consumables";
ITEM.description = "An odd looking fruit, consisting of a spiky silicone shell, filled with pale yellow gel. It doesn't taste very good."

ITEM:Register();