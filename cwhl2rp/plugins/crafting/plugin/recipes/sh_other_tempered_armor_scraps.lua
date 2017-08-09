local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Tempered Armor Scraps";
RECIPE.uniqueID = "other_tempered_armor_scraps";
RECIPE.model = "models/gibs/scanner_gib02.mdl";
RECIPE.category = "Crafting";
RECIPE.description = "You can temper armor scraps with the appropriate materials, strengthening them to be used in other armor variants.";
RECIPE.ingredients = {["armor_scraps"] = 1, ["chunk_of_plastic"] = 1, ["metal_parts"] = 1};
RECIPE.result = {["tempered_armor_scraps"] = 1};
RECIPE.tools = {"hammer"};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();