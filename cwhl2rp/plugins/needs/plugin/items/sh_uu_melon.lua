local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Melon";
ITEM.uniqueID = "uu_melon";
ITEM.cost = 60;
ITEM.model = "models/props_junk/watermelon01.mdl";
ITEM.weight = 2;
ITEM.hunger = 40;
ITEM.thirst = 15;
ITEM.health = 4;
ITEM.access = "u";
ITEM.category = "Union Consumables";
ITEM.business = true;
ITEM.description = "A large, green fruit consisting of a unnaturally unhardened shell, imply the food must be rotten.";

ITEM:Register();