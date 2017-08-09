local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cut: Laborer Uniform";
RECIPE.uniqueID = "cloth_laborer_uniform";
RECIPE.model = "models/betacz/group01/male_01.mdl";
RECIPE.category = "Cloth";
RECIPE.description = "Cutting labourer uniforms, you can recover cloth parts.";
RECIPE.ingredients = {["laborer_uniform"] = 1};
RECIPE.result = {["cloth_scraps"] = {2, 3, 3, 4}};
RECIPE.tools = {"sewing_kit"};
RECIPE.hidden = false;

RECIPE:Register();