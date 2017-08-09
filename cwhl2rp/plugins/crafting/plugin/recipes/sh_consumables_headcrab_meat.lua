local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cooking: Uncooked Headcrab Stew";
RECIPE.uniqueID = "consumables_headcrab_meat";
RECIPE.model = "models/bioshockinfinite/canned_soup.mdl";
RECIPE.category = "Consumables";
RECIPE.description = "Create some delicious uncooked stew based on headcrabs.";
RECIPE.ingredients = {["uncooked_headcrab_meat"] = 1, ["rusty_can"] = 1, ["water_bottle"] = 1};
RECIPE.result = {["uncooked_headcrab_stew"] = 1, ["empty_bottle"] = 1};
RECIPE.station = "stove";
RECIPE.hidden = false;

RECIPE:Register();