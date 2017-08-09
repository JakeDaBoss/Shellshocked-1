local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cut: Doctor Uniform";
RECIPE.uniqueID = "cloth_doctor_uniform";
RECIPE.model = "models/betacz/group03m/male_01.mdl";
RECIPE.category = "Cloth";
RECIPE.description = "Cutting doctor uniforms, you can acquire usable cloth.";
RECIPE.ingredients = {["doctor_uniform"] = 1};
RECIPE.result = {["cloth_scraps"] = {2, 3, 3, 4}};
RECIPE.tools = {"sewing_kit"};
RECIPE.hidden = false;

RECIPE:Register();