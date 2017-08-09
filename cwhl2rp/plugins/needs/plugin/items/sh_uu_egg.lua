local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Egg";
ITEM.uniqueID = "uu_egg";
ITEM.cost = 30;
ITEM.health = 1;
ITEM.hunger = 30;
ITEM.model = "models/props_phx/misc/egg.mdl";
ITEM.weight = 0.2;
ITEM.access = "u";
ITEM.business = true;
ITEM.category = "Union Consumables";
ITEM.description = "An aged-looking egg with a Union brand printed upon the side. It appears to be fine, until it is cracked open, at which point one would notice that the yoke and white don't seem to be separate entities.";

ITEM:Register();