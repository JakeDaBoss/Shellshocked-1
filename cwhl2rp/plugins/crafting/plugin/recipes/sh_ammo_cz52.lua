local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Ammo: 7.62x25mm Tokarev Rounds";
RECIPE.uniqueID = "ammo_cz52";
RECIPE.model = "models/items/boxzrounds.mdl";
RECIPE.category = "Ammunition";
RECIPE.description = "With your knowledge, you can create ammunition used by the Tokarev CZ52.";
RECIPE.ingredients = {["bulletcasings"] = 1, ["gunpowder"] = 1, ["empty_cz52_ammo"] = 1};
RECIPE.result = {["ammo_cz52"] = 1};
RECIPE.station = "reloading_press";
RECIPE.hidden = false;
RECIPE.flag = "A";

RECIPE:Register();