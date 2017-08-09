
local ITEM = Clockwork.item:New("medical_base");
ITEM.name = "Pain Pills";
ITEM.uniqueID = "antibiotics";

ITEM.model = "models/dusthl2rp/items/w_eq_pills.mdl";
ITEM.useSound = "eda/inv_drink_flask.wav";


ITEM.useWeight = 0;
ITEM.baseWeight = 0.2;
ITEM.healType = "antibiotic";
ITEM.healAmount = 20;
ITEM.healTime = 300;
ITEM.amount = 8;
ITEM.description = "A bottle of pharmacy-brand painkillers, still sealed tightly.";
ITEM.spawnType = "medical";
ITEM.spawnValue = 7;
ITEM.business = true;
ITEM.access = "vVM";
ITEM.cost = 40;

ITEM:Register();