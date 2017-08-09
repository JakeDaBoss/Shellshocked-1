local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Sparkling Union Water";
ITEM.uniqueID = "special_breens_water";
ITEM.cost = 45;
ITEM.spawnValue = 10;
ITEM.spawnType = "consumable";
ITEM.skin = 2;
ITEM.model = "models/props_lunk/popcan01a.mdl";
ITEM.weight = 0.5;
ITEM.health = 10;
ITEM.thirst = 25;
ITEM.junk = "empty_can";
ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"};
ITEM.business = false;
ITEM.category = "Union Consumables";
ITEM.description = "A yellow aluminium can, containing sparkling water with added sugar.";

ITEM:Register();