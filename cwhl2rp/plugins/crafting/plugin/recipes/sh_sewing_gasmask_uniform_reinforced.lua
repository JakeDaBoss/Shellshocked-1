local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Upgrade: Gas Mask Uniform";
RECIPE.uniqueID = "sewing_gasmask_uniform_reinforced";
RECIPE.model = "models/lambdamovement.mdl";
RECIPE.category = "Sewing";
RECIPE.description = "Reinforce a Gas Mask Uniform using additional armor scraps, cloth and other materials.";
RECIPE.ingredients = {["gasmask_uniform"] = 1, ["armor_scraps"] = 4, ["cloth_scraps"] = 2, ["scrap_glass"] = 4, ["chunk_of_plastic"] = 1};
RECIPE.result = {["gasmask_uniform_reinforced"] = 1};
RECIPE.tools = {"sewing_kit"};
RECIPE.station = "workbench";
RECIPE.hidden = false;
RECIPE.flag = "S";

RECIPE:Register();