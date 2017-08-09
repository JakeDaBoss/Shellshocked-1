--[[
	© 2013 CloudSixteen.com do not share, redistribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

Schema.voices = Clockwork.kernel:NewLibrary("Voices");
Schema.voices.stored = {
	normalVoices = {},
	dispatchVoices = {}
};

-- A function to add a voice.
function Schema.voices:Add(faction, command, phrase, sound, female, menu)
	self.stored.normalVoices[#self.stored.normalVoices + 1] = {
		command = command,
		faction = faction,
		phrase = phrase,
		female = female,
		sound = sound,
		menu = menu
	};
end;

-- A function to add a dispatch voice.
function Schema.voices:AddDispatch(command, phrase, sound)
	self.stored.dispatchVoices[#self.stored.dispatchVoices + 1] = {
		command = command,
		phrase = phrase,
		sound = sound
	};
end;
--[[
Schema.voices:AddDispatch("AntiCitizen", "Attention ground units. Anticitizen reported in this community. Code: LOCK, CAUTERIZE, STABILIZE.", "npc/overwatch/cityvoice/f_anticitizenreport_spkr.wav");
Schema.voices:AddDispatch("AntiCivil", "Protection team alert. Evidence of anticivil activity in this community. Code: ASSEMBLE, PLAN, CONTAIN.", "npc/overwatch/cityvoice/f_anticivilevidence_3_spkr.wav");
Schema.voices:AddDispatch("Person Interest", "Attention please. Unidentified person of interest confirm your civil status with local protection team immediately.", "npc/overwatch/cityvoice/f_confirmcivilstatus_1_spkr.wav");
Schema.voices:AddDispatch("Citizen Inaction", "Citizen reminder. Inaction is conspiracy. Report counter behaviour to a Civil Protection team immediately.", "npc/overwatch/cityvoice/f_innactionisconspiracy_spkr.wav");
Schema.voices:AddDispatch("Unrest Structure", "Alert community ground protection units, local unrest structure detected. ASSEMBLE, ADMINISTER, PACIFY.", "npc/overwatch/cityvoice/f_localunrest_spkr.wav");
Schema.voices:AddDispatch("Status Evasion", "Attention protection team. Status evasion in progress in this community. RESPOND, ISOLATE, ENQUIRE.", "npc/overwatch/cityvoice/f_protectionresponse_1_spkr.wav");
Schema.voices:AddDispatch("Lockdown", "Attention all ground protection teams. Judgment waiver now in effect. Capital prosecution is discretionary.", "npc/overwatch/cityvoice/f_protectionresponse_5_spkr.wav");
Schema.voices:AddDispatch("Rations Deducted", "Attention occupants. Your block is now charged with permissive inactive cohesion. Five ration units deducted.", "npc/overwatch/cityvoice/f_rationunitsdeduct_3_spkr.wav");
Schema.voices:AddDispatch("Inspection", "Citizen notice. Priority identification check in progress. Please assemble in your designated inspection positions.", "npc/overwatch/cityvoice/f_trainstation_assemble_spkr.wav");
Schema.voices:AddDispatch("Inspection 2", "Attention please. All citizens in local residential block, assume your inspection positions.", "npc/overwatch/cityvoice/f_trainstation_assumepositions_spkr.wav");
Schema.voices:AddDispatch("Miscount Detected", "Attention resident. Miscount detected in your block. Cooperation with your Civil Protection team permit full ration reward.", "npc/overwatch/cityvoice/f_trainstation_cooperation_spkr.wav");
Schema.voices:AddDispatch("Infection", "Attention resident. This block contains potential civil infection. INFORM, COOPERATE, ASSEMBLE.", "npc/overwatch/cityvoice/f_trainstation_inform_spkr.wav");
Schema.voices:AddDispatch("Relocation", "Citizen notice. Failure to cooperate will result in permanent offworld relocation.", "npc/overwatch/cityvoice/f_trainstation_offworldrelocation_spkr.wav");
Schema.voices:AddDispatch("Unrest Code", "Attention community. Unrest procedure code is now in effect. INOCULATE, SHIELD, PACIFY. Code: PRESSURE, SWORD, STERILIZE.", "npc/overwatch/cityvoice/f_unrestprocedure1_spkr.wav");
Schema.voices:AddDispatch("Evasion", "Attention please. Evasion behaviour consistent with malcompliant defendant. Ground protection team, alert. Code: ISOLATE, EXPOSE, ADMINISTER.", "npc/overwatch/cityvoice/f_evasionbehavior_2_spkr.wav");
Schema.voices:AddDispatch("Individual", "Individual. You are charged with social endangerment, level one. Protection unit, prosecution code: DUTY, SWORD, MIDNIGHT.", "npc/overwatch/cityvoice/f_sociolevel1_4_spkr.wav");
Schema.voices:AddDispatch("Autonomous", "Attention all ground protection teams. Autonomous judgement is now in effect, sentencing is now discretionary. Code: AMPUTATE, ZERO, CONFIRM.", "npc/overwatch/cityvoice/f_protectionresponse_4_spkr.wav");
Schema.voices:AddDispatch("Citizenship", "Individual. You are convicted of multi anticivil violations. Implicit citizenship revoked. Status: MALIGNANT.", "npc/overwatch/cityvoice/f_citizenshiprevoked_6_spkr.wav");
Schema.voices:AddDispatch("Malcompliance", "Individual. You are charged with capital malcompliance, anticitizen status approved.", "npc/overwatch/cityvoice/f_capitalmalcompliance_spkr.wav");
Schema.voices:AddDispatch("Exogen", "Overwatch acknowledges critical exogen breach, AirWatch augmentation force dispatched and inbound. Hold for reinforcements.", "npc/overwatch/cityvoice/fprison_airwatchdispatched.wav");
Schema.voices:AddDispatch("Failure", "Attention ground units. Mission failure will result in permanent offworld assignment. Code reminder: SACRIFICE, COAGULATE, PLAN.", "npc/overwatch/cityvoice/fprison_missionfailurereminder.wav");

These are unnecessary. Pending removal.
--]]
Schema.voices:Add("IMRF", "affirmative", "Affirmative.", "hecu_vo/hgrunt_affirmative.mp3");
Schema.voices:Add("IMRF", "that all you got", "Is that all you got?", "hecu_vo/hgrunt_allyougot.mp3");
Schema.voices:Add("IMRF", "area clear", "Area clear.", "hecu_vo/hgrunt_areaclear.mp3");
Schema.voices:Add("IMRF", "come on", "Come on.", "hecu_vo/hgrunt_comeon.mp3");
Schema.voices:Add("IMRF", "contact", "Contact!", "hecu_vo/hgrunt_contact.mp3");
Schema.voices:Add("IMRF", "copy that", "Copy that.", "hecu_vo/hgrunt_copythat.mp3");
Schema.voices:Add("IMRF", "sign on", "I didn't sign on for this shit.", "hecu_vo/hgrunt_didntsignon.mp3");
Schema.voices:Add("IMRF", "dont care", "Tsk. Don't care.", "hecu_vo/hgrunt_dontcare.mp3");
Schema.voices:Add("IMRF", "fallback", "Fall back!", "hecu_vo/hgrunt_fallback.mp3");
Schema.voices:Add("IMRF", "get away", "Get away from him!", "hecu_vo/hgrunt_getaway.mp3");
Schema.voices:Add("IMRF", "get him", "Get him!", "hecu_vo/hgrunt_gethim.mp3");
Schema.voices:Add("IMRF", "DIE 1", "Guagh!", "hecu_vo/hgrunt_gitfukd.mp3");
Schema.voices:Add("IMRF", "give me a hand", "Alright, c'mon. Gimmie a hand here.", "hecu_vo/hgrunt_givemeahand.mp3");
Schema.voices:Add("IMRF", "god damn", "God damn!", "hecu_vo/hgrunt_goddamn.mp3");
Schema.voices:Add("IMRF", "cover me", "Cover me, I'm going in.", "hecu_vo/hgrunt_goingin.mp3");
Schema.voices:Add("IMRF", "you got nothing", "You got nothing!", "hecu_vo/hgrunt_gotnothing.mp3");
Schema.voices:Add("IMRF", "grenade", "Grenade!", "hecu_vo/hgrunt_grenade.mp3");
Schema.voices:Add("IMRF", "sigh", "Ugh..", "hecu_vo/hgrunt_grunt.mp3");
Schema.voices:Add("IMRF", "heads up", "Heads up!", "hecu_vo/hgrunt_headsup.mp3");
Schema.voices:Add("IMRF", "HE WILL PAY", "He will definitely pay.", "hecu_vo/hgrunt_hewillpay.mp3");
Schema.voices:Add("IMRF", "hey", "Hey!", "hecu_vo/hgrunt_hey.mp3");
Schema.voices:Add("IMRF", "asshole", "Hey, asshole!", "hecu_vo/hgrunt_heyashole.mp3");
Schema.voices:Add("IMRF", "hold this position", "Hold this position.", "hecu_vo/hgrunt_holdposition.mp3");
Schema.voices:Add("IMRF", "holy shit", "Holy shit!", "hecu_vo/hgrunt_holyshit.mp3");
Schema.voices:Add("IMRF", "how we doing", "How we doing?", "hecu_vo/hgrunt_howwedoing.mp3");
Schema.voices:Add("IMRF", "im hit", "Urgh, dammit. I'm hit!", "hecu_vo/hgrunt_imhit.mp3");
Schema.voices:Add("IMRF", "im hungry", "Man, I'm hungry. When do we eat?", "hecu_vo/hgrunt_imhungry.mp3");
Schema.voices:Add("IMRF", "jesus christ", "Jesus christ!", "hecu_vo/hgrunt_jesuschrist.mp3");
Schema.voices:Add("IMRF", "kick your ass", "We're gonna kick your ass!", "hecu_vo/hgrunt_kickass.mp3");
Schema.voices:Add("IMRF", "kill him", "Kill that sonofabitch!", "hecu_vo/hgrunt_killhim.mp3");
Schema.voices:Add("IMRF", "haha", "Haha.", "hecu_vo/hgrunt_laugh.mp3");
Schema.voices:Add("IMRF", "messed up", "This is messed up, man.", "hecu_vo/hgrunt_messedupman.mp3");
Schema.voices:Add("IMRF", "move", "Move!", "hecu_vo/hgrunt_move.mp3");
Schema.voices:Add("IMRF", "no no no", "No no no no no!!!", "hecu_vo/hgrunt_nonono.mp3");
Schema.voices:Add("IMRF", "now", "Now!", "hecu_vo/hgrunt_now.mp3"); 
Schema.voices:Add("IMRF", "fire 1", "Augh. Ahh. Aagh. Yaaah. Aaaaaaah!!!", "hecu_vo/hgrunt_onfire1.mp3");
Schema.voices:Add("IMRF", "fire 2", "Ooahh. Ahh. Aagh. Aaaaaagh!!!", "hecu_vo/hgrunt_onfire2.mp3");
Schema.voices:Add("IMRF", "fire 3", "Aaah. Aaagh. Aaaaaahh. HELP ME!!!", "hecu_vo/hgrunt_onfire3.mp3");
Schema.voices:Add("IMRF", "pain 1", "Oww!", "hecu_vo/hgrunt_pain1.mp3");
Schema.voices:Add("IMRF", "pain 2", "Auuh!", "hecu_vo/hgrunt_pain2.mp3");
Schema.voices:Add("IMRF", "pain 3", "Agh!", "hecu_vo/hgrunt_pain3.mp3");
Schema.voices:Add("IMRF", "pain 4", "Ooer", "hecu_vo/hgrunt_pain4.mp3");
Schema.voices:Add("IMRF", "reinforcements", "I feel like we need more guys here.", "hecu_vo/hgrunt_reinforcements.mp3");
Schema.voices:Add("IMRF", "roger that", "Uh roger that.", "hecu_vo/hgrunt_rogerthat.mp3");
Schema.voices:Add("IMRF", "run", "RUN GODAMMIT!", "hecu_vo/hgrunt_run.mp3");
Schema.voices:Add("IMRF", "shit1", "Shit!", "hecu_vo/hgrunt_shit.mp3");
Schema.voices:Add("IMRF", "shit2", "Shit.", "hecu_vo/hgrunt_shit_calm.mp3");
Schema.voices:Add("IMRF", "sitrep", "Gimmie a sitrep.", "hecu_vo/hgrunt_sitrep.mp3");
Schema.voices:Add("IMRF", "stay alert", "Stay alert, gentlemen.", "hecu_vo/hgrunt_stayalert.mp3");
Schema.voices:Add("IMRF", "take cover", "Take cover!", "hecu_vo/hgrunt_takecover.mp3");
Schema.voices:Add("IMRF", "we got him", "Yeah. We got him.", "hecu_vo/hgrunt_wegothim.mp3");
Schema.voices:Add("IMRF", "what civvies doing", "What do you think these civvies are even doing here..?", "hecu_vo/hgrunt_whatcivviesdoing.mp3");
Schema.voices:Add("IMRF", "what for", "What the hell for?", "hecu_vo/hgrunt_whatfor.mp3");
Schema.voices:Add("IMRF", "status", "What's your status?", "hecu_vo/hgrunt_whatsstatus.mp3");
Schema.voices:Add("IMRF", "yeah", "Yeah.", "hecu_vo/hgrunt_yeah.mp3");
Schema.voices:Add("IMRF", "yes", "Yeah.", "hecu_vo/hgrunt_yeah.mp3");

if (CLIENT) then
	table.sort(Schema.voices.stored.normalVoices, function(a, b) return a.command < b.command; end);
	table.sort(Schema.voices.stored.dispatchVoices, function(a, b) return a.command < b.command; end);

	for k, v in pairs(Schema.voices.stored.dispatchVoices) do
		Clockwork.directory:AddCode("Combine Dispatcher", [[
			<div class="auraInfoTitle">]]..string.upper(v.command)..[[</div>
			<div class="auraInfoText">]]..v.phrase..[[</div>
		]], true);
	end;

	for k, v in pairs(Schema.voices.stored.normalVoices) do
		Clockwork.directory:AddCode("Civil Protection", [[
			<div class="auraInfoTitle">]]..string.upper(v.command)..[[</div>
			<div class="auraInfoText">]]..v.phrase..[[</div>
		]], true);
	end;
end;