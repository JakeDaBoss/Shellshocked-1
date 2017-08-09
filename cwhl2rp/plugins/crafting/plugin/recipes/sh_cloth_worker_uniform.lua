local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cut: Worker Uniform";
RECIPE.uniqueID = "breakdown_worker_uniform";
RECIPE.model = "models/humans/factory/male_01.mdl";
RECIPE.category = "Cloth";
RECIPE.description = "Cutting worker uniforms, you can recover cloth parts.";
RECIPE.ingredients = {["worker_uniform"] = 1};
RECIPE.result = {["cloth_scraps"] = {1, 1, 2}};
RECIPE.tools = {"sewing_kit"};
RECIPE.hidden = false;

RECIPE:Register();