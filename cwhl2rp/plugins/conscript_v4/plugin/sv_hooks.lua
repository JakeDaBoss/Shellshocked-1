local PLUGIN = PLUGIN;

-- Called when a player's weapons should be given.
function PLUGIN:PlayerGiveWeapons(player)
	if (player:GetFaction() == FACTION_CONSCRIPT) then
		Clockwork.player:GiveSpawnWeapon(player, "cw_stunstick");	
	end;
end;

-- Called when a player attempts to use a door.
function PLUGIN:PlayerCanUseDoor(player, door)
	if (player:GetFaction() == FACTION_CONSCRIPT) then
		return true;
	end;
end;

-- Some improvements here, because the Cosncripts neither spawn with a radio or a weapon
function PLUGIN:GetPlayerDefaultInventory(player, character, inventory)
	if (character.faction == FACTION_CONSCRIPT) then
		Clockwork.inventory:AddInstance(inventory, Clockwork.item:CreateInstance("handheld_radio"));
		Clockwork.inventory:AddInstance(inventory, Clockwork.item:CreateInstance("weapon_pistol"));
		for i=0,math.random(1,3) do
			Clockwork.inventory:AddInstance(inventory, Clockwork.item:CreateInstance("ammo_pistol"));
		end;
	end
end