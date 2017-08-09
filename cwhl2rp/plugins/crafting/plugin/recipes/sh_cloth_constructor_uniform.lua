local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cut: Constructor Uniform";
RECIPE.uniqueID = "cloth_constructor_uniform";
RECIPE.model = "models/betacz/group02/male_01.mdl";
RECIPE.category = "Cloth";
RECIPE.description = "Cutting constructor uniforms, you can recover cloth parts.";
RECIPE.ingredients = {["constructor_uniform"] = 1};
RECIPE.result = {["cloth_scraps"] = {2, 3, 3, 4}};
RECIPE.tools = {"sewing_kit"};
RECIPE.hidden = false;

RECIPE:Register();