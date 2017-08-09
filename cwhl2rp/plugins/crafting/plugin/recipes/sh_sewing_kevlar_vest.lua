local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Kevlar Vest";
RECIPE.uniqueID = "sewing_kevlar_vest";
RECIPE.model = "models/kevlarvest/kevlarlite.mdl";
RECIPE.category = "Sewing";
RECIPE.description = "Using your past knowledge, you able to fabricate an armored vest from scraps.";
RECIPE.ingredients = {["cloth_scraps"] = 3, ["armor_scraps"] = 3};
RECIPE.result = {["kevlar_vest"] = 1};
RECIPE.hidden = false;
RECIPE.flag = "S";

RECIPE:Register();