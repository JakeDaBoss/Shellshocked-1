local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Repair: Rusty Crossbow";
RECIPE.uniqueID = "weapon_crossbow";
RECIPE.model = "models/weapons/w_crossbow.mdl";
RECIPE.category = "Weapons";
RECIPE.description = "With your superior knowledge, you can create a makeshift crossbow that fires powerful bolts heated by a large battery.";
RECIPE.ingredients = {["rusty_crossbow"] = 1, ["wooden_parts"] = 8, ["piece_of_metal"] = 6, ["metal_bar"] = 5, ["chunk_of_plastic"] = 3, ["cloth_scraps"] = 1, ["battery"] = 1, ["box_screws"] = 5};
RECIPE.result = {["weapon_crossbow"] = 1};
RECIPE.tools = {"allen_key", "wrench", "hammer"};
RECIPE.station = "workbench";
RECIPE.hidden = false;
RECIPE.flag = "m";

RECIPE:Register();