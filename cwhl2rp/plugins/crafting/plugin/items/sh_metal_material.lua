local ITEM = Clockwork.item:New();
ITEM.name = "Raw Metal Material";
ITEM.uniqueID = "metal_material";
ITEM.spawnValue = 1;
ITEM.isRareSpawn = true;
ITEM.model = "models/gibs/furniture_gibs/furniturewooddrawer003a_chunk04.mdl";
ITEM.weight = 5;
ITEM.category = "Crafting Resource";
ITEM.business = true;
ITEM.access = "JM";
ITEM.cost = 1000;
ITEM.description = "Unrefined metal, melting and mending this will be hard without the proper knowledge";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/gibs/metalgibs/metal_gibs");
	end;
ITEM:Register();


