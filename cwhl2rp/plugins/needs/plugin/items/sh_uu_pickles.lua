local ITEM = Clockwork.item:New("consumable_base");
ITEM.name = "Union Pickles";
ITEM.uniqueID = "uu_pickles";
ITEM.cost = 60;
ITEM.model = "models/bioshockinfinite/dickle_jar.mdl";
ITEM.weight = 0.5;
ITEM.health = 2;
ITEM.hunger = 25;
ITEM.access = "u";
ITEM.category = "Union Consumables";
ITEM.business = true;
ITEM.description = "A jar of preserved pickles, adorning the Union brand. They're oddly mushy and taste a bit like sponge.";
 
ITEM:Register();