		function light(tim,color0,color1)
			local tweenservice = game:GetService("TweenService")
			local info = TweenInfo.new(tim,Enum.EasingStyle.Linear)
			for _ , light in pairs(game.Workspace.CurrentRooms:GetDescendants()) do
				if light:IsA("Light") or light:IsA("SurfaceLight") or light:IsA("SpotLight") then
					local target = {Color = color1}
					local anim = tweenservice:Create(light,info,target)
					anim:Play()
				end
				if light:IsA("MeshPart") and light.Material == Enum.Material.Neon  and light.Name ~= "Skybox" then
					local target1 = {Color = color0}
					local anim2 = tweenservice:Create(light,info,target1)
					anim2:Play()
				end
			end
		end


		light(2,Color3.fromRGB(255, 0, 0),Color3.fromRGB(255, 0, 0))
		task.spawn(function()
			pcall(function()
				local CameraShaker = require(game.ReplicatedStorage:WaitForChild("CameraShaker"))
				local camera = game.Workspace.CurrentCamera
				local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
					camera.CFrame = camera.CFrame * shakeCf
				end)
				camShake:Start()
				camShake:ShakeOnce(10, 3, 0.1, 6)
			end)

			local sound5 = Instance.new("Sound")
			sound5.PlaybackSpeed = 0.6
			sound5.Volume = 10
			sound5.SoundId = "rbxassetid://9125713501"
			sound5.Parent = workspace
			sound5:Play()

			local pitch = Instance.new("PitchShiftSoundEffect")
			pitch.Octave = 0.875
			pitch.Parent = sound5

			local sound51 = Instance.new("Sound")
			sound51.PlaybackSpeed = 1
			sound51.Volume = 10
			sound51.SoundId = "rbxassetid://1318185544"
			sound51.Parent = workspace
			sound51:Play()

			local pitch2 = Instance.new("PitchShiftSoundEffect")
			pitch2.Octave = 0.8
			pitch2.Parent = sound51

			local pitch23 = Instance.new("PitchShiftSoundEffect")
			pitch23.Octave = 0.5
			pitch23.Parent = sound51

			local eq = Instance.new("EqualizerSoundEffect")
			eq.LowGain = -20
			eq.MidGain = -10
			eq.Parent = sound51
			wait(6.771)
			sound5:Destroy()
			sound51:Destroy()
		end)

		wait(6.771)
local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Ripper", -- Custom name of your entity
    Model = "https://github.com/eliazbp92-collab/Back1/raw/main/OlderRipper.rbxm", -- Can be GitHub file or rbxassetid
    Speed = 120, -- Percentage, 100 = default Rush speed
    DelayTime = 1, -- Time before starting cycles (seconds)
    HeightOffset = 2,
    CanKill = true,
    KillRange = 40,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        false, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})
 
-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end
 
entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end
 
entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end
 
entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end
 
entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end
 
entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end
 
entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")local function GetGitSound(GithubSnd,SoundName)
					local url=GithubSnd
					if not isfile(SoundName..".mp3") then
						writefile(SoundName..".mp3", game:HttpGet(url))
					end
					local sound=Instance.new("Sound")
					sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
					return sound
				end
				-------------------------
				--_SHAKER DO NOT MOD IFY
				spawn(function()
					while ambush ~= nil do wait(0.2)
						local v = game.Players.LocalPlayer
						local parent = script.Parent
						if v.Character ~= nil and not v.Character:GetAttribute("Hiding") then
							if canSeeTarget(v.Character,50) then
								breakMove = true
								local Noise = Instance.new("ScreenGui")
								local ImageLabel = Instance.new("ImageLabel")
								Noise.Name = "Noise"
								Noise.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
								Noise.IgnoreGuiInset = true
								ImageLabel.Parent = Noise
								ImageLabel.BackgroundTransparency = 1.000
								ImageLabel.Size = UDim2.new(1, 0, 1, 0)
								ImageLabel.Image = "rbxassetid://236542974"
								ImageLabel.ImageTransparency = 1.000
								local function GJQAHX_fake_script() -- Noise.Death 
									local script = Instance.new('LocalScript', Noise)
 
									local char = game.Players.LocalPlayer.Character
									local ripper = workspace.Death.Ripe
 
									local ripperscare = ripper:Clone()
									ripperscare.Parent = workspace
									ripperscare.Position = ripper.Position
									ripperscare.ripe.ParticleEmitter.Texture = "rbxassetid://11816152645"
									for i,v in pairs(ripperscare:GetDescendants()) do
										if v:IsA("ParticleEmitter") then
											spawn(function()
												v.Rate = 9999
												wait(0.25)
												v.TimeScale = 0.0
											end)
										elseif v:IsA("Sound") then
											v.Volume = 0
										end
									end
									ripper:Destroy()
									local static = Instance.new("Sound",workspace)
									static.SoundId = "rbxassetid://372770465"
									static.Volume = 10
									static.Pitch = 0.7
									local crash = GetGitSound("https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Entities-Sounds/blob/main/ripperscare.mp3?raw=true","ripperscare")
									crash.Parent = workspace
									crash.Volume = 3
									crash.Pitch = 1
									local make = Instance.new("Part",workspace)
									make.Transparency = 1
									make.CanCollide = false
									make.CanTouch = false
									make.Anchored = true
									make.Name = "pants pooper"
									char:FindFirstChild("HumanoidRootPart").Anchored = true
									make.CFrame = workspace.Camera.CFrame
									crash:Play()
									workspace.Camera.CameraType = Enum.CameraType.Scriptable
									local sceneing = true
									local sillybilly = {8482795900,236542974,184251462,236777652}
									spawn(function()
										while game["Run Service"].RenderStepped:Wait() and sceneing	do
											workspace.Camera.CFrame = make.CFrame
											script.Parent.ImageLabel.Image = "rbxassetid://"..sillybilly[math.random(1,#sillybilly)]
										end
									end)
									local t = game.TweenService:Create(make,TweenInfo.new(0.3,Enum.EasingStyle.Circular,Enum.EasingDirection.InOut),{CFrame = CFrame.lookAt(make.Position,ripperscare.Position)})
									t:Play()
									t.Completed:Wait()
									wait(1)
									game.TweenService:Create(script.Parent.ImageLabel,TweenInfo.new(2),{ImageTransparency = 0}):Play()
									static:Play() static.Volume = 0 
									game.TweenService:Create(static,TweenInfo.new(2),{Volume = 10}):Play()
									wait(2)
									sceneing = false
									game.TweenService:Create(script.Parent.ImageLabel,TweenInfo.new(1),{ImageTransparency = 1}):Play()
									game.TweenService:Create(static,TweenInfo.new(1),{Volume = 0}):Play()
									ripperscare.Anchored = false
									ripperscare.CanCollide = false
									char:FindFirstChild("HumanoidRootPart").Anchored = false
									v.Character:FindFirstChildWhichIsA("Humanoid"):TakeDamage(100)
									DEATHMESSAGE({"You died to who you call Ripper...","You can tell his presence by the lights and his scream.","Hide when he does this!"},"Ripper")
								end
								coroutine.wrap(GJQAHX_fake_script)()
 
							end
						end
						if v.Character ~= nil then
							if v.Character:FindFirstChild("HumanoidRootPart") and (ambush.Position - v.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < val	 then
								camShake:ShakeOnce(15,25,0,2,1,6)
							end
						end
						if breakMove then break end
					end
				end)
				----------------------
				game.Debris:AddItem(amb,10)
				ambush.Ambush:Stop()
				local h = ambush.Ambush
				h.SoundId = "rbxassetid://6963538865"
				h.Volume = 10
				h.RollOffMinDistance = 5
				h.PlaybackSpeed = 0.37
				h.TimePosition = 0
				h.Volume = 10
				wait(8)
				ambush.Ambush:Play()
				game.TweenService:Create(ambush.Ambush,TweenInfo.new(6),{Volume = 0.8}):Play()
				local gruh = workspace.CurrentRooms
				ambruhspeed = DEF_SPEED
				for i = 1, game.ReplicatedStorage.GameData.LatestRoom.Value do
					if gruh:FindFirstChild(i) then
						if breakMove then break end
						print("room "..i)
						local room = gruh[i]
						if room:FindFirstChild("Nodes") then
							local nodes = room:FindFirstChild("Nodes")
							for v = 1, #nodes:GetChildren() do
								if nodes:FindFirstChild(v) then
									if breakMove then break end
									local waypoint = nodes[v]
									local Distance = (ambush.Position - waypoint.Position).magnitude -- Get the distance between the current position and the next node
									local fakejays = game.TweenService:Create(ambush,TweenInfo.new(GetTime(Distance, ambruhspeed), Enum.EasingStyle.Linear,Enum.EasingDirection.Out, 0,false,0),{CFrame = waypoint.CFrame + ambushheight})
									fakejays:Play()
									fakejays.Completed:Wait()
									ambruhspeed = storer
									if room.Name == game.ReplicatedStorage.GameData.LatestRoom.Value then
										room:WaitForChild("Door").ClientOpen:FireServer()
									end
								end
							end
						end
					end
					print("a")
				end
------------------------
 
-- Run the created entity
Creator.runEntity(entity)
