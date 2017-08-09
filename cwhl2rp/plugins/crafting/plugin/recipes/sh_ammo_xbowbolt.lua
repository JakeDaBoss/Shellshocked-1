local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Ammo: Crossbow Bolts";
RECIPE.uniqueID = "ammo_xbowbolt";
RECIPE.model = "models/Items/CrossbowRounds.mdl";
RECIPE.category = "Ammunition";
RECIPE.description = "Using metal and nails with the right tool, you can create bolts fit for a crossbow.";
RECIPE.ingredients = {["nails"] = 5, ["piece_of_metal"] = 2};
RECIPE.result = {["ammo_xbowbolt"] = 1};
RECIPE.tools = {"hammer"};
RECIPE.station = "workbench";
RECIPE.hidden = false;
RECIPE.flag = "m";

RECIPE:Register();