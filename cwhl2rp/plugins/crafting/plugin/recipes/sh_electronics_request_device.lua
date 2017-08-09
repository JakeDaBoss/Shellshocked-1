local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Request Device";
RECIPE.uniqueID = "electronics_request_device";
RECIPE.model = "models/gibs/shield_scanner_gib1.mdl";
RECIPE.category = "Electronics";
RECIPE.description = "Try to strip apart a request device for parts. Might be tricky to salvage anything...";
RECIPE.ingredients = {["request_device"] = 1};
RECIPE.result = {["cables"] = {0, 1}, ["electronic_parts"] = {0, 1}, ["battery"] = {0, 0, 0, 0, 1}};
RECIPE.station = "soldering_iron";
RECIPE.hidden = false;

RECIPE:Register();