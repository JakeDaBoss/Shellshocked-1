local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Shovel";
RECIPE.uniqueID = "breakdown_weapons_shovel";
RECIPE.model = "models/weapons/w_shovel.mdl";
RECIPE.category = "Breakdown Weapons";
RECIPE.description = "Tear apart a shovel for a couple raw materials.";
RECIPE.ingredients = {["cw_shovel"] = 1};
RECIPE.result = {["piece_of_metal"] = {1, 2, 1}, ["wooden_parts"] = {3, 4, 5}};
RECIPE.tools = {"hammer"};
RECIPE.station = "workbench";
RECIPE.hidden = false;

RECIPE:Register();