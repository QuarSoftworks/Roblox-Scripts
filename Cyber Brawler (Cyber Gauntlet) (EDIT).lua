Player = game.Players.LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"]
Character = Player.Character 
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
Humanoid.MaxHealth = 50000
wait()
Humanoid.Health = 50000
Neck = Torso.Neck
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
necko = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false 
equipped = true
local Anim = "Idle"
local Effects = {}
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel",
}
mouse = Player:GetMouse()
RSH, LSH = nil, nil 
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
RSH = Torso["Right Shoulder"] 
LSH = Torso["Left Shoulder"] 


RSH.Parent = nil 
LSH.Parent = nil 

RW = Create("Weld"){
	Name = "Right Shoulder",
	Part0 = Torso ,
	C0 = cf(1.5, 0.5, 0),
	C1 = cf(0, 0.5, 0), 
	Part1 = RightArm ,
	Parent = Torso ,
}

LW = Create("Weld"){
	Name = "Left Shoulder",
	Part0 = Torso ,
	C0 = cf(-1.5, 0.5, 0),
	C1 = cf(0, 0.5, 0) ,
	Part1 = LeftArm ,
	Parent = Torso ,
}

function NoOutline(Part)
	Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
function swait(num)
	if num == 0 or num == nil then
		game:service'RunService'.Heartbeat:wait(0)
	else
		for i = 0, num do
			game:service'RunService'.Heartbeat:wait(0)
		end
	end
end
	
function nooutline(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
	local fp = Create("Part"){
		formFactor = formfactor,
		Parent = parent,
		Reflectance = reflectance,
		Transparency = transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(brickcolor)),
		Name = name,
		Size = size,
		Position = Character.Torso.Position,
		Material = material,
	}
	nooutline(fp)
	return fp
end
	
function mesh(Mesh, part, meshtype, meshid, offset, scale)
	local Msh = Create(Mesh){
		Parent = part,
		Offset = offset,
		Scale = scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = meshtype
		Msh.MeshId = meshid
	end
	return Msh
end
	
function weld(parent, part0, part1, c0, c1)
	local Weld = Create("Weld"){
		Parent = parent,
		Part0 = part0,
		Part1 = part1,
		C0 = c0,
		C1 = c1,
	}
	return Weld
end
	
	
local function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
	local edg1 = (c - a):Dot((b - a).unit)
	local edg2 = (a - b):Dot((c - b).unit)
	local edg3 = (b - c):Dot((a - c).unit)
	if edg1 <= (b - a).magnitude and edg1 >= 0 then
		a, b, c = a, b, c
	elseif edg2 <= (c - b).magnitude and edg2 >= 0 then
		a, b, c = b, c, a
	elseif edg3 <= (a - c).magnitude and edg3 >= 0 then
		a, b, c = c, a, b
	else
		assert(false, "unreachable")
	end
 
	local len1 = (c - a):Dot((b - a).unit)
	local len2 = (b - a).magnitude - len1
	local width = (a + (b - a).unit * len1 - c).magnitude
 
	local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, -(b - a).unit)
 
	local list = {}

	local Color = BrickColor.new("Really red")
 
	if len1 > 0.01 then
		local w1 = Create('WedgePart', m){
			Material = "SmoothPlastic",
			FormFactor = 'Custom',
			BrickColor = Color,
			Transparency = 0,
			Reflectance = 0,
			Material = "SmoothPlastic",
			CanCollide = false,
			Anchored = true,
			Parent = workspace,
			Transparency = 0.3,
		}
		game:GetService("Debris"):AddItem(w1, 5)
		NoOutline(w1)
		local sz = Vector3.new(0.2, width, len1)
		w1.Size = sz
		local sp = Create("SpecialMesh"){
			Parent = w1,
			MeshType = "Wedge",
			Scale = Vector3.new(0, 1, 1) * sz / w1.Size,
		}
		w1:BreakJoints()
		table.insert(Effects, {
			w1,
			"Disappear",
			.03
		})
		w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
		table.insert(list, w1)
	end
	if len2 > 0.01 then
		local w2 = Create('WedgePart', m){
			Material = "SmoothPlastic",
			FormFactor = 'Custom',
			BrickColor = Color,
			Transparency = 0,
			Reflectance = 0,
			Material = "SmoothPlastic",
			CanCollide = false,
			Anchored = true,
			Parent = workspace,
			Transparency = 0.3,
		}
		game:GetService("Debris"):AddItem(w2, 5)
		NoOutline(w2)
		local sz = Vector3.new(0.2, width, len2)
		w2.Size = sz
		local sp = Create("SpecialMesh"){
			Parent = w2,
			MeshType = "Wedge",
			Scale = Vector3.new(0, 1, 1) * sz / w2.Size,
		}
		w2:BreakJoints()
		table.insert(Effects, {
			w2,
			"Disappear",
			.03
		})
		w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
		table.insert(list, w2)
	end
	return unpack(list)
end
	
function so(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = Sounds[id].Id
		swait() 
		sou:play() 
		swait(6) 
		sou:Remove() 
	end))
end
 
function clerp(a, b, t) 
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	} 
	local ax, ay, az = a.x, a.y, a.z 
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
	local trace = m00 + m11 + m22 
	if trace > 0 then 
		local s = math.sqrt(1 + trace) 
		local recip = 0.5 / s 
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5 
	else 
		local i = 0 
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then 
			i = 2 
		end 
		if i == 0 then 
			local s = math.sqrt(m00 - m11 - m22 + 1) 
			local recip = 0.5 / s 
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip 
		elseif i == 1 then 
			local s = math.sqrt(m11 - m22 - m00 + 1) 
			local recip = 0.5 / s 
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip 
		elseif i == 2 then 
			local s = math.sqrt(m22 - m00 - m11 + 1) 
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip 
		end 
	end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
	local xs, ys, zs = x + x, y + y, z + z 
	local wx, wy, wz = w * xs, w * ys, w * zs 
	local xx = x * xs 
	local xy = x * ys 
	local xz = x * zs 
	local yy = y * ys 
	local yz = y * zs 
	local zz = z * zs 
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy)) 
end
 
function QuaternionSlerp(a, b, t) 
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4] 
	local startInterp, finishInterp; 
	if cosTheta >= 0.0001 then 
		if (1 - cosTheta) > 0.0001 then 
			local theta = math.acos(cosTheta) 
			local invSinTheta = 1 / math.sin(theta) 
			startInterp = math.sin((1 - t) * theta) * invSinTheta 
			finishInterp = math.sin(t * theta) * invSinTheta  
		else 
			startInterp = 1 - t 
			finishInterp = t 
		end 
	else 
		if (1 + cosTheta) > 0.0001 then 
			local theta = math.acos(-cosTheta) 
			local invSinTheta = 1 / math.sin(theta) 
			startInterp = math.sin((t - 1) * theta) * invSinTheta 
			finishInterp = math.sin(t * theta) * invSinTheta 
		else 
			startInterp = t - 1 
			finishInterp = t 
		end 
	end 
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp 
end

function rayCast(Pos, Dir, Max, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Asset = "http://www.roblox.com/asset/?id="

Sounds = {
	Hit1 = {
		Id = Asset..(169380525)
	},
	Hit2 = {
		Id = Asset..(169380538)
	},
	Hit3 = {
		Id = Asset..(169380528)
	},
	Punch1 = {
		Id = Asset..(200632136)
	},
	Punch2 = {
		Id = Asset..(200632136)
	},
	Punch3 = {
		Id = Asset..(200632211)
	},
	Fire = {
		Id = Asset..(168413145)
	},
	Grab = {
		Id = Asset..(200632821)
	},
}
 
ContentProvider = game:GetService("ContentProvider")
for _, v in pairs(Sounds) do
	ContentProvider:Preload(v.Id)
end



Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		if h.MaxHealth >= math.huge then
			hit:BreakJoints()
		end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			so(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
--                h:TakeDamage(Damage)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if blocked == false then
--                h:TakeDamage(Damage)
			h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = vt(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cframe = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = Player
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
	end
end

function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom", workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		TextColor3 = Color,
		TextScaled = true,
		Font = Enum.Font.ArialBold,
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

HandleA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "HandleA", Vector3.new(1.01999998, 0.410000026, 1.01999998))
HandleAweld = weld(m, Character["Right Arm"], HandleA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.86645508e-005, 0.00578308105, 0.000793457031, 1, 1.57159663e-009, 1.84536508e-009, -1.51411894e-009, 1.00000477, 9.46223736e-005, -1.81580617e-009, -9.4622359e-005, 1.00000489))
FConnectorA1 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorA1", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorA1weld = weld(m, HandleA, FConnectorA1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410087585, -1.11513186, -0.410018921, -1, 9.74741943e-006, -1.35193727e-006, -9.74743125e-006, -1.00000489, 2.3929897e-007, -1.35189885e-006, 2.39313522e-007, 1.00000489))
FConnectorA2 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorA2", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorA2weld = weld(m, HandleA, FConnectorA2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410102844, -1.10513186, -0.129695892, -1, 9.74805607e-006, -1.35614573e-006, -9.74806699e-006, -1.00000489, 5.55955921e-007, -1.35610435e-006, 5.55970473e-007, 1.00000489))
FConnectorA3 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorA3", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorA3weld = weld(m, HandleA, FConnectorA3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410087585, -1.11496186, 0.140254974, -1, 9.74844261e-006, -1.35647815e-006, -9.74845443e-006, -1.00000489, 5.93368895e-007, -1.35643631e-006, 5.93383447e-007, 1.00000489))
FConnectorA4 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorA4", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorA4weld = weld(m, HandleA, FConnectorA4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410064697, -1.11497116, 0.41003418, -1, 9.74773866e-006, -1.35528308e-006, -9.7477523e-006, -1.00000489, 5.13136911e-007, -1.35524226e-006, 5.13151463e-007, 1.00000489))
FConnectorA5 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorA5", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorA5weld = weld(m, HandleA, FConnectorA5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409896851, -1.11500096, 0.410381317, -1, 9.74811064e-006, -1.35720666e-006, -9.7481261e-006, -1.00000489, 6.21264917e-007, -1.35716482e-006, 6.21286745e-007, 1.00000489))
HitboxA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HitboxA", Vector3.new(1.22000003, 1.00999999, 1.01999998))
HitboxAweld = weld(m, HandleA, HitboxA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.10004425, 0.899994373, -7.2479248e-005, 1, 2.3913432e-011, 1.214151e-011, 3.87364897e-011, 1.00000501, 3.17668309e-008, 1.75869319e-011, -3.16504156e-008, 1.00000501))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.704981804, 0.600097656, -0.400291443, 1.07934993e-005, 1.00000513, 0.000307456852, -1, 1.07920496e-005, 4.67940163e-006, 4.67608925e-006, -0.000307456678, 1.00000513))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.210000008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409942627, -0.0047621727, 0.404830933, 1, -3.37975814e-010, -8.95103991e-010, 4.05866091e-010, 1.00000513, 0.000272899517, 9.25026722e-010, -0.000272899284, 1.00000513))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.210000008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409942627, -0.704754353, 0.404701233, 1, -6.41774189e-010, -1.14527055e-009, 7.09687087e-010, 1.00000513, 0.000235188927, 1.17513577e-009, -0.000235188694, 1.00000513))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000686645508, 0.694943428, 0.600120544, -4.16014518e-005, 9.45778302e-005, 1.00000513, -9.60050784e-007, 1.00000513, -9.45776337e-005, -1, -9.64058017e-007, -4.16016046e-005))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.646000028, 0.638000011, 1.35599995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.704681396, 0.600074768, 0.399703979, 1.07932492e-005, 1.00000513, 0.000307390932, -1, 1.07918013e-005, 4.67938798e-006, 4.67607651e-006, -0.000307390757, 1.00000513))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.620000005, 0.200000003, 0.819999993))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-005, 0.92485714, 0.000484466553, 1, 3.87098353e-009, 7.2322619e-009, -3.79667275e-009, 1.00000513, -5.19547029e-007, -7.20235427e-009, 5.19794412e-007, 1.00000513))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.399999917, 0.210000008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0950546265, -0.00472640991, 0.404769897, 1, -4.16721185e-010, -1.16062449e-009, 4.84667861e-010, 1.00000513, 0.000259734254, 1.19053056e-009, -0.000259734021, 1.00000513))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.214511871, 0.602371216, -0.525278091, 6.89506674e-009, 0.707192183, -0.707028747, -1, -4.38913787e-007, -4.48729907e-007, -6.27587383e-007, 0.707028747, 0.707192183))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.215366364, 0.602371216, -0.0753059387, 2.71407362e-006, 0.706899583, 0.707335591, -1, 2.16833246e-006, 1.66987672e-006, -3.53366175e-007, -0.707335591, 0.706899583))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409934998, -0.704768658, -0.000305175781, 1, -3.60254271e-010, -1.12575438e-009, 4.28148017e-010, 1.00000513, 0.000221444701, 1.15569176e-009, -0.000221444468, 1.00000513))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0953993797, 0.600135803, 0.399356842, 1.07937676e-005, 1.00000513, 0.000307317649, -1, 1.0792317e-005, 4.68049075e-006, 4.67718064e-006, -0.000307317474, 1.00000513))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0950679779, 0.600120544, -0.400672913, 1.07931874e-005, 1.00000513, 0.000307162001, -1, 1.07917376e-005, 4.68020016e-006, 4.67689188e-006, -0.000307161827, 1.00000513))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.620000005))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409927368, -0.00472259521, -0.000297546387, 1, -3.09861775e-010, -1.16061794e-009, 3.77793824e-010, 1.00000513, 0.00024700354, 1.19055654e-009, -0.000247003307, 1.00000513))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.399999917, 0.210000008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0950546265, 0.00469684601, 0.405296326, 1, -3.89069055e-010, -1.42533318e-009, -4.57056809e-010, -1.00000513, -0.000240535184, -1.45525392e-009, 0.000240534951, -1.00000513))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.214559555, 0.602371216, 0.0747890472, 6.91723301e-009, 0.707163751, -0.707071483, -1, -4.3898072e-007, -4.48717827e-007, -6.27488987e-007, 0.707071483, 0.707163751))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.602371216, -0.215126038, 0.214544296, 1, -2.6962903e-008, 2.48683811e-008, 1.60773062e-009, 0.706893623, 0.707334518, -3.67035575e-008, -0.707334518, 0.706893623))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 1))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.695029736, 0.600158691, -0.000602722168, 1.07924507e-005, 1.00000513, 0.000307222479, -1, 1.07909991e-005, 4.68184771e-006, 4.67853852e-006, -0.000307222246, 1.00000513))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.215208054, 0.602371216, 0.524686813, 2.71457156e-006, 0.706890941, 0.707335711, -0.999997497, 2.1679848e-006, 1.67096596e-006, -3.5231912e-007, -0.707337737, 0.706888914))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.210000008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409942627, 0.00470399857, 0.405349731, 1, -3.90714155e-010, -1.42410639e-009, -4.58702243e-010, -1.00000513, -0.000240880356, -1.45402668e-009, 0.000240880123, -1.00000513))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(1.01999998, 0.610000014, 1.01999998))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.57763672e-005, 0.699993134, -8.39233398e-005, 1, 2.65332929e-011, 1.19964039e-011, 4.16229898e-011, 1.00000513, 3.18541424e-008, 1.80098159e-011, -3.16213118e-008, 1.00000513))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.400688171, 0.694943428, 0.600135803, -4.16014518e-005, 9.45778302e-005, 1.00000513, -9.60050784e-007, 1.00000513, -9.45776337e-005, -1, -9.64058017e-007, -4.16016046e-005))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.19600004, 0.219999999, 1.35599995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(1.01999998, 0.200000003, 0.819999993))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.57763672e-005, 0.914970875, 0.000156402588, 1, 3.83146959e-010, 1.04947406e-009, -3.0014724e-010, 1.00000513, -6.28933776e-008, -1.0198371e-009, 6.3162588e-008, 1.00000513))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.602371216, -0.214633942, -0.215305328, 1, -2.69070721e-008, 2.46837875e-008, 3.65531747e-008, 0.707143307, -0.707091987, 1.77105497e-009, 0.707091987, 0.707143307))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.694721222, 0.600151062, -0.400558472, 1.0792096e-005, 1.00000513, 0.000307252514, -1, 1.07906444e-005, 4.68267717e-006, 4.67936752e-006, -0.00030725234, 1.00000513))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.200000003, 0.210000008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0950546265, -0.704750061, 0.404693604, 1, -5.70188841e-010, -1.14858878e-009, 6.38102626e-010, 1.00000513, 0.000234975247, 1.1784711e-009, -0.000234975014, 1.00000513))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.695051193, 0.600151062, 0.399570465, 1.07923161e-005, 1.00000513, 0.000307249313, -1, 1.07908654e-005, 4.68239432e-006, 4.67908512e-006, -0.000307249138, 1.00000513))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.210000008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409950256, 0.704789639, 0.405284882, 1, -5.29048194e-010, -1.16270571e-009, -5.96991845e-010, -1.00000513, -0.000257128122, -1.19258425e-009, 0.000257127889, -1.00000513))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.200000003, 0.210000008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0950469971, 0.70477581, 0.405281067, 1, -4.60379734e-010, -1.16449506e-009, -5.28324051e-010, -1.00000513, -0.000256976229, -1.19439125e-009, 0.000256975996, -1.00000513))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.99999994, 1.01999998))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.60005188, -0.304827213, -0.000297546387, 1, -6.62538246e-010, -1.16981935e-009, 7.30470628e-010, 1.00000513, 0.000246760814, 1.19967103e-009, -0.000246760581, 1.00000513))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(1.01999998, 0.200000003, 1.01999998))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.34057617e-005, 0.294992924, -0.000293731689, 1, -1.10349042e-010, -4.6138493e-010, 1.77988208e-010, 1.00000513, 7.43748387e-008, 4.9142046e-010, -7.41420081e-008, 1.00000513))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.39931488, 0.694943428, 0.600097656, -4.16014518e-005, 9.45778302e-005, 1.00000513, -9.60050784e-007, 1.00000513, -9.45776337e-005, -1, -9.64058017e-007, -4.16016046e-005))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.202000037, 0.219999999, 1.35599995))
FHandleA1 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleA1", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleA1weld = weld(m, FConnectorA1, FHandleA1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.28881836e-005, -0.0899443626, 0.000160217285, 1, 9.47310674e-010, -1.83126758e-009, -9.44816669e-010, 1, 1.51900167e-007, 1.83138127e-009, -1.51900167e-007, 1))
FHandleA2 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleA2", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleA2weld = weld(m, FConnectorA2, FHandleA2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0899934769, 0, 1, -2.30699793e-010, 1.00612851e-010, 2.9406716e-010, 1.00000572, 1.59925548e-008, -1.28238753e-010, -2.03581294e-008, 1.00000572))
FHandleA3 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleA3", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleA3weld = weld(m, FConnectorA3, FHandleA3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.090004921, 3.81469727e-006, 1, 4.48693027e-010, -1.09935172e-010, -4.47141213e-010, 1, -2.09038262e-008, 1.10048859e-010, 2.09038262e-008, 1))
FHandleA4 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleA4", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleA4weld = weld(m, FConnectorA4, FHandleA4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-006, -0.0900015831, 2.67028809e-005, 1, 8.51593795e-010, -8.99262886e-011, -8.46407722e-010, 1, -2.47964635e-008, 9.02673492e-011, 2.47964635e-008, 1))
FHandleA5 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleA5", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleA5weld = weld(m, FConnectorA5, FHandleA5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0900025368, 7.2479248e-005, 1, 1.59918379e-009, 4.29054126e-010, -1.58659819e-009, 1, -1.01346814e-007, -4.28713065e-010, 1.01324986e-007, 1))

HandleB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "HandleB", Vector3.new(1.01999998, 0.410000026, 1.01999998))
HandleBweld = weld(m, Character["Left Arm"], HandleB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.34057617e-005, 0.00579214096, -0.000717163086, -0.99999702, 1.30612687e-009, 2.74129752e-006, 1.1281549e-009, 1.00000882, -9.4532792e-005, -2.29434954e-006, -9.45326028e-005, -1.00000536))
FConnectorB1 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB1", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB1weld = weld(m, HandleB, FConnectorB1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410011292, -1.09512377, -0.40996933, -0.999990344, 9.75173589e-006, -4.76017885e-006, -9.75114472e-006, -1.00001204, 2.27628334e-007, -4.34698632e-006, 2.29010766e-007, 1.00000203))
FConnectorB2 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB2", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB2weld = weld(m, HandleB, FConnectorB2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410003662, -1.09513116, -0.129657745, -0.999986649, 9.75185594e-006, -5.20708772e-006, -9.75106377e-006, -1.00000668, 5.36027073e-007, -3.48685307e-006, 5.38973836e-007, 0.999993324))
FConnectorB3 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB3", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB3weld = weld(m, HandleB, FConnectorB3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409965515, -1.08497524, 0.140300751, -0.999993324, 9.75177409e-006, -3.97838994e-006, -9.75137755e-006, -1.00000334, 5.61856723e-007, -3.11826261e-006, 5.63341018e-007, 0.999996662))
FConnectorB4 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB4", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB4weld = weld(m, HandleB, FConnectorB4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409957886, -1.08498001, 0.410175323, -0.999991894, 9.75470903e-006, -3.12404359e-006, -9.75422699e-006, -1.00000405, 5.46198862e-007, -2.07960943e-006, 5.47988748e-007, 0.999995947))
FConnectorB5 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB5", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB5weld = weld(m, HandleB, FConnectorB5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409980774, -1.09494543, -0.409542084, -0.999974728, 9.75853163e-006, -6.0076236e-006, -9.75704006e-006, -1.00001264, 6.99823431e-007, -2.75148182e-006, 7.05331331e-007, 0.999987364))
HitboxB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HitboxB", Vector3.new(1.22000003, 1.00999999, 1.01999998))
HitboxBweld = weld(m, HandleB, HitboxB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100006104, 0.889988422, -8.01086426e-005, 0.999965847, -7.24100557e-010, 3.32365107e-006, -7.63507535e-010, 1.00002456, 3.05735739e-008, 3.58721138e-007, -2.40979716e-008, 0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410049438, 0.714781284, 0.405288696, 0.999982476, 1.32186387e-010, 7.77321588e-007, 5.98021299e-010, -1.00001609, -0.000257281994, -1.25018551e-006, 0.00025728374, -0.99999851))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(1.01999998, 0.200000003, 1.01999998))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.28881836e-005, 0.285013676, -0.000282287598, 0.999967337, -1.5549535e-009, 5.20209369e-006, 1.61488642e-010, 1.00001812, 7.64994184e-008, -1.3707679e-006, -6.97400537e-008, 0.999985218))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409980774, -0.0147089958, -0.000305175781, 0.999965847, -2.17003437e-009, 4.9788764e-006, 3.62124303e-010, 1.00002444, 0.000246998534, -1.29649527e-006, -0.000247000571, 0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410041809, -0.714772701, -0.000305175781, 0.999984264, 5.30370525e-010, 7.77336254e-007, -9.50127754e-010, 1.00000787, 0.00022139927, 1.25007e-006, -0.000221399358, 0.999992192))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410003662, 0.0146970749, 0.40537262, 0.999965847, -2.17019336e-009, 4.97882229e-006, -3.70234204e-010, -1.00002444, -0.000240876077, 1.29644116e-006, 0.00024087794, -0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(1.01999998, 0.200000003, 0.819999993))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.05175781e-005, 0.904989719, 0.000244140625, 0.999978065, -7.79672504e-009, 3.02157605e-006, 6.82267665e-009, 1.00001097, -1.16917363e-007, -1.95484972e-007, 1.21617632e-007, 0.999989033))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.620000005, 0.200000003, 0.819999993))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.57763672e-005, 0.914862633, 0.000553131104, 0.999978065, -2.87229418e-009, 2.06913091e-006, 1.8980213e-009, 1.00001097, -5.95959136e-007, 7.56950044e-007, 6.00666681e-007, 0.999989033))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 1))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.685016155, 0.60004425, -0.000576019287, 1.07880278e-005, 1.0000155, 0.000307261536, -0.999969006, 1.0787875e-005, 2.61563605e-006, 6.60559135e-006, -0.000307264534, 0.999984682))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.684755325, 0.600059509, -0.400756836, 1.0788599e-005, 1.00000787, 0.000307488954, -0.999984264, 1.07877813e-005, 3.72219597e-006, 5.74624983e-006, -0.000307490496, 0.999992192))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.685072899, 0.600067139, 0.399261475, 1.07872711e-005, 1.0000155, 0.00030746602, -0.999969006, 1.07870783e-005, 2.73933233e-006, 6.729284e-006, -0.000307469018, 0.999984682))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.399326324, 0.684971809, 0.599990845, -4.03382401e-005, 9.44945641e-005, 0.999991834, -9.62037007e-007, 1.00000787, -9.44897838e-005, -0.999983966, -9.65175104e-007, -4.23658821e-005))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.202000037, 0.219999999, 1.35599995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949478149, -0.714713573, 0.404712677, 0.999982774, 2.57471877e-010, 7.7719352e-007, -7.87075238e-010, 1.00001347, 0.000235129759, 1.25028396e-006, -0.000235130938, 0.999996126))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949478149, -0.0146975517, 0.4047966, 0.999982774, 6.53486099e-010, 7.77193463e-007, -1.11419485e-009, 1.00001299, 0.000259818073, 1.25028328e-006, -0.000259819906, 0.99999553))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.400676727, 0.684971809, 0.600036621, -4.03382401e-005, 9.44945641e-005, 0.999991834, -9.62037007e-007, 1.00000787, -9.44897838e-005, -0.999983966, -9.65175104e-007, -4.23658821e-005))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.19600004, 0.219999999, 1.35599995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000675201416, 0.684971809, 0.600013733, -4.03382401e-005, 9.44945641e-005, 0.999991834, -9.62037007e-007, 1.00000787, -9.44897838e-005, -0.999983966, -9.65175104e-007, -4.23658821e-005))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.646000028, 0.638000011, 1.35599995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.714962482, 0.599998474, -0.400279999, 1.07917776e-005, 1.00000787, 0.000307536626, -0.999984264, 1.07909609e-005, 3.72180239e-006, 5.74585465e-006, -0.000307538168, 0.999992192))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0853996277, 0.600074768, 0.399375916, 1.07918922e-005, 1.00001574, 0.000307276874, -0.999968529, 1.07916239e-005, 3.00816009e-006, 7.05953335e-006, -0.000307279872, 0.999984324))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.602294922, -0.221727371, -0.222377777, 0.999968529, -2.77844325e-008, 1.5804543e-006, -1.73086164e-006, 0.707148612, -0.707064986, 1.76833453e-006, 0.707087159, 0.707126319))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0850524902, 0.600036621, -0.400672913, 1.07914002e-005, 1.00001574, 0.0003071838, -0.999968529, 1.07914666e-005, 1.92046173e-006, 5.97185317e-006, -0.000307186769, 0.999984324))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221570969, 0.602279663, -0.532333374, -9.16450119e-007, 0.707201421, -0.707024872, -0.99998188, -4.39811004e-007, -1.23922871e-006, 3.05380581e-007, 0.707037866, 0.707188487))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221664429, 0.602294922, 0.0677280426, -5.32410468e-007, 0.707169592, -0.707043946, -0.999968529, 4.26314045e-007, -2.87682087e-006, 1.1334331e-006, 0.707066119, 0.707147479))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.602279663, -0.222204208, 0.221616745, 0.999968529, -2.7891728e-008, 1.5804543e-006, 1.76886238e-006, 0.706902444, 0.707310975, 1.7303239e-006, -0.707333207, 0.706880331))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.71464777, 0.599990845, 0.399719238, 1.07905635e-005, 1.00000787, 0.000307468435, -0.999984264, 1.07897467e-005, 3.7218565e-006, 5.74590968e-006, -0.000307469978, 0.999992192))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.222238541, 0.602272034, 0.531747818, 3.61345883e-006, 0.706890404, 0.707323194, -0.999984264, 2.18690184e-006, 8.96424808e-007, 5.20473066e-007, -0.70733428, 0.706879318))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.222442627, 0.602287292, -0.0682048798, 2.74106606e-006, 0.706903875, 0.707309544, -0.999968529, 1.72691671e-006, -1.90388391e-006, 3.00002284e-007, -0.707331777, 0.706881762))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949707031, 0.014693737, 0.405315399, 0.999965847, -2.00778438e-009, 5.06809101e-006, -1.86809165e-010, -1.00002444, -0.000240532332, 1.38570761e-006, 0.000240534195, -0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.99999994, 1.01999998))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599967957, -0.314879894, -0.000305175781, 0.999968529, -1.52550794e-009, 3.47273135e-006, 2.76023454e-010, 1.00001574, 0.000246752985, 5.82059499e-007, -0.000246754033, 0.999984324))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949478149, 0.71477747, 0.405269623, 0.999983668, 2.62990379e-010, 7.77281798e-007, 6.87050083e-010, -1.00001037, -0.00025712885, -1.25016015e-006, 0.000257130014, -0.99999398))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(1.01999998, 0.610000014, 1.01999998))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.57763672e-005, 0.690003395, 0, 0.999978065, -3.37791017e-009, 2.19185767e-006, 2.40435716e-009, 1.00001097, 5.20303729e-008, 6.34224364e-007, -4.73301043e-008, 0.999989033))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410049438, -0.714709282, 0.404720306, 0.999984264, 2.45380903e-011, 7.7730283e-007, -4.26871205e-010, 1.00000787, 0.000235340878, 1.25010342e-006, -0.000235341198, 0.999992192))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410041809, -0.0147390366, 0.404838562, 0.999983072, 5.45701151e-010, 7.77317439e-007, -1.05576647e-009, 1.0000155, 0.000272982696, 1.25019938e-006, -0.000272984529, 0.999998391))
FHandleB1 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB1", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB1weld = weld(m, FConnectorB1, FHandleB1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-005, -0.100004435, 3.81469727e-006, 0.999987125, 9.48046641e-010, -8.29304327e-007, -1.90026062e-009, 1.00000644, -2.25118129e-008, -8.29517148e-007, 1.97178451e-008, 0.999993563))
FHandleB2 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB2", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB2weld = weld(m, FConnectorB2, FHandleB2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0999953747, -1.90734863e-005, 0.999986887, 1.7767473e-009, -8.2923782e-007, -2.74682477e-009, 1.00000656, -3.37167876e-008, -8.60301839e-007, 3.08791641e-008, 0.999993443))
FHandleB3 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB3", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB3weld = weld(m, FConnectorB3, FHandleB3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-005, -0.110008478, -6.48498535e-005, 0.999993801, 1.65772562e-009, -1.46104639e-007, -2.11578732e-009, 1.0000031, -3.14466888e-008, -6.52590643e-007, 3.01006366e-008, 0.999996901))
FHandleB4 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB4", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB4weld = weld(m, FConnectorB4, FHandleB4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-005, -0.110030413, -4.57763672e-005, 0.999992371, -3.29658301e-010, -1.30871194e-006, -2.33423003e-010, 1.00000381, -5.04951458e-009, 3.25705969e-007, 3.39059625e-009, 0.999996185))
FHandleB5 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB5", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB5weld = weld(m, FConnectorB5, FHandleB5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-006, -0.0900087357, -0.000114440918, 0.999993801, 3.53735596e-009, -1.22842721e-006, -3.99611277e-009, 1.0000031, -1.37908501e-007, 4.29716692e-007, 1.36555173e-007, 0.999996901))

function atktype(s, e)
	coroutine.resume(coroutine.create(function()
		attacktype = e
		wait(.5)
		attacktype = s
	end))
end

function attackone()
	attack = true
	local con = HitboxA.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 20, 30, math.random(1,5), "Normal", RootPart, .1, "Hit1", 1)
	end) 
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(-70)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(70)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-70)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(140), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
		FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
		FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
		FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
		FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
		FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), .3)
	end
	so("Punch1", HitboxA, 1, .8)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(70)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-70)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(20), math.rad(20), math.rad(80)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(30)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-140), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
		FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
	end
	attack = false
	con:disconnect()
	atktype(1, 2)
end

function attacktwo()
	attack = true
	local con = HitboxB.Touched:connect(function(hit)
		Damagefunc(HitboxB, hit, 20, 30, math.random(1,5), "Normal", RootPart, .1, "Hit2", 1)
	end) 
	so("Punch2", HitboxB, 1, .9)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(-70)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(30 * i)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(140), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
		FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
	end
	attack = false
	con:disconnect()
	atktype(1, 3)
end

function attackthree()
	attack = true
	local con = RightLeg.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 20, 30, math.random(1,5), "Normal", RootPart, .1, "Hit3", 1)
	end) 
	Humanoid.WalkSpeed = 0
	Torso.Velocity = Head.CFrame.lookVector * 75
	so("Punch3", HitboxB, 1, .9)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -.5) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(130)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
		FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
	end
	attack = false
	Humanoid.WalkSpeed = 16
	con:disconnect()
	atktype(1, 1)
end

function BlastEffect(brickcolor, cframe, x1, y1, z1, x2, y2, z2)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
	coroutine.resume(coroutine.create(function() 
		for i = 0, 1, 0.05 do
			wait()
			prt.Transparency = i
			msh.Scale = msh.Scale + vt(x2, y2, z2)
		end
		prt.Parent = nil
	end))
end

function MagniDamage(Hit, Part, magni, mindam, maxdam, knock, Type)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then 
					Damagefunc(Hit, head, mindam, maxdam, knock, Type, RootPart, .2, 1, 3)
				end
			end
		end
	end
end

function MagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			swait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

function BlastJump()
	if Anim == "Idle" or Anim == "Walk" then
		attack = true
		Humanoid.WalkSpeed = 0
		for i = 0, 1, 0.1 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -.5) * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(20)), 0.3)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)), 0.3)
			RH.C0 = clerp(RH.C0, cf(1, -.5, -.5) * angles(math.rad(0), math.rad(90), math.rad(20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
			LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
			FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
			FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
			FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), .3)
			FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
			FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), .3)
			FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
			FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
			FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), .3)
			FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
			FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), .3)
		end
		so("Fire", Torso, 1, .8)
		MagniDamage(HitboxA, HitboxA, 20, 20, 50, 20, "Knockdown")
		BlastEffect(BrickColor.new("Really red"), Torso.CFrame * angles(.4, 0, 0) * CFrame.new(0, -1, -1), 1, 1, 1, .7, .7, .7)
		BlastEffect(BrickColor.new("Really black"), Torso.CFrame * angles(.4, 0, 0) * CFrame.new(0, -1, -1), .9, .9, .9, .6, .6, .6)
		MagicCircle(BrickColor.new("Really red"), RightArm.CFrame, 0.5, 0.5, 0.5, 0.7, 0.7, 0.7, 0.05)
		MagicCircle(BrickColor.new("Really black"), RightArm.CFrame, 0.4, 0.4, 0.4, 0.6, 0.6, 0.6, 0.05)
		MagicCircle(BrickColor.new("Really red"), LeftArm.CFrame, 0.5, 0.5, 0.5, 0.7, 0.7, 0.7, 0.05)
		MagicCircle(BrickColor.new("Really black"), LeftArm.CFrame, 0.4, 0.4, 0.4, 0.6, 0.6, 0.6, 0.05)
		Humanoid.WalkSpeed = 16
		Humanoid.Jump = true
		Torso.Velocity = vt(0, 200, 0)
		attack = false
	end
end

function DoubleJump()
		attack = true
		so("Fire", Torso, 1, .8)
		BlastEffect(BrickColor.new("Really red"), Torso.CFrame * angles(.4, 0, 0) * CFrame.new(0, -1, -1), 1, 1, 1, .7, .7, .7)
		BlastEffect(BrickColor.new("Really black"), Torso.CFrame * angles(.4, 0, 0) * CFrame.new(0, -1, -1), .9, .9, .9, .6, .6, .6)
		Humanoid.WalkSpeed = 16
		Humanoid.Jump = true
		Torso.Velocity = vt(0, 200, 0)
		for i = 0, 1, 0.05 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(6*i, math.rad(0), math.rad(0)), .3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
			LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
			FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
			FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
			FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), .3)
			FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
			FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), .3)
			FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
			FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
			FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), .3)
			FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
			FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), .3)
		end
		for i = 0, 1, 0.02 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), .3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(150), math.rad(0), math.rad(-30)), 0.3)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.5) * angles(math.rad(150), math.rad(0), math.rad(30)), 0.3)
			RH.C0 = clerp(RH.C0, cf(1, -1, -.5) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
			LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-30), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
				FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
		end
	    MagniDamage(HitboxA, HitboxA, 20, 20, 50, 20, "Up")
	    so("Fire", Torso, 1, .5)
	    local hit,pos=rayCast(Torso.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,100,Character)
if hit~=nil then
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really red"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)
for i=1,10 do
local Col=BrickColor.new("Really black")
local groundpart=part(3,Character,"SmoothPlastic",0,0,Col,"Ground",vt(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart.Anchored=true
groundpart.CanCollide=false
groundpart.CFrame=cf(pos)*cf(math.random(-500,500)/100,0,math.random(-500,500)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local Col2=BrickColor.new("Really red")
local groundpart2=part(3,Character,"SmoothPlastic",0,0,Col2,"Ground",vt(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart2.Anchored=true
groundpart2.CanCollide=false
groundpart2.CFrame=cf(pos)*cf(math.random(-500,500)/100,0,math.random(-500,500)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,5)
game:GetService("Debris"):AddItem(groundpart2,5)
end 
BlastEffect(BrickColor.new("Really red"),cf(pos),1,1,1,.7,.7,.7)
BlastEffect(BrickColor.new("Really black"),cf(pos),.9,.9,.9,.6,.6,.6)
MagicCircle(BrickColor.new("Really black"),cf(pos),3,3,3,5,5,5,0.05)
MagicCircle(BrickColor.new("Really red"),cf(pos),4,4,4,6,6,6,0.05)
MagniDamage(ref,ref,10,10,20,math.random(10,20),"Knockdown")
end
		for i = 0, 1, 0.1 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -.5) * angles(math.rad(50), math.rad(0), math.rad(0)), .3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -.7) * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
			LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -.7) * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
			RH.C0 = clerp(RH.C0, cf(1, -.5, -.5) * angles(math.rad(50), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
			LH.C0 = clerp(LH.C0, cf(-1, -1, -.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
				FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
		end
		attack = false
end

function MultiPunch()
attack = true
	local con1 = HitboxA.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 1500, 9999, math.random(1,5), "Normal", RootPart, .1, "Hit1", 1)
	end) 
	local con2 = HitboxB.Touched:connect(function(hit)
		Damagefunc(HitboxB, hit, 1500, 9999, math.random(1,5), "Normal", RootPart, .1, "Hit2", 1)
	end) 
for i = 1,10 do
	so("Punch1", HitboxA, 1, .8)
	for i = 0, 1, 0.1 do
wait()
		Torso.Velocity = Head.CFrame.lookVector * 50
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(70)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-70)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(20), math.rad(20), math.rad(80)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(30)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-140), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
		FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
	end
	so("Punch2", HitboxB, 1, .9)
	for i = 0, 1, 0.2 do
		wait()
		Torso.Velocity = Head.CFrame.lookVector * 10
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(-70)), 1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(70)), 1)
		RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-30)), 1)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 0) * angles(math.rad(20), math.rad(-20), math.rad(-80)), 1)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(140), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 1)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 1)
		FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 1)
		FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 1)
		FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 1)
		FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 1)
		FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 1)
		FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 1)
		FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 1)
		FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 1)
		FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 1)
		FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 1)
	end
		end
attack = false
con1:disconnect()
con2:disconnect()
end

local Grabbing = false

function Grab()
attack = true
so("Punch3",HitboxA,1,0.5)
if Grabbing == false then
gp = nil
con1=HitboxA.Touched:connect(function(hit) -- credits to TheDarkRevenant for the grabbing
local ht = hit.Parent          
local hum1=ht:FindFirstChild('Humanoid')
if hum1 ~= nil then
hum1.PlatformStand=true
gp = ht
Grabbing = true
so("Grab", Torso, 1, .8)
local asd=weld(RightArm,RightArm,ht:FindFirstChild("Torso"),CFrame.new(0,-1.7,0),CFrame.new(0,0,0))
asd.Parent = RightArm
asd.Name = "asd"
asd.C0=asd.C0*CFrame.Angles(math.rad(-90),0,0)
so("http://roblox.com/asset/?id=200632821",Torso,1,.9)
elseif hum1 == nil then
con1:disconnect()
wait() return
end
end)
end
if Grabbing == false then
for i = 0,1,0.05 do
swait()
Torso.Velocity = Head.CFrame.lookVector * 50
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-90)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-60)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
				FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), .3)
				FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), .3)
				FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
				FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
				FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
end
end
if Grabbing == true then
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(0)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.5) * angles(math.rad(130), math.rad(0), math.rad(0)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
		FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
	   end
so("Fire",Torso,1,.7)
so("Fire",Torso,1,.9)
MagniDamage(HitboxA,HitboxA,5,30,80,0,"Up")
MagicCircle(BrickColor.new("Really red"),RightArm.CFrame,3,3,3,5,5,5,0.05)
MagicCircle(BrickColor.new("Really black"),RightArm.CFrame,2,2,2,4,4,4,0.05)
BlastEffect(BrickColor.new("Really red"),Torso.CFrame,1,1,1,.7,.7,.7)
BlastEffect(BrickColor.new("Really black"),Torso.CFrame,.9,.9,.9,.6,.6,.6)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(0)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.5) * angles(math.rad(130), math.rad(0), math.rad(0)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
		FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
	   end
end
for i,v in pairs(RightArm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()
         
end
end
con1:disconnect()
Grabbing = false
attack = false
end

function Flip()
attack = true
for i = 0,1,0.1 do
swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(0), math.rad(-90), math.rad(-170)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.5) * angles(math.rad(0), math.rad(90), math.rad(170)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
     			FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
end
for i = 0,1,0.01 do
swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(0), math.rad(-90), math.rad(-150)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.5) * angles(math.rad(0), math.rad(90), math.rad(150)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
     			FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
end
attack = false
end

mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attacktype = 2
		attackone()
	elseif attack == false and attacktype == 2 then
		attacktype = 1
		attacktwo()
	elseif attack == false and attacktype == 3 then
		attacktype = 1
		attackthree()
	end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'q' then
		BlastJump()
	elseif attack == false and k == ' ' and Anim == 'Jump' then
		DoubleJump()
	elseif attack == false and k == 'e' then
		MultiPunch()
	elseif attack == false and k == 'r' then
		Grab()
	elseif attack == false and k == 'f' then
		Flip()
	end
end)

local sine = 0
local change = 1
local val = 0
local idle = 0
local donum = 0

while true do
	swait()
	sine = sine + change
	local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	local velderp = RootPart.Velocity.y
	hitfloor, posfloor = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		if idle >= 500 then
			if attack == false then
			end
		end
		if donum >= .5 then
			handidle = true
		elseif donum <= 0 then
			handidle = false
		end
		if handidle == false then
			donum = donum + 0.003
		else
			donum = donum - 0.003
		end
		if RootPart.Velocity.y > 1 and hitfloor == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 2) * angles(math.rad(30), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(70)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(-70)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -.5, -.5) * angles(math.rad(0), math.rad(90), math.rad(-30)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -.8, -.5) * angles(math.rad(0), math.rad(-90), math.rad(20)), .3)
				FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
				FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
				FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), .3)
				FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), .3)
				FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
				FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
				FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), .3)
				FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hitfloor == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(30), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(0), math.rad(0), math.rad(130)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.7, 0) * angles(math.rad(0), math.rad(0), math.rad(-130)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -.7, -.5) * angles(math.rad(0), math.rad(90), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, -.5) * angles(math.rad(0), math.rad(-90), math.rad(10)), .3)
				FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), .3)
				FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), .3)
				FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
				FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
				FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), .3)
				FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), .3)
				FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
				FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(-30)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(30)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(90) + donum / 2, math.rad(30) + donum / 2, math.rad(-40)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 0) * angles(math.rad(80) + donum / 2, math.rad(-30) - donum / 2, math.rad(-20)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
     			FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
			end
		elseif torvel > 2 and hitfloor ~= nil then
			Anim = "Walk"
			if attack == false then
				change = 3
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(15)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-15)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
				FHandleA1weld.C0 = clerp(FHandleA1weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
				FHandleA2weld.C0 = clerp(FHandleA2weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-21)), .3)
				FHandleA3weld.C0 = clerp(FHandleA3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-22)), .3)
				FHandleA4weld.C0 = clerp(FHandleA4weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-23)), .3)
				FHandleA5weld.C0 = clerp(FHandleA5weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(24)), .3)
				FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
				FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-21)), .3)
				FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-22)), .3)
				FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-23)), .3)
				FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -.05, 0) * angles(math.rad(0), math.rad(0), math.rad(24)), .3)
			end
		end
	end
	if #Effects > 0 then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * cf(0, .5, 0)
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end