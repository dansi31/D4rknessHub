local v = {}
local connections = {}
function v:drag(gui, CanDrag)
	local UserInputService = game:GetService("UserInputService")
	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	local conn1 = gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and CanDrag or input.UserInputType == Enum.UserInputType.Touch and CanDrag then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End and CanDrag then
					dragging = false
				end
			end)
		end
	end)

	local conn2 = gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement and CanDrag or input.UserInputType == Enum.UserInputType.Touch and CanDrag then
			dragInput = input
		end
	end)

	local conn3 = UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging and CanDrag then
			update(input)
		end
	end)
	
	table.insert(connections, conn1)
	table.insert(connections, conn2)
	table.insert(connections, conn3)
end

function v:undrag(gui)
	for i = 1, #connections do
		connections[i]:Disconnect()
	end
end

return v
