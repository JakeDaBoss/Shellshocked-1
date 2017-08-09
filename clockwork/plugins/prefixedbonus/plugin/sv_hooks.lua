
-- Prefix
local prefix = '[WF]'
local testing = false

function PLUGIN:PlayerSaveCharacterData(player, data)
	if ( data["Bonus"] ) then
		data["Bonus"] = data["Bonus"];
	end;
end;

function PLUGIN:PlayerRestoreCharacterData(player, data)
	data["Bonus"] = data["Bonus"] or "NotUsed";
end;

function PLUGIN:PostPlayerSpawn(player, lightSpawn, changeClass, firstSpawn)
	if( string.match(player:SteamName(), '['..prefix..']') )then
		
		if( testing ) then
			Clockwork.player:NotifyAll(player:SteamName().."'s prefix found.")
		end;
		
		if (player:GetCharacterData("Bonus") == "NotUsed") then
			
			if( testing ) then
				Clockwork.player:NotifyAll(player:SteamName().." is getting bonus.")
			end;
			
			player:SetCharacterData("Bonus", "Used");
			
	/*
			Here you can write all what play will takes.
			---- Example ----
	*/
			Clockwork.player:GiveCash(player, 100, "bonus");  							 --- Gives a player 100 Cash
			player:GiveItem(Clockwork.item:CreateInstance("breens_water"), true); 		 --- Gives a player 'Breens Water' item
			player:GiveItem(Clockwork.item:CreateInstance("citizen_supplements"), true); --- Gives a player 'Citizen Supplements' item
	/*		
			---- End ----
	*/	
		end;
			
	else
		if( testing ) then
			Clockwork.player:NotifyAll(player:SteamName().."'s prefix not found.")
		end;
	end;
	
	if( testing ) then
		Clockwork.player:NotifyAll("Checking "..player:SteamName().."'s bonus. ")
		Clockwork.player:NotifyAll(player:SteamName().."'s bonus is "..player:GetCharacterData("Bonus"))
	end;
end;

function PLUGIN:PlayerSetSharedVars(player, curTime)
	player:SetSharedVar("Bonus", player:GetCharacterData("Bonus") );
end;

