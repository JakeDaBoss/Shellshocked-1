local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Sardines";
ITEM.uniqueID = "uu_sardines";
ITEM.cost = 60;
ITEM.model = "models/bioshockinfinite/cardine_can_open.mdl";
ITEM.weight = 0.5;
ITEM.health = 3;
ITEM.hunger = 20;
ITEM.access = "u";
ITEM.category = "Union Consumables";
ITEM.business = true;
ITEM.description = "A tin of expired sardines, adorning the Union brand. The sardines appear jelly-like, and odd. They fall apart in your hands, inducing gagging.";
 
-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetCharacterData( "thirst", math.Clamp(player:GetCharacterData("thirst") + 10, 0, 100) );
end;
 
ITEM:Register();