local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: 9x19mm Rounds";
RECIPE.uniqueID = "breakdown_ammo_pistol";
RECIPE.model = "models/Items/BoxSRounds.mdl";
RECIPE.category = "Breakdown Ammunition";
RECIPE.description = "Pull apart some ammunition for raw materials. Better hope you don't ruin it all.";
RECIPE.result = {["bulletcasings"] = {0, 1}, ["gunpowder"] = {0, 0, 1}, ["empty_pistol_ammo"] = 1};
RECIPE.ingredients = {["ammo_pistol"] = 1};
RECIPE.station = "reloading_press";
RECIPE.hidden = false;

RECIPE:Register();