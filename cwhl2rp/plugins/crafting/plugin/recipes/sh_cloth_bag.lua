local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cut: Bag";
RECIPE.uniqueID = "cloth_bag";
RECIPE.model = "models/props_junk/garbage_bag001a.mdl";
RECIPE.category = "Cloth";
RECIPE.description = "Cutting a bag, you can recover cloth parts.";
RECIPE.ingredients = {["bag"] = 1};
RECIPE.result = {["cloth_scraps"] = {0, 1, 1, 1, 2}};
RECIPE.tools = {"sewing_kit"};
RECIPE.hidden = false;

RECIPE:Register();