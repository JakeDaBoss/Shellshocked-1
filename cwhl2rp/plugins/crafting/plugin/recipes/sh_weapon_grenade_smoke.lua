local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Smoke Grenade";
RECIPE.uniqueID = "cw_smokegrenade";
RECIPE.model = "models/Items/grenadeAmmo.mdl";
RECIPE.category = "Weapons";
RECIPE.description = "Fabricate a smoke grenade using yeast. Smoke grenades emit a large grey cloud when thrown.";
RECIPE.ingredients = {["empty_grenade"] = 1, ["yeast"] = 2};
RECIPE.station = "workbench";
RECIPE.result = {["cw_smokegrenade"] = 1};
RECIPE.hidden = false;

RECIPE:Register();