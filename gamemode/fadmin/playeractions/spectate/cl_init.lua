local stopSpectating, startFreeRoam
local specEnt
local thirdperson = true
local isRoaming = false
local roamPos = Vector(0) -- the position when roaming free

/*---------------------------------------------------------------------------
startHooks
FAdmin tab buttons
---------------------------------------------------------------------------*/
FAdmin.StartHooks["zzSpectate"] = function()
	FAdmin.Access.AddPrivilege("Spectate", 2)
	FAdmin.Commands.AddCommand("Spectate", nil, "<Player>")

	-- Right click option
	FAdmin.ScoreBoard.Main.AddPlayerRightClick("Spectate", function(ply)
		LocalPlayer():ConCommand("FAdmin Spectate "..ply:UserID())
	end)

	-- Slap option in player menu
	FAdmin.ScoreBoard.Player:AddActionButton("Spectate", "FAdmin/icons/spectate", Color(0, 200, 0, 255), function(ply) return FAdmin.Access.PlayerHasPrivilege(LocalPlayer(), "Spectate") and ply ~= LocalPlayer() end, function(ply)
		RunConsoleCommand("_FAdmin", "Spectate", ply:UserID())
	end)
end

/*---------------------------------------------------------------------------
Get the thirdperson position
---------------------------------------------------------------------------*/
local function getThirdPersonPos(ply)
	local aimvector = LocalPlayer():GetAimVector()
	local startPos = ply:GetShootPos()
	local endpos = startPos - aimvector * 100

	local tracer = {
		start = startPos,
		endpos = endpos,
		filter = specEnt
	}

	local trace = util.TraceLine(tracer)

	return trace.HitPos + trace.HitNormal * 10
end

/*---------------------------------------------------------------------------
Get the CalcView table
---------------------------------------------------------------------------*/
local view = {
	vm_origin = Vector(0, 0, -13000)
}
local function getCalcView()
	if not isRoaming then
		if thirdperson then
			view.origin = getThirdPersonPos(specEnt)
			view.angles = LocalPlayer():EyeAngles()
		else
			view.origin = specEnt:GetShootPos()
			view.angles = specEnt:EyeAngles()
		end

		return view
	end

	view.origin = roamPos
	view.angles = LocalPlayer():EyeAngles()

	return view
end

/*---------------------------------------------------------------------------
specCalcView
Override the view for the player to look through the spectated player's eyes
---------------------------------------------------------------------------*/
local function specCalcView(ply, origin, angles, fov)
	if not IsValid(specEnt) and not isRoaming then
		startFreeRoam()
		return
	end

	local view = getCalcView()

	if IsValid(specEnt) then
		specEnt:SetNoDraw(not thirdperson)
	end

	return view
end

/*---------------------------------------------------------------------------
Spectate the person you're looking at while you're roaming
---------------------------------------------------------------------------*/
local function spectateLookingAt()
	local aimvec = LocalPlayer():GetAimVector()

	local foundPly, foundDot = nil, 0

	for _, ply in pairs(player.GetAll()) do
		if ply == LocalPlayer() then continue end

		local pos = ply:GetShootPos()
		local dot = (pos - roamPos):GetNormalized():Dot(aimvec)
		local distance = pos:Distance(roamPos)

		-- Discard players you're not looking at
		if dot < 0.97 then continue end
		-- not a better alternative
		if dot < foundDot then continue end

		local trace = util.QuickTrace(roamPos, pos - roamPos, ply)

		if trace.Hit then continue end

		foundPly, foundDot = ply, dot
	end

	if not IsValid(foundPly) then return end

	RunConsoleCommand("FAdmin", "Spectate", foundPly:UserID())
end

/*---------------------------------------------------------------------------
specBinds
Change binds to perform spectate specific tasks
---------------------------------------------------------------------------*/
-- Manual keysDown table, so I can return true in plyBindPress and still detect key presses
local keysDown = {}
local function specBinds(ply, bind, pressed)
	if bind == "+jump" then
		stopSpectating()

		if keysDown["ATTACK2"] then
			local pos = getCalcView().origin - Vector(0, 0, 64)
			RunConsoleCommand("FAdmin", "TPToPos", string.format("%d, %d, %d", pos.x, pos.y, pos.z))
		end
		return true
	elseif bind == "+attack" and pressed then
		if isRoaming then
			roamPos = roamPos + LocalPlayer():GetAimVector() * 500
			return true
		end
		thirdperson = not thirdperson
		return true
	elseif bind == "+attack2" and pressed then
		if not isRoaming then
			startFreeRoam()
		else
			spectateLookingAt()
		end

		keysDown["ATTACK2"] = pressed

		return true
	elseif bind == "+attack2" and not pressed then
		keysDown["ATTACK2"] = pressed
		return
	elseif isRoaming and not LocalPlayer():KeyDown(IN_USE) then
		local key = string.match(bind, "+([a-z A-Z 0-9]+)")
		if not key or key == "use" then return end

		keysDown[key:upper()] = pressed

		return true
	end
	-- Do not return otherwise, spectating admins should be able to move to avoid getting detected
end

/*---------------------------------------------------------------------------
Spectate think
Free roaming position updates
---------------------------------------------------------------------------*/
local function specThink()
	local ply = LocalPlayer()

	if not isRoaming or keysDown["USE"] then return end

	local roamSpeed = 15
	local aimVec = ply:GetAimVector()
	local direction = Vector(0)

	if keysDown["FORWARD"] then
		direction = aimVec
	elseif keysDown["BACK"] then
		direction = -aimVec
	end

	if keysDown["MOVELEFT"] then
		direction = direction - aimVec:Angle():Right()
	elseif keysDown["MOVERIGHT"] then
		direction = direction + aimVec:Angle():Right()
	end

	if ply:KeyDown(IN_SPEED) then
		roamSpeed = 30
	elseif keysDown["WALK"] then
		roamSpeed = 5
	end

	direction:Normalize()

	roamPos = roamPos + direction * roamSpeed
end

/*---------------------------------------------------------------------------
Draw help on the screen
---------------------------------------------------------------------------*/
local function drawHelp()
	if isRoaming then
		draw.WordBox(2, 10, ScrH() / 2, "Left mouse: teleport forwards", "UiBold", Color(0,0,0,120), Color(255, 255, 255, 255))
	else
		draw.WordBox(2, 10, ScrH() / 2, "Left mouse: toggle thirdperson", "UiBold", Color(0,0,0,120), Color(255, 255, 255, 255))
	end
	draw.WordBox(2, 10, ScrH() / 2 + 20, "Right mouse: (Un)select player to spectate", "UiBold", Color(0,0,0,120), Color(255, 255, 255, 255))
	draw.WordBox(2, 10, ScrH() / 2 + 40, "Jump: Stop spectating", "UiBold", Color(0,0,0,120), Color(255, 255, 255, 255))
	draw.WordBox(2, 10, ScrH() / 2 + 60, "Right mouse + Jump: Teleport to spectate pos", "UiBold", Color(0,0,0,120), Color(255, 255, 255, 255))
end

/*---------------------------------------------------------------------------
Start roaming free, rather than spectating a given player
---------------------------------------------------------------------------*/
startFreeRoam = function()
	if IsValid(specEnt) then
		roamPos = thirdperson and getThirdPersonPos(specEnt) or specEnt:GetShootPos()
		specEnt:SetNoDraw(false)
	else
		roamPos = LocalPlayer():GetShootPos()
	end

	specEnt = nil
	isRoaming = true
	keysDown = {}
end

/*---------------------------------------------------------------------------
specEnt
Spectate a player
---------------------------------------------------------------------------*/
local function startSpectate(um)
	isRoaming = um:ReadBool()
	specEnt = um:ReadEntity()

	if isRoaming then
		startFreeRoam()
	end

	hook.Add("CalcView", "FAdminSpectate", specCalcView)
	hook.Add("PlayerBindPress", "FAdminSpectate", specBinds)
	hook.Add("ShouldDrawLocalPlayer", "FAdminSpectate", function() return isRoaming or thirdperson end)
	hook.Add("Think", "FAdminSpectate", specThink)
	hook.Add("HUDPaint", "FAdminSpectate", drawHelp)

	timer.Create("FAdminSpectatePosUpdate", 0.5, 0, function()
		if not isRoaming then return end

		RunConsoleCommand("_FAdmin_SpectatePosUpdate", roamPos.x, roamPos.y, roamPos.z)
	end)
end
usermessage.Hook("FAdminSpectate", startSpectate)

/*---------------------------------------------------------------------------
stopSpectating
Stop spectating a player
---------------------------------------------------------------------------*/
stopSpectating = function()
	hook.Remove("CalcView", "FAdminSpectate")
	hook.Remove("PlayerBindPress", "FAdminSpectate")
	hook.Remove("ShouldDrawLocalPlayer", "FAdminSpectate")
	hook.Remove("Think", "FAdminSpectate")
	hook.Remove("HUDPaint", "FAdminSpectate")

	timer.Destroy("FAdminSpectatePosUpdate")

	if IsValid(specEnt) then
		specEnt:SetNoDraw(false)
	end

	RunConsoleCommand("_FAdmin_StopSpectating")
end