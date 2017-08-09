local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Add Creamer to Black Coffee";
RECIPE.uniqueID = "coffee_cream_black";
RECIPE.model = "models/props_canteen/vacuumflask01b_cup.mdl";
RECIPE.category = "Coffee";
RECIPE.description = "Add some delicious cream to a mug of black, steaming hot coffee.";
RECIPE.ingredients = {["wi_coffee_black"] = 1, ["wi_cream"] = 1};
RECIPE.result = {["wi_coffee_cream"] = 1};
RECIPE.hidden = false;

RECIPE:Register();