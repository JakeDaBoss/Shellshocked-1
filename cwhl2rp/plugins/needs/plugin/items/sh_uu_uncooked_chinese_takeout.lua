local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Uncooked Union Chinese Takeout";
ITEM.uniqueID = "uncooked_uu_chinese_takeout";
ITEM.cost = 30;
ITEM.model = "models/props_junk/garbage_takeoutcarton001a.mdl";
ITEM.weight = 0.8;
ITEM.hunger = 15;
ITEM.junk = "empty_chinese_takeout";
ITEM.access = "u";
ITEM.category = "Union Consumables";
ITEM.business = true;
ITEM.description = "A cardboard box adorning the Union brand, filled with raw rice noodles and a petty meat substitute, in a cold watery sauce. It tastes bland, watery and unflavorful.";

ITEM:Register();