local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Figgy Pudding";
ITEM.uniqueID = "uu_pudding";
ITEM.cost = 30;
ITEM.health = 5;
ITEM.hunger = 40;
ITEM.model = "models/props_junk/garbage_metalcan001a.mdl";
ITEM.weight = 0.2;
ITEM.access = "u";
ITEM.business = true;
ITEM.category = "Union Consumables";
ITEM.description = "A unflavored pudding, with the Union brand. It appears porous and spongy, with little to no moisture, like a sponge.";

function ITEM:OnEntitySpawned(entity)
	entity:SetMaterial("phoenix_storms/pack2/bluelight");
end;

ITEM:Register();