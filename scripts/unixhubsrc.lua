local OrionLib = loadstring(game:HttpGet(('https://bluefirexec.netlify.app/ui')))()
local Window = OrionLib:MakeWindow({Name = "unixhub v1.9 - universal", HidePremium = true, SaveConfig = false, ConfigFolder = "unixhub"})

local TCS = game:GetService("TextChatService")
local CoreGui = game:GetService("CoreGui")
local RStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui
local isLegacy = TCS.ChatVersion == Enum.ChatVersion.LegacyChatService
local ChatBar = CoreGui:FindFirstChild("TextBoxContainer", true) or PlayerGui:FindFirstChild("Chat"):FindFirstChild("ChatBar", true)
ChatBar = ChatBar:FindFirstChild("TextBox") or ChatBar

if game.Players.LocalPlayer.name == "Porfirey" then

game.Players.LocalPlayer:Kick("nooooo")
end



local Chat = function(Message)
	if isLegacy then
		local ChatRemote = RStorage:FindFirstChild("SayMessageRequest", true)
		ChatRemote:FireServer(Message, "All")
	else
		local Channel = TCS.TextChannels.RBXGeneral
		Channel:SendAsync(Message)
	end
end

local Tab = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Info"
})
Tab:AddLabel("unixhub - ｗｉｎｄｏｗｓ")
Tab:AddLabel("Created by unix || Use unixhub only from Bluefire")
Tab:AddLabel("Discord server: discord.gg/C4KjZkZ5NH")
local Section = Tab:AddSection({
	Name = "Update"
})
Tab:AddLabel("[+] Ragdoll FE")
Tab:AddLabel("[+] Invisible FE")
Tab:AddLabel("[+] Zombie R6")
Tab:AddLabel("[+] Punch R6")

local Tab2 = Window:MakeTab({
	Name = "Fun",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section2 = Tab2:AddSection({
	Name = "Avatar"
})
Tab2:AddButton({
	Name = "Ball",
	Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Melishy/melishy-scripts/main/charball/script.lua", true))()
	end    
})
Tab2:AddButton({
	Name = "Ball [MOBILE]",
	Callback = function()
			loadstring(game:HttpGet("https://pastebin.com/raw/BZr9bGDy", true))()
	end    
})
Tab2:AddButton({
	Name = "Jerk Off",
	Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))("Spider Script")
	end    
})
Tab2:AddButton({
	Name = "Punch [R6]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/fedoratums/Base-Script/Base-Script/fedoratum punch fling",true))()
	end    
})
Tab2:AddButton({
	Name = "Zombie [R6]",
	Callback = function()
		loadstring(game:HttpGet(('https://pastefy.app/w7KnPY70/raw'),true))()
	end    
})
Tab2:AddButton({
	Name = "Ragdoll [FE]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Kovryab/Ragdoll/refs/heads/main/Menu"))()
	end    
})
Tab2:AddButton({
	Name = "Invisible Chat [R6]",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Gaze-fe-invisible-R6-23635"))()
	end    
})
Tab2:AddButton({
	Name = "Spin Fling",
	Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Melishy/melishy-scripts/main/charball/script.lua", true))()
	end    
})
Tab2:AddButton({
	Name = "Fly [E]",
	Callback = function()
		repeat wait()
		until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
		local mouse = game.Players.LocalPlayer:GetMouse()
		repeat wait() until mouse
		  local plr = game.Players.LocalPlayer
		  local torso = plr.Character.Torso
		  local flying = true
		  local deb = true
		  local ctrl = {f = 0, b = 0, l = 0, r = 0}
		  local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		  local maxspeed = 50
		  local speed = 0
		
		  function Fly()
			local bg = Instance.new("BodyGyro", torso)
			bg.P = 9e4
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			bg.cframe = torso.CFrame
			local bv = Instance.new("BodyVelocity", torso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
			repeat wait()
			  plr.Character.Humanoid.PlatformStand = true
			  if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
				  speed = maxspeed
				end
			  elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
				  speed = 0
				end
			  end
			  if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			  elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			  else
				bv.velocity = Vector3.new(0,0.1,0)
			  end
			  bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
			until not flying
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
		  end
		  mouse.KeyDown:connect(function(key)
		  if key:lower() == "e" then
			if flying then flying = false
		  else
			flying = true
			Fly()
		  end
		elseif key:lower() == "w" then
		  ctrl.f = 1
		elseif key:lower() == "s" then
		  ctrl.b = -1
		elseif key:lower() == "a" then
		  ctrl.l = -1
		elseif key:lower() == "d" then
		  ctrl.r = 1
		end
		end)
		mouse.KeyUp:connect(function(key)
		if key:lower() == "w" then
		  ctrl.f = 0
		elseif key:lower() == "s" then
		  ctrl.b = 0
		elseif key:lower() == "a" then
		  ctrl.l = 0
		elseif key:lower() == "d" then
		  ctrl.r = 0
		end
		end)
		Fly()
	end 
})
Tab2:AddButton({
	Name = "Flight [F]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Entitynt/Roblox-Fly-Script/refs/heads/main/FlyCommand.lua",true))()
	end 
})
Tab2:AddButton({
	Name = "Fling all",
	Callback = function()
			loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))() 
	end    
})
Tab2:AddButton({
	Name = "Anti Fling",
	Callback = function()
		while true do
			for _,x in next, game:GetService("Players"):GetPlayers() do
				if x and x ~= game:GetService("Players").LocalPlayer and x.Character then
					pcall(function()
						for _,v in next, x.Character:GetChildren() do
							if v:IsA("BasePart") and v.CanCollide then
								v.CanCollide = false
								if v.Name == "Torso" then
									v.Massless = true
								end
								v.Velocity = Vector3.new()
								v.RotVelocity = Vector3.new()
							end
						end
					end)
				end
			end
			game:GetService("RunService").Stepped:wait()
		end 
	end    
})
Tab2:AddButton({
	Name = "Adidas [ANIMATION]",
	Callback = function()
		local animations = {
			idle = "rbxassetid://18537367238",    -- Primary idle animation
			idleAlt = "rbxassetid://18537367238", -- Alternate idle animation
			walk = "rbxassetid://18537367238",    -- Walk animation
			run = "rbxassetid://18537367238",     -- Run animation
			jump = "rbxassetid://18537367238",    -- Jump animation
			fall = "rbxassetid://18537367238",    -- Fall animation
			swim = "rbxassetid://18537367238",    -- Swim animation
			swimIdle = "rbxassetid://18537367238",-- Swim idle animation
			climb = "rbxassetid://18537367238"    -- Climb animation
		}
		 
		-- Function to replace the default animations
		local function replaceAnimations()
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
		 
			-- Wait for the Animate script to load
			local animateScript = character:WaitForChild("Animate")
		 
			-- Replace each animation
			for animationType, animationId in pairs(animations) do
				if animateScript:FindFirstChild(animationType) then
					for _, anim in ipairs(animateScript[animationType]:GetChildren()) do
						if anim:IsA("Animation") then
							anim.AnimationId = animationId
						end
					end
				end
			end
		 
			-- Handle alternate idle animation separately
			local idle = animateScript:FindFirstChild("idle")
			if idle then
				local animAlt = idle:FindFirstChild("Animation2")
				if animAlt then
					animAlt.AnimationId = animations.idleAlt
				end
			end
		end
		 
		-- Function to ensure animations loop
		local function ensureAnimationsLoop()
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
		 
			-- Wait for the Humanoid to load
			local humanoid = character:WaitForChild("Humanoid")
		 
			-- Connect to the AnimationPlayed event
			humanoid.AnimationPlayed:Connect(function(animationTrack)
				-- Ensure the animation loops
				animationTrack.Looped = true
			end)
		end
		 
		-- Additional function to debug swimIdle animation
		local function debugSwimIdle()
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
			local animateScript = character:WaitForChild("Animate")
			local swimIdle = animateScript:FindFirstChild("swimIdle")
		 
			if swimIdle then
				for _, anim in ipairs(swimIdle:GetChildren()) do
					if anim:IsA("Animation") then
						print("SwimIdle Animation ID:", anim.AnimationId)
						anim.AnimationId = animations.swimIdle
						print("Updated SwimIdle Animation ID:", anim.AnimationId)
					end
				end
			else
				print("swimIdle animation not found in Animate script.")
			end
		end
		 
		-- Run the functions to replace animations, ensure they loop, and debug swimIdle
		replaceAnimations()
		ensureAnimationsLoop()
		debugSwimIdle()
	end    
})
Tab2:AddButton({
	Name = "Silly Sadboy [FE]",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/r0FWrDG1"))()
	end    
})	
Tab2:AddButton({
	Name = "TP tool",
	Callback = function()
		local Tele = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
		Tele.RequiresHandle = false
		Tele.RobloxLocked = true
		Tele.Name = "TPTool"
		Tele.ToolTip = "Teleport Tool"
		Tele.Equipped:connect(function(Mouse)
		Mouse.Button1Down:connect(function()
		if Mouse.Target then
			game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name).HumanoidRootPart.CFrame = (CFrame.new(Mouse.Hit.x, Mouse.Hit.y + 5, Mouse.Hit.z))
		end
	end)
end)
	end    
})	
Tab2:AddButton({
	Name = "Gravity [ON]",
	Callback = function()
		workspace.Gravity = 196.2
		game.StarterGui:SetCore("SendNotification", {Title="Normal Gravity"; Text="Gravity Enabled"; Duration=1;})
	end    
})	
Tab2:AddButton({
	Name = "Gravity [OFF]",
	Callback = function()
		workspace.Gravity = 0
		game.StarterGui:SetCore("SendNotification", {Title="Zero Gravity"; Text="Gravity Disabled"; Duration=1;})
	end    
})	
Tab2:AddButton({
	Name = "Walk on Walls",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
	end    
})	
Tab2:AddButton({
	Name = "God",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Name = 1
		local l = game.Players.LocalPlayer.Character["1"]:Clone()
		l.Parent = game.Players.LocalPlayer.Character
		l.Name = "Humanoid"
		wait(0.1)
		game.Players.LocalPlayer.Character["1"]:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		wait(0.1)
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
	end    
})	
Tab2:AddButton({
	Name = "Noclip",
	Callback = function()
		_G.noclip = not _G.noclip
print(_G.noclip)

if not game:GetService('Players').LocalPlayer.Character:FindFirstChild("LowerTorso") then
	while _G.noclip do
		game:GetService("RunService").Stepped:wait()
		game.Players.LocalPlayer.Character.Head.CanCollide = false
		game.Players.LocalPlayer.Character.Torso.CanCollide = false
	end
else
	if _G.InitNC ~= true then     
		_G.NCFunc = function(part)      
			local pos = game:GetService('Players').LocalPlayer.Character.LowerTorso.Position.Y  
			if _G.noclip then             
				if part.Position.Y > pos then                 
					part.CanCollide = false             
				end        
			end    
		end      
		_G.InitNC = true 
	end 
	 
	game:GetService('Players').LocalPlayer.Character.Humanoid.Touched:connect(_G.NCFunc) 
end
	end    
})	
Tab2:AddButton({
	Name = "Dance",
	Callback = function()
		local LocalPlayer = game:GetService("Players").LocalPlayer
		local Dance = Instance.new("Animation")
		Dance.AnimationId = "rbxassetid://5917459365"
		
		local LoadedAnim
		
		
					LoadedAnim = LocalPlayer.Character.Humanoid:LoadAnimation(Dance)
					LoadedAnim.Priority = Enum.AnimationPriority.Action
					LoadedAnim:Play()
	end    
})
Tab2:AddButton({
	Name = "Inf Jump",
	Callback = function()
		_G.infinjump = not _G.infinjump

local plr = game:GetService'Players'.LocalPlayer
local m = plr:GetMouse()
m.KeyDown:connect(function(k)
	if _G.infinjump then
		if k:byte() == 32 then
		plrh = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'
		plrh:ChangeState('Jumping')
		wait()
		plrh:ChangeState('Seated')
		end
	end
end)
	end    
})	

Tab2:AddButton({
	Name = "Flip [Z - Frontflip]",
	Callback = function()
		--[[ Info ]]--

		local ver = "2.00"
		local scriptname = "feFlip"


		--[[ Keybinds ]]--

		local FrontflipKey = Enum.KeyCode.Z
		local BackflipKey = Enum.KeyCode.X
		local AirjumpKey = Enum.KeyCode.C


		--[[ Dependencies ]]--

		local ca = game:GetService("ContextActionService")
		local zeezy = game:GetService("Players").LocalPlayer
		local h = 0.0174533
		local antigrav


		--[[ Functions ]]--

		function zeezyFrontflip(act,inp,obj)
			if inp == Enum.UserInputState.Begin then
				zeezy.Character.Humanoid:ChangeState("Jumping")
				wait()
				zeezy.Character.Humanoid.Sit = true
				for i = 1,360 do 
					delay(i/720,function()
					zeezy.Character.Humanoid.Sit = true
						zeezy.Character.HumanoidRootPart.CFrame = zeezy.Character.HumanoidRootPart.CFrame * CFrame.Angles(-h,0,0)
					end)
				end
				wait(0.55)
				zeezy.Character.Humanoid.Sit = false
			end
		end

		function zeezyBackflip(act,inp,obj)
			if inp == Enum.UserInputState.Begin then
				zeezy.Character.Humanoid:ChangeState("Jumping")
				wait()
				zeezy.Character.Humanoid.Sit = true
				for i = 1,360 do
					delay(i/720,function()
					zeezy.Character.Humanoid.Sit = true
						zeezy.Character.HumanoidRootPart.CFrame = zeezy.Character.HumanoidRootPart.CFrame * CFrame.Angles(h,0,0)
					end)
				end
				wait(0.55)
				zeezy.Character.Humanoid.Sit = false
			end
		end

		function zeezyAirjump(act,inp,obj)
			if inp == Enum.UserInputState.Begin then
				zeezy.Character:FindFirstChildOfClass'Humanoid':ChangeState("Seated")
				wait()
				zeezy.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")	
			end
		end


		--[[ Binds ]]--

		ca:BindAction("zeezyFrontflip",zeezyFrontflip,false,FrontflipKey)
		ca:BindAction("zeezyBackflip",zeezyBackflip,false,BackflipKey)
		ca:BindAction("zeezyAirjump",zeezyAirjump,false,AirjumpKey)

		--[[ Load Message ]]--

		print(scriptname .. " " .. ver .. " loaded successfully")
		print("made by Zeezy#7203")

		local notifSound = Instance.new("Sound",workspace)
		notifSound.PlaybackSpeed = 1.5
		notifSound.Volume = 0.15
		notifSound.SoundId = "rbxassetid://170765130"
		notifSound.PlayOnRemove = true
		notifSound:Destroy()
		game.StarterGui:SetCore("SendNotification", {Title = "feFlip", Text = "feFlip loaded successfully!", Icon = "rbxassetid://505845268", Duration = 5, Button1 = "Okay"})
	end    
})

local Section2 = Tab2:AddSection({
	Name = "Server Side"
})


Tab2:AddButton({
	Name = "BlackHole",
	Callback = function()
		local UserInputService = game:GetService("UserInputService")
		local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
		local Folder = Instance.new("Folder", game:GetService("Workspace"))
		local Part = Instance.new("Part", Folder)
		local Attachment1 = Instance.new("Attachment", Part)
		Part.Anchored = true
		Part.CanCollide = false
		Part.Transparency = 1
		local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
		local NetworkAccess = coroutine.create(function()
			settings().Physics.AllowSleep = false
			while game:GetService("RunService").RenderStepped:Wait() do
				for _, Players in next, game:GetService("Players"):GetPlayers() do
					if Players ~= game:GetService("Players").LocalPlayer then
						Players.MaximumSimulationRadius = 0 
						sethiddenproperty(Players, "SimulationRadius", 0) 
					end 
				end
				game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
				setsimulationradius(math.huge) 
			end 
		end) 
		coroutine.resume(NetworkAccess)
		local function ForcePart(v)
			if v:IsA("Part") and v.Anchored == false and v.Parent:FindFirstChild("Humanoid") == nil and v.Parent:FindFirstChild("Head") == nil and v.Name ~= "Handle" then
				Mouse.TargetFilter = v
				for _, x in next, v:GetChildren() do
					if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
						x:Destroy()
					end
				end
				if v:FindFirstChild("Attachment") then
					v:FindFirstChild("Attachment"):Destroy()
				end
				if v:FindFirstChild("AlignPosition") then
					v:FindFirstChild("AlignPosition"):Destroy()
				end
				if v:FindFirstChild("Torque") then
					v:FindFirstChild("Torque"):Destroy()
				end
				v.CanCollide = false
				local Torque = Instance.new("Torque", v)
				Torque.Torque = Vector3.new(100000, 100000, 100000)
				local AlignPosition = Instance.new("AlignPosition", v)
				local Attachment2 = Instance.new("Attachment", v)
				Torque.Attachment0 = Attachment2
				AlignPosition.MaxForce = 9999999999999999
				AlignPosition.MaxVelocity = math.huge
				AlignPosition.Responsiveness = 200
				AlignPosition.Attachment0 = Attachment2 
				AlignPosition.Attachment1 = Attachment1
			end
		end
		for _, v in next, game:GetService("Workspace"):GetDescendants() do
			ForcePart(v)
		end
		game:GetService("Workspace").DescendantAdded:Connect(function(v)
			ForcePart(v)
		end)
		UserInputService.InputBegan:Connect(function(Key, Chat)
			if Key.KeyCode == Enum.KeyCode.E and not Chat then
				Updated = Mouse.Hit + Vector3.new(0, 5, 0)
			end
		end)
		spawn(function()
			while game:GetService("RunService").RenderStepped:Wait() do
				Attachment1.WorldCFrame = Updated
			end
		end)
	end    
})

Tab2:AddButton({
	Name = "Chat Draw V2 [NEW]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/balditeacher/obfuscated-mobile-supportloadstring/main/obfuscated"))()
	end
})

Tab2:AddButton({
	Name = "Fake IP Grabber",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/aziWwaw2"))()
	end    
})
Tab2:AddButton({
	Name = "Soundpad [FE] [BETA]",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/SWsFdk2U"))()
	end    
})	
Tab2:AddButton({
	Name = "Chat Admin [FE]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/game-hax/uca/main/release/uca.min.lua"))()
	end    
})	
Tab2:AddButton({
	Name = "Super Ring Parts v2 [FE]",
	Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/t0djamGi/raw"))()
	end    
})	

Tab2:AddButton({
	Name = "Telekinesis [FE]",
	Callback = function()
		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Telekinesis-12332"))()
	end
})
local Section6234 = Tab2:AddSection({
	Name = "Other"
})
Tab2:AddButton({
	Name = "Chat Crash",
	Callback = function()
		Chat("BLUEFIRE SOFTWORKS CHAT CRASH HAHAHAHAAHAHAHAHAAHHAHAAHAHHAHAHAAHAHAHAHAHAHAHAHAHAHAH")
		Chat("BLUEFIRE SOFTWORKS CHAT CRASH HAHAHAHAAHAHAHAHAAHHAHAAHAHHAHAHAHHHAHAHAHAHAHAHAHAHAH")
		Chat("BLUEFIRE SOFTWORKS CHAT CRASH HAHAHAHAAHAHAHAHAAHHAHAAHAHHAHAAHAHAHAHAHAHAHAHAHAHAHAHAH")
		Chat("BLUEFIRE SOFTWORKS CHAT CRASH HAHAHAHAAHAHAHAHAAHHAHAAHAHHAHAHAHHAHAHAHAHAHAHAHAHAHAHAH")
		Chat("BLUEFIRE SOFTWORKS CHAT CRASH HAHAHAHAAHAHAHAHAAHHAHAAHAHHAHAHAHHAAHAHAHAHAHAHAHAH")
		Chat("BLUEFIRE SOFTWORKS CHAT CRASH HAHAHAHAAHAHAHAHAAHHAHAAHAHHAHAHAHHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAH")
		Chat("BLUEFIRE SOFTWORKS CHAT CRASH HAHAHAHAAHAHAHAHAAHHAHAAHAHHHAHAHAHAH")
		Chat("BLUEFIRE SOFTWORKS CHAT CRASH HAHAHAHAAHAHAHAHAAHHAHAAHAHHAHAHAHHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAH")
		Chat("BLUEFIRE SOFTWORKS CHAT CRASH HAHAHAHAAHAHAHAHAAHHAHAAHAHHAHAHAHHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAH")
		Chat("BLUEFIRE SOFTWORKS CHAT CRASH HAHAHAHAAHAHAHAHAAHHAHAAHAHHAHAHAH")
		Chat("BLUEFIRE SOFTWORKS CHAT CRASH HAHAHAHAAHAHAHAHAAHHAHAAHAHHAHAHAH")
	end
})
Tab2:AddButton({
	Name = "Chat Cleaner",
	Callback = function()
		Chat(".")
		Chat(".")
		Chat(".")
		Chat(".")
		Chat(".")
		Chat(".")
		Chat(".")
		Chat(".")
		Chat(".")
		Chat(".")
	end
})
local Tab3 = Window:MakeTab({
	Name = "Brookhaven",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section3 = Tab3:AddSection({
	Name = "Scripts"
})
Tab3:AddButton({
	Name = "Rochips",
	Callback = function()
		local pastebin, Rochips_Panel = "https://glot.io/snippets", "gw".."wv".."87".."7g".."a3/r".."aw".."/ma".."in.lu".."a" --funny moment
		loadstring(game:HttpGet(pastebin.."/"..Rochips_Panel))()
	end    
})
Tab3:AddButton({
	Name = "R4D",
	Callback = function()
		loadstring(game:HttpGet("https://scriptblox.com/raw/Brookhaven-RP-R4D-solara-suport-keyless-13998"))()
	end    
})
Tab3:AddButton({
	Name = "REDzHUB",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/REDzHUB/main/REDzHUB"))()
	end    
})

Tab3:AddButton({
	Name = "FORTUITOUS Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/TrollGuiMaker/f0rtuit0us-hub/refs/heads/main/old"))()
	end    
})

Tab3:AddButton({
	Name = "TheDarkones Hub",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/TheDarkoneMarcillisePex/Other-Scripts/main/Brook%20Haven%20Gui'))()
	end    
})

Tab3:AddButton({
	Name = "SanderX Hub",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/kigredns/SanderXV4.2.2/refs/heads/main/New.lua'))()
	end    
})

Tab3:AddButton({
	Name = "Imperial Hub",
	Callback = function()
		loadstring(game:HttpGet(("https://raw.githubusercontent.com/Trev0rZ/LoaderM/main/ImperialHub-Working.lua"),true))()
	end    
})

Tab3:AddButton({
	Name = "Salvatore Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RFR-R1CH4RD/Loader/main/Salvatore.lua"))()
	end    
})
Tab3:AddButton({
	Name = "GhostHUB",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
	end    
})

local Tab9 = Window:MakeTab({
	Name = "Ragdoll Engine",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section9 = Tab9:AddSection({
	Name = "Scripts"
})
Tab9:AddButton({
	Name = "SystemBroken",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))()
	end    
})
Tab9:AddButton({
	Name = "Cryptonic Hub",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/martinelcrac/cryptonichub/main/Ragdollengine.lua'))()
	end    
})

local Tab8 = Window:MakeTab({
	Name = "Natural Disasters",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section20 = Tab8:AddSection({
	Name = "Fun"
})
Tab8:AddButton({
	Name = "Blackhole",
	Callback = function()
		local UserInputService = game:GetService("UserInputService")
		local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
		local Folder = Instance.new("Folder", game:GetService("Workspace"))
		local Part = Instance.new("Part", Folder)
		local Attachment1 = Instance.new("Attachment", Part)
		Part.Anchored = true
		Part.CanCollide = false
		Part.Transparency = 1
		local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
		local NetworkAccess = coroutine.create(function()
			settings().Physics.AllowSleep = false
			while game:GetService("RunService").RenderStepped:Wait() do
				for _, Players in next, game:GetService("Players"):GetPlayers() do
					if Players ~= game:GetService("Players").LocalPlayer then
						Players.MaximumSimulationRadius = 0 
						sethiddenproperty(Players, "SimulationRadius", 0) 
					end 
				end
				game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
				setsimulationradius(math.huge) 
			end 
		end) 
		coroutine.resume(NetworkAccess)
		local function ForcePart(v)
			if v:IsA("Part") and v.Anchored == false and v.Parent:FindFirstChild("Humanoid") == nil and v.Parent:FindFirstChild("Head") == nil and v.Name ~= "Handle" then
				Mouse.TargetFilter = v
				for _, x in next, v:GetChildren() do
					if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
						x:Destroy()
					end
				end
				if v:FindFirstChild("Attachment") then
					v:FindFirstChild("Attachment"):Destroy()
				end
				if v:FindFirstChild("AlignPosition") then
					v:FindFirstChild("AlignPosition"):Destroy()
				end
				if v:FindFirstChild("Torque") then
					v:FindFirstChild("Torque"):Destroy()
				end
				v.CanCollide = false
				local Torque = Instance.new("Torque", v)
				Torque.Torque = Vector3.new(100000, 100000, 100000)
				local AlignPosition = Instance.new("AlignPosition", v)
				local Attachment2 = Instance.new("Attachment", v)
				Torque.Attachment0 = Attachment2
				AlignPosition.MaxForce = 9999999999999999
				AlignPosition.MaxVelocity = math.huge
				AlignPosition.Responsiveness = 200
				AlignPosition.Attachment0 = Attachment2 
				AlignPosition.Attachment1 = Attachment1
			end
		end
		for _, v in next, game:GetService("Workspace"):GetDescendants() do
			ForcePart(v)
		end
		game:GetService("Workspace").DescendantAdded:Connect(function(v)
			ForcePart(v)
		end)
		UserInputService.InputBegan:Connect(function(Key, Chat)
			if Key.KeyCode == Enum.KeyCode.E and not Chat then
				Updated = Mouse.Hit + Vector3.new(0, 5, 0)
			end
		end)
		spawn(function()
			while game:GetService("RunService").RenderStepped:Wait() do
				Attachment1.WorldCFrame = Updated
			end
		end)
	end    
})
Tab8:AddButton({
	Name = "Fling All",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))() 
	end    
})
Tab8:AddButton({
	Name = "Super Ring Parts v2",
	Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/t0djamGi/raw"))()
	end    
})
Tab8:AddButton({
	Name = "Telekinesis",
	Callback = function()
		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Telekinesis-12332"))()
	end    
})

local Section90 = Tab8:AddSection({
	Name = "Scripts"
})
Tab8:AddButton({
	Name = "I was here",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Bac0nh1ck/Scripts/main/NDS_A%5EX'))()
	end    
})

local Tab4 = Window:MakeTab({
	Name = "Partners",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section4 = Tab4:AddSection({
	Name = "pepper.lol"
})
Tab4:AddLabel("🅿🅴🅿🅿🅴🆁.🅻🅾🅻")
Tab4:AddLabel("Created by pianino2")
Tab4:AddLabel("https://discord.gg/ZfdCcQtZFt")
Tab4:AddButton({
	Name = "Execute",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/yqc0mVEb"))()
	end    
})
local Section4 = Tab4:AddSection({
	Name = "expensive"
})
Tab4:AddLabel("E.X.P.E.N.S.I.V.E")
Tab4:AddLabel("Created by pianino2")
Tab4:AddLabel("Key: F9L3jd03FlbsoSJF8")
Tab4:AddButton({
	Name = "Execute",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/G1303xDB'))() 
	end    
})

OrionLib:Init()
