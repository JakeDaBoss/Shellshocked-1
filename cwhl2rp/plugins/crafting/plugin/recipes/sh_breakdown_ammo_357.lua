local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: .357 Rounds";
RECIPE.uniqueID = "breakdown_ammo_357";
RECIPE.model = "models/Items/357ammo.mdl";
RECIPE.category = "Breakdown Ammunition";
RECIPE.description = "Pull apart some ammunition for raw materials. Better hope you don't ruin it all.";
RECIPE.result = {["bulletcasings"] = {0, 1}, ["gunpowder"] = {0, 0, 1}, ["empty_357_box"] = 1};
RECIPE.ingredients = {["ammo_357"] = 1};
RECIPE.station = "reloading_press";
RECIPE.tools = {"pliers"};
RECIPE.hidden = false;

RECIPE:Register();