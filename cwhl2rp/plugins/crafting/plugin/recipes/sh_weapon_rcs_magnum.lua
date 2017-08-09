local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Repair: Rusty Python";
RECIPE.uniqueID = "rcs_magnum";
RECIPE.model = "models/weapons/w_357.mdl";
RECIPE.category = "Weapons";
RECIPE.description = "With your knowledge, you can repair an aged drum pistol.";
RECIPE.ingredients = {["metal_parts"] = 2, ["box_screws"] = 1, ["piece_of_metal"] = 5, ["rusty_python"] = 1};
RECIPE.result = {["rcs_magnum"] = 1};
RECIPE.tools = {"hammer", "wrench", "allen_key"};
RECIPE.station = "workbench";
RECIPE.hidden = false;
RECIPE.flag = "E";

RECIPE:Register();