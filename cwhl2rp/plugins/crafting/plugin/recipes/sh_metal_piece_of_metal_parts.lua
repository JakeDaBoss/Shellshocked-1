local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Metal Parts";
RECIPE.uniqueID = "metal_piece_of_metal_parts";
RECIPE.model = "models/gibs/metal_gib4.mdl";
RECIPE.category = "Metal";
RECIPE.description = "Using a furnace, you can create metal pieces from parts.";
RECIPE.ingredients = {["metal_parts"] = 1};
RECIPE.result = {["piece_of_metal"] = 2};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();