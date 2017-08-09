local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Turkey";
ITEM.uniqueID = "uu_turkey";
ITEM.model = "models/bioshockinfinite/cottoncandy.mdl";
ITEM.description = "A turkey leg, with the Union brand seared into it. The meat is floppy, greasy and clearly synthetic; but hey, it's Christmas.";
ITEM.category = "Union Consumables";
ITEM.weight = 0.4;
ITEM.hunger = 75;
ITEM.health = 10;

-- Called when the item entity has spawned.
function ITEM:OnEntitySpawned(entity)
	entity:SetMaterial("phoenix_storms/trains/track_beamside");
end;

ITEM:Register();