local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Plastic: Empty Milk Jugs";
RECIPE.uniqueID = "breakdown_empty_milk_jug";
RECIPE.model = "models/props_junk/garbage_milkcarton001a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Crack down some milk jugs to turn them into plastic.";
RECIPE.ingredients = {["empty_milk_jug"] = 2};
RECIPE.result = {["chunk_of_plastic"] = 1};
RECIPE.hidden = false;

RECIPE:Register();