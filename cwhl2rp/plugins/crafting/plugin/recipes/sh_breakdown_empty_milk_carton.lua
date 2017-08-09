local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Paper: Empty Milk Carton";
RECIPE.uniqueID = "breakdown_empty_milk_carton";
RECIPE.model = "models/props_junk/garbage_milkcarton002a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Convert a milk carton into writeable paper.";
RECIPE.ingredients = {["empty_milk_carton"] = 1};
RECIPE.result = {["paper"] = {1, 2}};
RECIPE.hidden = false;

RECIPE:Register();