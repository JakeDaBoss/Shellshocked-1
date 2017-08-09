local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Fill Thermos";
RECIPE.uniqueID = "coffee_thermos";
RECIPE.model = "models/props_canteen/vacuumflask01b_cup.mdl";
RECIPE.category = "Coffee";
RECIPE.description = "Fill a thermos with coffee at a coffee pot.";
RECIPE.ingredients = {["wi_thermos_empty"] = 1};
RECIPE.result = {["wi_coffee_thermos"] = 1};
RECIPE.station = "wi_coffee_machine";
RECIPE.hidden = false;

RECIPE:Register();