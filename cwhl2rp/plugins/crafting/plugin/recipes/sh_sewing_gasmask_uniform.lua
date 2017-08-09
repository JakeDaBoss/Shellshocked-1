local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Sewing: Gas mask Uniform";
RECIPE.uniqueID = "sewing_gasmask_uniform";
RECIPE.model = "models/lambdamovement.mdl";
RECIPE.category = "Sewing";
RECIPE.description = "With your knowledge, you can fabricate a gas mask uniform that can filter dangerous gasses in combination with a filter.";
RECIPE.ingredients = {["cloth_scraps"] = 4, ["chunk_of_plastic"] = 2, ["kevlar_vest"] = 1, ["armor_scraps"] = 2, ["scrap_glass"] = 4};
RECIPE.result = {["gasmask_uniform"] = 1};
RECIPE.tools = {"sewing_kit"};
RECIPE.station = "workbench";
RECIPE.hidden = false;
RECIPE.flag = "S";

RECIPE:Register();