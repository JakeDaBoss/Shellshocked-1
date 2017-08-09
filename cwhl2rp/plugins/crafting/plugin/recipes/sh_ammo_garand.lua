local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Ammo: 7.62x63mm Rounds";
RECIPE.uniqueID = "ammo_garand";
RECIPE.model = "models/items/redammo.mdl";
RECIPE.category = "Ammunition";
RECIPE.description = "With your knowledge, you can create bullets used in a M1 Garand.";
RECIPE.ingredients = {["bulletcasings"] = 1, ["gunpowder"] = 1, ["empty_ar1_box"] = 1};
RECIPE.result = {["ammo_garand"] = 1};
RECIPE.station = "reloading_press";
RECIPE.hidden = false;
RECIPE.flag = "E";

RECIPE:Register();