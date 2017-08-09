local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cut: Travelling Backpack";
RECIPE.uniqueID = "cloth_travelling_backpack";
RECIPE.model = "models/props_junk/cardboard_box003b.mdl";
RECIPE.category = "Cloth";
RECIPE.description = "Cutting a travelling backpack, you can recover cloth parts.";
RECIPE.ingredients = {["backpack_travelling"] = 1};
RECIPE.tools = {"sewing_kit"};
RECIPE.result = {["cloth_scraps"] = {2, 3, 3, 4}, ["cables"] = {0, 1, 2}};
RECIPE.flag = "S";

RECIPE:Register();