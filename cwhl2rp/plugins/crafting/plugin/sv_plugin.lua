local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

Clockwork.config:Add("crafting_menu", false, true);

Clockwork.datastream:Hook("CraftRecipe", function(player, data)
	local recipe = data;
	-- MsgAll("Starting PLUGIN:PlayerCanCraft\n");
	local bPlayerCanCraft, err = PLUGIN:PlayerCanCraft(player);
	-- MsgAll("PLUGIN:PlayerCanCraft finished\n");
	if (!bPlayerCanCraft) then
		if (!err) then
			err = "You cannot craft right now (but a Dev fucked up and forgot to add in why)!";
		end;
		Clockwork.player:Notify(player, err);
		return false;
	end;
	-- MsgAll("Starting PLUGIN.recipe:PlayerCanCraftRecipe\n");
	local bCanCraftRecipe, err = PLUGIN.recipe:PlayerCanCraftRecipe(recipe, player);
	-- MsgAll("PLUGIN.recipe:PlayerCanCraft finished\n");
	if (!bCanCraftRecipe) then
		if (!err) then
			err = "You cannot craft this (but a Dev fucked up and forgot to add in why)!";
		end;
		Clockwork.player:Notify(player, err);
		return false;
	end;
	-- MsgAll("Starting PLUGIN.recipe:PlayerCraftRecipe\n");
	PLUGIN.recipe:PlayerCraftRecipe(recipe, player);
	-- MsgAll("PLUGIN.recipe:PlayerCanCraft finished\n");
end);

function PLUGIN:PlayerCanCraft(player)
	-- Check if the player has waited long enough for the next craft time
	local curTime = CurTime();
	if (player.cwNextCraftTime and curTime < player.cwNextCraftTime) then
		return false, "You need to wait "..tostring(player.cwNextCraftTime - curTime).." seconds.";
	end;

	return true;
end;

-- Called when a player's crafted item should be adjusted.
function PLUGIN:PlayerAdjustCraftRecipe(player, recipe) end;