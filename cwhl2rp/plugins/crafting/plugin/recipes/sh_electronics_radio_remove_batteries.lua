
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Handheld Radio: Remove Batteries";
RECIPE.uniqueID = "radio_remove_batteries";
RECIPE.model = "models/pg_props/pg_obj/pg_battery.mdl";
RECIPE.category = "Electronics";
RECIPE.description = "Remove the batteries from a working radio.";
RECIPE.ingredients = {["handheld_radio"] = 1};
RECIPE.result = {["handheld_radio_batteryless"] = 1, ["c_battery"] = 2};

RECIPE:Register();