--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "MRE";
ITEM.model = "models/sngration/mre.mdl";
ITEM.weight = 4.5;
ITEM.useText = "Open";
ITEM.description = "A metal container, similar to a lunch-box. Ukranian lettering is scrawled on the top and sides, it seems quite heavy.";

-- Called when a player attempts to pick up the item.
function ITEM:CanPickup(player, quickUse, itemEntity)
	if (quickUse) then
		if (!player:CanHoldWeight(self.weight)) then
			Clockwork.player:Notify(player, "You do not have enough inventory space!");
			
			return false;
		end;
	end;
end;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	if (Schema:PlayerIsCombine(player)) then
		Clockwork.player:Notify(player, "You cannot open this ration!");
		
		return false;
	elseif (player:GetFaction() == FACTION_ADMIN) then
		Clockwork.player:Notify(player, "You cannot open this ration!");
		
		return false;
	else
		Clockwork.player:GiveCash(player, 25, "ration packet");
		
		player:GiveItem(Clockwork.item:CreateInstance("citizen_supplements"), true);
		
		Clockwork.plugin:Call("PlayerUseRation", player);
	end;
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();