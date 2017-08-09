
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Example Recipe"; -- Name
RECIPE.uniqueID = "example"; -- Unique ID (mandatory!)
RECIPE.model = "models/props_junk/cardboard_box004a.mdl"; -- Model for the spawn icon
RECIPE.skin = 0; -- Number for the skin in the spawn icon
RECIPE.category = "Storage Blueprints"; -- Category
RECIPE.description = "Just attach the cables to the cloth..."; -- Description
RECIPE.ingredients = {["cloth"] = 2, ["cables"] = 1}; -- Ingredients (will be consumed), ["<uniqueID>"] = <amount>, separated by ','
RECIPE.result = {["bag"] = 1, ["stuff"] = {0, 1, 2}}; -- Result (will be given), ["<uniqueID>"] = <amount>, separated by ','
RECIPE.tools = {"hammer", "wrench"}; -- Tools (needed but not consumed), "<uniqueID>", separated by ','
RECIPE.station = "furnace"; -- Player has to look at it and be close, won't be consumed, "<uniqueID>"
RECIPE.hidden = true; -- Hidden recipes won't show up in the menu and can't be crafted
RECIPE.flag = "1"; -- Sets which flag is needed to see/craft this (flag is a single character (letter/number) as a string!)

RECIPE:Register();

--[[ Empty recipe
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "";
RECIPE.uniqueID = "";
RECIPE.model = "";
RECIPE.skin = ;
RECIPE.category = "";
RECIPE.description = "";
RECIPE.ingredients = {[""] = , [""] = };
RECIPE.result = {[""] = , [""] = { , }};
RECIPE.tools = {"", ""};
RECIPE.station = "";
RECIPE.hidden = false;
RECIPE.flag = "";

RECIPE:Register();
--]]