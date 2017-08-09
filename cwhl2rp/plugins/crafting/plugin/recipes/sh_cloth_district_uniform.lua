local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cut: District Uniform";
RECIPE.uniqueID = "cloth_district_uniform";
RECIPE.model = "models/humans/orange1/male_01.mdl";
RECIPE.category = "Cloth";
RECIPE.description = "Cutting district uniforms, you can acquire some cloth.";
RECIPE.ingredients = {["district_uniform"] = 1};
RECIPE.result = {["cloth_scraps"] = {2, 3, 3, 4}};
RECIPE.tools = {"sewing_kit"};
RECIPE.hidden = false;

RECIPE:Register();