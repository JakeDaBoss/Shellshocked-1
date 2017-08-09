local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Filter: Dirty Water";
RECIPE.uniqueID = "consumables_water_bottle";
RECIPE.model = "models/warz/consumables/water_s.mdl";
RECIPE.category = "Consumables";
RECIPE.description = "Filter the crap out of a bottle of filthy water.";
RECIPE.ingredients = {["water_dirty"] = 1};
RECIPE.result = {["water_bottle"] = 1};
RECIPE.station = "water_filter";
RECIPE.hidden = false;

RECIPE:Register();