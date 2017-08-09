local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Repair: Rusty MP7";
RECIPE.uniqueID = "rcs_mp7";
RECIPE.model = "models/weapons/w_smg1.mdl";
RECIPE.category = "Weapons";
RECIPE.description = "With your knowledge, you can restore a broken MP7 to a functional state.";
RECIPE.ingredients = {["rusty_mp7"] = 1, ["metal_parts"] = 4, ["piece_of_metal"] = 2, ["box_screws"] = 2};
RECIPE.result = {["rcs_mp7"] = 1};
RECIPE.tools = {"hammer", "wrench", "allen_key"};
RECIPE.station = "workbench";
RECIPE.hidden = false;
RECIPE.flag = "A";

RECIPE:Register();