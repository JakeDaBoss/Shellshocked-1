local ITEM = Clockwork.item:New();
ITEM.name = "Sewing Kit";
ITEM.uniqueID = "sewing_kit";
ITEM.model = "models/pg_props/pg_obj/pg_cd_case.mdl";
ITEM.weight = 1.5;
ITEM.spawnValue = 1;
ITEM.isRareSpawn = true;
ITEM.category = "Tools";
ITEM.business = false;
ITEM.description = "A small pouch containing sewing needles, thread and other things for professional tailoring.";

ITEM:AddData("Rarity", 2);

function ITEM:OnDrop(player, position) end;

ITEM:Register();