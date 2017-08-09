local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Wood: Wooden Board";
RECIPE.uniqueID = "breakdown_wooden_board";
RECIPE.model = "models/props_debris/wood_board06a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Using a furnace, you're able to create wooden parts for further crafting.";
RECIPE.ingredients = {["wooden_board"] = 1};
RECIPE.result = {["wooden_parts"] = {2, 2, 3, 4}};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();