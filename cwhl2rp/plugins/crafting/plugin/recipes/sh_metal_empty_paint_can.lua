local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Paint Can";
RECIPE.uniqueID = "metal_empty_paint_can";
RECIPE.model = "models/props_junk/metal_paintcan001a.mdl";
RECIPE.category = "Metal";
RECIPE.description = "Destroy a paint can to acquire plastic pieces from it.";
RECIPE.ingredients = {["empty_paint_can"] = 1};
RECIPE.result = {["piece_of_metal"] = {1, 2, 2, 3, 3, 3, 3}};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();