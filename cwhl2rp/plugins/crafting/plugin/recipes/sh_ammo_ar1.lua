local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Ammo: 7.62x39mm Rounds";
RECIPE.uniqueID = "ammo_ar1";
RECIPE.model = "models/items/redammo.mdl";
RECIPE.category = "Ammunition";
RECIPE.description = "With your knowledge, you can create bullets used in the AK-47 Rifle.";
RECIPE.ingredients = {["empty_ar1_box"] = 1, ["gunpowder"] = 1, ["bulletcasings"] = 2};
RECIPE.result = {["ammo_ar1"] = 1};
RECIPE.station = "reloading_press";
RECIPE.hidden = false;
RECIPE.flag = "E";

RECIPE:Register();