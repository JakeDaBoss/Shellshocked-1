local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Coffee";
ITEM.uniqueID = "uu_coffee";
ITEM.cost = 15;
ITEM.model = "models/bioshockinfinite/xoffee_mug_closed.mdl";
ITEM.weight = 0.5;
ITEM.health = 3;
ITEM.thirst = 10;
ITEM.access = "u";
ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"};
ITEM.category = "Union Consumables";
ITEM.business = true;
ITEM.description = "A small can of instant coffee. Once made, tt tastes very bitter and watered down.";

ITEM:Register();