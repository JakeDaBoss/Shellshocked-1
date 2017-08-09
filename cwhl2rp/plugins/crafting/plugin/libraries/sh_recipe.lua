
local Clockwork = Clockwork;
local PLUGIN = PLUGIN;

PLUGIN.recipe = Clockwork.kernel:NewLibrary("Recipe");
PLUGIN.recipe.stored = {};

--[[
	Begin defining the recipe class base for other recipe's to inherit from.
--]]

--[[ Set the __index meta function of the class. --]]
local CLASS_TABLE = {__index = CLASS_TABLE};

CLASS_TABLE.name = "Blueprint Base";
CLASS_TABLE.uniqueID = "blueprint_base";
CLASS_TABLE.skin = 0;
CLASS_TABLE.model = "models/error.mdl";
CLASS_TABLE.category = "Other";
CLASS_TABLE.description = "A recipe with no description.";

-- Called when the recipe is converted to a string.
function CLASS_TABLE:__tostring()
	return "RECIPE["..self.name.."]";
end;

--[[
	A function to override an recipe's base data. This is
	just a nicer way to set a value to go along with
	the method of querying.
--]]
function CLASS_TABLE:Override(varName, value)
	self[varName] = value;
end;

-- A function to register a new recipe.
function CLASS_TABLE:Register()
	return PLUGIN.recipe:Register(self);
end;

function CLASS_TABLE:PlayerCanCraftRecipe(player)
	return PLUGIN.recipe:PlayerCanCraftRecipe(self, player);
end;

--[[
	End defining the base recipe class.
	Begin defining the recipe utility functions.
--]]

-- A function to get all recipes.
function PLUGIN.recipe:GetAll()
	return self.stored;
end;

-- A function to get a new recipe.
function PLUGIN.recipe:New(recipe)
	local object = Clockwork.kernel:NewMetaTable(CLASS_TABLE);
	return object;
end;

-- A function to register a new recipe.
function PLUGIN.recipe:Register(recipe)
	recipe.uniqueID = string.lower(string.gsub(recipe.uniqueID or string.gsub(recipe.name, "%s", "_"), "['%.]", ""));
	self.stored[recipe.uniqueID] = recipe;
	
	if (recipe.model) then
		util.PrecacheModel(recipe.model);
		
		if (SERVER) then
			Clockwork.kernel:AddFile(recipe.model);
		end;
	end;
end;

-- A function to get an recipe by its name.
function PLUGIN.recipe:FindByID(identifier)
	if (identifier and identifier != 0 and type(identifier) != "boolean") then
		if (self.stored[identifier]) then
			return self.stored[identifier];
		end;
		
		local lowerName = string.lower(identifier);
		local recipe = nil;
		
		for k, v in pairs(self.stored) do
			local recipeName = v.name;
			
			if (string.find(string.lower(recipeName), lowerName)
			and (!recipe or string.len(recipeName) < string.len(recipe.name))) then
				recipe = v;
			end;
		end;
		
		return recipe;
	end;
end;

function PLUGIN.recipe:Initialize()
	local recipes = self:GetAll();

	for k, v in pairs(recipes) do
		if (v.OnSetup) then 
			v:OnSetup(); 
		end;
		
		Clockwork.plugin:Call("ClockworkRecipeInitialized", v);
	end;
end;

-- Called when a player attempts to craft an item.
function PLUGIN.recipe:PlayerCanCraftRecipe(recipe, player, inventory)
	-- Check if the player has all the needed flags
	if (recipe.flag and !Clockwork.player:HasFlags(player, recipe.flag)) then
		return false, "You do not have the "..recipe.flag.." flag.";
	end;

	local inventory = inventory or player:GetInventory();
	-- Check if the player has all the needed tools if there are any needed
	if (recipe.tools) then
		for k, tool in pairs(recipe.tools) do
			if (!Clockwork.inventory:HasItemByID(inventory, tool)) then
				local item = Clockwork.item:FindByID(tool);

				if (item) then
					return false, "You do not have a "..item("name")..".";
				else
					ErrorNoHalt("[Clockwork] Recipe "..recipe.name.." has an unexisting tool "..tool.."!\n");
					return false, "Recipe has unexisting tool "..tool.."!";
				end;
			end;
		end;
	end;
	-- Check for the ingredients
	if (recipe.ingredients) then
		for ingredient, amount in pairs(recipe.ingredients) do
			if (!Clockwork.inventory:HasItemByID(inventory, ingredient)) then
				local item = Clockwork.item:FindByID(ingredient);

				if (item) then
					local name = item("name");
					return false, "You do not have any "..name..".";
				else
					ErrorNoHalt("[Clockwork] Recipe "..recipe.name.." has an unexisting ingredient "..ingredient.."!\n");
					return false, "Recipe has unexisting ingredient "..ingredient.."!";
				end;
			elseif (table.Count(Clockwork.inventory:GetItemsByID(inventory, ingredient)) < amount) then
				local item = Clockwork.item:FindByID(ingredient);

				if (item) then
					local name = item("name");
					if (amount > 1) then
						name = Clockwork.kernel:Pluralize(name);
					end;
					return false, "You need at least "..tostring(amount).." "..name..".";
				else
					ErrorNoHalt("[Clockwork] Recipe "..recipe.name.." has an unexisting ingredient "..ingredient.."!\n");
					return false, "Recipe has unexisting ingredient "..ingredient.."!";
				end;
			end;
		end;
	end;
	-- Check if player is near a crafting station if needed
	if (recipe.station) then
		-- Find the entity the player is looking at
		local entity = player:GetEyeTraceNoCursor().Entity;
		local item = Clockwork.item:FindByID(recipe.station);
		local failReason = "You need to be near and looking at a "..item("name");
		
		if (IsValid(entity)) then
			if (entity:GetClass() != "cw_item") then
				return false, failReason;
			else
				local itemTable = entity:GetItemTable();
				if (!itemTable or itemTable("uniqueID") != recipe.station) then
					return false, failReason;
				end;
				if (player:GetShootPos():Distance(entity:GetPos()) > 100) then
					return false, failReason;
				end;
			end;
		else
			return false, failReason;
		end;
	end;
	
	return true;
end;

if (CLIENT) then
	function PLUGIN.recipe:GetIconInfo(recipe)
		local model = recipe.model or "models/error.mdl";
		local skin = recipe.skin;
		
		return model, skin;
	end;

	local function getMinMax(table)
		local min, max = table[1], table[1];
		for i = 2, #table do
			if (table[i] < min) then
				min = table[i];
			elseif (table[i] > max) then
				max = table[i];
			end;
		end;
		return min, max;
	end;
	
	-- A function to get a recipe's markup tooltip.
	function PLUGIN.recipe:GetMarkupToolTip(recipe)
		local informationColor = Clockwork.option:GetColor("information");

		local toolTipTitle = "["..recipe.name.."]";
		
		toolTipTitle = Clockwork.kernel:MarkupTextWithColor(toolTipTitle, informationColor);
		
		toolTipTitle = toolTipTitle.."\n"..Clockwork.config:Parse(recipe.description);

		toolTipTitle = toolTipTitle.."\n"..Clockwork.kernel:MarkupTextWithColor("[Requirements]", informationColor);

		-- Temporary value to use
		local name;
		-- Add needed tools
		if (recipe.tools) then
			for k, item in pairs(recipe.tools) do
				name = "";
				local tool = Clockwork.item:FindByID(item);

				if (tool) then
					name = tool("name");
				else
					name = item.." (item could not be found)";
				end;

				toolTipTitle = toolTipTitle.."\n-"..name;
			end;
		end;
		-- Add needed crafting station
		if (recipe.station) then
			name = "";

			local station = Clockwork.item:FindByID(recipe.station);

			if (station) then
				name = station("name");
			else
				name = recipe.station.." (item could not be found)";
			end;

			toolTipTitle = toolTipTitle.."\n-"..name;
		end;
		-- Add ingredients
		for item, amount in pairs(recipe.ingredients) do
			name = "";

			local ingredient = Clockwork.item:FindByID(item);

			if (ingredient) then
				name = ingredient("name");
			else
				name = item.." (item could not be found)";
			end;

			toolTipTitle = toolTipTitle.."\n"..amount.."x "..name;
		end;

		toolTipTitle = toolTipTitle.."\n"..Clockwork.kernel:MarkupTextWithColor("[Result]", informationColor);
		-- Add ingredients
		for item, amount in pairs(recipe.result) do
			name = "";

			local result = Clockwork.item:FindByID(item);

			if (result) then
				name = result("name");
			else
				name = item.." (item could not be found)";
			end;

			local amountText = "";
			if (type(amount) == "table") then
				local min, max = getMinMax(amount);
				amountText = min.."-"..max;
			else
				amountText = amount;
			end;

			toolTipTitle = toolTipTitle.."\n"..amountText.."x "..name;
		end;
		
		toolTipTitle = toolTipTitle.."\n"..Clockwork.kernel:MarkupTextWithColor("[Category]", informationColor);
		toolTipTitle = toolTipTitle.."\n"..recipe.category;
		
		return toolTipTitle;
	end;

	function PLUGIN.recipe:CanPlayerSeeRecipe(recipe)
		if (recipe.flag and !Clockwork.player:HasFlags(Clockwork.Client, recipe.flag)) then
			return false;
		end;
		if (recipe.hidden) then
			return false;
		end;

		return true;
	end;
else
	function PLUGIN.recipe:PlayerCraftRecipe(recipe, player)
		-- Take all the ingredients
		local item = nil
		for ingredient, amount in pairs(recipe.ingredients) do
			for i = 1, amount do
				item = player:FindItemByID(ingredient);
				if (item) then player:TakeItem(item); else break; end;
			end;
		end;
		-- Give the result
		for result, amount in pairs(recipe.result) do
			local actualAmount;
			if (type(amount) == "table") then
				actualAmount = amount[math.random(1, #amount)];
			else
				actualAmount = amount;
			end;

			for i = 1, actualAmount do
				item = Clockwork.item:CreateInstance(result);
				if (item) then player:GiveItem(item, true); else break; end;
			end;
		end;
		-- Set the player's next crafting time
		player.cwNextCraftTime = CurTime() + 2;
		Clockwork.datastream:Start(player, "CraftTime", player.cwNextCraftTime);
		-- Print log
		Clockwork.kernel:PrintLog(LOGTYPE_MINOR, player:Name().." has crafted the "..recipe.name.." recipe.");
	end;
end;

for k, v in pairs(file.Find(Clockwork.kernel:GetSchemaFolder().."/plugins/crafting/plugin/recipes/*.lua", "LUA", "namedesc")) do
	Clockwork.kernel:IncludePrefixed(Clockwork.kernel:GetSchemaFolder().."/plugins/crafting/plugin/recipes/"..v);
end;