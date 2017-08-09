local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Suitcase";
RECIPE.uniqueID = "cloth_suitcase";
RECIPE.model = "models/props_c17/SuitCase_Passenger_Physics.mdl";
RECIPE.category = "Cloth";
RECIPE.description = "Using the remaining strength of what you have as a malnourished citizen, you can acquire some cloth from breaking suitcases.";
RECIPE.ingredients = {["suitcase"] = 2};
RECIPE.result = {["cloth_scraps"] = {1, 1, 2}};
RECIPE.hidden = false;

RECIPE:Register();