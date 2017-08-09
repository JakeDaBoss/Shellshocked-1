local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Baseball Bat";
RECIPE.uniqueID = "breakdown_weapons_bat";
RECIPE.model = "models/weapons/w_basball.mdl";
RECIPE.category = "Breakdown Weapons";
RECIPE.description = "Toss a metal bat in a furnace to get some metal out of it.";
RECIPE.ingredients = {["cw_baseballbat"] = 1};
RECIPE.result = {["piece_of_metal"] = {4, 3, 4}};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();