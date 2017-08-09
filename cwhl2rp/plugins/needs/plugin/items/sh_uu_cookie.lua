local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Cookie";
ITEM.uniqueID = "uu_cookie";
ITEM.cost = 20;
ITEM.model = "models/freeman/cookie.mdl";
ITEM.weight = 0.2;
ITEM.health = 2;
ITEM.hunger = 5;
ITEM.access = "u";
ITEM.business = true;
ITEM.category = "Union Consumables";
ITEM.description = "A small cookie, seemingly delicious but in actuality, is very hard and almost unsavoring.";

ITEM:Register();