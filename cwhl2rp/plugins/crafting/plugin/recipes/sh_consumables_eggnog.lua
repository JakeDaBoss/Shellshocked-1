local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cooking: Eggnog";
RECIPE.uniqueID = "consumables_eggnog";
RECIPE.model = "models/props_junk/garbage_milkcarton002a.mdl";
RECIPE.category = "Consumables";
RECIPE.description = "Whip up some deliciously festive eggnog.";
RECIPE.ingredients = {["egg"] = 2, ["spices"] = 1, ["milk_carton"] = 1};
RECIPE.result = {["eggnog"] = 1};

RECIPE:Register();