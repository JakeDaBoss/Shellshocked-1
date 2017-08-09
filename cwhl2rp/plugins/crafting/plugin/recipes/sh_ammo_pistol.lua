local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Ammo: 9x19mm Rounds";
RECIPE.uniqueID = "ammo_pistol";
RECIPE.model = "models/Items/BoxSRounds.mdl";
RECIPE.category = "Ammunition";
RECIPE.description = "Create some ammo used by the MP5K, MP40 and USP-Match.";
RECIPE.ingredients = {["bulletcasings"] = 1, ["gunpowder"] = 1, ["empty_pistol_ammo"] = 1};
RECIPE.result = {["ammo_pistol"] = 1};
RECIPE.station = "reloading_press";
RECIPE.hidden = false;
RECIPE.flag = "A";

RECIPE:Register();