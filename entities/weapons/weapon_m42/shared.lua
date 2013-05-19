if (CLIENT) then
	SWEP.Author = "CSE - Night Eagle"
	SWEP.Contact = ""
	SWEP.Purpose = ""
	SWEP.Instructions = ""
	SWEP.PrintName = "M4"
	SWEP.Instructions = "Hold use and right-click to change firemodes or left-click to attach silencer."
	SWEP.Slot = 2
	SWEP.SlotPos = 0
	SWEP.IconLetter = "w"

	killicon.AddFont("cse_m4","CSKillIcons",SWEP.IconLetter,Color(255,80,0,255))
end

if (SERVER) then
	AddCSLuaFile("shared.lua")
end

SWEP.Base = "weapon_cs_base2"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.ViewModel = "models/weapons/cstrike/c_rif_m4a1.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.HoldType = "ar2"

SWEP.Weight = 5
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Primary.Sound = Sound("Weapon_M4A1.Single")
SWEP.Primary.Recoil = 1.25
SWEP.Primary.Unrecoil = 8
SWEP.Primary.Damage = 15
SWEP.Primary.NumShots = 1
SWEP.Primary.Cone	 = 0.03
SWEP.Primary.ClipSize = 31
SWEP.Primary.Delay = 0.06
SWEP.Primary.DefaultClip = 31
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

-- Start of Firemode configuration

SWEP.IronSightsPos = Vector(-8, -15, 0.5)
SWEP.IronSightsAng = Vector(3.6, -4, -4)

SWEP.MultiMode = true
