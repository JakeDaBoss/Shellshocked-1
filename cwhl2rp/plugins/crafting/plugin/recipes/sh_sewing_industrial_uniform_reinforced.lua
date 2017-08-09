local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Upgrade: Industrial Uniform";
RECIPE.uniqueID = "sewing_industrial_uniform_reinforced";
RECIPE.model = "models/citizen_17.mdl";
RECIPE.category = "Sewing";
RECIPE.description = "Upgrade an industrial uniform to provide additional armor and protection for the wearer.";
RECIPE.ingredients = {["industrial_uniform"] = 1, ["armor_scraps"] = 3, ["cloth_scraps"] = 3, ["scrap_glass"] = 4};
RECIPE.result = {["industrial_uniform_reinforced"] = 1};
RECIPE.tools = {"sewing_kit"};
RECIPE.station = "workbench";
RECIPE.hidden = false;

RECIPE:Register();