local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cooking: Figgy Pudding";
RECIPE.uniqueID = "consumables_pudding";
RECIPE.model = "models/bioshockinfinite/loot_pear.mdl";
RECIPE.category = "Consumables";
RECIPE.description = "Mush up some figs and spices to make some lovely figgy pudding.";
RECIPE.ingredients = {["fig"] = 2, ["spices"] = 1};
RECIPE.result = {["pudding"] = 1};

RECIPE:Register();