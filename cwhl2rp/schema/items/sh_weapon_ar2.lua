--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");

	ITEM.name = "F-952 Ballistic Assault Rifle";
	ITEM.useSound = "items/gift_pickup.wav";
	ITEM.cost = 400;
	ITEM.model = "models/weapons/tfa_blacklight/w_blr_ar.mdl";
	ITEM.weaponClass = "tfa_blr_ar";
	ITEM.weight = 4;
	ITEM.classes = {CLASS_EOW};
	ITEM.uniqueID = "weapon_ar2";
	ITEM.business = true;
	ITEM.description = "A military-grade assault rifle. It uses 5.56 ammunition.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-3.96, 4.95, -2.97);
ITEM:Register();