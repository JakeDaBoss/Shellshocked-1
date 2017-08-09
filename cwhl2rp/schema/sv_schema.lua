--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

--[[ Clockwork.kernel:AddFile("resource/fonts/mailartrubberstamp.ttf"); This needs a different one, unless you guys were sure you wanted to do this.--]] 

Clockwork.kernel:AddDirectory("materials/models/humans/female/group01/cityadm_sheet.*");
Clockwork.kernel:AddDirectory("materials/models/humans/male/group01/cityadm_sheet.*");
Clockwork.kernel:AddDirectory("models/humans/group17/*.mdl");
Clockwork.kernel:AddDirectory("materials/models/humans/female/group01/cityadm_sheet.*");
Clockwork.kernel:AddDirectory("materials/models/deadbodies/");
Clockwork.kernel:AddDirectory("materials/models/spraycan3.*");
Clockwork.kernel:AddDirectory("materials/models/police/*.*");
Clockwork.kernel:AddDirectory("materials/models/lagmite/");
Clockwork.kernel:AddDirectory("materials/halfliferp/");
Clockwork.kernel:AddDirectory("models/lagmite/");
Clockwork.kernel:AddDirectory("models/deadbodies/");

Clockwork.config:Add("server_whitelist_identity", "");
Clockwork.config:Add("intro_text_small", "It is safer here.", true);
Clockwork.config:Add("intro_text_big", "CITY EIGHTEEN, 2016.", true);
Clockwork.config:Add("knockout_time", 60);
Clockwork.config:Add("business_cost", 160, true);
Clockwork.config:Add("permits", true, true);

Clockwork.config:Get("enable_gravgun_punt"):Set(false);
Clockwork.config:Get("default_inv_weight"):Set(6);
Clockwork.config:Get("enable_crosshair"):Set(false);
Clockwork.config:Get("disable_sprays"):Set(false);
Clockwork.config:Get("prop_cost"):Set(false);
Clockwork.config:Get("door_cost"):Set(0);

-- A function to add a human hint.
function Clockwork.hint:AddHumanHint(name, text, combine)
	Clockwork.hint:Add(name, text, function(player)
		if (player) then
			return !Schema:PlayerIsCombine(player, combine);
		end;
	end);
end;

Clockwork.hint:AddHumanHint("Life", "Your character is only human, refrain from jumping off high ledges.", false);
Clockwork.hint:AddHumanHint("Sleep", "Don't forget to sleep, your character does get tired.", false);
Clockwork.hint:AddHumanHint("Eating", "Just because you don't have to eat, it doesn't mean your character isn't hungry.", false);
Clockwork.hint:AddHumanHint("Friends", "Try to make some friends, misery loves company.", false);

Clockwork.hint:AddHumanHint("Curfew", "Curfew? Bored? Ask to be assigned a roommate.");
Clockwork.hint:AddHumanHint("Prison", "Life is hard in this world, but the punishments for offenses are far worse.");
Clockwork.hint:AddHumanHint("Rebels", "Don't chase the resistance, the Combine may group you together.");
Clockwork.hint:AddHumanHint("Talking", "The Combine don't like it when you talk, so whisper.");
Clockwork.hint:AddHumanHint("Rations", "Rations, they're bags filled with goodies. Behave.");
Clockwork.hint:AddHumanHint("IMRF", "Don't piss off the IMRF; their assault rifles can solve 750 problems per minute.");
Clockwork.hint:AddHumanHint("Minging", "Being whitelisted is a privilege - minges will be executed.");
Clockwork.hint:AddHumanHint("Insurgents", "Some Drifters have banded together; creating Insurgent factions to raid others - they are not your friends.");
Clockwork.hint:AddHumanHint("Compliance", "The IMRF are elite-armoured soldiers. Fighting them is a bad idea.");
Clockwork.hint:AddHumanHint("Respect", "When the IMRF give an order - it's best to follow it.");
Clockwork.hint:AddHumanHint("Equipment", "You can sometimes find equipment in supply caches.");
Clockwork.hint:AddHumanHint("Recruitment", "The IMRF is a tight-knit elitist organization. Joining their ranks is difficult.");
Clockwork.hint:AddHumanHint("Enemies", "There is no better friend than the IMRF - and no worse enemy, depending on your actions.");
Clockwork.hint:AddHumanHint("Neutralization", "Pick your friends and battles carefully - the IMRF will neutralize anyone they perceive as a threat.");

Clockwork.hint:Add("Admins", "Administration will be overseeing this server. Please be respectful and coherent.");
Clockwork.hint:Add("Action", "Action. Stop looking for it, wait until it comes to you.");
Clockwork.hint:Add("Grammar", "Try to speak correctly in-character, and type coherently.");
Clockwork.hint:Add("Running", "Running will decrease your fatigue - this will severely impact your ability to escape from military personnel.");
Clockwork.hint:Add("Healing", "You can heal players by using the Give command in your inventory.");
Clockwork.hint:Add("F3 Hotkey", "Press F3 while looking at a character to use a zip tie.");
Clockwork.hint:Add("F4 Hotkey", "Press F4 while looking at a tied character to search them.");
Clockwork.hint:Add("Attributes", "Whoring *(name_attributes)* is a permanant ban, we don't recommend it.");
Clockwork.hint:Add("Firefights", "When engaged in a firefight, shoot to miss to make it enjoyable.");
Clockwork.hint:Add("Metagaming", "Metagaming is when you use OOC information in-character.");
Clockwork.hint:Add("Passive RP", "If you're bored and there's no action, try some passive roleplay.");
Clockwork.hint:Add("Development", "Develop your character, give them a story to tell.");
Clockwork.hint:Add("Powergaming", "Powergaming is when you force your actions on others.");

Clockwork.datastream:Hook("EditObjectives", function(player, data)
	if (player.editObjectivesAuthorised and type(data) == "string") then
		if (Schema.combineObjectives != data) then
			Schema:AddCombineDisplayLine("Downloading recent objectives...", Color(255, 100, 255, 255));
			Schema.combineObjectives = string.sub(data, 0, 500);
			
			Clockwork.kernel:SaveSchemaData("objectives", {
				text = Schema.combineObjectives
			});
		end;
		
		player.editObjectivesAuthorised = nil;
	end;
end);

Clockwork.datastream:Hook("ObjectPhysDesc", function(player, data)
	if (type(data) == "table" and type( data[1] ) == "string") then
		if (player.objectPhysDesc == data[2]) then
			local physDesc = data[1];
			
			if (string.len(physDesc) > 80) then
				physDesc = string.sub(physDesc, 1, 80).."...";
			end;
			
			data[2]:SetNetworkedString("physDesc", physDesc);
		end;
	end;
end);

Clockwork.datastream:Hook("EditData", function(player, data)
	if (player.editDataAuthorised == data[1] and type( data[2] ) == "string") then
		data[1]:SetCharacterData( "combinedata", string.sub(data[2], 0, 500) );
		
		player.editDataAuthorised = nil;
	end;
end);

-- A function to calculate a player's scanner think.
function Schema:CalculateScannerThink(player, curTime)
	if (!self.scanners[player]) then return; end;
	
	local scanner = self.scanners[player][1];
	local marker = self.scanners[player][2];
	
	if (IsValid(scanner) and IsValid(marker)) then
		scanner:SetMaxHealth( player:GetMaxHealth() );
		
		player:SetMoveType(MOVETYPE_OBSERVER);
		player:SetHealth( math.max(scanner:Health(), 0) );
		
		if (!player.nextScannerSound or curTime >= player.nextScannerSound) then
			player.nextScannerSound = curTime + math.random(8, 48);
			
			scanner:EmitSound( self.scannerSounds[ math.random(1, #self.scannerSounds) ] );
		end;
	end;
end;

-- A function to reset a player's scanner.
function Schema:ResetPlayerScanner(player, noMessage)
	if (self.scanners[player]) then
		local scanner = self.scanners[player][1];
		local marker = self.scanners[player][2];
		
		if (IsValid(scanner)) then
			scanner:Remove();
		end;
		
		if (IsValid(marker)) then
			marker:Remove();
		end;
		
		self.scanners[player] = nil;
		
		if (!noMessage) then
			player:SetMoveType(MOVETYPE_WALK);
			player:UnSpectate();
			player:KillSilent();
		end;
	end;
end;

-- A function to make a player a scanner.
function Schema:MakePlayerScanner(player, noMessage, lightSpawn)
	self:ResetPlayerScanner(player, noMessage);
	
	local scannerClass = "npc_cscanner";
	
	if (self:IsPlayerCombineRank(player, "SYNTH")) then
		scannerClass = "npc_clawscanner";
	end;
	
	local position = player:GetShootPos();
	local uniqueID = player:UniqueID();
	local scanner = ents.Create(scannerClass);
	local marker = ents.Create("path_corner");
	
	Clockwork.entity:SetPlayer(scanner, player);
	
	scanner:SetPos( position + Vector(0, 0, 16) );
	scanner:SetAngles( player:GetAimVector():Angle() );
	scanner:SetKeyValue("targetname", "scanner_"..uniqueID);
	scanner:SetKeyValue("spawnflags", 8592);
	scanner:SetKeyValue("renderfx", 0);
	scanner:Spawn(); scanner:Activate();
	
	marker:SetKeyValue("targetname", "marker_"..uniqueID);
	marker:SetPos(position);
	marker:Spawn(); marker:Activate();
	
	if (!lightSpawn) then
		player:Flashlight(false);
		player:RunCommand("-duck");
		
		if (scannerClass == "npc_clawscanner") then
			player:SetHealth(200);
		end;
	end;
	
	player:SetArmor(0);
	player:Spectate(OBS_MODE_CHASE);
	player:StripWeapons();
	player:SetSharedVar("scanner", scanner:EntIndex());
	player:SetMoveType(MOVETYPE_OBSERVER);
	player:SpectateEntity(scanner);
	
	scanner:SetMaxHealth( player:GetMaxHealth() );
	scanner:SetHealth( player:Health() );
	scanner:Fire("SetDistanceOverride", 64, 0);
	scanner:Fire("SetFollowTarget", "marker_"..uniqueID, 0);
	
	self.scanners[player] = {scanner, marker};
	
	Clockwork.kernel:CreateTimer("scanner_sound_"..uniqueID, 0.01, 1, function()
		if (IsValid(scanner)) then
			scanner.flyLoop = CreateSound(scanner, "npc/scanner/cbot_fly_loop.wav");
			scanner.flyLoop:Play();
		end;
	end);
	
	scanner:CallOnRemove("Scanner Sound", function(scanner)
		if (scanner.flyLoop) then
			scanner.flyLoop:Stop();
		end;
	end);
end;

-- A function to add a Combine display line.
function Schema:AddCombineDisplayLine(text, color, player, exclude)
	if (player) then
		Clockwork.datastream:Start( player, "CombineDisplayLine", {text, color} );
	else
		local players = {};
		
		for k, v in ipairs( _player.GetAll() ) do
			if (self:PlayerIsCombine(v) and v != exclude) then
				players[#players + 1] = v;
			end;
		end;
		
		Clockwork.datastream:Start(players, "CombineDisplayLine", {text, color});
	end;
end;

-- A function to load the objectives.
function Schema:LoadObjectives()
	local combineObjectives = Clockwork.kernel:RestoreSchemaData("objectives");
	
	if (combineObjectives and combineObjectives.text) then
		self.combineObjectives = combineObjectives.text;
	else
		self.combineObjectives = "";
	end;
end;

-- A function to load the NPCs.
function Schema:LoadNPCs()
	local npcs = Clockwork.kernel:RestoreSchemaData("plugins/npcs/"..game.GetMap());
	
	for k, v in pairs(npcs) do
		local entity = ents.Create(v.class);
		
		if (IsValid(entity)) then
			entity:SetKeyValue("spawnflags", v.spawnFlags or 0);
			entity:SetKeyValue("additionalequipment", v.equipment or "");
			entity:SetAngles(v.angles);
			entity:SetModel(v.model);
			entity:SetPos(v.position);
			entity:Spawn();
			
			if (IsValid(entity)) then
				entity:Activate();
				
				entity:SetNetworkedString("cw_Name", v.name);
				entity:SetNetworkedString("cw_Title", v.title);
			end;
		end;
	end;
end;

-- A function to save the NPCs.
function Schema:SaveNPCs()
	local npcs = {};
	
	for k, v in pairs( ents.FindByClass("npc_*") ) do
		local name = v:GetNetworkedString("cw_Name");
		local title = v:GetNetworkedString("cw_Title");
		
		if (name != "" and title != "") then
			local keyValues = table.LowerKeyNames( v:GetKeyValues() );
			
			npcs[#npcs + 1] = {
				spawnFlags = keyValues["spawnflags"],
				equipment = keyValues["additionequipment"],
				position = v:GetPos(),
				angles = v:GetAngles(),
				model = v:GetModel(),
				title = title,
				class = v:GetClass(),
				name = name
			};
		end;
	end;
	
	Clockwork.kernel:SaveSchemaData("plugins/npcs/"..game.GetMap(), npcs);
end;

-- A function to load the Combine locks.
function Schema:LoadCombineLocks()
	local combineLocks = Clockwork.kernel:RestoreSchemaData( "plugins/locks/"..game.GetMap() );
	
	for k, v in pairs(combineLocks) do
		local entity = ents.FindInSphere(v.doorPosition, 16)[1];
		
		if (IsValid(entity)) then
			local combineLock = self:ApplyCombineLock(entity);
			
			if (combineLock) then
				Clockwork.player:GivePropertyOffline(v.key, v.uniqueID, entity);
				
				combineLock:SetLocalAngles(v.angles);
				combineLock:SetLocalPos(v.position);
				
				if (!v.locked) then
					combineLock:Unlock();
				else
					combineLock:Lock();
				end;
			end;
		end;
	end;
end;

-- A function to save the Combine locks.
function Schema:SaveCombineLocks()
	local combineLocks = {};
	
	for k, v in pairs( ents.FindByClass("cw_combinelock") ) do
		if (IsValid(v.entity)) then
			combineLocks[#combineLocks + 1] = {
				key = Clockwork.entity:QueryProperty(v, "key"),
				locked = v:IsLocked(),
				angles = v:GetLocalAngles(),
				position = v:GetLocalPos(),
				uniqueID = Clockwork.entity:QueryProperty(v, "uniqueID"),
				doorPosition = v.entity:GetPos()
			};
		end;
	end;
	
	Clockwork.kernel:SaveSchemaData("plugins/locks/"..game.GetMap(), combineLocks);
end;

-- A function to load the radios.
function Schema:LoadRadios()
	local radios = Clockwork.kernel:RestoreSchemaData( "plugins/radios/"..game.GetMap() );
	
	for k, v in pairs(radios) do
		local entity = ents.Create("cw_radio");
		
		Clockwork.player:GivePropertyOffline(v.key, v.uniqueID, entity);
		
		entity:SetAngles(v.angles);
		entity:SetPos(v.position);
		entity:Spawn();
		
		if (IsValid(entity)) then
			entity:SetFrequency(v.frequency);
			entity:SetOff(v.off);
		end;
		
		if (!v.moveable) then
			local physicsObject = entity:GetPhysicsObject();
			
			if (IsValid(physicsObject)) then
				physicsObject:EnableMotion(false);
			end;
		end;
	end;
end;

-- A function to load the ration dispensers.
function Schema:LoadRationDispensers()
	local dispensers = Clockwork.kernel:RestoreSchemaData( "plugins/dispensers/"..game.GetMap() );
	
	for k, v in pairs(dispensers) do
		local entity = ents.Create("cw_rationdispenser");
		
		entity:SetPos(v.position);
		entity:Spawn();
		
		if (IsValid(entity)) then
			entity:SetAngles(v.angles);
			
			if (!v.locked) then
				entity:Unlock();
			else
				entity:Lock();
			end;
		end;
	end;
end;

-- A function to save the ration dispensers.
function Schema:SaveRationDispensers()
	local dispensers = {};
	
	for k, v in pairs(ents.FindByClass("cw_rationdispenser")) do
		dispensers[#dispensers + 1] = {
			locked = v:IsLocked(),
			angles = v:GetAngles(),
			position = v:GetPos()
		};
	end;
	
	Clockwork.kernel:SaveSchemaData("plugins/dispensers/"..game.GetMap(), dispensers);
end;

-- A function to load the ration machines.
function Schema:LoadVendingMachines()
	local machines = Clockwork.kernel:RestoreSchemaData("plugins/machines/"..game.GetMap());
	
	for k, v in pairs(machines) do
		local entity = ents.Create("cw_vendingmachine");
		
		entity:SetPos(v.position);
		entity:Spawn();
		
		if ( IsValid(entity) ) then
			entity:SetAngles(v.angles);
			entity:SetStock(v.stock, v.defaultStock);
		end;
	end;
end;

-- A function to save the ration machines.
function Schema:SaveVendingMachines()
	local machines = {};
	
	for k, v in pairs(ents.FindByClass("cw_vendingmachine")) do
		machines[#machines + 1] = {
			stock = v:GetStock(),
			angles = v:GetAngles(),
			position = v:GetPos(),
			defaultStock = v:GetDefaultStock()
		};
	end;
	
	Clockwork.kernel:SaveSchemaData("plugins/machines/"..game.GetMap(), machines);
end;

-- A function to save the radios.
function Schema:SaveRadios()
	local radios = {};
	
	for k, v in pairs( ents.FindByClass("cw_radio") ) do
		local physicsObject = v:GetPhysicsObject();
		local moveable;
		
		if (IsValid(physicsObject)) then
			moveable = physicsObject:IsMoveable();
		end;
		
		radios[#radios + 1] = {
			off = v:IsOff(),
			key = Clockwork.entity:QueryProperty(v, "key"),
			angles = v:GetAngles(),
			moveable = moveable,
			uniqueID = Clockwork.entity:QueryProperty(v, "uniqueID"),
			position = v:GetPos(),
			frequency = v:GetFrequency()
		};
	end;
	
	Clockwork.kernel:SaveSchemaData("plugins/radios/"..game.GetMap(), radios);
end;

-- A function to say a message as a request.
function Schema:SayRequest(player, text)
	local isCitizen = (player:GetFaction() == FACTION_CITIZEN);
	local listeners = { request = {}, eavesdrop = {} };
	
	for k, v in ipairs( _player.GetAll() ) do
		if (v:HasInitialized()) then
			if (v:GetFaction() == FACTION_CITIZEN and isCitizen and player != v) then
				if (v:GetShootPos():Distance( player:GetShootPos() ) <= Clockwork.config:Get("talk_radius"):Get()) then
					listeners.eavesdrop[v] = v;
				end;
			else
				local isCityAdmin = (v:GetFaction() == FACTION_ADMIN);
				local isCombine = self:PlayerIsCombine(v);
				
				if (v:HasItemByID("request_device") or isCombine or isCityAdmin) then
					listeners.request[v] = v;
				end;
			end;
		end;
	end;
	

	self:AddCombineDisplayLine("Downloading request packet...");
	

	local info = Clockwork.chatBox:Add(listeners.request, player, "request", text);
	
	if (info and IsValid(info.speaker)) then
		Clockwork.chatBox:Add(listeners.eavesdrop, info.speaker, "request_eavesdrop", info.text);
	end;
end;

-- A function to get a player's location.
function Schema:PlayerGetLocation(player)
	local areaNames = Clockwork.plugin:FindByID("Area Names");
	local closest;
	
	if (areaNames) then
		for k, v in pairs(areaNames.areaNames) do
			if (Clockwork.entity:IsInBox(player, v.minimum, v.maximum)) then
				if (string.sub(string.lower(v.name), 1, 4) == "the ") then
					return string.sub(v.name, 5);
				else
					return v.name;
				end;
			else
				local distance = player:GetShootPos():Distance(v.minimum);
				
				if (!closest or distance < closest[1]) then
					closest = {distance, v.name};
				end;
			end;
		end;
		
		if (!completed) then
			if (closest) then
				if (string.sub(string.lower( closest[2] ), 1, 4) == "the ") then
					return string.sub(closest[2], 5);
				else
					return closest[2];
				end;
			end;
		end;
	end;
	
	return "unknown location";
end;

-- A function to say a message as a broadcast.
function Schema:SayBroadcast(player, text)
	Clockwork.chatBox:Add(nil, player, "broadcast", text);
end;

-- A function to say a message as a dispatch.
function Schema:SayDispatch(player, text)
	Clockwork.chatBox:Add(nil, player, "dispatch", text);
end;

-- A function to check if a player is Combine.
function Schema:PlayerIsCombine(player, bHuman)
	if (IsValid(player) and player:GetCharacter()) then
		local faction = player:GetFaction();
		
		if (self:IsCombineFaction(faction)) then
			if (bHuman) then
				if (faction == FACTION_MPF) then
					return true;
				end;
			elseif (bHuman == false) then
				if (faction == FACTION_MPF) then
					return false;
				else
					return true;
				end;
			else
				return true;
			end;
		end;
	end;
end;

-- A function to apply a Combine lock.
function Schema:ApplyCombineLock(entity, position, angles)
	local combineLock = ents.Create("cw_combinelock");
	
	combineLock:SetParent(entity);
	combineLock:SetDoor(entity);
	
	if (position) then
		if (type(position) == "table") then
			combineLock:SetLocalPos( Vector(-1.0313, 43.7188, -1.2258) );
			combineLock:SetPos( combineLock:GetPos() + (position.HitNormal * 4) );
		else
			combineLock:SetPos(position);
		end;
	end;
	
	if (angles) then
		combineLock:SetAngles(angles);
	end;
	
	combineLock:Spawn();
	
	if (IsValid(combineLock)) then
		return combineLock;
	end;
end;

-- A function to make a player wear clothes.
function Schema:PlayerWearClothes(player, itemTable, noMessage)
	local clothes = player:GetCharacterData("clothes");
	
	if (itemTable) then
		local model = Clockwork.class:GetAppropriateModel(player:Team(), player, true);
		
		if (!model) then
			itemTable:OnChangeClothes(player, true);
			
			player:SetCharacterData("clothes", itemTable.index);
			player:SetSharedVar("clothes", itemTable.index);
		end;
	else
		itemTable = Clockwork.item:FindByID(clothes);
		
		if (itemTable) then
			itemTable:OnChangeClothes(player, false);
			
			player:SetCharacterData("clothes", nil);
			player:SetSharedVar("clothes", 0);
		end;
	end;
end;

-- A function to get a player's heal amount.
function Schema:GetHealAmount(player, scale)
	local medical = Clockwork.attributes:Fraction(player, ATB_MEDICAL, 35);
	local healAmount = (15 + medical) * (scale or 1);
	
	return healAmount;
end;

-- A function to get a player's dexterity time.
function Schema:GetDexterityTime(player)
	return 7 - Clockwork.attributes:Fraction(player, ATB_DEXTERITY, 5, 5);
end;

-- A function to bust down a door.
function Schema:BustDownDoor(player, door, force)
	door.bustedDown = true;
	
	door:SetNotSolid(true);
	door:DrawShadow(false);
	door:SetNoDraw(true);
	door:EmitSound("physics/wood/wood_box_impact_hard3.wav");
	door:Fire("Unlock", "", 0);
	
	if (IsValid(door.combineLock)) then
		door.combineLock:Explode();
		door.combineLock:Remove();
	end;
	
	if (IsValid(door.breach)) then
		door.breach:BreachEntity();
	end;
	
	local fakeDoor = ents.Create("prop_physics");
	
	fakeDoor:SetCollisionGroup(COLLISION_GROUP_WORLD);
	fakeDoor:SetAngles( door:GetAngles() );
	fakeDoor:SetModel( door:GetModel() );
	fakeDoor:SetSkin( door:GetSkin() );
	fakeDoor:SetPos( door:GetPos() );
	fakeDoor:Spawn();
	
	local physicsObject = fakeDoor:GetPhysicsObject();
	
	if (IsValid(physicsObject)) then
		if (!force) then
			if (IsValid(player)) then
				physicsObject:ApplyForceCenter( (door:GetPos() - player:GetPos() ):GetNormal() * 10000 );
			end;
		else
			physicsObject:ApplyForceCenter(force);
		end;
	end;
	
	Clockwork.entity:Decay(fakeDoor, 300);
	
	Clockwork.kernel:CreateTimer("reset_door_"..door:EntIndex(), 300, 1, function()
		if (IsValid(door)) then
			door.bustedDown = nil;
			door:SetNotSolid(false);
			door:DrawShadow(true);
			door:SetNoDraw(false);
		end;
	end);
end;

-- A function to permanently kill a player.
function Schema:PermaKillPlayer(player, ragdoll)
	if (player:Alive()) then
		player:Kill(); ragdoll = player:GetRagdollEntity();
	end;
	
	local inventory = player:GetInventory();
	local cash = player:GetCash();
	local info = {};
	
	if (!player:GetCharacterData("permakilled")) then
		info.inventory = inventory;
		info.cash = cash;
		
		if (!IsValid(ragdoll)) then
			info.entity = ents.Create("cw_belongings");
		end;
		
		Clockwork.plugin:Call("PlayerAdjustPermaKillInfo", player, info);
		
		for k, v in pairs(info.inventory) do
			local itemTable = Clockwork.item:FindByID(k);
			
			if (itemTable and itemTable.allowStorage == false) then
				info.inventory[k] = nil;
			end;
		end;
		
		player:SetCharacterData("permakilled", true);
		player:SetCharacterData("inventory", {}, true);
		player:SetCharacterData("cash", 0, true);
		
		if (!IsValid(ragdoll)) then
			if (table.Count(info.inventory) > 0 or info.cash > 0) then
				info.entity:SetData(info.inventory, info.cash);
				info.entity:SetPos( player:GetPos() + Vector(0, 0, 48) );
				info.entity:Spawn();
			else
				info.entity:Remove();
			end;
		else
			ragdoll.areBelongings = true;
			ragdoll.inventory = info.inventory;
			ragdoll.cash = info.cash;
		end;
		
		Clockwork.player:SaveCharacter(player);
	end;
end;

-- A function to tie or untie a player.
function Schema:TiePlayer(player, isTied, reset, combine)
	if (isTied) then
		if (combine) then
			player:SetSharedVar("tied", 2);
		else
			player:SetSharedVar("tied", 1);
		end;
	else
		player:SetSharedVar("tied", 0);
	end;
	
	if (isTied) then
		Clockwork.player:DropWeapons(player);
		Clockwork.kernel:PrintLog(LOGTYPE_GENERIC, player:Name().." has been tied.");
		
		player:Flashlight(false);
		player:StripWeapons();
	elseif (!reset) then
		if (player:Alive() and !player:IsRagdolled()) then 
			Clockwork.player:LightSpawn(player, true, true);
		end;
		
		Clockwork.kernel:PrintLog(LOGTYPE_GENERIC, player:Name().." has been untied.");
	end;
end;