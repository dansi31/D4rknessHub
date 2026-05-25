--  Created by: 1AN (ydHldYudti)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Advanced Stretch System",
    LoadingTitle = "Screen Stretch System (DARKNESS HUB)",
    LoadingSubtitle = "ydHldYudti",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "ianStretch",
        FileName = "StretchConfig"
    },
    Discord = "",
    KeySystem = false
})

local MainTab = Window:CreateTab("🎮 Stretch", 4483362458) -- Puedes cambiar el icono

local Section = MainTab:CreateSection("Main Controls")

-- Toggle Stretch
local StretchToggle = MainTab:CreateToggle({
    Name = "Enable Stretch",
    CurrentValue = getgenv().StretchConfig and getgenv().StretchConfig.Enabled or true,
    Flag = "StretchToggle",
    Callback = function(Value)
        getgenv().StretchConfig.Enabled = Value
        if Value then
            ApplyStretch()
        else
            if stretchConnection then 
                stretchConnection:Disconnect() 
                stretchConnection = nil 
            end
        end
    end,
})

-- Slider de Intensity
local IntensitySlider = MainTab:CreateSlider({
    Name = "Stretch Intensity",
    Range = {0.5, 1.2},
    Increment = 0.01,
    CurrentValue = getgenv().StretchConfig and getgenv().StretchConfig.Intensity or 0.75,
    Flag = "IntensitySlider",
    Callback = function(Value)
        getgenv().StretchConfig.Intensity = Value
        if getgenv().StretchConfig.Enabled then
            ApplyStretch()
        end
    end,
})

-- Quick Presets
local PresetSection = MainTab:CreateSection("Quick Presets")

MainTab:CreateButton({
    Name = "Very Aggressive (0.62) - Max FPS",
    Callback = function()
        IntensitySlider:Set(0.62)
    end,
})

MainTab:CreateButton({
    Name = "Balanced (0.68)",
    Callback = function()
        IntensitySlider:Set(0.68)
    end,
})

MainTab:CreateButton({
    Name = "Recommended (0.75)",
    Callback = function()
        IntensitySlider:Set(0.75)
    end,
})

MainTab:CreateButton({
    Name = "Mild (0.82)",
    Callback = function()
        IntensitySlider:Set(0.82)
    end,
})

-- ==================== STRETCH FUNCTION ====================
local stretchConnection = nil

function ApplyStretch()
    if stretchConnection then stretchConnection:Disconnect() end
    
    stretchConnection = game:GetService("RunService").RenderStepped:Connect(function()
        if getgenv().StretchConfig.Enabled and workspace.CurrentCamera then
            local Cam = workspace.CurrentCamera
            Cam.CFrame = Cam.CFrame * CFrame.new(0, 0, 0,
                1, 0, 0,
                0, getgenv().StretchConfig.Intensity, 0,
                0, 0, 1
            )
        end
    end)
end

-- Auto Start
getgenv().StretchConfig = getgenv().StretchConfig or {Enabled = true, Intensity = 0.75}
ApplyStretch()

Rayfield:Notify({
    Title = "✅ Stretch System",
    Content = "Advanced Stretch v2.0 with Rayfield loaded successfully\nCreated by ian (ydHldYudti)",
    Duration = 6,
    Image = 4483362458,
})

print("🚀 ADVANCED STRETCH v2.0 (Rayfield) LOADED | Created by ian Emmanuel (ydHldYudti)")
