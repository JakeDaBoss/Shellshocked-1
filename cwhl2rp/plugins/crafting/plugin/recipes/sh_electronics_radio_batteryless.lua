local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Batteryless Radio";
RECIPE.uniqueID = "electronics_radio_batteryless";
RECIPE.model = "models/deadbodies/dead_male_civilian_radio.mdl";
RECIPE.category = "Electronics";
RECIPE.description = "Use a soldering iron to disassemble a radio without batteries.";
RECIPE.ingredients = {["handheld_radio_batteryless"] = 1};
RECIPE.result = {["electronic_parts"] = {1, 1, 2, 3}, ["cables"] = {1, 2, 2, 3}};
RECIPE.station = "soldering_iron";
RECIPE.hidden = false;

RECIPE:Register();