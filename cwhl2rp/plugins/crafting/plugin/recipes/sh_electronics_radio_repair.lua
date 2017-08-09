
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Handheld Radio: Repair";
RECIPE.uniqueID = "radio_repair";
RECIPE.model = "models/deadbodies/dead_male_civilian_radio.mdl";
RECIPE.category = "Electronics";
RECIPE.description = "Use various electronics to fix a broken radio using a soldering iron.";
RECIPE.ingredients = {["handheld_radio_broken"] = 1, ["cables"] = 3, ["electronic_parts"] = 3};
RECIPE.station = "soldering_iron";
RECIPE.result = {["handheld_radio_batteryless"] = 1};

RECIPE:Register();