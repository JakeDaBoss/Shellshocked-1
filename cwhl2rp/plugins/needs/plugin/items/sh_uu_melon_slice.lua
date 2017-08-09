local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Melon Slice";
ITEM.uniqueID = "uu_melon_slice";
ITEM.cost = 8;
ITEM.model = "models/props_junk/watermelon01_chunk01b.mdl";
ITEM.weight = 0.25;
ITEM.health = 1;
ITEM.hunger = 8;
ITEM.thirst = 2;
ITEM.access = "u";
ITEM.category = "Union Consumables";
ITEM.business = false;
ITEM.description = "A large, green fruit consisting of a unnaturally unhardened shell, imply the food must be rotten..";

ITEM:Register();