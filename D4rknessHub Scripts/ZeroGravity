local gui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local label = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local button = Instance.new("TextButton")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

gui.Name = "gui"
gui.Parent = gethui()
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = gui
main.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.196095973, 0, 0.556803584, 0)
main.Size = UDim2.new(0.178187668, 0, 0.13960205, 0)
main.Active = true
main.Draggable = true

label.Name = "label"
label.Parent = main
label.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
label.BorderColor3 = Color3.fromRGB(0, 0, 0)
label.BorderSizePixel = 0
label.Size = UDim2.new(1, 0, 0.294736832, 0)
label.Font = Enum.Font.Gotham
label.Text = "Zero Gravity"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextScaled = true
label.TextSize = 29.000
label.TextWrapped = true

UITextSizeConstraint.Parent = label
UITextSizeConstraint.MaxTextSize = 29

button.Name = "button"
button.Parent = main
button.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
button.BorderColor3 = Color3.fromRGB(0, 0, 0)
button.BorderSizePixel = 0
button.Position = UDim2.new(0.0526315793, 0, 0.438756049, 0)
button.Size = UDim2.new(0.894736826, 0, 0.431578934, 0)
button.Font = Enum.Font.Gotham
button.Text = "Click"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 24.000
button.TextScaled = true
button.TextWrapped = true

UITextSizeConstraint_2.Parent = button
UITextSizeConstraint_2.MaxTextSize = 31

-- Scripts:

local plr = game:GetService("Players").LocalPlayer
local normalGravity = workspace.Gravity

button.MouseButton1Click:Connect(function()
		workspace.Gravity = 0
        local humanoid = plr.Character:FindFirstChildWhichIsA("Humanoid")
		humanoid.Sit = true
		task.wait(0.1)
		humanoid.RootPart.CFrame = humanoid.RootPart.CFrame * CFrame.Angles(math.pi * 0.5, 0, 0)
		for _, v in ipairs(humanoid:GetPlayingAnimationTracks()) do
			v:Stop()
        end
        humanoid.Died:Connect(function()
            workspace.Gravity = normalGravity
        end)
		game:GetService("UserInputService").JumpRequest:Connect(function()
			workspace.Gravity = normalGravity
		end)
	end)
