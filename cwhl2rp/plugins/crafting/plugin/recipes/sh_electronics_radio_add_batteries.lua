
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Handheld Radio: Add Batteries";
RECIPE.uniqueID = "radio_add_batteries";
RECIPE.model = "models/deadbodies/dead_male_civilian_radio.mdl";
RECIPE.category = "Electronics";
RECIPE.description = "Add batteries to a handheld radio to get it to work.";
RECIPE.ingredients = {["handheld_radio_batteryless"] = 1, ["c_battery"] = 2};
RECIPE.result = {["handheld_radio"] = 1};

RECIPE:Register();