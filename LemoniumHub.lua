local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Lemonium Hub " .. Fluent.Version,
    SubTitle = "made by dausita helped by wallyxlv",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightShift
})

local Tabs = {
    Aimbot = Window:AddTab({ Title = "Aimbot🎯", Icon = "" }),
    Arsenal = Window:AddTab({ Title = "Arsenal", Icon = "" }),
    BladeBall = Window:AddTab({ Title = "Blade Ball", Icon = "" }),
    BloxFruit = Window:AddTab({ Title = "Blox Fruit🍎", Icon = "" }),
    CarSpeed = Window:AddTab({ Title = "Universal Car Speed", Icon = "" }),
    Evade = Window:AddTab({ Title = "Evade", Icon = "" }),
    Fisch = Window:AddTab({ Title = "Fisch🐟🎣", Icon = "" }),
    MadCityChapter1 = Window:AddTab({ Title = "Mad City Chapter 1", Icon = "" }),
    MM2 = Window:AddTab({ Title = "MM2", Icon = "" }),
    ShrimpGame = Window:AddTab({ Title = "Shrimp Game", Icon = "" }),
    UniversalAnimation = Window:AddTab({ Title = "Universal Animation/Emote", Icon = "" }),
    TheStrongestBattlegrounds = Window:AddTab({ Title = "The Strongest Battlegrounds", Icon = "" }),
    UniversalAutoPlayPiano = Window:AddTab({ Title = "Universal Auto Play Piano", Icon = "" }),
    UniversalSuperRingPartsV6 = Window:AddTab({ Title = "Universal Super Ring Parts v6", Icon = "" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "" }), 
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

SaveManager:SetFolder("LemoniumHub")
InterfaceManager:SetFolder("LemoniumHub")

SaveManager:IgnoreThemeSettings()

Fluent:Notify({
    Title = "Notification",
    Content = "Thank You For Using This Hub",
    Duration = 5
})

Tabs.Aimbot:AddButton({
    Title = "Aimbot🎯",
    Description = "OP and Keyless Aimbot",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua", true))()
        print("Aimbot executed.")
    end
})

Tabs.CarSpeed:AddButton({
    Title = "Universal Car Speed Script",
    Description = "Executes the car speed script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Documantation12/Universal-Vehicle-Script/main/Main.lua"))()
        print("Universal Car Speed Script executed.")
    end
})

local ThemeDropdown = Tabs.Settings:AddDropdown("ThemeDropdown", {
    Title = "Select Theme",
    Values = {"Dark", "Light", "Amethyst"},
    Default = "Dark",
    Callback = function(Value)
        if Value == "Dark" then
            Fluent:SetTheme("Dark")
        elseif Value == "Light" then
            Fluent:SetTheme("Light")
        elseif Value == "Amethyst" then
            Fluent:SetTheme("Amethyst")
        end
        print("Theme changed to:", Value)
    end
})

Tabs.MM2:AddButton({
    Title = "Keyless OP MM2 Script", 
    Description = "Executes the Keyless OP MM2 Script", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2"))()
        print("Keyless OP MM2 Script executed.")
    end
})

Tabs.BloxFruit:AddButton({
    Title = "Redz Hub", 
    Description = "Best Keyless Blox Fruit Script", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/main/Source.lua"))()
        print("Redz Hub executed.")
    end
})

Tabs.Fisch:AddButton({
    Title = "Native", 
    Description = "Best Fisch Script (have key)", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Native-lab/Native/main/loader.lua"))()
        print("Native Fisch Script executed.")
    end
})

Tabs.Fisch:AddButton({
    Title = "Speed Hub", 
    Description = "Best Keyless Fisch Script", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
        print("Speed Hub executed.")
    end
})

Tabs.UniversalAutoPlayPiano:AddButton({
    Title = "Universal Auto Play Piano V8 Script", 
    Description = "Best Keyless Piano Script", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JxcExploit/Sad/main/NoKey"))()
        print("Universal Auto Play Piano executed.")
    end
})

Tabs.TheStrongestBattlegrounds:AddButton({
    Title = "Infernium Hub Tsb", 
    Description = "Free TSB Script (have key)", 
    Callback = function()
        loadstring(game:HttpGet("https://infernium.xyz/tsb.lua", true))()
        print("Infernium Hub TSB executed.")
    end
})

Tabs.TheStrongestBattlegrounds:AddButton({
    Title = "Speed Hub X", 
    Description = "Best Keyless Speed Hub X Script", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
        print("Speed Hub X executed.")
    end
})

Tabs.Evade:AddButton({
    Title = "Tbao Hub", 
    Description = "Best Keyless Evade Script", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubEvade"))()
        print("Tbao Hub Evade executed.")
    end
})

Tabs.Evade:AddButton({
    Title = "Rose Farm", 
    Description = "Keyless Rose Farm", 
    Callback = function()
        getgenv().farm = true -- false/true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/refs/heads/main/evade-farm.lua"))()
        print("Rose Farm executed.")
    end
})

Tabs.ShrimpGame:AddButton({
    Title = "Moon X", 
    Description = "Best Fr Shrimp Game Script", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MateoDev2024/MoonX/refs/heads/main/Loader.lua", true))()
        print("Moon X executed.")
    end
})

Tabs.BladeBall:AddButton({
    Title = "Infernium Hub", 
    Description = "Best Blade Ball Script (have key system)", 
    Callback = function()
        loadstring(game:HttpGet("https://infernium.xyz/Blade.lua",true))()
        print("Infernium Hub Blade Ball executed.")
    end
})

Tabs.UniversalAnimation:AddButton({
    Title = "Universal Animation", 
    Description = "Universal Animation/Emote Script (Keyless)", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Eazvy/public-scripts/main/Universal_Animations_Emotes.lua"))()
        print("Universal Animation script executed.")
    end
})

Tabs.Arsenal:AddButton({
    Title = "Tbao Hub Arsenal", 
    Description = "Best Keyless Arsenal Script", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal"))()
        print("Tbao Hub Arsenal executed.")
    end
})

Tabs.MadCityChapter1:AddButton({
    Title = "Epic Hub", 
    Description = "Best Mad City Script Key : Zglad", 
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/VanPotent/EpicHub/refs/heads/main/loader.lua'),true))()
        print("Epic Hub executed.")
    end
})

Tabs.Misc:AddButton({
    Title = "Infinite Yield 6.2", 
    Description = "Opens Infinite Yield Script",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        print("Infinite Yield 6.2 executed.")
    end
})

Tabs.Misc:AddSlider("sdaow", 
{
    Title = "Speed Changer",
    Description = "Changes ur speed",
    Default = 16,
    Min = 16,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.WalkSpeed = Value
        end
    end
})

Tabs.Misc:AddSlider("jumpPowerChanger", 
{
    Title = "Jump Power Changer",  
    Description = "Changes your jump power",
    Default = 50,
    Min = 50,
    Max = 200,
    Rounding = 1,
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.JumpPower = Value
        end
    end
})

Tabs.Misc:AddSlider("fovChanger", 
{
    Title = "FOV Changer",  
    Description = "Changes your field of view",
    Default = 70,
    Min = 0,
    Max = 120,
    Rounding = 1,
    Callback = function(Value)
        game.Workspace.CurrentCamera.FieldOfView = Value
    end
})

Tabs.Misc:AddButton({
    Title = "Dark Dex",  
    Description = "Opens the Dark Dex script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
        print("Dark Dex executed.")
    end
})

Tabs.Settings:AddButton({
    Title = "Save Config", 
    Description = "Save your current settings to a config file",
    Callback = function()
        SaveManager:SaveConfig("MyConfig")
        print("Config saved as MyConfig.")
    end
})

Tabs.Settings:AddButton({
    Title = "Load Config", 
    Description = "Load settings from a saved config file",
    Callback = function()
        SaveManager:LoadConfig("MyConfig")
        print("Config loaded from MyConfig.")
    end
})

SaveManager:LoadAutoloadConfig()
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
