local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cut: Backpack";
RECIPE.uniqueID = "cloth_backpack";
RECIPE.model = "models/props_junk/garbage_bag001a.mdl";
RECIPE.category = "Cloth";
RECIPE.description = "Cutting a backpack, you can recover cloth parts.";
RECIPE.ingredients = {["backpack"] = 1};
RECIPE.result = {["cloth_scraps"] = {1, 2, 2, 2, 3}};
RECIPE.tools = {"sewing_kit"};
RECIPE.hidden = false;

RECIPE:Register();