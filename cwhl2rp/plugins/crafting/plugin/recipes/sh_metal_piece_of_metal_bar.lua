local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Metal Bar";
RECIPE.uniqueID = "metal_piece_of_metal_bar";
RECIPE.model = "models/gibs/metal_gib4.mdl";
RECIPE.category = "Metal";
RECIPE.description = "Using a metal bar, you can smelt it into smaller pieces of metal.";
RECIPE.ingredients = {["metal_bar"] = 1};
RECIPE.result = {["piece_of_metal"] = {4, 4, 5, 6}};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();