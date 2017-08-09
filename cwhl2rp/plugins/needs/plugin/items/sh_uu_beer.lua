local ITEM = Clockwork.item:New("consumable_base");
	ITEM.name = "Union Beer";
	ITEM.uniqueID = "uu_beer";
	ITEM.cost = 30;
	ITEM.model = "models/bioshockinfinite/hext_bottle_lager.mdl";
	ITEM.weight = 0.6;
	ITEM.health = 1;
	ITEM.thirst = 15;
	ITEM.hunger = 5;
	ITEM.junk = "empty_bottle";
	ITEM.drunkTime = 3;
	ITEM.access = "U";
	ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"};
	ITEM.business = true;
	ITEM.category = "Union Consumables";
	ITEM.description = "A bottle of golden liquid adorning a Union brand. It tastes vaguely soapy, and at around 0.5% ABV, it won't easily inebriate you.";

ITEM:Register();