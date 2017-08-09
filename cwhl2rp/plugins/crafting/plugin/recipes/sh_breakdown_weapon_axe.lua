local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Axe";
RECIPE.uniqueID = "breakdown_weapons_axe";
RECIPE.model = "models/weapons/w_axe.mdl";
RECIPE.category = "Breakdown Weapons";
RECIPE.description = "Break down an axe for a few chunks of wood and metal.";
RECIPE.ingredients = {["cw_woodaxe"] = 1};
RECIPE.result = {["piece_of_metal"] = {1, 2, 1}, ["wooden_parts"] = {2, 2, 3}};
RECIPE.tools = {"hammer"};
RECIPE.station = "workbench";
RECIPE.hidden = false;

RECIPE:Register();