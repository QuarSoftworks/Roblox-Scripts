pe = game.Players.LocalPlayer
char = pe.Character
color1 = "Bright red"
color2 = "Black"
color3 = "Neon orange"
glass = "Light blue"
local Car = Instance.new("Model")
Car.Parent = game.Workspace
local p = Instance.new("Part")
p.Parent = Car
p.Size = Vector3.new(12,1,19)
p.CFrame = char.Torso.CFrame * CFrame.new(10, 2, 0)
p.TopSurface = 0
p.BrickColor = BrickColor.new(color2)
p.Anchored = true
local p1 = Instance.new("Part")
p1.Parent = Car
p1.Size = Vector3.new(1,6,1)
p1.CFrame = p.CFrame * CFrame.new(5.5, 3.6, 0)
p1.TopSurface = 0
p1.BrickColor = BrickColor.new(color1)
p1.Anchored = false
local p2 = Instance.new("Part")
p2.Parent = Car
p2.Size = Vector3.new(1,6,1)
p2.CFrame = p.CFrame * CFrame.new(-5.5, 3.6, 0)
p2.TopSurface = 0
p2.BrickColor = BrickColor.new(color1)
p2.Anchored = false
local p3 = Instance.new("Part")
p3.Parent = Car
p3.Size = Vector3.new(1,2,5)
p3.CFrame = p.CFrame * CFrame.new(-5.5, 1.8, 3)
p3.TopSurface = 0
p3.BrickColor = BrickColor.new(color1)
p3.Anchored = false
local w = Instance.new("Part")
w.Parent = Car
w.Size = Vector3.new(1,4,5)
w.CFrame = p3.CFrame * CFrame.new(0, 3, 0)
w.TopSurface = 0
w.BrickColor = BrickColor.new(glass)
w.Anchored = false
w.Transparency = 0.5
w.Reflectance = 0.1
local p4 = Instance.new("Part")
p4.Parent = Car
p4.Size = Vector3.new(1,2,5)
p4.CFrame = p.CFrame * CFrame.new(5.5, 1.8, 3)
p4.TopSurface = 0
p4.BrickColor = BrickColor.new(color1)
p4.Anchored = false
local w1 = Instance.new("Part")
w1.Parent = Car
w1.Size = Vector3.new(1,4,5)
w1.CFrame = p4.CFrame * CFrame.new(0, 3, 0)
w1.TopSurface = 0
w1.BrickColor = BrickColor.new(glass)
w1.Anchored = false
w1.Transparency = 0.5
w1.Reflectance = 0.1
local p5 = Instance.new("Part")
p5.Parent = Car
p5.Size = Vector3.new(1,2,5)
p5.CFrame = p.CFrame * CFrame.new(-5.5, 1.8, -3)
p5.TopSurface = 0
p5.BrickColor = BrickColor.new(color1)
p5.Anchored = false
local w2 = Instance.new("Part")
w2.Parent = Car
w2.Size = Vector3.new(1,4,5)
w2.CFrame = p5.CFrame * CFrame.new(0, 3, 0)
w2.TopSurface = 0
w2.BrickColor = BrickColor.new(glass)
w2.Anchored = false
w2.Transparency = 0.5
w2.Reflectance = 0.1
local p6 = Instance.new("Part")
p6.Parent = Car
p6.Size = Vector3.new(1,2,5)
p6.CFrame = p.CFrame * CFrame.new(5.5, 1.8, -3)
p6.TopSurface = 0
p6.BrickColor = BrickColor.new(color1)
p6.Anchored = false
local w3 = Instance.new("Part")
w3.Parent = Car
w3.Size = Vector3.new(1,4,5)
w3.CFrame = p6.CFrame * CFrame.new(0, 3, 0)
w3.TopSurface = 0
w3.BrickColor = BrickColor.new(glass)
w3.Anchored = false
w3.Transparency = 0.5
w3.Reflectance = 0.1
local s1 = Instance.new("Seat")
s1.formFactor = "Plate"
s1.Parent = Car
s1.Size = Vector3.new(2,0.4,2)
s1.CFrame = p.CFrame * CFrame.new(-2.5, 0.7, -3)
s1.TopSurface = 0
s1.BrickColor = BrickColor.new(color1)
s1.Anchored = false
local s2 = Instance.new("Seat")
s2.formFactor = "Plate"
s2.Parent = Car
s2.Size = Vector3.new(2,0.4,2)
s2.CFrame = p.CFrame * CFrame.new(2.5, 0.7, -3)
s2.TopSurface = 0
s2.BrickColor = BrickColor.new(color1)
s2.Anchored = false
local s3 = Instance.new("Seat")
s3.formFactor = "Plate"
s3.Parent = Car
s3.Size = Vector3.new(2,0.4,2)
s3.CFrame = p.CFrame * CFrame.new(-2.5, 0.7, 3)
s3.TopSurface = 0
s3.BrickColor = BrickColor.new(color1)
s3.Anchored = false
local s4 = Instance.new("VehicleSeat")
s4.Parent = Car
s4.Size = Vector3.new(2,0.4,2)
s4.CFrame = p.CFrame * CFrame.new(2.5, 1.1, 3)
s4.TopSurface = 0
s4.BrickColor = BrickColor.new(color1)
s4.Anchored = false
local p7 = Instance.new("Part")
p7.Parent = Car
p7.Size = Vector3.new(2,3,1)
p7.CFrame = s1.CFrame * CFrame.new(0, 1, -1.5)
p7.TopSurface = 0
p7.BrickColor = BrickColor.new(color1)
p7.Anchored = false
local p8 = Instance.new("Part")
p8.Parent = Car
p8.Size = Vector3.new(2,3,1)
p8.CFrame = s2.CFrame * CFrame.new(0, 1, -1.5)
p8.TopSurface = 0
p8.BrickColor = BrickColor.new(color1)
p8.Anchored = false
local p9 = Instance.new("Part")
p9.Parent = Car
p9.Size = Vector3.new(2,3,1)
p9.CFrame = s3.CFrame * CFrame.new(0, 1, -1.5)
p9.TopSurface = 0
p9.BrickColor = BrickColor.new(color1)
p9.Anchored = false
local q = Instance.new("Part")
q.Parent = Car
q.Size = Vector3.new(2,3,1)
q.CFrame = s4.CFrame * CFrame.new(0, 1, -1.5)
q.TopSurface = 0
q.BrickColor = BrickColor.new(color1)
q.Anchored = false
local q1 = Instance.new("Part")
q1.Parent = Car
q1.Size = Vector3.new(12,2,2)
q1.CFrame = p.CFrame * CFrame.new(0, 1.8, 6.5)
q1.TopSurface = 0
q1.BrickColor = BrickColor.new(color1)
q1.Anchored = false
local q2 = Instance.new("WedgePart")
q2.Parent = Car
q2.Size = Vector3.new(8,4,2)
q2.CFrame = p.CFrame * CFrame.new(0, 4.8, 6.5)
q2.TopSurface = 0
q2.BrickColor = BrickColor.new(glass)
q2.Anchored = false
q2.Transparency = 0.5
q2.Reflectance = 0.1
local q3 = Instance.new("WedgePart")
q3.Parent = Car
q3.Size = Vector3.new(2,4,2)
q3.CFrame = p.CFrame * CFrame.new(5, 4.8, 6.5)
q3.TopSurface = 0
q3.BrickColor = BrickColor.new(color1)
q3.Anchored = false
local q4 = Instance.new("WedgePart")
q4.Parent = Car
q4.Size = Vector3.new(2,4,2)
q4.CFrame = p.CFrame * CFrame.new(-5, 4.8, 6.5)
q4.TopSurface = 0
q4.BrickColor = BrickColor.new(color1)
q4.Anchored = false
local q5 = Instance.new("WedgePart")
q5.Parent = Car
q5.Size = Vector3.new(8,4,2)
q5.CFrame = p.CFrame * CFrame.new(0, 4.8, -6.5)
q5.TopSurface = 0
q5.BrickColor = BrickColor.new(glass)
q5.Anchored = false
q5.Transparency = 0.5
q5.Reflectance = 0.1
local q6 = Instance.new("WedgePart")
q6.Parent = Car
q6.Size = Vector3.new(2,4,2)
q6.CFrame = p.CFrame * CFrame.new(5, 4.8, -6.5)
q6.TopSurface = 0
q6.BrickColor = BrickColor.new(color1)
q6.Anchored = false
local q7 = Instance.new("WedgePart")
q7.Parent = Car
q7.Size = Vector3.new(2,4,2)
q7.CFrame = p.CFrame * CFrame.new(-5, 4.8, -6.5)
q7.TopSurface = 0
q7.BrickColor = BrickColor.new(color1)
q7.Anchored = false
local q8 = Instance.new("Part")
q8.Parent = Car
q8.Size = Vector3.new(12,2,2)
q8.CFrame = p.CFrame * CFrame.new(0, 1.8, -6.5)
q8.TopSurface = 0
q8.BrickColor = BrickColor.new(color1)
q8.Anchored = false
local q9 = Instance.new("Part")
q9.Parent = Car
q9.formFactor = "Plate"
q9.Size = Vector3.new(12,0.4,11)
q9.CFrame = p.CFrame * CFrame.new(0, 6.6, 0)
q9.TopSurface = 0
q9.BrickColor = BrickColor.new(color1)
q9.Anchored = false
parts = {p1, p2, p3, p4, p5, p6, p7, p8, p9, q, q1, q2, q3, q4, q5, q6, q7, q8, q9, w1, w2, w3, w, s1, s2, s3, s4}
for i = 1, #parts do
local weld = Instance.new("Weld")
weld.Parent = p
weld.Part0 = weld.Parent
weld.Part1 = parts[i]
parts[i].Anchored = false
parts[i]:MakeJoints()
end
Car:makeJoints()
wait(1)
p.Anchored = false