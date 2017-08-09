local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Armor Scraps";
RECIPE.uniqueID = "sewing_armor_scraps";
RECIPE.model = "models/gibs/scanner_gib02.mdl";
RECIPE.category = "Sewing";
RECIPE.description = "Create some light scraps useful for padding or repairing armors.";
RECIPE.ingredients = {["cloth_scraps"] = 1, ["piece_of_metal"] = 2};
RECIPE.result = {["armor_scraps"] = 1};
RECIPE.tools = {"sewing_kit"};
RECIPE.hidden = false;

RECIPE:Register();