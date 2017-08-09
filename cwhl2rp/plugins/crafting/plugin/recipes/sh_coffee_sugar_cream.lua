local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Add Sugar to Creamy Coffee";
RECIPE.uniqueID = "coffee_sugar_cream";
RECIPE.model = "models/props_canteen/vacuumflask01b_cup.mdl";
RECIPE.category = "Coffee";
RECIPE.description = "Add some sugar to coffee that has creamer in it.";
RECIPE.ingredients = {["wi_coffee_cream"] = 1, ["wi_sugar"] = 1};
RECIPE.result = {["wi_coffee_cream_sugar"] = 1};
RECIPE.hidden = false;

RECIPE:Register();