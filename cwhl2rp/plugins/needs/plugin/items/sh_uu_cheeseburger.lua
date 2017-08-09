local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Cheeseburger";
ITEM.uniqueID = "uu_cheeseburger";
ITEM.cost = 75;
ITEM.model = "models/food/burger.mdl";
ITEM.weight = 0.5;
ITEM.health = 25;
ITEM.hunger = 60;
ITEM.access = "u";
ITEM.business = true;
ITEM.category = "Union Consumables";
ITEM.description = "A sloppy, poorly made cheeseburger with a Union sticker on the bun. The meat and cheese appear to be somewhat moldy.";

ITEM:Register();