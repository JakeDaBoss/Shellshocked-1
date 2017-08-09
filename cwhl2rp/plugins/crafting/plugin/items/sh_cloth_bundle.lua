local ITEM = Clockwork.item:New();
ITEM.name = "Cloth Bundle";
ITEM.uniqueID = "cloth_bundle";
ITEM.spawnValue = 10;
ITEM.spawnType = "crafting";
ITEM.cost = 0;
ITEM.useText = "Break down";
ITEM.useSound = "physics/flesh/flesh_impact_hard4.wav";
ITEM.model = "models/props_junk/cardboard_box003b.mdl";
ITEM.weight = 0.5;
ITEM.category = "Crafting Resource";
ITEM.business = false;
ITEM.description = "A large bundle of cloth, can be torn to bits.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
    for i = 0, 5 do
	    player:GiveItem(Clockwork.item:CreateInstance("cloth_scraps"));
    end;
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

-- Called when the item entity has spawned.
function ITEM:OnEntitySpawned(entity)
	entity:SetMaterial("models/props_c17/FurnitureFabric003a");
end;

ITEM:Register();