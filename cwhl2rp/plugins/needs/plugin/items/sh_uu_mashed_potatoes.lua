local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Mashed Potatoes";
ITEM.uniqueID = "uu_mashed_potatoes";
ITEM.cost = 40;
ITEM.hunger = 40;
ITEM.health = 5;
ITEM.model = "models/props_junk/garbage_takeoutcarton001a.mdl";
ITEM.weight = 0.7;
ITEM.access = "u";
ITEM.category = "Union Consumables";
ITEM.business = true;
ITEM.description = "A container filled with a small helping of potato, adorning the Union brand. It's flaky, dry and bland. Perhaps there's a perfect companion to this dish.";

-- Called when the item entity has spawned.
function ITEM:OnEntitySpawned(entity)
	entity:SetMaterial("models/props_c17/FurnitureMetal001a");
end;

ITEM:Register();