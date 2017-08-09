local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Repair: Rusty SPAS-12";
RECIPE.uniqueID = "rcs_spas12";
RECIPE.model = "models/weapons/w_shotgun.mdl";
RECIPE.category = "Weapons";
RECIPE.description = "With your superior knowledge, you can restore a shotgun into a working condition.";
RECIPE.ingredients = {["chunk_of_plastic"] = 3, ["metal_parts"] = 6, ["rusty_spas12"] = 1, ["box_screws"] = 1, ["piece_of_metal"] = 2};
RECIPE.result = {["rcs_spas12"] = 1};
RECIPE.tools = {"wrench", "hammer", "allen_key"};
RECIPE.station = "workbench";
RECIPE.hidden = false;
RECIPE.flag = "E";

RECIPE:Register();