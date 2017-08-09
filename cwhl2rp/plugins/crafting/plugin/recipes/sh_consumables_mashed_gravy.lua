local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cooking: Mashed Potatoes w/ Gravy";
RECIPE.uniqueID = "consumables_mashed_gravy";
RECIPE.model = "models/bioshockinfinite/loot_potato.mdl";
RECIPE.category = "Consumables";
RECIPE.description = "Add some thick gravy to your mashed potatoes.";
RECIPE.ingredients = {["gravy"] = 1, ["mashed_potatoes"] = 1};
RECIPE.result = {["mashed_gravy"] = 1};

RECIPE:Register();