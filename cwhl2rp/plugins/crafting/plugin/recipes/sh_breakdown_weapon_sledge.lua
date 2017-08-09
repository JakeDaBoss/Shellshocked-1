local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Sledgehammer";
RECIPE.uniqueID = "breakdown_weapons_sledge";
RECIPE.model = "models/weapons/w_sledgehammer.mdl";
RECIPE.category = "Breakdown Weapons";
RECIPE.description = "Tear apart a sledgehammer for a bit of wood and metal.";
RECIPE.ingredients = {["cw_sledgehammer"] = 1};
RECIPE.result = {["piece_of_metal"] = {3, 2, 1}, ["wooden_parts"] = {4, 5, 4}};
RECIPE.tools = {"hammer"};
RECIPE.station = "workbench";
RECIPE.hidden = false;

RECIPE:Register();