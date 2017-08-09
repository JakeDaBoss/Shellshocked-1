local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Plastic: Empty Ration";
RECIPE.uniqueID = "breakdown_empty_ration";
RECIPE.model = "models/props/cs_office/trash_can_p5.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Melt a bunch of plastic wrappers to form a chunk of the stuff.";
RECIPE.ingredients = {["empty_ration"] = 5};
RECIPE.result = {["chunk_of_plastic"] = {1, 2}};
RECIPE.hidden = false;

RECIPE:Register();