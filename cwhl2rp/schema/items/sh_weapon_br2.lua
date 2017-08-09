--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");

	ITEM.name = "H-345 Ballistic Battle Rifle";
	ITEM.useSound = "items/gift_pickup.wav";
	ITEM.cost = 400;
	ITEM.model = "models/weapons/m1a1_hemlok/w_hemlok.mdl";
	ITEM.weaponClass = "mp_weapon_g2";
	ITEM.weight = 4.5;
	ITEM.classes = {CLASS_EOW};
	ITEM.uniqueID = "weapon_br2";
	ITEM.business = true;
	ITEM.description = "A military-grade battle-rifle. It uses 7.62 ammunition.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-3.96, 4.95, -2.97);
ITEM:Register();