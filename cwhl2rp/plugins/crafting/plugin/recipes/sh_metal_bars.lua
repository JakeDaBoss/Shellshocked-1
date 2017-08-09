local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Metal Bars";
RECIPE.uniqueID = "metal_bars";
RECIPE.model = "models/gibs/metal_gib4.mdl";
RECIPE.category = "Metal";
RECIPE.description = "Using your superior crafting knowledge, you can melt down and mend raw metal material to refined metal bars using a casting mold";
RECIPE.ingredients = {["metal_material"] = 1, ["casting_mold"] = 1};
RECIPE.result = {["metal_bar"] = {4, 4, 5, 6}};
RECIPE.station = "furnace";
RECIPE.tools = {"hammer"};
RECIPE.hidden = false;
RECIPE.flag = "E";

RECIPE:Register();