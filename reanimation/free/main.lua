-- Shiba Hub Reanimation 2021. Credits go to Mizt & Joe https://discord.gg/nxqqdnkDFP.
print("Shiba Hub Reanimation 2021. Credits go to Mizt & Joe.\nhttps://discord.gg/nxqqdnkDFP")
local hb1 = game:GetService("RunService").Heartbeat

HumanDied = false

coroutine.wrap(function()
    repeat
        hb1:Wait()
        setsimulationradius(1000)
        for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
            if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" and v.Name ~= "Torso" then
                v.Velocity = Vector3.new(0x19 + .5,0,0)
            end
        end
    until HumanDied == true
end)()
local b = 1
function SCIFIMOVIELOL(c, d, e, f)
	local g = Instance.new('AlignPosition', d)
	g.Name = "AliP_" .. b
	g.ApplyAtCenterOfMass = true
	g.MaxForce = 5772000
	g.MaxVelocity = math.huge / 9e110
	g.ReactionForceEnabled = false
	g.Responsiveness = 200
	g.RigidityEnabled = false
	local h = Instance.new('AlignOrientation', d)
	h.Name = "AliO_" .. b
	h.MaxAngularVelocity = math.huge / 9e110
	h.MaxTorque = 5772000
	h.PrimaryAxisOnly = false
	h.ReactionTorqueEnabled = false
	h.Responsiveness = 200
	h.RigidityEnabled = false
	local d = Instance.new('Attachment', d)
	d.Name = "Ath_" .. b
	local c = Instance.new('Attachment', c)
	c.Name = "Ath_" .. b
	d.Orientation = f or Vector3.new(0, 0, 0)
	d.Position = e or Vector3.new(0, 0, 0)
	g.Attachment1 = d
	g.Attachment0 = c
	h.Attachment1 = d
	h.Attachment0 = c
	b = b + 1
	return {
		g,
		h,
		d,
		c
	}
end

game:FindFirstChildOfClass("Players").LocalPlayer["Character"].Archivable = true
local b = {}
for c, c in next, game:FindFirstChildOfClass("Players").LocalPlayer["Character"]:GetChildren() do
	if c:IsA("Accessory") then
		if b[c.Name] then
			if b[c.Name] == "s" then
				b[c.Name] = {}
			end
			table.insert(b[c.Name], c)
		else
			b[c.Name] = "s"
		end
	end
end
for b, b in pairs(b) do
	if type(b) == "table" then
		local c = 1
		for b, b in pairs(b) do
			b.Name = b.Name .. c
			c = c + 1
		end
	end
end
b = nil
local b = game:FindFirstChildOfClass("Players").LocalPlayer.Character
local c = Instance.new("Folder", game:FindFirstChildOfClass("Players").LocalPlayer["Character"])
c.Name = "DMYF"
local d = b:Clone()
local e
if d:FindFirstChild("Animate") then
	e = d:FindFirstChild("Animate"):Clone()
	d:FindFirstChild("Animate"):Destroy()
end
if d:FindFirstChildOfClass("Folder") then
	d:FindFirstChildOfClass("Folder"):Destroy()
end
if d.Torso:FindFirstChild("Neck") then
	local c = d.Torso:FindFirstChild("Neck"):Clone()
	c.Part0 = nil
	c.Part1 = b.Head
	c.Parent = b.Torso
end
d.Parent = c
d.HumanoidRootPart.CFrame = b.HumanoidRootPart.CFrame
d.Humanoid.BreakJointsOnDeath = false
d.Name = "non"
d.Humanoid.DisplayDistanceType = "None"
for c, c in next, b:GetChildren() do
	if c:IsA("Accessory") then
		local e = false
		if c.Handle:FindFirstChildOfClass("Weld") then
	        c.Handle:FindFirstChildOfClass("Weld"):Destroy()
		end
		c.Handle.Massless = true
		c.Handle.CanCollide = false
		if c.Handle:FindFirstChildOfClass("Attachment") then
			local b = c.Handle:FindFirstChildOfClass("Attachment")
			if b.Name == "HatAttachment" or b.Name == "HairAttachment" or b.Name == "FaceFrontAttachment" or b.Name == "FaceCenterAttachment" then
				e = b.Name
			end
		end

		coroutine.wrap(function()
			if e then
				local f = SCIFIMOVIELOL(c.Handle, b.Torso, Vector3.new(0, 1.5, 0) + (b.Head[e].Position + (c.Handle[e].Position * -1)), Vector3.new(0, 0, 0))
				local g = f[1].Attachment1
				local h = f[1]
				local f = f[2]
				local i = c.Handle
				local j = b.Head
				h.Parent = d:FindFirstChild(c.Name).Handle
				f.Parent = d:FindFirstChild(c.Name).Handle
				while true do
					game:GetService("RunService").RenderStepped:wait()
					if HumanDied then
						break
					end
					coroutine.wrap(function()
						if h.Attachment1 == g then
							i.CFrame = i.CFrame:lerp((((b.Torso.CFrame * CFrame.new(0, 1.5, 0)) * j[e].CFrame) * i[e].CFrame:inverse()), 1)
						else
							c.Handle.CFrame = c.Handle.CFrame:lerp(h.Attachment1.Parent.CFrame * CFrame.new(h.Attachment1.Position) * CFrame.Angles(math.rad(h.Attachment1.Rotation.X), math.rad(h.Attachment1.Rotation.Y), math.rad(h.Attachment1.Rotation.Z)), 1)
						end
					end)()
				end
			else
                SCIFIMOVIELOL(c.Handle, d[c.Name].Handle, Vector3.new(0, 0, 0), Vector3.new(0, 0, 0))
			end
		end)()
	end
end
local c = b.Torso
local f = b.HumanoidRootPart
local g = b.Humanoid
c.Parent = game:FindFirstChildOfClass("Workspace")
g.Parent = game:FindFirstChildOfClass("Workspace")
local h = c:Clone()
local i = g:Clone()
f["RootJoint"].Part0 = h
f["RootJoint"].Part1 = b.Head
c.Name = "torso"
c.Neck:Destroy()
g.Name = "Mizt Hub Best"
h.Parent = b
i.Parent = b
b.PrimaryPart = h
i.Health = 0
f:Destroy()
c.Parent = b
g.Parent = b
h:Destroy()
i:Destroy()
c.Name = "Torso"
if d.Head:FindFirstChildOfClass("Decal") then
	d.Head:FindFirstChildOfClass("Decal").Transparency = 1
end
if b:FindFirstChild("Animate") then
	b:FindFirstChild("Animate"):Destroy()
end
local c
function UnCollide()
	if HumanDied then
		c:Disconnect()
		return
	end
	for b, b in next, b:GetChildren() do
		if b:IsA("BasePart") then
			b.CanCollide = false
		end
	end
end
c = game:GetService("RunService").Stepped:Connect(UnCollide)
local c = Instance.new("BindableEvent")
c.Event:connect(function()
	game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
	c:Destroy()
	HumanDied = true
	pcall(function()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = b
		b.Head:Destroy()
		b:FindFirstChildOfClass("Humanoid"):Destroy()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = d
		if b:FindFirstChildOfClass("Folder") then
			b:FindFirstChildOfClass("Folder"):Destroy()
		end
	end)
end)
game:GetService("StarterGui"):SetCore("ResetButtonCallback", c)
coroutine.wrap(function()
	while true do
		game:GetService("RunService").RenderStepped:wait()
		if not d or not d:FindFirstChild("Head") or not d:FindFirstChildOfClass("Humanoid") or d:FindFirstChildOfClass("Humanoid").Health <= 0 and not b or not b:FindFirstChild("Head") or not b:FindFirstChildOfClass("Humanoid") or b:FindFirstChildOfClass("Humanoid").Health <= 0 then
			HumanDied = true
			pcall(function()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = b
				b.Head:Destroy()
				b:FindFirstChildOfClass("Humanoid"):Destroy()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = d
				if b:FindFirstChildOfClass("Folder") then
					b:FindFirstChildOfClass("Folder"):Destroy()
				end
			end)
			if c then
				game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
				c:Destroy()
			end
			break
		end
	end
end)()
SCIFIMOVIELOL(b["Head"], d["Head"])
SCIFIMOVIELOL(b["Torso"], d["Torso"])
SCIFIMOVIELOL(b["Left Arm"], d["Left Arm"])
SCIFIMOVIELOL(b["Right Arm"], d["Right Arm"])
SCIFIMOVIELOL(b["Left Leg"], d["Left Leg"])
SCIFIMOVIELOL(b["Right Leg"], d["Right Leg"])
for c, c in pairs(b:GetChildren()) do
	if c:IsA("BasePart") and c.Name ~= "Head" then
	elseif c:IsA("BasePart") and c.Name == "Head" then

		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then
					break
				end
				c.CFrame = b.Torso.CFrame * CFrame.new(0, 1.5, 0)
			end
		end)()
	end
end

coroutine.wrap(function()
    repeat
        hb1:Wait()

        for i, av in pairs(game.workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
            if av:IsA("Accessory") and av.Name ~= "HumanoidRootPart" then
                av.Handle.Velocity = Vector3.new(0x1e,0,0)
            end
        end
    until HumanDied == true
    end)()

for b, b in next, d:GetDescendants() do
	if b:IsA("BasePart") or b:IsA("Part") then
		b.Transparency = 1
	end
end
game:GetService("RunService").RenderStepped:wait()
game:FindFirstChildOfClass("Players").LocalPlayer.Character = d
game:FindFirstChildOfClass("Workspace"):FindFirstChildOfClass("Camera").CameraSubject = d.Humanoid
for b, b in next, b:GetChildren() do
	if b:IsA("Accessory") then
		if b.Handle:FindFirstChildOfClass("Weld") then
           b.Handle:FindFirstChildOfClass("Weld"):Destroy()
		end
	end
end
if e then
	e.Parent = d
end
