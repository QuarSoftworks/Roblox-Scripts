Me = game.Players.LocalPlayer
char = Me.Character
larm = char["Left Arm"]
rarm = char["Right Arm"]
lleg = char["Left Leg"]
rleg = char["Right Leg"]
torso = char.Torso

lleg.Transparency = 1
rleg.Transparency = 1
larm.Transparency = 1
rarm.Transparency = 1
torso.Transparency = 1
------------------------------------------------------------------ Player -------------------------------------------------------------------

----------------------------------------------------------------- Left Arm -----------------------------------------------------------------
larm1 = Instance.new("Part", char)
larm1.Name = "Middle"
larm1.BrickColor = BrickColor.new("Royal purple")
larm1.Size = Vector3.new(1, 2, 1)
larm1.CanCollide = false
larm1.BottomSurface = "Smooth"
larm1.TopSurface = "Smooth"
larm1.Material = "Neon"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm1
Weld.C1 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)

larm2 = Instance.new("Part", char)
larm2.BrickColor = BrickColor.new("Really black")
larm2.Size = Vector3.new(1, 0.4, 1)
larm2.CanCollide = false
larm2.BottomSurface = "Smooth"
larm2.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm2
Weld.C1 = CFrame.new(-0.452633858, -0.349740982, -1.50225353, -0.00506608887, 0.999986708, -0.00096991309, -0.0106740929, 0.000915773562, 0.999942601, 0.999930143, 0.0050761546, 0.0106693096)

larm3 = Instance.new("Part", char)
larm3.BrickColor = BrickColor.new("Really black")
larm3.Size = Vector3.new(1, 0.4, 1)
larm3.CanCollide = false
larm3.BottomSurface = "Smooth"
larm3.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm3
Weld.C1 = CFrame.new(-0.452513218, -1.90224648, -0.0102577209, -0.00506604509, 0.999986708, -0.000969912624, 0.999930143, 0.00507611083, 0.0106693096, 0.0106740929, -0.000915773562, -0.999942601)	

larm4 = Instance.new("Part", char)
larm4.BrickColor = BrickColor.new("Really black")
larm4.Size = Vector3.new(1, 0.4, 1)
larm4.CanCollide = false
larm4.BottomSurface = "Smooth"
larm4.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm4
Weld.C1 = CFrame.new(-0.452511787, -0.41024971, 1.50225258, -0.00506623974, 0.999986708, -0.000969914719, 0.0106740929, -0.000915773562, -0.999942601, -0.999930143, -0.00507630548, -0.0106693096)	

larm5 = Instance.new("Part", char)
larm5.BrickColor = BrickColor.new("Really black")
larm5.Size = Vector3.new(1, 0.4, 1)
larm5.CanCollide = false
larm5.BottomSurface = "Smooth"
larm5.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm5
Weld.C1 = CFrame.new(-1.50225163, -0.762512684, 0.0102577209, 0.999930143, 0.0050761546, 0.0106693534, -0.00506608794, 0.999986708, -0.000970000518, -0.0106741367, 0.000915860757, 0.999942601)

larm6 = Instance.new("Part", char)
larm6.BrickColor = BrickColor.new("Really black")
larm6.Size = Vector3.new(1, 0.4, 1)
larm6.CanCollide = false
larm6.BottomSurface = "Smooth"
larm6.TopSurface = "Smooth"
Mesh = Instance.new("SpecialMesh", larm6)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1.1, 1.1, 1.1)
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm6
Weld.C1 = CFrame.new(0.0102558136, 0.847481251, 1.50225353, -0.0106740929, 0.00091586099, 0.999942601, -0.00506608794, 0.999986708, -0.000970000518, -0.999930143, -0.0050761546, -0.0106693096)

larm7 = Instance.new("Part", char)
larm7.BrickColor = BrickColor.new("Royal purple")
larm7.Size = Vector3.new(0.5, 0.3, 2)
larm7.CanCollide = false
larm7.BottomSurface = "Smooth"
larm7.TopSurface = "Smooth"
larm7.Material = "Neon"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm7
Weld.C1 = CFrame.new(-0.339956284, 1.83238316, 1.50933075, 0.11770986, 0.484406531, 0.866887927, -0.967169523, 0.253912479, -0.0105566857, -0.225227386, -0.837184966, 0.498391271)

larm8 = Instance.new("Part", char)
larm8.BrickColor = BrickColor.new("Really black")
larm8.Size = Vector3.new(1, 0.4, 1)
larm8.CanCollide = false
larm8.BottomSurface = "Smooth"
larm8.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm8
Weld.C1 = CFrame.new(0.247514963, -0.0102424622, 1.58225441, -0.00506623974, 0.999986708, -0.000969914719, 0.0106740929, -0.000915773562, -0.999942601, -0.999930143, -0.00507630548, -0.0106693096)	
----------------------------------------------------------------- Right Arm -----------------------------------------------------------------
rarm1 = Instance.new("Part", char)
rarm1.Name = "Middle"
rarm1.BrickColor = BrickColor.new("Royal purple")
rarm1.Size = Vector3.new(1, 2, 1)
rarm1.CanCollide = false
rarm1.BottomSurface = "Smooth"
rarm1.TopSurface = "Smooth"
rarm1.Material = "Neon"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm1
Weld.C1 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	

rarm2 = Instance.new("Part", char)
rarm2.BrickColor = BrickColor.new("Really black")
rarm2.Size = Vector3.new(1, 0.4, 1)
rarm2.CanCollide = false
rarm2.BottomSurface = "Smooth"
rarm2.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm2
Weld.C1 = CFrame.new(-0.458259583, -0.356315613, 1.50168037, 0.00366159994, 0.999978125, -0.00550877256, 0.00621323148, 0.00548594771, 0.999965668, 0.999974012, -0.00369570963, -0.00619300362)

rarm3 = Instance.new("Part", char)
rarm3.BrickColor = BrickColor.new("Really black")
rarm3.Size = Vector3.new(1, 0.4, 1)
rarm3.CanCollide = false
rarm3.BottomSurface = "Smooth"
rarm3.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm3
Weld.C1 = CFrame.new(-1.50168133, -0.768137932, -0.00367927551, -0.999974012, 0.00369570986, 0.00619304739, 0.00366159948, 0.999978125, -0.00550886011, -0.00621327572, -0.00548603525, -0.999965668)

rarm4 = Instance.new("Part", char)
rarm4.BrickColor = BrickColor.new("Really black")
rarm4.Size = Vector3.new(1, 0.4, 1)
rarm4.CanCollide = false
rarm4.BottomSurface = "Smooth"
rarm4.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm4
Weld.C1 = CFrame.new(-0.00368309021, 1.8716774, 0.458146095, -0.00621323194, -0.00548603525, -0.999965668, 0.999974012, -0.0036957534, -0.00619300315, -0.00366164325, -0.999978125, 0.00550886057)

rarm5 = Instance.new("Part", char)
rarm5.BrickColor = BrickColor.new("Really black")
rarm5.Size = Vector3.new(1, 0.4, 1)
rarm5.CanCollide = false
rarm5.BottomSurface = "Smooth"
rarm5.TopSurface = "Smooth"
Mesh = Instance.new("SpecialMesh", rarm5)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1.1, 1.1, 1.1)
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm5
Weld.C1 = CFrame.new(0.00368118286, 0.841855764, -1.50168228, 0.00621323194, 0.00548603525, 0.999965668, 0.00366159948, 0.999978125, -0.00550886011, -0.999974012, 0.00369570963, 0.00619300362)

rarm6 = Instance.new("Part", char)
rarm6.BrickColor = BrickColor.new("Really black")
rarm6.Size = Vector3.new(1, 0.4, 1)
rarm6.CanCollide = false
rarm6.BottomSurface = "Smooth"
rarm6.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm6
Weld.C1 = CFrame.new(-1.50168133, -0.403675079, 0.458138466, -0.999974012, 0.00369575364, 0.00619304692, -0.00621327572, -0.00548603525, -0.999965668, -0.00366164325, -0.999978125, 0.00550886057)

rarm7 = Instance.new("Part", char)
rarm7.BrickColor = BrickColor.new("Royal purple")
rarm7.Size = Vector3.new(0.5, 0.3, 2)
rarm7.CanCollide = false
rarm7.BottomSurface = "Smooth"
rarm7.TopSurface = "Smooth"
rarm7.Material = "Neon"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm7
Weld.C1 = CFrame.new(0.344418526, -1.80139351, -1.50391006, 0.122256897, -0.48818168, -0.864136577, -0.966848493, -0.25524351, 0.00740774209, -0.224181563, 0.834583461, -0.503202915)

rarm8 = Instance.new("Part", char)
rarm8.BrickColor = BrickColor.new("Really black")
rarm8.Size = Vector3.new(1, 0.4, 1)
rarm8.CanCollide = false
rarm8.BottomSurface = "Smooth"
rarm8.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm8
Weld.C1 = CFrame.new(0.241888285, -0.00366973877, -1.56167889, 0.00366144883, 0.999978125, -0.00550877163, -0.00621323148, -0.00548594771, -0.999965668, -0.999974012, 0.00369555852, 0.00619300455)
----------------------------------------------------------------- Left Leg -----------------------------------------------------------------
lleg1 = Instance.new("Part", char)
lleg1.Name = "Middle"
lleg1.BrickColor = BrickColor.new("Royal purple")
lleg1.Size = Vector3.new(1, 2, 1)
lleg1.CanCollide = false
lleg1.BottomSurface = "Smooth"
lleg1.TopSurface = "Smooth"
lleg1.Material = "Neon"
Weld = Instance.new("Weld",lleg) 
Weld.Part0 = lleg
Weld.C0 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = lleg1
Weld.C1 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)

lleg2 = Instance.new("Part", char)
lleg2.BrickColor = BrickColor.new("Really black")
lleg2.Size = Vector3.new(1, 0.4, 1)
lleg2.CanCollide = false
lleg2.BottomSurface = "Smooth"
lleg2.TopSurface = "Smooth"
Weld = Instance.new("Weld",lleg) 
Weld.Part0 = lleg
Weld.C0 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = lleg2
Weld.C1 = CFrame.new(0.898587704, 4.77446556, 2.3581152, -7.17753299e-023, 1, 4.37113883e-008, 1.64202821e-015, -4.37113883e-008, 1, 1, -1.4355066e-022, 0)

lleg3 = Instance.new("Part", char)
lleg3.BrickColor = BrickColor.new("Really black")
lleg3.Size = Vector3.new(0.5, 0.3, 2)
lleg3.CanCollide = false
lleg3.BottomSurface = "Smooth"
lleg3.TopSurface = "Smooth"
Weld = Instance.new("Weld",lleg) 
Weld.Part0 = lleg
Weld.C0 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = lleg3
Weld.C1 = CFrame.new(4.69929504, -1.49470997, 3.25491428, 0.183012843, 0.683012605, 0.707106829, -0.965925813, 0.258819133, 1.06770166e-007, -0.183012709, -0.683012724, 0.707106769)

lleg4 = Instance.new("Part", char)
lleg4.BrickColor = BrickColor.new("Really black")
lleg4.Size = Vector3.new(1, 0.4, 1)
lleg4.CanCollide = false
lleg4.BottomSurface = "Smooth"
lleg4.TopSurface = "Smooth"
Weld = Instance.new("Weld",lleg) 
Weld.Part0 = lleg
Weld.C0 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = lleg4
Weld.C1 = CFrame.new(0.899408102, 1.9581213, -5.17447472, 4.37113883e-008, 1, 8.74227766e-008, 1, -4.37113883e-008, -2.68657252e-016, -1.37337096e-015, 8.74227766e-008, -1)

lleg5 = Instance.new("Part", char)
lleg5.BrickColor = BrickColor.new("Really black")
lleg5.Size = Vector3.new(1, 0.4, 1)
lleg5.CanCollide = false
lleg5.BottomSurface = "Smooth"
lleg5.TopSurface = "Smooth"
Weld = Instance.new("Weld",lleg) 
Weld.Part0 = lleg
Weld.C0 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = lleg5
Weld.C1 = CFrame.new(0.899407625, -5.57446861, -2.3581152, -1.50995788e-007, 1, 8.74227766e-008, -1.20315126e-014, 8.74227766e-008, -1, -1, -1.50995788e-007, -8.24226416e-015)

lleg6 = Instance.new("Part", char)
lleg6.BrickColor = BrickColor.new("Really black")
lleg6.Size = Vector3.new(1, 0.4, 1)
lleg6.CanCollide = false
lleg6.BottomSurface = "Smooth"
lleg6.TopSurface = "Smooth"
Weld = Instance.new("Weld",lleg) 
Weld.Part0 = lleg
Weld.C0 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = lleg6
Weld.C1 = CFrame.new(1.49948871, -2.31810665, 5.08444977, -4.37113883e-008, 1, 8.74227766e-008, -1, -4.37113883e-008, -3.55271368e-015, 8.47879895e-015, -8.74227766e-008, 1)

lleg7 = Instance.new("Part", char)
lleg7.BrickColor = BrickColor.new("Really black")
lleg7.Size = Vector3.new(1, 0.4, 1)
lleg7.CanCollide = false
lleg7.BottomSurface = "Smooth"
lleg7.TopSurface = "Smooth"
Weld = Instance.new("Weld",lleg) 
Weld.Part0 = lleg
Weld.C0 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = lleg7
Weld.C1 = CFrame.new(1.4994036, -2.33812618, 5.26447296, -4.37113883e-008, 1, 8.74227766e-008, -1, -4.37113883e-008, -3.55271368e-015, 8.47879895e-015, -8.74227766e-008, 1)
----------------------------------------------------------------- Right Leg -----------------------------------------------------------------
rleg1 = Instance.new("Part", char)
rleg1.Name = "Middle"
rleg1.BrickColor = BrickColor.new("Royal purple")
rleg1.Size = Vector3.new(1, 2, 1)
rleg1.CanCollide = false
rleg1.BottomSurface = "Smooth"
rleg1.TopSurface = "Smooth"
rleg1.Material = "Neon"
Weld = Instance.new("Weld",rleg) 
Weld.Part0 = rleg
Weld.C0 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = rleg1
Weld.C1 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)

rleg2 = Instance.new("Part", char)
rleg2.BrickColor = BrickColor.new("Really black")
rleg2.Size = Vector3.new(1, 0.4, 1)
rleg2.CanCollide = false
rleg2.BottomSurface = "Smooth"
rleg2.TopSurface = "Smooth"
Weld = Instance.new("Weld",rleg) 
Weld.Part0 = rleg
Weld.C0 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = rleg2
Weld.C1 = CFrame.new(0.905565023, 3.75810814, -5.17447472, 4.37113883e-008, 1, 8.74227766e-008, 1, -4.37113883e-008, -2.68657252e-016, -1.37337096e-015, 8.74227766e-008, -1)

rleg3 = Instance.new("Part", char)
rleg3.BrickColor = BrickColor.new("Really black")
rleg3.Size = Vector3.new(1, 0.4, 1)
rleg3.CanCollide = false
rleg3.BottomSurface = "Smooth"
rleg3.TopSurface = "Smooth"
Weld = Instance.new("Weld",rleg) 
Weld.Part0 = rleg
Weld.C0 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = rleg3
Weld.C1 = CFrame.new(1.4545058, -3.34725952, 5.0867691, -0.0153048551, 0.999882877, -5.25215728e-006, -0.999882638, -0.0153048476, 0.000690514687, 0.000690353394, 1.58197654e-005, 0.999999762)

rleg4 = Instance.new("Part", char)
rleg4.BrickColor = BrickColor.new("Really black")
rleg4.Size = Vector3.new(1, 0.4, 1)
rleg4.CanCollide = false
rleg4.BottomSurface = "Smooth"
rleg4.TopSurface = "Smooth"
Weld = Instance.new("Weld",rleg) 
Weld.Part0 = rleg
Weld.C0 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = rleg4
Weld.C1 = CFrame.new(1.5055685, -3.33812618, 5.26447296, -4.37113883e-008, 1, 8.74227766e-008, -1, -4.37113883e-008, -3.55271368e-015, 8.47879895e-015, -8.74227766e-008, 1)

rleg5 = Instance.new("Part", char)
rleg5.BrickColor = BrickColor.new("Really black")
rleg5.Size = Vector3.new(1, 0.4, 1)
rleg5.CanCollide = false
rleg5.BottomSurface = "Smooth"
rleg5.TopSurface = "Smooth"
Weld = Instance.new("Weld",rleg) 
Weld.Part0 = rleg
Weld.C0 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = rleg5
Weld.C1 = CFrame.new(0.905564308, -5.57446861, -3.3581152, -1.50995788e-007, 1, 8.74227766e-008, -1.20315126e-014, 8.74227766e-008, -1, -1, -1.50995788e-007, -8.24226416e-015)

rleg6 = Instance.new("Part", char)
rleg6.BrickColor = BrickColor.new("Really black")
rleg6.Size = Vector3.new(1, 0.4, 1)
rleg6.CanCollide = false
rleg6.BottomSurface = "Smooth"
rleg6.TopSurface = "Smooth"
Weld = Instance.new("Weld",rleg) 
Weld.Part0 = rleg
Weld.C0 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = rleg6
Weld.C1 = CFrame.new(0.904744625, 4.77446556, 3.3581152, -7.17753299e-023, 1, 4.37113883e-008, 1.64202821e-015, -4.37113883e-008, 1, 1, -1.4355066e-022, 0)

rleg7 = Instance.new("Part", char)
rleg7.BrickColor = BrickColor.new("Really black")
rleg7.Size = Vector3.new(0.5, 0.3, 2)
rleg7.CanCollide = false
rleg7.BottomSurface = "Smooth"
rleg7.TopSurface = "Smooth"
Weld = Instance.new("Weld",rleg) 
Weld.Part0 = rleg
Weld.C0 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = rleg7
Weld.C1 = CFrame.new(-3.66284275, -3.99935341, -4.29136944, 0.183012664, -0.683012724, -0.707106829, -0.965925872, -0.258818954, -3.53088581e-008, -0.183012635, 0.683012784, -0.707106769)
----------------------------------------------------------------- Torso -----------------------------------------------------------------
Chest1 = Instance.new("Part", char)
Chest1.Name = "Ball"
Chest1.BrickColor = BrickColor.new("Royal purple")
Chest1.Size = Vector3.new(1, 0.4, 1)
Chest1.CanCollide = false
Chest1.BottomSurface = "Smooth"
Chest1.TopSurface = "Smooth"
Chest1.Material = "Neon"
Mesh = Instance.new("CylinderMesh", Chest1)
Mesh.Scale = Vector3.new(0.9, 0.4, 0.9)
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest1
Weld.C1 = CFrame.new(0, 0.700000763, 0.176463604, -1, 0, 0, 0, 0, -1, 0, -1, 0)

Chest2 = Instance.new("Part", char)
Chest2.BrickColor = BrickColor.new("Royal purple")
Chest2.Name = "Middle"
Chest2.Size = Vector3.new(2, 2, 1)
Chest2.CanCollide = false
Chest2.BottomSurface = "Smooth"
Chest2.TopSurface = "Smooth"
Chest2.Material = "Neon"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest2
Weld.C1 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)

Chest3 = Instance.new("Part", char)
Chest3.BrickColor = BrickColor.new("Really black")
Chest3.Size = Vector3.new(1, 0.4, 1)
Chest3.CanCollide = false
Chest3.BottomSurface = "Smooth"
Chest3.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest3
Weld.C1 = CFrame.new(-0.476491928, -0.5, -0.499999046, 5.15558582e-008, 1, -7.54979013e-008, -3.35276091e-008, 7.54979013e-008, 1, 1, -5.15558582e-008, 3.35276091e-008)

Chest4 = Instance.new("Part", char)
Chest4.BrickColor = BrickColor.new("Really black")
Chest4.Size = Vector3.new(1, 0.4, 1)
Chest4.CanCollide = false
Chest4.BottomSurface = "Smooth"
Chest4.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest4
Weld.C1 = CFrame.new(-0.476491451, -0.5, 0.5, -1.4355066e-022, 1, 4.37113883e-008, 3.28405643e-015, -4.37113883e-008, 1, 1, -2.8710132e-022, 1.64202821e-015)

Chest5 = Instance.new("Part", char)
Chest5.BrickColor = BrickColor.new("Really black")
Chest5.Size = Vector3.new(1, 0.4, 1)
Chest5.CanCollide = false
Chest5.BottomSurface = "Smooth"
Chest5.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest5
Weld.C1 = CFrame.new(-0.499999046, 0.5, 0.476491451, 1, -4.37113918e-008, 4.37113847e-008, -4.37113847e-008, 0, 1, -4.37113883e-008, -1, 0)

Chest6 = Instance.new("Part", char)
Chest6.BrickColor = BrickColor.new("Really black")
Chest6.Size = Vector3.new(1, 0.4, 1)
Chest6.CanCollide = false
Chest6.BottomSurface = "Smooth"
Chest6.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest6
Weld.C1 = CFrame.new(0.5236063, -0.449995041, 0, 0, 1, 8.74227766e-008, 3.28405643e-015, -8.74227766e-008, 1, 1, -1.4355066e-022, 0)

Chest7 = Instance.new("Part", char)
Chest7.BrickColor = BrickColor.new("Really black")
Chest7.Size = Vector3.new(1, 0.4, 1)
Chest7.CanCollide = false
Chest7.BottomSurface = "Smooth"
Chest7.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest7
Weld.C1 = CFrame.new(0.5, 0.5, 0.476491928, 1, -4.37113918e-008, 4.37113847e-008, -4.37113847e-008, 0, 1, -4.37113883e-008, -1, 0)

Chest8 = Instance.new("Part", char)
Chest8.BrickColor = BrickColor.new("Really black")
Chest8.Size = Vector3.new(1, 0.4, 1)
Chest8.CanCollide = false
Chest8.BottomSurface = "Smooth"
Chest8.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest8
Weld.C1 = CFrame.new(0, 0.389970779, -0.473520517, 1, -4.37113954e-008, 4.37113847e-008, -4.37113883e-008, -4.37113883e-008, 1, -4.37113883e-008, -1, -4.37113883e-008)	

Chest9 = Instance.new("Part", char)
Chest9.BrickColor = BrickColor.new("Really black")
Chest9.Size = Vector3.new(0.5, 0.3, 2)
Chest9.CanCollide = false
Chest9.BottomSurface = "Smooth"
Chest9.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest9
Weld.C1 = CFrame.new(-0.458083153, 0.580001831, 0.306574821, -0.866025448, -0.49999997, 4.37113883e-008, -3.78551732e-008, -2.18556924e-008, -1, 0.49999997, -0.866025448, 0)

Chest10 = Instance.new("Part", char)
Chest10.BrickColor = BrickColor.new("Really black")
Chest10.Size = Vector3.new(1, 0.4, 1)
Chest10.CanCollide = false
Chest10.BottomSurface = "Smooth"
Chest10.TopSurface = "Smooth"
Mesh = Instance.new("SpecialMesh", Chest10)
Mesh.Scale = Vector3.new(1.1, 1.1, 1.1)
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest10
Weld.C1 = CFrame.new(-1.07653379, 0.899993896, 0, -4.37113883e-008, 1, 8.74227766e-008, -1, -4.37113883e-008, -3.55271368e-015, 8.47879895e-015, -8.74227766e-008, 1)

Chest11 = Instance.new("Part", char)
Chest11.BrickColor = BrickColor.new("Really black")
Chest11.Size = Vector3.new(0.5, 0.3, 2)
Chest11.CanCollide = false
Chest11.BottomSurface = "Smooth"
Chest11.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest11
Weld.C1 = CFrame.new(0.973486662, -0.460004807, -9.53674316e-007, 1.50995803e-007, 1, 7.54979013e-008, -1.85052948e-014, -7.54979013e-008, 1, 1, -1.50995803e-007, 7.10542736e-015)

Chest12 = Instance.new("Part", char)
Chest12.BrickColor = BrickColor.new("Really black")
Chest12.Size = Vector3.new(0.5, 0.3, 2)
Chest12.CanCollide = false
Chest12.BottomSurface = "Smooth"
Chest12.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest12
Weld.C1 = CFrame.new(-0.973600388, 0.450008392, -7.62939453e-006, -9.32088255e-008, -1, -4.37113883e-008, 5.82035878e-011, -4.37113883e-008, 1, -1, 9.32088255e-008, 5.82076609e-011)

Chest13 = Instance.new("Part", char)
Chest13.BrickColor = BrickColor.new("Really black")
Chest13.Size = Vector3.new(0.5, 0.3, 2)
Chest13.CanCollide = false
Chest13.BottomSurface = "Smooth"
Chest13.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest13
Weld.C1 = CFrame.new(-0.729999542, -0.117254257, -1.91926646, -1, -3.23980487e-008, -4.22219593e-008, 3.23980487e-008, 0.258819044, -0.965925813, 4.22219593e-008, -0.965925813, -0.258819044)

Chest14 = Instance.new("Part", char)
Chest14.BrickColor = BrickColor.new("Really black")
Chest14.Size = Vector3.new(0.5, 0.3, 2)
Chest14.CanCollide = false
Chest14.BottomSurface = "Smooth"
Chest14.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest14
Weld.C1 = CFrame.new(0.769999504, -0.150730133, -1.91693306, -1, -3.31366472e-008, -4.24129745e-008, 3.31366472e-008, 0.241921902, -0.970295727, 4.24129745e-008, -0.970295727, -0.241921902)

Chest15 = Instance.new("Part", char)
Chest15.BrickColor = BrickColor.new("Really black")
Chest15.Size = Vector3.new(0.5, 0.3, 2)
Chest15.CanCollide = false
Chest15.BottomSurface = "Smooth"
Chest15.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest15
Weld.C1 = CFrame.new(-0.209440231, 1.25000095, 1.42984772, -6.16862437e-008, 0.656059027, 0.754709601, -1, -6.53672387e-008, -2.49122056e-008, 3.2989405e-008, -0.754709601, 0.656059027)

Chest16 = Instance.new("Part", char)
Chest16.BrickColor = BrickColor.new("Really black")
Chest16.Size = Vector3.new(0.5, 0.3, 2)
Chest16.CanCollide = false
Chest16.BottomSurface = "Smooth"
Chest16.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest16
Weld.C1 = CFrame.new(-0.158526421, 1.25000095, 1.0131588, -7.35374925e-008, 0.927183867, 0.374606639, -1, -7.43167945e-008, -1.23653887e-008, 1.63745764e-008, -0.374606639, 0.927183867)

Chest17 = Instance.new("Part", char)
Chest17.BrickColor = BrickColor.new("Really black")
Chest17.Size = Vector3.new(0.5, 0.3, 2)
Chest17.CanCollide = false
Chest17.BottomSurface = "Smooth"
Chest17.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest17
Weld.C1 = CFrame.new(-0.229999542, -0.117254257, -1.91926742, -1, -3.23980487e-008, -4.22219593e-008, 3.23980487e-008, 0.258819044, -0.965925813, 4.22219593e-008, -0.965925813, -0.258819044)

Chest18 = Instance.new("Part", char)
Chest18.BrickColor = BrickColor.new("Really black")
Chest18.Size = Vector3.new(0.5, 0.3, 2)
Chest18.CanCollide = false
Chest18.BottomSurface = "Smooth"
Chest18.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest18
Weld.C1 = CFrame.new(0.269999504, -0.117254257, -1.91926742, -1, -3.23980487e-008, -4.22219593e-008, 3.23980487e-008, 0.258819044, -0.965925813, 4.22219593e-008, -0.965925813, -0.258819044)

Chest19 = Instance.new("Part", char)
Chest19.BrickColor = BrickColor.new("Really black")
Chest19.Size = Vector3.new(0.5, 0.3, 2)
Chest19.CanCollide = false
Chest19.BottomSurface = "Smooth"
Chest19.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest19
Weld.C1 = CFrame.new(-0.00685310364, 1.25, 1.45221233, -2.47515253e-008, 0.224950925, 0.974370122, -1, -4.7067342e-008, -1.45362469e-008, 4.2591072e-008, -0.974370122, 0.224950925)

Chest20 = Instance.new("Part", char)
Chest20.BrickColor = BrickColor.new("Really black")
Chest20.Size = Vector3.new(1, 0.4, 1)
Chest20.CanCollide = false
Chest20.BottomSurface = "Smooth"
Chest20.TopSurface = "Smooth"
Mesh = Instance.new("SpecialMesh",Chest20)
Mesh.Scale = Vector3.new(1.1,1.1,1.1)
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest20
Weld.C1 = CFrame.new(-1.07653379, -0.899992943, 0, -4.37113883e-008, 1, 8.74227766e-008, -1, -4.37113883e-008, -3.55271368e-015, 8.47879895e-015, -8.74227766e-008, 1)

Chest21 = Instance.new("Part", char)
Chest21.BrickColor = BrickColor.new("Really black")
Chest21.Size = Vector3.new(0.5, 0.3, 2)
Chest21.CanCollide = false
Chest21.BottomSurface = "Smooth"
Chest21.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest21
Weld.C1 = CFrame.new(-0.209432602, -1.14999962, 1.429842, -6.16862437e-008, 0.656059027, 0.754709601, -1, -6.53672387e-008, -2.49122056e-008, 3.2989405e-008, -0.754709601, 0.656059027)

Chest22 = Instance.new("Part", char)
Chest22.BrickColor = BrickColor.new("Really black")
Chest22.Size = Vector3.new(0.5, 0.3, 2)
Chest22.CanCollide = false
Chest22.BottomSurface = "Smooth"
Chest22.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest22
Weld.C1 = CFrame.new(-0.00685119629, -1.15000057, 1.45220757, -2.47515253e-008, 0.224950925, 0.974370122, -1, -4.7067342e-008, -1.45362469e-008, 4.2591072e-008, -0.974370122, 0.224950925)

Chest23 = Instance.new("Part", char)
Chest23.BrickColor = BrickColor.new("Really black")
Chest23.Size = Vector3.new(0.5, 0.3, 2)
Chest23.CanCollide = false
Chest23.BottomSurface = "Smooth"
Chest23.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest23
Weld.C1 = CFrame.new(-0.158511639, -1.15000057, 1.01315498, -7.35374925e-008, 0.927183926, 0.374606401, -1, -7.43168016e-008, -1.23653807e-008, 1.63745657e-008, -0.374606401, 0.927183926)

Chest24 = Instance.new("Part", char)
Chest24.BrickColor = BrickColor.new("Really black")
Chest24.Size = Vector3.new(0.5, 0.3, 2)
Chest24.CanCollide = false
Chest24.BottomSurface = "Smooth"
Chest24.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest24
Weld.C1 = CFrame.new(-0.458065987, -0.579999924, 0.306604624, 0.866025388, -0.50000006, 4.37113883e-008, 4.53686155e-008, 1.66003517e-007, 1, -0.50000006, -0.866025388, 1.66447563e-007)