local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cut: Sector Uniform";
RECIPE.uniqueID = "cloth_sector_uniform";
RECIPE.model = "models/betacz/group03/male_01.mdl";
RECIPE.category = "Cloth";
RECIPE.description = "Cutting sector uniforms, you can recover usable cloth parts.";
RECIPE.ingredients = {["sector_uniform"] = 1};
RECIPE.result = {["cloth_scraps"] = {2, 3, 3, 4}};
RECIPE.tools = {"sewing_kit"};
RECIPE.hidden = false;

RECIPE:Register();