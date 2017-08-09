local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Add Sugar to Black Coffee";
RECIPE.uniqueID = "coffee_sugar_black";
RECIPE.model = "models/props_canteen/vacuumflask01b_cup.mdl";
RECIPE.category = "Coffee";
RECIPE.description = "Add a packet of sugar to delicious coffee.";
RECIPE.ingredients = {["wi_coffee_black"] = 1, ["wi_sugar"] = 1};
RECIPE.result = {["wi_coffee_sugar"] = 1};
RECIPE.hidden = false;

RECIPE:Register();