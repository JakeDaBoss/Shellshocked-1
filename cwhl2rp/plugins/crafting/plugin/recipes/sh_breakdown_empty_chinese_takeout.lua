local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Paper: Empty Chinese Takeout";
RECIPE.uniqueID = "breakdown_empty_chinese_takeout";
RECIPE.model = "models/props_junk/garbage_takeoutcarton001a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Create some paper from an empty chinese takeout. The paper might be a bit 'cardboardy', but it'll do.";
RECIPE.ingredients = {["empty_chinese_takeout"] = 1};
RECIPE.result = {["paper"] = {1, 2}};
RECIPE.hidden = false;

RECIPE:Register();