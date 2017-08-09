local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Wine";
ITEM.uniqueID = "uu_wine";
ITEM.cost = 24;
ITEM.thirst = 35;
ITEM.health = 4;
ITEM.junk = "empty_bottle";
ITEM.drunkTime = 360;
ITEM.model = "models/bioshockinfinite/winebottle.mdl";
ITEM.weight = 1.2;
ITEM.access = "Mv";
ITEM.category = "Union Consumables";
ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"};
ITEM.business = true;
ITEM.description = "A bottle of red liquid adorning the Union brand. It's clearly not genuine wine, but tastes somewhat like it, but more vinegary. It's around 1% ABV.";

ITEM:Register();