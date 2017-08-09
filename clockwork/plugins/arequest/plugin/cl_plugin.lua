local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

Clockwork.config:AddToSystem("Admin Help Interval", "ar_request_interval", "Sets the minimum time between admin help messages.", 0, 120, 0);


Clockwork.chatBox:RegisterClass("ar", nil, function(info)
	local color = _team.GetColor(info.speaker:Team());
	Clockwork.chatBox:Add(info.filtered, info.icon, Color(225, 50, 50, 255), "[REPORT] ",
    Color(190, 90, 90), info.speaker:Name(), " (", color, info.speaker:SteamName(), "): ", info.text);
end);
