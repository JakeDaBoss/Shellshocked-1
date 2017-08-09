local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Plastic: Plastic Bottle";
RECIPE.uniqueID = "breakdown_plastic_bottle";
RECIPE.model = "models/props_junk/garbage_plasticbottle001a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Breaking and denting plastic bottles, you can create a chunk of plastic.";
RECIPE.ingredients = {["plastic_bottle"] = 4};
RECIPE.result = {["chunk_of_plastic"] = {1, 1, 1, 2}};
RECIPE.hidden = false;

RECIPE:Register();