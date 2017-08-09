local FACTION = Clockwork.faction:New("Independent Military Remnant Force");
FACTION.whitelist = true;
FACTION.useFullName = true;
FACTION.material = "";
FACTION.startChatNoise = "dust/metropolice/vo/on1.wav"; -- the sound to play when a player starts talking
FACTION.endChatNoise = "dust/metropolice/vo/off3.wav"; -- the sound to play when a player finishes talking
FACTION.radioStartChatNoise = "dust/metropolice/vo/off1.wav"; -- the sound to play if talking down radio, optional
FACTION.models = {
	female = {
		"models/kz2/helghast2.mdl",
		"models/kz2/helghast_am.mdl",
		"models/kz2/helghast_rif.mdl",
		"models/kz2/helghast_smg.mdl"
	},
	male = {
		"models/kz2/helghast2.mdl",
		"models/kz2/helghast_am.mdl",
		"models/kz2/helghast_rif.mdl",
		"models/kz2/helghast_smg.mdl"
	};
};

-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
	if (Schema:PlayerIsCombine(player)) then
		if (name) then
			local models = self.models[ string.lower( player:QueryCharacter("gender") ) ];
			
			if (models) then
				player:SetCharacterData("model", models[ math.random(#models) ], true);
				
				Clockwork.player:SetName(player, name, true);
			end;
		else
			return false, "You need to specify a name as the third argument!";
		end;
	end;
end;

FACTION_CONSCRIPT = FACTION:Register();
