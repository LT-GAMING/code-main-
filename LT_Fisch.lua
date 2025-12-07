-- Tạo GUI chính
local tbGui = Instance.new("ScreenGui")
tbGui.Name = "ThongBaoGui"
tbGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
tbGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
tbGui.ResetOnSpawn = false

-- Tạo khung text chính
local title = Instance.new("TextLabel")
title.Parent = tbGui
title.Size = UDim2.new(1, 0, 0.1, 0)
title.Position = UDim2.new(0, 0, 0.1, 0)
title.BackgroundTransparency = 1
title.Text = "HELO " .. game.Players.LocalPlayer.Name .. " used Script COMPILATION (by LT GAMING)"
title.TextSize = 30
title.TextColor3 = Color3.fromRGB(255, 255, 0)
title.Font = Enum.Font.SourceSansBold

-- Tạo nội dung bên dưới
local noidung = Instance.new("TextLabel")
noidung.Parent = tbGui
noidung.Size = UDim2.new(1, 0, 0.05, 0)
noidung.Position = UDim2.new(0, 0, 0.2, 0)
noidung.BackgroundTransparency = 1
noidung.Text = "REMEMBER TO LIKE AND SUBSCRIBE TO LT GAMING CHANNEL"
noidung.TextSize = 25
noidung.TextColor3 = Color3.fromRGB(255, 255, 255)
noidung.Font = Enum.Font.SourceSans

-- Hiệu ứng mờ dần
task.wait(2)
for i = 0, 1, 0.02 do
	title.TextTransparency = i
	noidung.TextTransparency = i
	task.wait(0.02)
end

tbGui:Destroy()

local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.10615778, 0, 0.16217947, 0)
ImageButton.Size = UDim2.new(0, 40, 0, 40)
ImageButton.Image = "http://www.roblox.com/asset/?id=112045466994309"

UICorner.CornerRadius = UDim.new(1, 10) 
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:Connect(function() 
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.P, false, game)
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
repeat wait() until game:IsLoaded()
local Window = Fluent:CreateWindow({
        Title = "LT GAMING TỔNG HỢP",
        SubTitle = "PREMIUM",
        TabWidth = 157,
        Size = UDim2.fromOffset(625, 520),
        Acrylic = false,
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.P, -- Key to minimize the window
    })
local Tabs = {
    Main0=Window:AddTab({ Title="INFORMATION" }),
    Main4=Window:AddTab({ Title="FISCH" }),

    }
Tabs.Main0:AddButton({
        Title = "Discord",
        Description = "DONE UPDATE",
        Callback = function()
            setclipboard("https://discord.gg/Wyvk7D6whg")
           end
    })
Tabs.Main0:AddButton({
    Title = "Copy GameId",
    Description = "Copy ID của game vào clipboard",
    Callback = function()
        setclipboard(tostring(game.GameId))
        warn("Đã copy GameId: " .. game.GameId)
    end
})
Tabs.Main0:AddButton({
    Title = "Copy PlaceId",
    Description = "Copy PlaceId của game vào clipboard",
    Callback = function()
        setclipboard(tostring(game.PlaceId))
        warn("Đã copy PlaceId: " .. game.PlaceId)
    end
})
Tabs.Main0:AddButton({
    Title = "Youtuber",
    Description = "SUBSCRIBE TO LT GAMING CHANNEL",
    Callback = function()
        setclipboard("https://www.youtube.com/@TlT_REG_GAMING")
    end
})
Tabs.Main0:AddButton({
    Title = "INFORMATION",
    Description =
     "THIS SCRIPT IS JUST A PREMIUM BETA VERSION. SOME OF YOU CAN USE IT IN A GAME. IF IT HAS AN ERROR OR SOMETHING, REPORT IT TO THE DISCORD SERVER SO I CAN FIX IT.",
    Callback = function()
        warn("setclipboard: No link provided")
    end
})
Tabs.Main0:AddButton({
    Title = "INFORMATION",
    Description ="Every 100 people registering for the script will have 1 big update for you or every 20 registrations will have 1 small update",
    Callback = function()
        warn("setclipboard: No link provided")
    end
})
Tabs.Main0:AddButton({
    Title = "Rejoin",
    Description = "Re-enter the current server",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer

        -- Kiểm tra xem player có tồn tại ko
        if player then
            TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, player)
        end
    end
})
Tabs.Main0:AddButton({
    Title="FIX LAG",
    Description="CHO THK ĐẦN NÀO CẦN ALL GAME",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
    end
})
Tabs.Main4:AddButton({
    Title="ONLY FISCH",
    Description="dùng trong game FISCH",
})
Tabs.Main4:AddButton({
    Title="ice hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SundayN10/Iced-Hub/refs/heads/main/IČ̣ƏƊ%20Hub"))()
    end
})
Tabs.Main4:AddButton({
    Title="Lunor Hub",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://lunor.dev/loader"))()
    end
})
Tabs.Main4:AddButton({
    Title="native hub",
    Description="need to get key",
    Callback=function()
        (loadstring or load)(game:HttpGet("https://getnative.cc/script/loader"))()
    end
})
Tabs.Main4:AddButton({
    Title="Than Hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/thantzy/thanhub/refs/heads/main/thanv1"))()
    end
})
Tabs.Main4:AddButton({
    Title=" Noble Hub",
    Description="",
    Callback=function()
        if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/djaXlua/Noble/refs/heads/main/Noble%20Hub%20Fish.txt"))()
    end
})
Tabs.Main4:AddButton({
    Title="Nat Hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/NatHub.lua"))()
    end
})
Tabs.Main4:AddButton({
    Title="ZENITH HUB",
    Description="need to get key",
    Callback=function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/ZenithHub/refs/heads/main/Loader"))()
    end
})
Tabs.Main4:AddButton({
    Title="Aethrix Hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Imrane43/fisch-Script/refs/heads/main/Fisch%20Script",true))()
    end
})
Tabs.Main4:AddButton({
    Title="FORGE HUB",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
    end
})
Tabs.Main4:AddButton({
    Title="Fisch V1.3 Hub",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiCen/MainMenu/main/Code"))()
    end
})
Tabs.Main4:AddButton({
    Title="FLOW HUB",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Overflow/refs/heads/main/Main.lua"))()
    end
})
Tabs.Main4:AddButton({
    Title="Dexzy Hub",
    Description="",
    Callback=function()
        
    end
})
Tabs.Main4:AddButton({
    Title="Huzz Hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/notjohnnylol/Fisch/refs/heads/main/HuzzHub"))()
    end
})
Tabs.Main4:AddButton({
    Title=" Sera Hub",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LumosSera/Serra/refs/heads/main/Fish.lua"))()
    end
})
Tabs.Main4:AddButton({
    Title="Fulse Hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/refs/heads/main/Pulse/Games/Fisch.lua",true))()()
    end
})
Tabs.Main4:AddButton({
    Title="Solix Hub",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
    end
})
    