local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Rusty Cans";
RECIPE.uniqueID = "metal_rusty_can";
RECIPE.model = "models/props_junk/garbage_metalcan002a.mdl";
RECIPE.category = "Metal";
RECIPE.description = "Using rusty cans, you can break them down for metal.";
RECIPE.ingredients = {["rusty_can"] = 3};
RECIPE.result = {["piece_of_metal"] = {1, 1, 2}};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();