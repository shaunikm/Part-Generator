local Generator = script.Parent
Generator.Color = Color3.fromRGB(0, 200, 0)
Generator.Anchored = true
Generator.CanCollide = true

local x_pos = Generator.Position.X
local y_pos = Generator.Position.Y
local z_pos = Generator.Position.Z

local clone_num = 1

while true do
	local Clone = Instance.new('Part')
	Clone.Parent = game.Workspace
	Clone.Name = 'Clone'..clone_num
	Clone.Position = Vector3.new(Generator.Position)
	Clone.Anchored = true
	Clone.CanCollide = false
	Clone.Material = 'SmoothPlastic'
	Clone.BrickColor = BrickColor.new('Really blue')
	local old_x = x_pos
	while old_x + 40 > x_pos do
		Clone.Position = Vector3.new(x_pos, y_pos, z_pos)
		x_pos = x_pos + 0.3
		wait()
	end
	if old_Clone ~= nil then
			old_Clone:Destroy()
	end
	old_Clone = Clone
	x_pos = old_x
	clone_num = clone_num + 1
	wait()
end
