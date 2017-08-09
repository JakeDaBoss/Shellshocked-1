
local ITEM = Clockwork.item:New();
ITEM.name = "Broken Handheld Radio";
ITEM.uniqueID = "handheld_radio_broken";
ITEM.model = "models/deadbodies/dead_male_civilian_radio.mdl";
ITEM.weight = 1;
ITEM.category = "Junk";
ITEM.business = false;
ITEM.description = "A handheld radio that has obviously seen better times.";
ITEM.spawnType = "junk";
ITEM.spawnValue = 3;

ITEM:AddData("B", -1, true);

function ITEM:OnUse(player)
	if (ITEM:GetData("B") == 0) then
		return false;
	else
		if (ITEM:GetData("B") == 1) then
			player:GiveItem(Clockwork.item:CreateInstance("c_battery_empty"), true);
			player:GiveItem(Clockwork.item:CreateInstance("c_battery_empty"), true);
		elseif (ITEM:GetData("B") == 2) then
			player:GiveItem(Clockwork.item:CreateInstance("c_battery"), true);
			player:GiveItem(Clockwork.item:CreateInstance("c_battery"), true);
		end;

		ITEM:SetData("B", 0);
	end;

	return false;
end;

function ITEM:GetDescription()
	local data = self:GetData("B")
	if (data == 0) then
		return "A handheld radio that has obviously seen better times. Doesn't seem to have batteries either.";
	elseif (data == 1 or data == 2) then
		return "A handheld radio that has obviously seen better times. It seems to have some batteries in it.";
	else
		return "A handheld radio that has obviously seen better times.";
	end;
end;
ITEM:AddQueryProxy("description", ITEM.GetDescription);

function ITEM:GetWeight()
	if (self:GetData("B") == 0) then
		return 0.6;
	else
		return 1;
	end;
end;
ITEM:AddQueryProxy("weight", ITEM.GetWeight);

function ITEM:OnEditFunctions(functions)
	if (self:GetData("B") == 0) then
		for k, v in pairs(functions) do
			if (v == self("useText")) then functions[k] = nil; end;
		end;
	end;
end;

if (SERVER) then
	function ITEM:OnInstantiated()
		if (self:GetData("B") == -1) then
			if (math.random() < 0.5) then
				ITEM:SetData("B", 0);
			elseif (math.random() < 0.95) then
				ITEM:SetData("B", 1);
			else
				ITEM:SetData("B", 2);
			end;
		end;
	end;
end;

function ITEM:OnDrop() end;

ITEM:Register();