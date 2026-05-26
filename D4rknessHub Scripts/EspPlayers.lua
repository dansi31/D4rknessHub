local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "Universal ESP Script 📌",
	LoadingTitle = "Universal ESP Script (DARKNESS HUB)",
	LoadingSubtitle = "Loading...",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "Universal ESP Script",
		FileName = "ESPConfig"
	},
	Discord = "",
	KeySystem = false
})

local MainTab = Window:CreateTab("🎮 ESP Players", 4483362458)

MainTab:CreateSection("Main Controls")

MainTab:CreateToggle({
	Name = "Enable ESP",
	CurrentValue = getgenv().StretchConfig and getgenv().StretchConfig.Enabled or true,
	Flag = "StretchToggle",
	Callback = function(Value)
		ApplyStretch(Value)
	end,
})

function EnableEsp()
	for _, player in pairs(game.Players:GetPlayers()) do
		if player ~= game.Players.LocalPlayer then
			if player.Character then
				for _, part in pairs(player.Character:GetDescendants()) do
					if (part:IsA("MeshPart") or part:IsA("BasePart")) and part.Name ~= "HumanoidRootPart" then
						if not part:FindFirstChild('ESP') then
							local Highlight = Instance.new("Highlight", part)
							Highlight.Name = "ESP"
							Highlight.OutlineTransparency = 1
						end
					end
				end
			end
		end
	end
end

function DisableEsp()
	for _, player in pairs(game.Players:GetPlayers()) do
		if player ~= game.Players.LocalPlayer then
			if player.Character then
				for _, part in pairs(player.Character:GetDescendants()) do
					if (part:IsA("MeshPart") or part:IsA("BasePart")) and part.Name ~= "HumanoidRootPart" then
						if part:FindFirstChild('ESP') then
							part.ESP:Destroy()
						end
					end
				end
			end
		end
	end
end


function ApplyStretch(value)
	while task.wait() do
		if value then
			EnableEsp()
		else
			DisableEsp()
		end
	end
end


getgenv().ESPConfig = getgenv().ESPConfig or {Enabled = true}
ApplyStretch(getgenv().ESPConfig.Enabled)
