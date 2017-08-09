local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Sewing: Backpack";
RECIPE.uniqueID = "sewing_backpack";
RECIPE.model = "models/props_junk/garbage_bag001a.mdl";
RECIPE.category = "Sewing";
RECIPE.description = "Using a large amount of cloth scraps, you can fabricate a backpack.";
RECIPE.ingredients = {["cloth_scraps"] = 6};
RECIPE.tools = {"sewing_kit"};
RECIPE.result = {["backpack"] = 1};
RECIPE.flag = "S";

RECIPE:Register();