local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Flash Grenade";
RECIPE.uniqueID = "cw_flashgrenade";
RECIPE.model = "models/Items/grenadeAmmo.mdl";
RECIPE.category = "Weapons";
RECIPE.description = "By adding flashpowder to a grenade, you can create flash grenades. Flash grenades emit a bright flash in a medium area, blinding anyone within range and view.";
RECIPE.ingredients = {["empty_grenade"] = 1, ["flash_powder"] = 2};
RECIPE.station = "workbench";
RECIPE.result = {["cw_flashgrenade"] = 1};
RECIPE.hidden = false;

RECIPE:Register();