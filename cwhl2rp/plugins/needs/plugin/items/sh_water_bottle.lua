local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Water Bottle";
ITEM.uniqueID = "water_bottle";
ITEM.cost = 20;
ITEM.spawnType = "consumable";
ITEM.spawnValue = 5;
ITEM.model = "models/warz/consumables/water_s.mdl";
ITEM.weight = 0.5;
ITEM.thirst = 50;
ITEM.junk = "empty_bottle";
ITEM.access = "Mv";
ITEM.useSound = {"eda/inv_drink_flask.wav", "eda/drinking.wav"};
ITEM.business = true;
ITEM.description = "A bottle of refreshing, filtered water. Looks safe enough to drink without consequence, so... bottoms up!";

ITEM:Register();