local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cooking: Baked Potato";
RECIPE.uniqueID = "consumables_baked_potato";
RECIPE.model = "models/bioshockinfinite/loot_potato.mdl";
RECIPE.category = "Consumables";
RECIPE.description = "Shove a potato in an oven, heat it up and give yourself a nice, golden-brown potato to eat.";
RECIPE.ingredients = {["potato"] = 1};
RECIPE.result = {["baked_potato"] = 1};
RECIPE.station = "stove";
RECIPE.hidden = false;

RECIPE:Register();