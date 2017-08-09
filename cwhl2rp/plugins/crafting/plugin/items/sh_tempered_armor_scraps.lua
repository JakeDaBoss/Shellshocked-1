local ITEM = Clockwork.item:New();
ITEM.name = "Tempered Armor Scraps";
ITEM.uniqueID = "tempered_armor_scraps";
ITEM.model = "models/gibs/scanner_gib02.mdl";
ITEM.weight = 1.25;
ITEM.category = "Crafting";
ITEM.business = false;
ITEM.description = "Scraps from various armor parts tempered in a furnace. Can be used to repair exotic armors.";

ITEM:AddData("Rarity", 2);

function ITEM:OnDrop(player, position) end;

ITEM:Register();