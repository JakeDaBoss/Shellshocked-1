local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Radio";
RECIPE.uniqueID = "electronics_radio";
RECIPE.model = "models/deadbodies/dead_male_civilian_radio.mdl";
RECIPE.category = "Electronics";
RECIPE.description = "Use a soldering iron to disassemble a functional radio.";
RECIPE.ingredients = {["handheld_radio"] = 1};
RECIPE.result = {["electronic_parts"] = {1, 1, 2, 3}, ["cables"] = {1, 2, 2, 3}, ["c_battery"] = 2};
RECIPE.station = "soldering_iron";
RECIPE.hidden = false;

RECIPE:Register();