local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Military Grade Filter";
RECIPE.uniqueID = "metal_charcoal_filter_upgraded";
RECIPE.model = "models/teebeutel/metro/objects/gasmask_filter.mdl";
RECIPE.category = "Metal";
RECIPE.description = "Using a Military Grade Filter, you can break it down for some metal scraps.";
RECIPE.ingredients = {["charcoal_filter_upgraded"] = 1};
RECIPE.result = {["piece_of_metal"] = {1, 1, 2}};
RECIPE.station = "furnace";
RECIPE.hidden = false;
RECIPE.flag = "A";

RECIPE:Register();