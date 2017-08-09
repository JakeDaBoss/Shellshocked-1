local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Repair: Rusty USP-Match";
RECIPE.uniqueID = "rcs_uspmatch";
RECIPE.model = "models/weapons/w_pistol.mdl";
RECIPE.category = "Weapons";
RECIPE.description = "With your knowledge, you can repair a pistol to make it work again.";
RECIPE.ingredients = {["metal_parts"] = 2, ["piece_of_metal"] = 1, ["rusty_usp"] = 1, ["box_of_needles"] = 1, ["chunk_of_plastic"] = 1};
RECIPE.result = {["rcs_uspmatch"] = 1};
RECIPE.tools = {"hammer", "wrench"};
RECIPE.station = "workbench";
RECIPE.hidden = false;
RECIPE.flag = "A";

RECIPE:Register();