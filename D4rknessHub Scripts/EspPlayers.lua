local params = {
	Header = 'ESP Script by D4rknessHub', 
	TextFont = nil, 
	BackgroundColor = nil, 
	ButtonColor = nil, 
	ButtonText = 'ESP Enabled: false',
	Draggable = true
}

local ButtonLib = loadstring(game:HttpGet('https://github.com/dansi31/D4rknessHub/raw/refs/heads/main/D4rknessLib.lua'))()
local List 

local espEnabled = false 
local esping = false

local players = game:GetService("Players") 
local plr = players.LocalPlayer 

local highlights = {}

local function updateAllHighlights()
	for player, highlight in pairs(highlights) do
		if highlight and highlight.Parent then
			highlight.OutlineColor = Color3.new(1,0,0)
			highlight.FillColor = Color3.new(1,0,0)
		end
	end
end

local function createESP(player) 
	local character = player.Character 
	if not character then return end 

	if highlights[player] then
		highlights[player]:Destroy()
	end

	local highlight = Instance.new("Highlight") 
	highlight.Parent = character 
	highlight.Adornee = character 
	highlight.OutlineColor = Color3.new(1,0,0)
	highlight.FillColor = Color3.new(1,0,0)
	highlight.FillTransparency = 0.5
	highlight.OutlineTransparency = 1
	highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop 

	highlights[player] = highlight

	player.CharacterAdded:Connect(function(newChar) 
		if highlights[player] then
			highlights[player]:Destroy()
		end
		createESP(player)
	end) 
end 

local function removeESP(player) 
	if highlights[player] then
		highlights[player]:Destroy()
		highlights[player] = nil
	end
end 

List = ButtonLib:CreateList(params, function()
	esping = not esping
	if esping then
		espEnabled = true 

		for _, player in ipairs(players:GetPlayers()) do 
			if player ~= plr then 
				createESP(player) 
			end 
		end 

		players.PlayerAdded:Connect(function(player) 
			if espEnabled then 
				createESP(player) 
			end 
		end) 

		updateAllHighlights()
	else
		espEnabled = false 
		for player, _ in pairs(highlights) do 
			removeESP(player) 
		end 
	end
	ButtonLib:SetLabel(List, 'ESP Enabled: ' .. tostring(esping))
end)
