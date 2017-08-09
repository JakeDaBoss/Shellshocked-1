local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Allen Key";
RECIPE.uniqueID = "allen_key";
RECIPE.model = "models/props_c17/trappropeller_lever.mdl";
RECIPE.category = "Tools";
RECIPE.description = "With your knowledge, you can create a decently shaped hex key by hand. Allen keys are used in creating the most powerful of items.";
RECIPE.ingredients = {["metal_bar"] = 1};
RECIPE.result = {["allen_key"] = 1};
RECIPE.tools = {"hammer", "pliers"};
RECIPE.station = "workbench";
RECIPE.hidden = false;
RECIPE.flag = "E";

RECIPE:Register();