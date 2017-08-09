local PLUGIN = PLUGIN;
local Clockwork = Clockwork;


local COMMAND = Clockwork.command:New("ar");
COMMAND.tip = "Ask admins for help (INCLUDE REASON!)";
COMMAND.text = "<string Text>";
COMMAND.flag = CMD_DEFAULT;
COMMAND.arguments = 1;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	if (Clockwork.player:IsAdmin(player)) then
		Clockwork.player:Notify(player,"You are an admin, use admin chat instead.");
		return;
	end;

	local curTime = CurTime();
	if (player.nextAdminHelp and player.nextAdminHelp > curTime) then
		Clockwork.player:Notify(player,"Please wait another "..math.ceil(player.nextAdminHelp - curTime).." seconds before using /ar again.");
		return;
	end;

	player.nextAdminHelp = curTime + Clockwork.config:Get("ar_request_interval"):Get();
local str = arguments[1]:lower();
	if (str == "admin to me" or str == "i need help" or str == "admin tp to me" or str == "help" or str == "to me") then
		player:Notify("You need to specify an actual reason for us to help you.");
		return;
	end;

	local listeners = {};
  for k, v in pairs(_player.GetAll()) do
  		if (v:IsUserGroup("operator") or v:IsAdmin() or v:IsSuperAdmin()) then
  				listeners[#listeners +1] = v;
  		end;
		end;


	if (#listeners == 0) then
		player:Notify("No admins are currently online, please wait until one gets on.");
	end;

	listeners[#listeners + 1] = player;

	Clockwork.chatBox:Add(listeners, player, "ar", table.concat(arguments, " "));
end;


COMMAND:Register();
