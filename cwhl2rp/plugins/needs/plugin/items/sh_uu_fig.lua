local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Fig";
ITEM.uniqueID = "uu_fig";
ITEM.cost = 30;
ITEM.health = 1;
ITEM.hunger = 20;
ITEM.model = "models/bioshockinfinite/loot_pear.mdl";
ITEM.weight = 0.2;
ITEM.access = "u";
ITEM.business = true;
ITEM.category = "Union Consumables";
ITEM.description = "A small, darkly coloured fruit. It consists of flavoured gel in a silicone shell. It's got stones in it, you think. Seriously, you've never seen a fig before? What is a fig, anyway?";

function ITEM:OnEntitySpawned(entity)
	entity:SetMaterial("phoenix_storms/pack2/darkblue");
end;

ITEM:Register();