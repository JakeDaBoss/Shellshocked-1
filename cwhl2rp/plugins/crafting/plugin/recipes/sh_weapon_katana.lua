local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Katana";
RECIPE.uniqueID = "katana";
RECIPE.model = "models/weapons/w_katana.mdl";
RECIPE.category = "Weapons";
RECIPE.description = "With your superior knowledge, you can create a renowned Japanese sword used by Japanese samurai.";
RECIPE.ingredients = {["metal_bar"] = 2, ["cloth_scraps"] = 2};
RECIPE.result = {["cw_katana"] = 1};
RECIPE.tools = {"wrench"};
RECIPE.station = "furnace";
RECIPE.hidden = true;
RECIPE.flag = "E";

RECIPE:Register();