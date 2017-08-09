local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Battery";
RECIPE.uniqueID = "metal_battery";
RECIPE.model = "models/pg_props/pg_obj/pg_battery.mdl";
RECIPE.category = "Metal";
RECIPE.description = "Try to get a bit of metal from an empty 1.5v battery.";
RECIPE.ingredients = {["c_battery_empty"] = 1};
RECIPE.result = {["metal_parts"] = {0, 0, 1}};
RECIPE.station = "soldering_iron";
RECIPE.hidden = false;

RECIPE:Register();