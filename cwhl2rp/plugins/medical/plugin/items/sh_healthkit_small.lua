
local ITEM = Clockwork.item:New("medical_base");

ITEM.name = "Health Pack";
ITEM.useSound = "weapons/cof/sleeve_generic1.wav";

ITEM.uniqueID = "healthkit_small";

ITEM.model = "models/dusthl2rp/items/w_eq_fieldkit.mdl";

ITEM.baseWeight = 0.5;
ITEM.healType = "bandage";
ITEM.healAmount = 25;
ITEM.healTime = 25;
ITEM.stopHealOnFullHealth = true;
ITEM.amount = 1;
ITEM.description = "A small cloth bag, filled with a variety of different medical supplies. They need time to fully coagulate.";
ITEM.spawnType = "medical";
ITEM.spawnValue = 15;
ITEM.business = true;
ITEM.access = "vVM";
ITEM.cost = 40;

function ITEM:CanUseItem(player)
	if (player:Health() == player:GetMaxHealth()) then
		return false;
	end;
end;

ITEM:Register();