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
         Main1=Window:AddTab({ Title="MAIN DEAD RAILS" }),
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

    task.spawn(function()
    local Players = game:GetService("Players")
    local VirtualUser = game:GetService("VirtualUser")
    
    Players.LocalPlayer.Idled:Connect(function()
        VirtualUser:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        task.wait(1)
        VirtualUser:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    end)
end)

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
Tabs.Main2:AddButton({
    Title="ONLY DEAD RAILS",
    Description="dùng trong game DEAD RAILS",
})

Tabs.Main2:AddButton({
    Title="auto bring bond",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Dead-Rails-Alpha-OP-KiciaHook-V2-Dead-Rails-Auto-Farm-And-More-38614"))()
    end
})

    Tabs.Main2:AddButton({
    Title="skull hub",
    Description="skull hub",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hungquan99/SkullHub/main/loader.lua"))()
    end
})
    Tabs.Main2:AddButton({
    Title="gumbaba script",
    Description="gumbaba script",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/DeadRails"))()
    end
})
    Tabs.Main2:AddButton({
    Title="Null Fire",
    Description="Null fire",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Loader"))()
    end
})

    Tabs.Main2:AddButton({
    Title="merci",
    Description="merci",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/badass1ia/Merciful/refs/heads/main/Absurdity"))()
    end
})
    Tabs.Main2:AddButton({
    Title="T BAO HUB",
    Description="T BAO HUB",
    Callback=function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/refs/heads/main/TbaoHubDeadRails"))()
    end
})
    Tabs.Main2:AddButton({
    Title="speed hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()()
      end
})
    Tabs.Main1:AddButton({
    Title="NEOX",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader", true))()()
    end
})
    Tabs.Main2:AddButton({
    Title="kiciahook",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kiciahook/kiciahook/refs/heads/main/loader.lua"))()
    end
})
    Tabs.Main2:AddButton({
    Title="DHHz-hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ducknovis/DHHz-hub/refs/heads/main/Dead-Rails.lua"))()
    end
})

    Tabs.Main2:AddButton({
    Title=" Pink Hub",
    Description="",
    Callback=function()
    
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptBeLike/Tera-DeadRails/refs/heads/main/Meteor%20V1"))()
    end
})

    Tabs.Main2:AddButton({
    Title="NATIVE HUB",
    Description="need to get key",
    Callback=function()
    (loadstring or load)(game:HttpGet("https://getnative.cc/script/loader"))()
    end
})
    Tabs.Main2:AddButton({
    Title="FLY HUB",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/refs/heads/main/Vehicle%20Fly%20Gui"))()
       end
})
    Tabs.Main2:AddButton({
    Title="Script Lunor Hub: Auto Bond,Kill Aura, Aim Bot,…",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://lunor.dev/loader"))()
      end
})
    Tabs.Main2:AddButton({
    Title="Script S7 Hub NO KEY: Auto Farm Bond, Auto Win,…",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://lunor.dev/loader"))()
    end
})
    Tabs.Main2:AddButton({
    Title="NatHub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/NatHub.lua"))()
    end
})
    Tabs.Main2:AddButton({
    Title="Auto Bond",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/refs/heads/ok/dead%20rails"))()
    end
})
    Tabs.Main2:AddButton({
    Title="Auto Bond v3 ",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/m00ndiety/OP-AUTO-BONDS-V3/refs/heads/main/Keyless-BONDS-v3"))()
    end
})  
    Tabs.Main2:AddButton({
    Title="Auto Bond v4",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Emplic/deathrails/refs/heads/main/bond"))()
    end
})
    Tabs.Main2:AddButton({
    Title="Script TN Bond Hub: Auto Win, Farm Bond,…",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/thiennrb7/Script/refs/heads/main/autobond"))()
    end
})
Tabs.Main2:AddButton({
    Title="AUTO BOND NEW",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hungquan99/HungHub/main/loader.lua"))()
    end
})


Tabs.Main2:AddButton({
    Title="Vxeze Hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/VxezeHubMain"))()
    end
})
    Tabs.Main2:AddButton({
    Title="aimbot anhcon hub",
    Description="",
    Callback=function() 
       loadstring(game:HttpGet("https://raw.githubusercontent.com/HuyMythicIOS/Anh-Con-Hub/refs/heads/main/AnhConHub-AimLock-NgonThi"))()
    end
})
    Tabs.Main2:AddButton({
    Title="aimbot2",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Markklol/AnimalSimulator/refs/heads/main/DRails.lua"))()
    end
})        
    Tabs.Main2:AddButton({
    Title="Aimbot3",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Unknownlodfc/Zephyr/refs/heads/main/DeadRails/Aim"))()
    end
})
    Tabs.Main2:AddButton({
    Title="AUTO WIN ",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/m00ndiety/Auto-win-Keyless-/refs/heads/main/obf_Dead_Rails_Auto_Win_Farm_GUI.lua.txt"))()
    end
})

Tabs.Main2:AddButton({
    Title="linh tinh",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TrustsenseDev/MicroHub/refs/heads/main/loader.lua"))()
    end
})
