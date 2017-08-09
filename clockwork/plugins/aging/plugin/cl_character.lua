local PANEL = {};

-- Called when the panel is initialized.
function PANEL:Init()
	local smallTextFont = Clockwork.option:GetFont("menu_text_small");
	local minimum = tostring(math.floor(Clockwork.config:Get("minimum_age"):Get()));
	local maximum = tostring(math.floor(Clockwork.config:Get("maximum_age"):Get()));
	local factions = {};
	
	for k, v in pairs(Clockwork.faction.stored) do
		if (!v.whitelist or Clockwork.character:IsWhitelisted(v.name)) then
			if (!Clockwork.faction:HasReachedMaximum(k)) then
				factions[#factions + 1] = v.name;
			end;
		end;
	end;
	
	table.sort(factions, function(a, b)
		return a < b;
	end);
	
	self.forcedFaction = nil;
	self.info = Clockwork.character:GetCreationInfo();
	
	self.categoryList = vgui.Create("DCategoryList", self);
 	self.categoryList:SetPadding(2);
 	self.categoryList:SizeToContents();
	
	self.settingsForm = vgui.Create("DForm");
	self.settingsForm:SetName("Settings");
	self.settingsForm:SetPadding(4);

	local label = vgui.Create("cwInfoText", self);
		label:SetText("These traits define your character and cannot be changed later on.");
		label:SetInfoColor("blue");
	self.settingsForm:AddItem(label);

	--self.settingsForm:Help("NB: These traits define your character and cannot be changed later on.");
	self.age = self.settingsForm:TextEntry("Age");

	self.age.OnTextChanged = function(textEntry)
		self.info.age = textEntry:GetValue();
	end;
	
	if (#factions > 1) then
		--self.settingsForm:Help("The faction defines the overall character and can most likely be unchanged.");
		self.factionMultiChoice = self.settingsForm:ComboBox("Faction");
		
		-- Called when an option is selected.
		self.factionMultiChoice.OnSelect = function(multiChoice, index, value, data)
			for k, v in pairs(Clockwork.faction.stored) do
				if (v.name == value) then
					if (IsValid(self.genderMultiChoice)) then
						self.genderMultiChoice:Clear();
					else
						self.genderMultiChoice = self.settingsForm:ComboBox("Gender");
						self.settingsForm:Rebuild();
					end;
					
					if (v.singleGender) then
						self.genderMultiChoice:AddChoice(v.singleGender);
					else
						self.genderMultiChoice:AddChoice(GENDER_FEMALE);
						self.genderMultiChoice:AddChoice(GENDER_MALE);
					end;
					
					Clockwork.CurrentFactionSelected = {self, value};
					
					break;
				end;
			end;
		end;
	elseif (#factions == 1) then
		for k, v in pairs(Clockwork.faction.stored) do
			if (v.name == factions[1]) then
				self.genderMultiChoice = self.settingsForm:ComboBox("Gender");
				
				if (v.singleGender) then
					self.genderMultiChoice:AddChoice(v.singleGender);
				else
					self.genderMultiChoice:AddChoice(GENDER_FEMALE);
					self.genderMultiChoice:AddChoice(GENDER_MALE);
				end;
				
				Clockwork.CurrentFactionSelected = {self, v.name};
				self.forcedFaction = v.name;
				
				break;
			end;
		end;
	end;
	
	if (self.factionMultiChoice) then
		for k, v in pairs(factions) do
			self.factionMultiChoice:AddChoice(v);
		end;
	end;
	
	self.categoryList:AddItem(self.settingsForm);
end;

-- Called when the next button is pressed.
function PANEL:OnNext()
	local age = tonumber(self.info.age);
	local minimum = math.floor(Clockwork.config:Get("minimum_age"):Get());
	local maximum = math.floor(Clockwork.config:Get("maximum_age"):Get());

	if (!age or age < minimum or age > maximum) then
		Clockwork.character:SetFault("You did not choose an age or the one you have chosen is not valid!");

		return false;
	end;

	if (IsValid(self.genderMultiChoice)) then
		local faction = self.forcedFaction;
		local gender = self.genderMultiChoice:GetValue();
		
		if (!faction and self.factionMultiChoice) then
			faction = self.factionMultiChoice:GetValue();
		end;
		
		for k, v in pairs(Clockwork.faction.stored) do
			if (v.name == faction) then
				if (Clockwork.faction:IsGenderValid(faction, gender)) then
					self.info.faction = faction;
					self.info.gender = gender;
					return true;
				end;
			end;
		end;
	end;
	
	Clockwork.character:SetFault("You did not choose a faction or the one you have chosen is not valid!");
	return false;
end;

-- Called when the panel is painted.
function PANEL:Paint(w, h) end;

-- A function to make the panel fade out.
function PANEL:FadeOut(speed, Callback)
	if (self:GetAlpha() > 0 and (!self.animation or !self.animation:Active())) then
		self.animation = Derma_Anim("Fade Panel", self, function(panel, animation, delta, data)
			panel:SetAlpha(255 - (delta * 255));
			
			if (animation.Finished) then
				panel:SetVisible(false);
			end;
			
			if (animation.Finished and Callback) then
				Callback();
			end;
		end);
		
		if (self.animation) then
			self.animation:Start(speed);
		end;
		
		Clockwork.option:PlaySound("rollover");
	else
		self:SetVisible(false);
		self:SetAlpha(0);
		
		if (Callback) then
			Callback();
		end;
	end;
end;

-- A function to make the panel fade in.
function PANEL:FadeIn(speed, Callback)
	if (self:GetAlpha() == 0 and (!self.animation or !self.animation:Active())) then
		self.animation = Derma_Anim("Fade Panel", self, function(panel, animation, delta, data)
			panel:SetVisible(true);
			panel:SetAlpha(delta * 255);
			
			if (animation.Finished) then
				self.animation = nil;
			end;
			
			if (animation.Finished and Callback) then
				Callback();
			end;
		end);
		
		if (self.animation) then
			self.animation:Start(speed);
		end;
		
		Clockwork.option:PlaySound("click_release");
	else
		self:SetVisible(true);
		self:SetAlpha(255);
		
		if (Callback) then
			Callback();
		end;
	end;
end;

-- Called each frame.
function PANEL:Think()
	self:InvalidateLayout(true);
	
	if (self.animation) then
		self.animation:Run();
	end;
end;

-- Called when the layout should be performed.
function PANEL:PerformLayout(w, h)
	self.categoryList:StretchToParent(0, 0, 0, 0);
	self:SetSize(512, math.min(self.categoryList.pnlCanvas:GetTall() + 8, ScrH() * 0.6));
end;

vgui.Register("cwCharacterStageOne", PANEL, "EditablePanel");