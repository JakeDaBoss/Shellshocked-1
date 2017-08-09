local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Metal Parts";
RECIPE.uniqueID = "metal_parts";
RECIPE.model = "models/props_junk/vent001_chunk4.mdl";
RECIPE.category = "Metal";
RECIPE.description = "Using pieces of metal, you can create usable metal parts.";
RECIPE.ingredients = {["piece_of_metal"] = 4};
RECIPE.result = {["metal_parts"] = 1};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();