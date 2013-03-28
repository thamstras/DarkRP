GM.Version = "2.4.3"
GM.Name = "Dark RP"
GM.Author = "By Rickster, Updated: Pcwizdan, Sibre, philxyz, [GNC] Matt, Chrome Bolt, FPtje Falco, Eusion, Drakehawke"

CUR = "$"

-- Checking if counterstrike is installed correctly
if table.Count(file.Find("*", "cstrike")) == 0 then
	timer.Create("TheresNoCSS", 10, 0, function()
		for k,v in pairs(player.GetAll()) do
			v:ChatPrint("Counter Strike: Source is incorrectly installed!")
			v:ChatPrint("You need it for DarkRP to work!")
			print("Counter Strike: Source is incorrectly installed!\nYou need it for DarkRP to work!")
		end
	end)
end

-- RP Name Overrides

local meta = FindMetaTable("Player")
meta.SteamName = meta.SteamName or meta.Name
meta.Name = function(self)
	if not IsValid(self) then return "" end
	if GAMEMODE.Config.allowrpnames then
		self.DarkRPVars = self.DarkRPVars or {}
		return self.DarkRPVars.rpname and tostring(self.DarkRPVars.rpname) or self:SteamName()
	else
		return self:SteamName()
	end
end
meta.Nick = meta.Name
meta.GetName = meta.Name
-- End

DeriveGamemode("sandbox")

util.AddNetworkString("DarkRP_InitializeVars")
util.AddNetworkString("DarkRP_DoorData")
util.AddNetworkString("FAdmin_retrievebans")
util.AddNetworkString("FADMIN_SendGroups")
util.AddNetworkString("DarkRP_keypadData")

-- Falco's prop protection
local BlockedModelsExist = sql.QueryValue("SELECT COUNT(*) FROM FPP_BLOCKEDMODELS;") ~= false
if not BlockedModelsExist then
	sql.Query("CREATE TABLE IF NOT EXISTS FPP_BLOCKEDMODELS('model' TEXT NOT NULL PRIMARY KEY);")
	include("fpp/FPP_DefaultBlockedModels.lua") -- Load the default blocked models
end
AddCSLuaFile("fpp/sh_CPPI.lua")
AddCSLuaFile("fpp/sh_settings.lua")
AddCSLuaFile("fpp/client/FPP_Menu.lua")
AddCSLuaFile("fpp/client/FPP_HUD.lua")
AddCSLuaFile("fpp/client/FPP_Buddies.lua")
AddCSLuaFile("shared/fadmin_darkrp.lua")

include("fpp/sh_settings.lua")
include("fpp/sh_CPPI.lua")
include("fpp/server/FPP_Settings.lua")
include("fpp/server/FPP_Core.lua")
include("fpp/server/FPP_Antispam.lua")

AddCSLuaFile("addentities.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("ammotypes.lua")
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("config.lua")

AddCSLuaFile("client/DRPDermaSkin.lua")
AddCSLuaFile("client/help.lua")
AddCSLuaFile("client/helpvgui.lua")
AddCSLuaFile("client/hud.lua")
AddCSLuaFile("client/showteamtabs.lua")
AddCSLuaFile("client/vgui.lua")

AddCSLuaFile("shared/animations.lua")
AddCSLuaFile("shared/commands.lua")
AddCSLuaFile("shared/entity.lua")
AddCSLuaFile("shared/language.lua")
AddCSLuaFile("shared/MakeThings.lua")
AddCSLuaFile("shared/Workarounds.lua")

-- Earthquake Mod addon
resource.AddFile("sound/earthquake.mp3")
util.PrecacheSound("earthquake.mp3")

resource.AddFile("materials/darkrp/DarkRPSkin.png")

DB = DB or {}
GM.Config = GM.Config or {}
GM.NoLicense = GM.NoLicense or {}

-- sv_alltalk must be 0
-- Note, everyone will STILL hear everyone UNLESS rp_voiceradius is 1!!!
-- This will fix the rp_voiceradius not working
game.ConsoleCommand("sv_alltalk 0\n")

include("_MySQL.lua")
include("config.lua")
include("licenseweapons.lua")

include("server/chat.lua")
include("server/admincc.lua")

include("shared/animations.lua")
include("shared/commands.lua")
include("shared/entity.lua")

include("shared/language.lua")
include("shared/MakeThings.lua")
include("shared/Workarounds.lua")

include("shared.lua")
include("addentities.lua")
include("ammotypes.lua")

include("server/data.lua")
include("server/gamemode_functions.lua")
include("server/main.lua")
include("server/player.lua")
include("server/questions.lua")
include("server/util.lua")
include("server/votes.lua")


include("shared/fadmin_darkrp.lua")

if not RP_MySQLConfig or not RP_MySQLConfig.EnableMySQL then
	FPP.Init()
end

/*---------------------------------------------------------------------------
Loading modules
---------------------------------------------------------------------------*/
local fol = GM.FolderName.."/gamemode/modules/"
local files, folders = file.Find(fol .. "*", "LUA")
for k,v in pairs(files) do
	include(fol .. v)
end

for _, folder in SortedPairs(folders, true) do
	if folder ~= "." and folder ~= ".." then
		for _, File in SortedPairs(file.Find(fol .. folder .."/sh_*.lua", "LUA"), true) do
			AddCSLuaFile(fol..folder .. "/" ..File)
			include(fol.. folder .. "/" ..File)
		end

		for _, File in SortedPairs(file.Find(fol .. folder .."/sv_*.lua", "LUA"), true) do
			include(fol.. folder .. "/" ..File)
		end

		for _, File in SortedPairs(file.Find(fol .. folder .."/cl_*.lua", "LUA"), true) do
			AddCSLuaFile(fol.. folder .. "/" ..File)
		end
	end
end

local function GetAvailableVehicles(ply)
	if not ply:IsAdmin() then return end
	ServerLog("Available vehicles for custom vehicles:" .. "\n")
	print("Available vehicles for custom vehicles:")
	for k,v in pairs(list.Get("Vehicles")) do
		ServerLog("\""..k.."\"" .. "\n")
		print("\""..k.."\"")
	end
end
concommand.Add("rp_getvehicles_sv", GetAvailableVehicles)

/*---------------------------------------------------------------------------
DarkRP blocked entities
---------------------------------------------------------------------------*/
local blockTypes = {"Physgun1", "Spawning1", "Toolgun1"}
FPP.AddDefaultBlocked(blockTypes, "chatindicator")
FPP.AddDefaultBlocked(blockTypes, "darkrp_cheque")
FPP.AddDefaultBlocked(blockTypes, "darkp_console")
FPP.AddDefaultBlocked(blockTypes, "drug")
FPP.AddDefaultBlocked(blockTypes, "drug_lab")
FPP.AddDefaultBlocked(blockTypes, "fadmin_jail")
FPP.AddDefaultBlocked(blockTypes, "food")
FPP.AddDefaultBlocked(blockTypes, "gunlab")
FPP.AddDefaultBlocked(blockTypes, "letter")
FPP.AddDefaultBlocked(blockTypes, "meteor")
FPP.AddDefaultBlocked(blockTypes, "spawned_food")
FPP.AddDefaultBlocked(blockTypes, "spawned_money")
FPP.AddDefaultBlocked(blockTypes, "spawned_shipment")
FPP.AddDefaultBlocked(blockTypes, "spawned_weapon")

FPP.AddDefaultBlocked("Spawning1", "darkrp_laws")


/*---------------------------------------------------------------------------
Registering numpad data
---------------------------------------------------------------------------*/
local oldNumpadUp = numpad.OnUp
local oldNumpadDown = numpad.OnDown

function numpad.OnUp(ply, key, name, ent, ...)
	numpad.OnUpItems = numpad.OnUpItems or {}
	table.insert(numpad.OnUpItems, {ply = ply, key = key, name = name, ent = ent, arg = {...}})

	return oldNumpadUp(ply, key, name, ent, ...)
end

function numpad.OnDown(ply, key, name, ent, ...)
	numpad.OnDownItems = numpad.OnDownItems or {}
	table.insert(numpad.OnDownItems, {ply = ply, key = key, name = name, ent = ent, arg = {...}})

	return oldNumpadDown(ply, key, name, ent, ...)
end