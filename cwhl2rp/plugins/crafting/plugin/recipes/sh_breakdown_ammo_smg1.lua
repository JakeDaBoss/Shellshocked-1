local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: 4.6x30mm Rounds";
RECIPE.uniqueID = "breakdown_ammo_smg1";
RECIPE.model = "models/Items/BoxMRounds.mdl";
RECIPE.category = "Breakdown Ammunition";
RECIPE.description = "Pull apart some ammunition for raw materials. Better hope you don't ruin it all.";
RECIPE.result = {["empty_smg_box"] = 1, ["bulletcasings"] = 1, ["gunpowder"] = 1};
RECIPE.ingredients = {["ammo_smg1"] = 1};
RECIPE.station = "reloading_press";
RECIPE.tools = {"pliers"};
RECIPE.hidden = false;

RECIPE:Register();