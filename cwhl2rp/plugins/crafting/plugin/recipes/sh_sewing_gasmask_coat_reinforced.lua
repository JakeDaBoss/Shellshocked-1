local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Upgrade: Gas Mask Uniform, Coat";
RECIPE.uniqueID = "sewing_gasmask_coat_reinforced";
RECIPE.model = "models/lambdamovement_coat.mdl";
RECIPE.category = "Sewing";
RECIPE.description = "Using tempered armor scraps and other materials, you can reinforce a Gas Mask Uniform with a coat.";
RECIPE.ingredients = {["coat_gasmask"] = 1, ["tempered_armor_scraps"] = 2, ["scrap_glass"] = 4, ["chunk_of_plastic"] = 1, ["cloth_scraps"] = 2};
RECIPE.result = {["coat_gasmask_reinforced"] = 1};
RECIPE.tools = {"sewing_kit"};
RECIPE.station = "workbench";
RECIPE.hidden = false;
RECIPE.flag = "S";

RECIPE:Register();