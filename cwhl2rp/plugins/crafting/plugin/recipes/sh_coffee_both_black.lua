local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Add Cream and Sugar to Coffee";
RECIPE.uniqueID = "coffee_both_black";
RECIPE.model = "models/props_canteen/vacuumflask01b_cup.mdl";
RECIPE.category = "Coffee";
RECIPE.description = "Add some delicious creamer and sweet sugar to a cup of bold coffee.";
RECIPE.ingredients = {["wi_coffee_black"] = 1, ["wi_cream"] = 1, ["wi_sugar"] = 1};
RECIPE.result = {["wi_coffee_cream_sugar"] = 1};
RECIPE.hidden = false;

RECIPE:Register();