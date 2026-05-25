local Workspace = workspace
local Players = game:GetService("Players")
local Noclip = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local StatusPF = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
Instance.new('UICorner', BG)
Instance.new('UICorner', Title)
local Plr = Players.LocalPlayer

local Clipon = false
local NoClipping = false
local Stepped

Noclip.Name = "Noclip"
Noclip.ResetOnSpawn = false
Noclip.Parent = game.Players.LocalPlayer.PlayerGui

BG.Name = "BG"
BG.Parent = Noclip
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Size = UDim2.new(0, 210, 0, 127)
BG.Active = true
BG.Draggable = true

Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "Noclip Universal 📌"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 25
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0

Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size28
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 25
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0

StatusPF.Name = "StatusPF"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.286, 0, 0.756, 0)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size24
StatusPF.Text = "Status:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 20
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true

Status.Name = "Status"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.552, 0, 0.756, 0)
Status.Size = UDim2.new(0, 56, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size14
Status.Text = "Off"
Status.TextColor3 = Color3.new(0.666667, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left

local sound = Instance.new("Sound", game.Players.LocalPlayer.PlayerGui)
sound.SoundId = "rbxassetid://4590662766"
sound:Play()
game.Debris:AddItem(sound, sound.TimeLength + 3)
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Noclip Universal 📌";
	Text = 'Made by KingLuna, modified by DarknessHub Owner';
	Icon = "rbxassetid://134341920489415";
	Duration = 3.55;
})

Toggle.MouseButton1Click:connect(function()
	if NoClipping ~= true then
		Clipon = true
		NoClipping = true
		Status.Text = "On"
		Status.TextColor3 = Color3.new(0,185,0)
		Stepped = game:GetService("RunService").Stepped:Connect(function()
			for _, b in pairs(Workspace:GetChildren()) do
				if b.Name == Plr.Name then
					for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
						if v:IsA("BasePart") then
							v.CanCollide = false
						end 
					end 
				end 
			end
		end)
	else
		Stepped:Disconnect()
		Clipon = false
		NoClipping = false
		Status.Text = "Off"
		Status.TextColor3 = Color3.new(170,0,0)
		for _, b in pairs(Workspace:GetChildren()) do
			if b.Name == Plr.Name then
				for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
					if v:IsA("BasePart") then
						v.CanCollide = true
					end 
				end 
			end 
		end
	end
end)
