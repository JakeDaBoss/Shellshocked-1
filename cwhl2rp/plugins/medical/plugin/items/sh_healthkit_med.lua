
local ITEM = Clockwork.item:New("medical_base");

ITEM.name = "Defibrillator Kit";
ITEM.useSound = "ambient/energy/zap2.wav";


ITEM.uniqueID = "healthkit_med";

ITEM.model = "models/dusthl2rp/items/w_eq_defibrillator.mdl";

ITEM.baseWeight = 1;

ITEM.healType = "bandage";
ITEM.healAmount = 100;
ITEM.healTime = 10;
ITEM.stopHealOnFullHealth = true;
ITEM.amount = 2;
ITEM.description = "A compact kit containing two defibrillator paddles, alongside some basic medical supplies, good for a decent patch job.";
ITEM.spawnType = "medical";
ITEM.spawnValue = 10;
ITEM.business = true;
ITEM.access = "vVM";
ITEM.cost = 70;

ITEM:Register();