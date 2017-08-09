local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Banana";
ITEM.uniqueID = "uu_banana";
ITEM.cost = 30;
ITEM.model = "models/bioshockinfinite/hext_banana.mdl";
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.2;
ITEM.health = 2;
ITEM.hunger = 15;
ITEM.access = "u";
ITEM.category = "Union Consumables";
ITEM.business = true;
ITEM.description = "A yellow banana, blackened around the edges with a Union stamp on it's body.";

ITEM:Register();