local sound = Instance.new("Sound", gethui())
sound.SoundId = "rbxassetid://4590662766"
sound:Play()
game.Debris:AddItem(sound, sound.TimeLength + 3)
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Darkness Hub (System)";
	Text = 'Loading Script...';
	Icon = "rbxassetid://134341920489415";
	Duration = 2.55;
})

function MakeRichText(text, highlightParts)
	local result = text
	for _, part in ipairs(highlightParts) do
		local escapedPart = part:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;")
		result = result:gsub(escapedPart, string.format('<font color="%s">%s</font>', "rgb(83,83,83)", escapedPart), 1)
	end
	return result
end

local Dragger = loadstring(game:HttpGet('https://github.com/dansi31/D4rknessHub/raw/refs/heads/main/D4rknessHub%20Scripts/Dragger.lua'))()
local Sounder = loadstring(game:HttpGet('https://github.com/dansi31/D4rknessHub/raw/refs/heads/main/D4rknessHub%20Scripts/sounder.lua'))()

function CreateGUI(player: Player)
	local D4rknessHub = Instance.new("ScreenGui", game:GetService('CoreGui'))
	local Frame = Instance.new("Frame", D4rknessHub)
	local UICorner = Instance.new("UICorner", Frame)
	local UIStroke = Instance.new("UIStroke", Frame)
	local Title = Instance.new("TextLabel", Frame)
	local Page1 = Instance.new("Frame", Frame)
	local Container = Instance.new("ScrollingFrame", Page1)
	local UIGridLayout = Instance.new("UIGridLayout", Container)
	local ads = Instance.new("TextLabel", Frame)
	--local tt = Instance.new("ImageLabel", Frame)
	--local UICorner_2 = Instance.new("UICorner", tt)
	--local UIStroke_2 = Instance.new("UIStroke", tt)
	--local tt2 = Instance.new("TextLabel", Frame)
	local MinimizeGUI = Instance.new("TextButton", Frame)
	local UICorner_3 = Instance.new("UICorner", MinimizeGUI)
	local UIStroke_3 = Instance.new("UIStroke", MinimizeGUI)
	local avatar = Instance.new("ImageLabel", Frame)
	local UICorner_4 = Instance.new("UICorner", avatar)
	local UIStroke_4 = Instance.new("UIStroke", avatar)
	local GuiLocked = Instance.new("TextButton", Frame)
	local UICorner_5 = Instance.new("UICorner", GuiLocked)
	local UIStroke_5 = Instance.new("UIStroke", GuiLocked)
	local Title2 = Instance.new("TextLabel", Frame)
	--local ds = Instance.new("ImageLabel")
	--local UICorner10 = Instance.new("UICorner")
	--local UIStroke10 = Instance.new("UIStroke")
	--local ds2 = Instance.new("TextLabel")
	local OpenButton = Instance.new("ImageButton", D4rknessHub)
	local UICorner_6 = Instance.new("UICorner", OpenButton)
	local UIStroke_6 = Instance.new("UIStroke", OpenButton)
	Instance.new("UIAspectRatioConstraint", Frame).AspectRatio = 1.202
	Instance.new("UIAspectRatioConstraint", Page1).AspectRatio = 2.262
	D4rknessHub.ResetOnSpawn = false
	Frame.BackgroundColor3 = Color3.new(0.000, 0.000, 0.000)
	Frame.BackgroundTransparency = 0.3
	Frame.BorderColor3 = Color3.new(0.000, 0.000, 0.000)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.093, 0, 0.159, 0)
	Frame.Size = UDim2.new(0, 500, 0, 416)
	UICorner.CornerRadius = UDim.new(0, 10)
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Color = Color3.new(1.000, 1.000, 1.000)
	UIStroke.Thickness = 2.5
	Title.FontFace = Font.new("rbxasset://fonts/families/Zekton.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	Title.RichText = true
	Title.Text = '<font color="rgb(83, 83, 83)">D4rk</font>ness <font color="rgb(83, 83, 83)">H</font>ub'
	Title.TextColor3 = Color3.new(1.000, 1.000, 1.000)
	Title.TextScaled = true
	Title.TextSize = 14
	Title.TextWrapped = true
	Title.BackgroundColor3 = Color3.new(1.000, 1.000, 1.000)
	Title.BackgroundTransparency = 1
	Title.BorderColor3 = Color3.new(0.000, 0.000, 0.000)
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0, 500, 0, 50)
	Title.Name = 'Title'
	Page1.BackgroundColor3 = Color3.new(1.000, 1.000, 1.000)
	Page1.BackgroundTransparency = 0.99
	Page1.BorderColor3 = Color3.new(0.000, 0.000, 0.000)
	Page1.BorderSizePixel = 0
	Page1.ClipsDescendants = true
	Page1.Position = UDim2.new(0, 0, 0.271, 0)
	Page1.Size = UDim2.new(0, 500, 0, 221)
	Page1.Name = 'Page1'
	Container.ScrollBarThickness = 10
	Container.Active = true
	Container.BackgroundColor3 = Color3.new(1.000, 1.000, 1.000)
	Container.BackgroundTransparency = 1
	Container.BorderColor3 = Color3.new(0.000, 0.000, 0.000)
	Container.BorderSizePixel = 0
	Container.ClipsDescendants = false
	Container.Position = UDim2.new(0, 3, 0.064, 0)
	Container.Size = UDim2.new(0, 500, 0, 195)
	Container.Name = 'Container'
	UIGridLayout.CellPadding = UDim2.new(0, 15, 0, 15)
	UIGridLayout.CellSize = UDim2.new(0, 150, 0, 40)
	ads.FontFace = Font.new("rbxasset://fonts/families/Zekton.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	ads.RichText = true
	ads.Text = [[<font color="rgb(83, 83, 83)">crea</font>tor:  <font color="rgb(83, 83, 83)">@4ladyda</font>nsmi31]]
	ads.TextColor3 = Color3.new(1.000, 1.000, 1.000)
	ads.TextScaled = true
	ads.TextSize = 14
	ads.TextWrapped = true
	ads.BackgroundColor3 = Color3.new(1.000, 1.000, 1.000)
	ads.BackgroundTransparency = 1
	ads.BorderColor3 = Color3.new(0.000, 0.000, 0.000)
	ads.BorderSizePixel = 0
	ads.Position = UDim2.new(-0.018, 0, 0.155, 0)
	ads.Size = UDim2.new(0, 492, 0, 17)
	ads.Visible = false
	ads.Name = [[ads]]
	MinimizeGUI.FontFace = Font.new("rbxasset://fonts/families/Zekton.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	MinimizeGUI.RichText = true
	MinimizeGUI.Text = [[Minimize -]]
	MinimizeGUI.TextColor3 = Color3.new(1.000, 1.000, 1.000)
	MinimizeGUI.TextScaled = true
	MinimizeGUI.TextSize = 30
	MinimizeGUI.TextWrapped = true
	MinimizeGUI.BackgroundColor3 = Color3.new(0.000, 0.000, 0.000)
	MinimizeGUI.BackgroundTransparency = 0.6
	MinimizeGUI.BorderColor3 = Color3.new(0.000, 0.000, 0.000)
	MinimizeGUI.BorderSizePixel = 0
	MinimizeGUI.Position = UDim2.new(0.662, 0, 0.906, 0)
	MinimizeGUI.Size = UDim2.new(0, 167, 0, 38)
	MinimizeGUI.Name = [[MinimizeGUI]]
	UICorner_3.CornerRadius = UDim.new(0, 10)
	UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_3.Color = Color3.new(1.000, 1.000, 1.000)
	UIStroke_3.Thickness = 2
	avatar.Image = string.format('rbxthumb://type=AvatarHeadShot&id=%d&w=420&h=420', player.UserId)
	avatar.BackgroundColor3 = Color3.new(1.000, 1.000, 1.000)
	avatar.BackgroundTransparency = 1
	avatar.BorderColor3 = Color3.new(0.000, 0.000, 0.000)
	avatar.BorderSizePixel = 0
	avatar.Position = UDim2.new(0.85, 0, 0.04, 0)
	avatar.Size = UDim2.new(0, 65, 0, 65)
	avatar.Name = [[avatar]]
	UICorner_4.CornerRadius = UDim.new(0, 7)
	UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_4.Color = Color3.new(1.000, 1.000, 1.000)
	UIStroke_4.Thickness = 1.7
	GuiLocked.FontFace = Font.new("rbxasset://fonts/families/Zekton.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	GuiLocked.RichText = true
	GuiLocked.TextColor3 = Color3.new(1.000, 1.000, 1.000)
	GuiLocked.TextScaled = true
	GuiLocked.TextSize = 30
	GuiLocked.TextWrapped = true
	GuiLocked.TextXAlignment = Enum.TextXAlignment.Left
	GuiLocked.BackgroundColor3 = Color3.new(0.000, 0.000, 0.000)
	GuiLocked.BackgroundTransparency = 0.6
	GuiLocked.BorderColor3 = Color3.new(0.000, 0.000, 0.000)
	GuiLocked.BorderSizePixel = 0
	GuiLocked.Position = UDim2.new(0.004, 0, 0.909, 0)
	GuiLocked.Size = UDim2.new(0, 226, 0, 38)
	GuiLocked.Name = [[GuiLocked]]
	UICorner_5.CornerRadius = UDim.new(0, 10)
	UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_5.Color = Color3.new(1.000, 1.000, 1.000)
	UIStroke_5.Thickness = 2
	Title2.FontFace = Font.new("rbxasset://fonts/families/Zekton.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	Title2.RichText = true
	Title2.Text = [[<font color="rgb(83, 83, 83)">Ma</font>in To<font color="rgb(83, 83, 83)">ols</font>]]
	Title2.TextColor3 = Color3.new(1.000, 1.000, 1.000)
	Title2.TextScaled = true
	Title2.TextSize = 14
	Title2.TextWrapped = true
	Title2.BackgroundColor3 = Color3.new(1.000, 1.000, 1.000)
	Title2.BackgroundTransparency = 1
	Title2.BorderColor3 = Color3.new(0.000, 0.000, 0.000)
	Title2.BorderSizePixel = 0
	Title2.Position = UDim2.new(0.242, 0, 0.195, 0)
	Title2.Size = UDim2.new(0, 246, 0, 36)
	Title2.Name = [[Title2]]
	OpenButton.Image = string.format('rbxthumb://type=AvatarHeadShot&id=%d&w=420&h=420', player.UserId)
	OpenButton.BackgroundColor3 = Color3.new(1.000, 1.000, 1.000)
	OpenButton.BackgroundTransparency = 1
	OpenButton.BorderColor3 = Color3.new(0.000, 0.000, 0.000)
	OpenButton.BorderSizePixel = 0
	OpenButton.Position = UDim2.new(0.011, 0, 0.178, 0)
	OpenButton.Size = UDim2.new(0, 60, 0, 60)
	OpenButton.Visible = false
	OpenButton.Name = [[OpenButton]]
	UICorner_6.CornerRadius = UDim.new(0, 7)
	UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_6.Color = Color3.new(1.000, 1.000, 1.000)
	UIStroke_6.Thickness = 2.7
	return D4rknessHub, Container, UIGridLayout, GuiLocked, MinimizeGUI
end

function CreateButton(parent: Instance, text: string)
	local DexExplorer = Instance.new("TextButton", parent)
	local UIStroke_1 = Instance.new("UIStroke", DexExplorer)
	local UICorner_1 = Instance.new("UICorner", DexExplorer)
	DexExplorer.FontFace = Font.new("rbxasset://fonts/families/Zekton.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	DexExplorer.RichText = true
	DexExplorer.Text = text
	DexExplorer.TextColor3 = Color3.new(1.000, 1.000, 1.000)
	DexExplorer.TextScaled = true
	DexExplorer.TextSize = 25
	DexExplorer.BackgroundColor3 = Color3.new(0.000, 0.000, 0.000)
	DexExplorer.BackgroundTransparency = 0.6
	DexExplorer.BorderColor3 = Color3.new(0.000, 0.000, 0.000)
	DexExplorer.BorderSizePixel = 0
	DexExplorer.Size = UDim2.new(0, 200, 0, 50)
	UICorner_1.CornerRadius = UDim.new(0, 10)
	UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_1.Color = Color3.new(1.000, 1.000, 1.000)
	UIStroke_1.Thickness = 2
	return DexExplorer
end

function Notificate(text, parent)
	local sound = Instance.new("Sound", parent)
	sound.SoundId = "rbxassetid://4590662766"
	sound:Play()
	game.Debris:AddItem(sound, sound.TimeLength + 3)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Darkness Hub (System)";
		Text = text or '[ERROR IN SCRIPT!!!]';
		Icon = "rbxassetid://134341920489415";
		Duration = 2.55;
	})
end

wait()

local ScriptsMenu = {
	OldDex = {
		name = MakeRichText("Old Dex Explorer", {'Ol', 'De', 'Expl'}),
		URL = "https://github.com/dansi31/D4rknessHub/raw/refs/heads/main/D4rknessHub%20Scripts/DexExplorer.lua",
		Used = false,
		Repeatable = false
	};
	Yield = {
		name = MakeRichText("Infinite Yield", {'Infi', 'Yie'}),
		URL = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
		Used = false,
		Repeatable = false
	};
	JR15 = {
		name = MakeRichText("Jerk Off R15", {'Je', 'Of', 'R1'}),
		URL = "https://pastefy.app/YZoglOyJ/raw",
		Used = false,
		Repeatable = true
	};
	JR6 = {
		name = MakeRichText("Jerk Off R6", {'Je', 'Of', 'R'}),
		URL = "https://pastefy.app/wa3v2Vgm/raw",
		Used = false,
		Repeatable = true
	};
	Fling = {
		name = MakeRichText("Fling Menu", {'Fli', 'Me'}),
		URL = "https://raw.githubusercontent.com/zzmbers-cmyk/Voltages-Keyless-Fling-Gui/refs/heads/main/script",
		Used = false,
		Repeatable = true
	};
	ScreenStretch = {
		name = MakeRichText("Screen Stretch", {'Scr', 'Stre'}),
		URL = "https://github.com/dansi31/D4rknessHub/raw/refs/heads/main/D4rknessHub%20Scripts/ScreenStretch.lua",
		Used = false,
		Repeatable = false
	};
	Noclip = {
		name = MakeRichText("Noclip", {'Noc'}),
		URL = "https://github.com/dansi31/D4rknessHub/raw/refs/heads/main/D4rknessHub%20Scripts/NoClip.lua",
		Used = false,
		Repeatable = false
	};
	FakeLag = {
		name = MakeRichText("Fake Lags", {'Fa', 'La'}),
		URL = "https://github.com/dansi31/D4rknessHub/raw/refs/heads/main/D4rknessHub%20Scripts/FakeLag.lua",
		Used = false,
		Repeatable = false
	};
	HitboxExpander = {
		name = MakeRichText("Hitbox Expander", {'Hit', 'Expa'}),
		URL = "https://raw.githubusercontent.com/example-prog/Hitbox-Expander/refs/heads/main/RScripter",
		Used = false,
		Repeatable = false
	};
	Aimbot = {
		name = MakeRichText("Vodka Hub", {'Vod', 'Hu'}),
		URL = "https://pastebin.com/raw/FYuf6NZ9",
		Used = false,
		Repeatable = false
	};
	FEInvisible = {
		name = MakeRichText("FE Invisible", {'F', 'Invis'}),
		URL = "https://pastebin.com/raw/3Rnd9rHf",
		Used = false,
		Repeatable = false
	};
	Fly = {
		name = MakeRichText("Fly GUI V3", {'Fl', 'GU', 'V'}),
		URL = "https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt",
		Used = false,
		Repeatable = true
	};
	Fly2 = {
		name = MakeRichText("Fly HD Admin", {'Fl', 'H', 'Adm'}),
		URL = "https://raw.githubusercontent.com/Dxnnyyyh148888/Fly-gui/refs/heads/main/Hhhhh",
		Used = false,
		Repeatable = false
	};
	Gravity = {
		name = MakeRichText("Gravity Script", {'Grav', 'Scr'}),
		URL = "https://pastefy.app/JCd0GzPh/raw",
		Used = false,
		Repeatable = false
	};
	Jump = {
		name = MakeRichText("Enabled Jump", {'Enab', 'Ju'}),
		URL = "https://pastefy.app/0wjO9pOG/raw",
		Used = false,
		Repeatable = true
	};
	ESP = {
		name = MakeRichText("ESP Players", {'ES', 'Play'}),
		URL = "https://github.com/dansi31/D4rknessHub/raw/refs/heads/main/D4rknessHub%20Scripts/EspPlayers.lua",
		Used = false,
		Repeatable = false
	};
	Novoline = {
		name = MakeRichText("Novoline", {'Novo'}),
		URL = "https://novoline.pro",
		Used = false,
		Repeatable = false
	};
	DexExplorer = {
		name = MakeRichText("Dex Explorer", {'De', 'Expl'}),
		URL = "https://raw.githubusercontent.com/jodta/my-scripts/refs/heads/main/Dex%2B%2B/Decompiler%20Fix.lua",
		Used = false,
		Repeatable = false
	};
	SynInstance = {
		name = MakeRichText("Universal Syn Instance", {'Unive', 'Sy', 'Inst'}),
		URL = "https://pastefy.app/Lzgt1RNl/raw",
		Used = false,
		Repeatable = false
	};
	AnimEditor = {
		name = MakeRichText("FE Animation Editor", {'F', 'Anima', 'Edi'}),
		URL = "https://rawscripts.net/raw/Universal-Script-Gazer-FE-Animation-Editor-14508",
		Used = false,
		Repeatable = false
	};
	MP3Player = {
		name = MakeRichText("MP3 Audio Player", {'MP', 'Aud', 'Pla'}),
		URL = "https://raw.githubusercontent.com/reprenzy-hue/RayBeats/refs/heads/main/source.lua",
		Used = false,
		Repeatable = false
	};
	ZeroGravity = {
		name = MakeRichText("Zero Gravity", {'Ze', 'Grav'}),
		URL = "https://github.com/dansi31/D4rknessHub/raw/refs/heads/main/D4rknessHub%20Scripts/ZeroGravity.lua",
		Used = false,
		Repeatable = false
	};
	TPWalk = {
		name = MakeRichText("TP Walk Tool", {'T', 'Wa', 'To'}),
		URL = "https://pastebin.com/raw/Bj2N9hFt",
		Used = false,
		Repeatable = false
	};
}

local player = game:GetService('Players').LocalPlayer

local GUI, Container, GridLayout, Locked, Minimize = CreateGUI(player)

task.spawn(function()
	Notificate('Thanks for executing Darkness Hub! <3', GUI)
	task.wait(1.12)
	Notificate('!!!WARNING!! The scripts are not mine!!!', GUI)
end)

for _, Table in pairs(ScriptsMenu) do
	wait(0.05)
	local Button = CreateButton(Container, Table.name)
	Container.CanvasSize = UDim2.new(0, 0, 0, GridLayout.AbsoluteContentSize.Y)
	Button.MouseButton1Click:Connect(function()
		if Table.Used ~= true or Table.Repeatable then
			local success, err = pcall(function()
				loadstring(game:HttpGet(Table.URL))()
			end)
			if success then
				Table.Used = true
				Notificate("Success!", GUI)
			end
		else
			Notificate("You already used this script!", GUI)
		end
	end)
end

local CanDrag = true

Sounder:sound(GUI)

local TrueTXT = [[GUI Locked: <font color="rgb(0,255,0)">true</font>]]
local FalseTXT = [[GUI Locked: <font color="rgb(255,0,0)">false</font>]]
local locked = false

if locked ~= true then
	locked = true
	Locked.Text = FalseTXT
	CanDrag = true
	Dragger:drag(GUI.Frame, CanDrag)
else
	locked = false
	Locked.Text = TrueTXT
	CanDrag = false
	Dragger:undrag(GUI.OpenButton)
end

Locked.MouseButton1Click:Connect(function() 
	if locked ~= true then
		locked = true
		Locked.Text = FalseTXT
		CanDrag = true
		Dragger:drag(GUI.Frame, CanDrag)
	else
		locked = false
		Locked.Text = TrueTXT
		CanDrag = false
		Dragger:undrag(GUI.OpenButton)
	end
end)

GUI.OpenButton.MouseButton1Click:Connect(function()
	GUI.Frame.Visible = true
	GUI.OpenButton.Visible = false
end)

Minimize.MouseButton1Click:Connect(function()  
	GUI.Frame.Visible = false
	GUI.OpenButton.Visible = true
end)

loadstring(game:HttpGet("https://github.com/dansi31/Notificate/raw/refs/heads/main/source.lua"))()("DN") 
