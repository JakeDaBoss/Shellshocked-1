local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cooking: Mashed Potatoes";
RECIPE.uniqueID = "consumables_mashed_potatoes";
RECIPE.model = "models/bioshockinfinite/loot_potato.mdl";
RECIPE.category = "Consumables";
RECIPE.description = "Mash up some delicious potatoes.";
RECIPE.ingredients = {["potato"] = 2};
RECIPE.result = {["mashed_potatoes"] = 1};

RECIPE:Register();