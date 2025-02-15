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
    Main = Window:AddTab({ Title = "Aimbot🎯", Icon = "" }),
    CarSpeed = Window:AddTab({ Title = "Universal Car Speed", Icon = "" }),
    MM2 = Window:AddTab({ Title = "MM2", Icon = "" }),
    BloxFruit = Window:AddTab({ Title = "Blox Fruit🍎", Icon = "" }),
    Fisch = Window:AddTab({ Title = "Fisch🐟🎣", Icon = "" }),
    UniversalAutoPlayPiano = Window:AddTab({ Title = "Universal Auto Play Piano", Icon = "" }),
    TheStrongestBattlegrounds = Window:AddTab({ Title = "The Strongest Battlegrounds", Icon = "" }),
    Arsenal = Window:AddTab({ Title = "Arsenal", Icon = "" }),  -- Yeni sekme
    Evade = Window:AddTab({ Title = "Evade", Icon = "" }),  -- Yeni sekme
    ShrimpGame = Window:AddTab({ Title = "Shrimp Game", Icon = "" }), -- Yeni sekme
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

Tabs.Main:AddButton({
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

-- Yeni Tab: The Strongest Battlegrounds
Tabs.TheStrongestBattlegrounds:AddButton({
    Title = "Infernium Hub Tsb", 
    Description = "Free TSB Script (have key)", 
    Callback = function()
        loadstring(game:HttpGet("https://infernium.xyz/tsb.lua", true))()
        print("Infernium Hub TSB executed.")
    end
})

-- Yeni Buton: Speed Hub X
Tabs.TheStrongestBattlegrounds:AddButton({
    Title = "Speed Hub X", 
    Description = "Best Keyless Speed Hub X Script", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
        print("Speed Hub X executed.")
    end
})

-- Yeni Tab: Evade
Tabs.Evade:AddButton({
    Title = "Tbao Hub", 
    Description = "Best Keyless Evade Script", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubEvade"))()
        print("Tbao Hub Evade executed.")
    end
})

-- Yeni Tab: Shrimp Game
Tabs.ShrimpGame:AddButton({
    Title = "Moon X", 
    Description = "Best Fr Shrimp Game Script", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MateoDev2024/MoonX/refs/heads/main/Loader.lua", true))()
        print("Moon X executed.")
    end
})

SaveManager:LoadAutoloadConfig()
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)
