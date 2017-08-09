local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cut: Pouch";
RECIPE.uniqueID = "cloth_bag";
RECIPE.model = "models/props_junk/garbage_bag001a.mdl";
RECIPE.category = "Cloth";
RECIPE.description = "Cutting a pouch, you can recover cloth parts.";
RECIPE.ingredients = {["pouch"] = 1};
RECIPE.result = {["cloth_scraps"] = {0, 0, 0, 1, 1}};
RECIPE.tools = {"sewing_kit"};
RECIPE.hidden = false;

RECIPE:Register();