local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Upgrade: Hazmat Uniform";
RECIPE.uniqueID = "sewing_hazmat_uniform_reinforced";
RECIPE.model = "models/humans/airex/airex_male.mdl";
RECIPE.category = "Sewing";
RECIPE.description = "With your exceptional knowledge of armors, you can upgrade a hazmat uniform to protect better, but also increase its weight.";
RECIPE.ingredients = {["hazmat_uniform"] = 1, ["scrap_glass"] = 6, ["tempered_armor_scraps"] = 3, ["chunk_of_plastic"] = 2, ["cloth_scraps"] = 2, ["box_screws"] = 1};
RECIPE.result = {["hazmat_uniform_reinforced"] = 1};
RECIPE.tools = {"wrench", "sewing_kit"};
RECIPE.station = "workbench";
RECIPE.hidden = false;
RECIPE.flag = "m";

RECIPE:Register();