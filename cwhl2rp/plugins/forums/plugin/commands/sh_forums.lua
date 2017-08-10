local COMMAND = Clockwork.command:New("Forums");
COMMAND.tip = "View our forums!";	
COMMAND.flags = CMD_DEFAULT;

-- Thanks to NightAngel for showing me this function instead of me making my own!
function COMMAND:OnRun(player)
     player:SendLua([[gui.OpenURL("http://steamcommunity.com/groups/shellshockedww3")]]) -- Changed this to the group. This can be changed later on to an actual forum.
	 Clockwork.player:Notify(player, "Bringing you to our website now!")
end;

COMMAND:Register();
