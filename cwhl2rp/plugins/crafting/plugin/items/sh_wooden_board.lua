local ITEM = Clockwork.item:New();
ITEM.name = "Wooden Board";
ITEM.uniqueID = "wooden_board";
ITEM.spawnValue = 13;
ITEM.spawnType = "crafting";
ITEM.model = "models/weapons/tool_barricade/w_barricadeboard.mdl";
ITEM.weight = 2;
ITEM.category = "Junk";
ITEM.business = false;
ITEM.description = "A damp, moldy, rotten wooden board.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();