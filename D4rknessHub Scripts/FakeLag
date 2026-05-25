local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function createGUI()
	local ScreenGui = Instance.new("ScreenGui")
	local DraggableButton = Instance.new("TextButton")
	local UserInputService = game:GetService("UserInputService")

	ScreenGui.Name = "FakeLagGUI"
	ScreenGui.Parent = game.CoreGui

	DraggableButton.Parent = ScreenGui
	DraggableButton.BackgroundColor3 = Color3.new(0, 0, 0)
	DraggableButton.Size = UDim2.new(0, 100, 0, 50)
	DraggableButton.Position = UDim2.new(0.5, 200, 0.5, -50)
	DraggableButton.Text = "Toggle FakeLag"
	DraggableButton.TextColor3 = Color3.new(1, 1, 1)
	DraggableButton.BorderSizePixel = 0
	DraggableButton.Font = Enum.Font.SourceSans
	DraggableButton.TextSize = 18
	DraggableButton.AutoButtonColor = false
	DraggableButton.Active = true
	DraggableButton.Draggable = true

	local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(0, 10)
	UICorner.Parent = DraggableButton

	local FakeLag = false
	local waitTime = 0.05
	local delayTime = 0.4

	DraggableButton.MouseButton1Click:Connect(function()
		FakeLag = not FakeLag
		if FakeLag then
			DraggableButton.Text = "FakeLag: ON"
		else
			DraggableButton.Text = "FakeLag: OFF"
		end
	end)
	coroutine.wrap(function()
		while wait(waitTime) do
			if FakeLag then
				local character = player.Character
				if character and character:FindFirstChild("HumanoidRootPart") then
					character.HumanoidRootPart.Anchored = true
					wait(delayTime)
					character.HumanoidRootPart.Anchored = false
				end
			end
		end
	end)()

	-- Falling button
	local FallingButton = Instance.new("TextButton")
	FallingButton.Parent = ScreenGui  -- Ensure it is parented to ScreenGui
	FallingButton.BackgroundColor3 = Color3.new(0, 0, 0)
	FallingButton.Size = UDim2.new(0, 100, 0, 50)
	FallingButton.Position = UDim2.new(0.5, 200, 0.5, 0)
	FallingButton.Text = "Falling"
	FallingButton.TextColor3 = Color3.new(1, 1, 1)
	FallingButton.BorderSizePixel = 0
	FallingButton.Font = Enum.Font.SourceSans
	FallingButton.TextSize = 24
	FallingButton.AutoButtonColor = false
	FallingButton.Active = true
	FallingButton.Draggable = true

	local UICorner2 = Instance.new("UICorner")
	UICorner2.CornerRadius = UDim.new(0, 10)
	UICorner2.Parent = FallingButton

	local isPlatformStand = false
	local canStandUp = false

	game:GetService("RunService").RenderStepped:Connect(function()
		if draggingFalling and (tick() - holdStart) >= 5 then
			FallingButton.Visible = false
		end
	end)

	FallingButton.MouseButton1Click:Connect(function()
		if player.Character and player.Character:FindFirstChild("Humanoid") then
			local humanoid = player.Character.Humanoid
			if not isPlatformStand then
				humanoid.PlatformStand = true
				humanoid:Move(Vector3.new(0, -50, 0))
				canStandUp = true
				isPlatformStand = true
			elseif canStandUp then
				humanoid.PlatformStand = false
				isPlatformStand = false
				canStandUp = false
			end
		end
	end)

end

createGUI()

local ScreenGui = Instance.new("ScreenGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "FakeLagGUI"
