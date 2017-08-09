local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Standard Supplement Package";
ITEM.uniqueID = "citizen_supplements";
ITEM.model = "models/sngration/sngr_mre.mdl";
ITEM.description = "A small box containing a variety of different filling foods. Crackers, assorted styles of meat/vegetables, a concentrated non-perishable beverage, jams, a Ukranian mixture of what appears to be tea and alcohol. They don't taste the best, or of anything, really, but it's filling enough.";
ITEM.weight = 0.6;
ITEM.hunger = 18;
ITEM.health = 3;

ITEM.business = false;
ITEM.category = "Consumables";

ITEM:Register();