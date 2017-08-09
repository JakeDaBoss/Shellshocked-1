local ITEM = Clockwork.item:New();
ITEM.name = "Military Grade Tablet";
ITEM.useSound = "cwhlu/enter.mp3";
ITEM.model = "models/nirrti/tablet/tablet_sfm.mdl";
ITEM.weight = 1;
ITEM.useText = "Use";
ITEM.category = "Other";
ITEM.description = "A small, weathered tablet. It appears to be working, defaulted and locked to a single intra-net page.";
 
-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
        player:SendLua("gui.OpenURL('https://media.giphy.com/media/bAy8xK8qcCz0A/giphy.gif/')")
		return true;
end;

ITEM:Register();