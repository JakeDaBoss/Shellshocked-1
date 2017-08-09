local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: USP-M";
RECIPE.uniqueID = "breakdown_weapons_uspm";
RECIPE.model = "models/weapons/w_pistol.mdl";
RECIPE.category = "Breakdown Weapons";
RECIPE.description = "You can acquire parts from a functioning H&K USP-Match";
RECIPE.ingredients = {["weapon_alexd_gsh18"] = 1};
RECIPE.result = {["piece_of_metal"] = {2, 2, 1}, ["chunk_of_plastic"] = 1, ["gunpowder"] = 1};
RECIPE.tools = {"hammer"};
RECIPE.station = "workbench";
RECIPE.hidden = false;

RECIPE:Register();