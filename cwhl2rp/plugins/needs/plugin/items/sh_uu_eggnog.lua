local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Eggnog";
ITEM.uniqueID = "uu_eggnog";
ITEM.cost = 40;
ITEM.thirst = 40;
ITEM.health = 5;
ITEM.model = "models/props_junk/garbage_milkcarton002a.mdl";
ITEM.weight = 0.7;
ITEM.access = "u";
ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"};
ITEM.category = "Union Consumables";
ITEM.business = true;
ITEM.description = "A strange, alcoholic tasting beverage that tastes like a blue Christmas, if Christmas tasted like olive oil.";

-- Called when the item entity has spawned.
function ITEM:OnEntitySpawned(entity)
	entity:SetMaterial("models/props/de_nuke/nukconcretewalla");
end;

ITEM:Register();