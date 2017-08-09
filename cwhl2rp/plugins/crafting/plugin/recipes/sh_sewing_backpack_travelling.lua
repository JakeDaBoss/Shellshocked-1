local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Sewing: Travelling Backpack";
RECIPE.uniqueID = "sewing_backpack_travelling";
RECIPE.model = "models/props_junk/cardboard_box003b.mdl";
RECIPE.category = "Sewing";
RECIPE.description = "With your knowledge, you can fabricate a large backpack to strap onto your back by using a large amount of cloth and cables.";
RECIPE.ingredients = {["cloth_scraps"] = 8, ["cables"] = 2};
RECIPE.tools = {"sewing_kit"};
RECIPE.result = {["backpack_travelling"] = 1};
RECIPE.flag = "S";

RECIPE:Register();