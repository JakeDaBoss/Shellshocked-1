local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Bullet Casings";
RECIPE.uniqueID = "ammo_bulletcasings";
RECIPE.model = "models/props/cs_militia/reload_bullet_tray.mdl";
RECIPE.category = "Ammunition";
RECIPE.description = "Using metal parts, casting mold and a furnace you can make bullet casings.";
RECIPE.ingredients = {["metal_parts"] = 1, ["casting_mold"] = 1};
RECIPE.result = {["bulletcasings"] = {4, 4, 5, 6}};
RECIPE.station = "furnace";
RECIPE.hidden = false;
RECIPE.flag = "A";

RECIPE:Register();