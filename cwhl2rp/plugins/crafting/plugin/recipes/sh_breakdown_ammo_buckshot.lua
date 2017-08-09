local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: 12-gauge Buckshot Shells";
RECIPE.uniqueID = "breakdown_ammo_buckshot";
RECIPE.model = "models/Items/BoxBuckshot.mdl";
RECIPE.category = "Breakdown Ammunition";
RECIPE.description = "Pull apart some ammunition for raw materials. Better hope you don't ruin it all.";
RECIPE.result = {["bulletcasings"] = {0, 1}, ["gunpowder"] = {0, 0, 1}, ["empty_shotgun_box"] = 1};
RECIPE.ingredients = {["ammo_buckshot"] = 1};
RECIPE.station = "reloading_press";
RECIPE.tools = {"pliers"};
RECIPE.hidden = false;

RECIPE:Register();