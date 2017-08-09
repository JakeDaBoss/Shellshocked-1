local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Add Cream to Sweetened Coffee";
RECIPE.uniqueID = "coffee_cream_sugar";
RECIPE.model = "models/props_canteen/vacuumflask01b_cup.mdl";
RECIPE.category = "Coffee";
RECIPE.description = "Add coffee creamer to coffee that already has sugar in it.";
RECIPE.ingredients = {["wi_coffee_sugar"] = 1, ["wi_cream"] = 1};
RECIPE.result = {["wi_coffee_cream_sugar"] = 1};
RECIPE.hidden = false;

RECIPE:Register();