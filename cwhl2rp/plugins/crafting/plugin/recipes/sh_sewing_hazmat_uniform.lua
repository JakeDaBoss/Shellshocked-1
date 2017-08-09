local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Sewing: Hazmat Uniform";
RECIPE.uniqueID = "sewing_hazmat_uniform";
RECIPE.model = "models/humans/airex/airex_male.mdl";
RECIPE.category = "Sewing";
RECIPE.description = "With your knowledge, you are able to create a lightweight and armoured outfit with a re-breather mask. Re-breather masks are independent of charcoal filters.";
RECIPE.ingredients = {["industrial_uniform_reinforced"] = 1, ["chunk_of_plastic"] = 4, ["armor_scraps"] = 4, ["charcoal_filter"] = 2, ["box_screws"] = 2, ["cloth_scraps"] = 6, ["scrap_glass"] = 6};
RECIPE.result = {["hazmat_uniform"] = 1};
RECIPE.tools = {"sewing_kit"};
RECIPE.station = "workbench";
RECIPE.hidden = false;
RECIPE.flag = "m";

RECIPE:Register();