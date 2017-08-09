local ITEM = Clockwork.item:New();
ITEM.name = "Bullet Casings";
ITEM.uniqueID = "bulletcasings";
ITEM.spawnValue = 12;
ITEM.spawnType = "crafting";
ITEM.model = "models/props/cs_militia/reload_bullet_tray.mdl";
ITEM.weight = 0.25;
ITEM.category = "Crafting Resource";
ITEM.business = false;
ITEM.description = "A small box filled with various bullet casings.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();