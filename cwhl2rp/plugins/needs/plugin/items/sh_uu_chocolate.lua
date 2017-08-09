local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Chocolate";
ITEM.uniqueID = "uu_chocolate";
ITEM.cost = 20;
ITEM.model = "models/bioshockinfinite/hext_candy_chocolate.mdl";
ITEM.weight = 0.2;
ITEM.health = 2;
ITEM.hunger = 10;
ITEM.access = "u";
ITEM.uniqueID = "uu_chocolate";
ITEM.business = true;
ITEM.category = "Union Consumables";
ITEM.description = "A small bar of chocolate, packaged and adorned with the Union branding. It's extraordinarily dark, and seems to be mostly cocoa solids, causing it to dry out your mouth.";

ITEM:Register();