---Tạo GUI chính
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
        Main1=Window:AddTab({ Title="MAIN" }),
        Main2=Window:AddTab({ TItle="kaitun"}),
        Main3=Window:AddTab({ Title="HOP BOT AND SEVER"}),
        Main4=Window:AddTab({ Title="Fram chest"}),
        Main5=Window:AddTab({ Title="AUTO BOUNTY AIM BOT" }),
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


Tabs.Main1:AddButton({
    Title="ONLY BLOX FRUIT",
    Description="dùng trong game Blox Fruit",
})

 Tabs.Main1:AddButton({
    Title="redz HUB",
    Description="veson beta",
    Callback=function()
        local Settings = {
        JoinTeam = "Pirates"; -- Pirates/Marines
        Translator = true; -- true/false
    }

        getgenv().BETA_VERSION = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))(Settings)
    end
})

    Tabs.Main1:AddButton({
    Title="ZEE HUB",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://zuwz.me/Ls-Zee-Hub"))()
    end
})
    Tabs.Main1:AddButton({
    Title="W ARURE",
    Description="",
    Callback=function()
        getgenv().Team = "Pirates"
        getgenv().AutoLoad = false --Will Load Script On Server Hop
        getgenv().SlowLoadUi  = false
        getgenv().ForceUseSilentAimDashModifier = false --Force turn on silent aim , if error then executor problem
        getgenv().ForceUseWalkSpeedModifier = false --Force turn on Walk Speed Modifier , if error then executor problem
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
    end
})

    Tabs.Main1:AddButton({
    Title="blue hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
    end
})

    Tabs.Main1:AddButton({
    Title="BLACKTRAP hub",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://lua-library.btteam.net/script-auth.txt"))()
    end
})

    Tabs.Main1:AddButton({
    Title="YURI HUB",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/BloxFruits/main/YuriMain", true))()
    end
})
Tabs.Main1:AddButton({
    Title="MIN GAMING GREEN",
    Description="",
    Callback=function()
        getgenv().Team = "Pirates"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MinGamingHubNew/RealMinGaming/refs/heads/main/MinGaminvHubBloxFruits.lua"))()
    end
})
Tabs.Main1:AddButton({
    Title="Muxus Hub",
    Description="",
    Callback=function()
        getgenv().Team = "Pirates"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MuxusTL/BloxFruits/main/MuxusHub.lua"))()
    end
})
Tabs.Main1:AddButton({
    Title="Green x ",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BreakNameFast8/GreenX/refs/heads/main/green.hack"))()
    end
})
Tabs.Main1:AddButton({
    Title="Arora Hub",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/BloxFruits/main/Aurora", true))()
    end
})

Tabs.Main1:AddButton({
    Title="Asltra Hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
    end
})

Tabs.Main1:AddButton({
    Title="MOON HUB",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/BloxFruits/main/MoonHub", true))()()
    end
})

Tabs.Main1:AddButton({
    Title="Lap hub",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/BloxFruits/refs/heads/main/LapHub", true))()
    end
})

Tabs.Main1:AddButton({
    Title="RISE HUB",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TrashLua/BloxFruits/main/FreeScripts.lua"))()
    end
})

Tabs.Main1:AddButton({
    Title="xeter hub v3",
    Description="",
    Callback=function()
        getgenv().Version = "V3" getgenv().Team = "Marines"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
    end
})

Tabs.Main1:AddButton({
    Title="OMEGA HUB",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/BloxFruits/refs/heads/main/OmegaHubMain", true))()
    end
})
Tabs.Main1:AddButton({
    Title="Rise Pink Hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TrashLua/BloxFruits/main/FreeScripts.lua"))()
    end
})

Tabs.Main1:AddButton({
    Title="HUTAO V2",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HutaoHubs/Hutaohubs2.0/refs/heads/main/Bloxfruit2.lua"))()
    end
})

Tabs.Main1:AddButton({
    Title="Synet Hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Iamkhnah/Khanhdzpro/refs/heads/main/SynetBloxFruit.lua"))()
    end
})

Tabs.Main1:AddButton({
    Title="BENY HUB",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/BloxFruits/main/BeniHub", true))()
    end
})

Tabs.Main1:AddButton({
    Title="Yom hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/BloxFruits/main/YoumHub", true))()
    end
})

Tabs.Main1:AddButton({
    Title="KIND HUB",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/BloxFruits/main/KindHub"))()
    end
})

Tabs.Main1:AddButton({
    Title="Sun hub",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/BloxFruits/main/SunHub", true))()()
    end
})

Tabs.Main1:AddButton({
    Title="Galaxi x hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GalaxyTeamHub/Galaxy-Hub/main/GalaxyBloxFruit.lua"))()
    end
})

    Tabs.Main1:AddButton({
    Title="volcano hub",
    Description="",
    Callback=function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/wpisstestfprg/Volcano/refs/heads/main/VolcanoNewUpdated.luau"))()
    end
})

    Tabs.Main1:AddButton({
    Title="volcano v3",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/indexeduu/BF-NewVer/refs/heads/main/V3New.lua"))()
    end
})

    Tabs.Main1:AddButton({
    Title="ngọc bồng",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ngocbonggaming/script/refs/heads/main/NgocBongVn.lua"))()
    end
})
   Tabs.Main1:AddButton({
    Title="vetor",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AAwful/Vector_Hub/v2"))()
    end
})


    Tabs.Main1:AddButton({
    Title="xero hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
    end
})
  Tabs.Main1:AddButton({
    Title="TDT HUB",
    Description="",
    Callback=function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/ThinhNek343/tdthub/refs/heads/main/maintdt.lua"))()
    end
})

    Tabs.Main1:AddButton({
    Title="speed hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end    
})

    Tabs.Main1:AddButton({
    Title="mukuro",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://auth.quartyz.com/scripts/Loader.lua"))()
    end
})

    Tabs.Main1:AddButton({
    Title="kncrypt",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Kncrypt/refs/heads/main/sources/BloxFruit.lua"))()
    end
})

Tabs.Main1:AddButton({
    Title="J97",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kimprobloxdz/Jack-J97/refs/heads/main/Jack-J97.txt"))()
    end
})

Tabs.Main1:AddButton({
    Title="hiru hub",
    Description="",
    Callback=function()
        getgenv().Settings = {
    JoinTeam = true,
    Team = "Marines"-- Pirates or Marines
}
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KiddoHiru/BloxFruits/main/Source.lua"))()
    end
})

Tabs.Main1:AddButton({
    Title="TUANIOS",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhDzaiScript/TuanAnhIOSNew/refs/heads/main/TuanAnhIOS-TongHop.Lua"))()
    end
})

    Tabs.Main1:AddButton({
    Title="banana free fake",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kimprobloxdz/Banana-Free/refs/heads/main/Protected_5609200582002947.lua.txt"))()
    end 
})

    Tabs.Main1:AddButton({
    Title="Tuan02 hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tuan02hub/Tuan02-HUB-V9/refs/heads/main/BloxFruits"))()
    end
})

    Tabs.Main1:AddButton({
    Title="maru hub free",
    Description="",
    Callback=function()
        getgenv().Team = "Marines"  
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/KimP/refs/heads/main/MaruHub"))()
    end    
})

    Tabs.Main1:AddButton({
    Title="solix",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/solixloader/refs/heads/main/solix%20v2%20new%20loader.lua"))()
    end    
})

    Tabs.Main1:AddButton({
    Title="Vxeze ",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/VxezeHubMain"))()
    end    
})

    Tabs.Main1:AddButton({
    Title="HOHO V4",
    Description="need to get key",                                                 
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end    
})

    Tabs.Main1:AddButton({
    Title="SHARK X HUB",
    Description="need to get key",
    Callback=function()
            loadstring(game:HttpGet("https://shorturl.at/kyOxL"))()
        end    
})

    Tabs.Main1:AddButton({
    Title=" Lion Hub ",
    Description="",
    Callback=function()
        repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
        getgenv().team = "Pirates" -- Marines
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/e0c7fcf6c077fc23475cf4ce4db58e42.lua"))()
    end    
})


    Tabs.Main1:AddButton({
    Title="TSUO BETA",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/Tsuoscripts"))()
    end    
})

    Tabs.Main1:AddButton({
    Title=" Zinner Hub",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangNguyenk8/Scripts/refs/heads/main/Loader.lua"))()
    end    
})

    Tabs.Main1:AddButton({
    Title="BillDev Hub",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/selciawashere/screepts/refs/heads/main/BFKEYSYS",true))()
    end    
})  


    Tabs.Main1:AddButton({
    Title="FORGE",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
    end    
})

    Tabs.Main1:AddButton({
    Title="thunder zz",
    Description="",
    Callback=function()
        _G.Webhook = ""
        _G.MetodeTeleport = "Tween" --"Tween" or "Instant"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/BloxFruit/FindFruit.lua"))()
    end    
})

    Tabs.Main1:AddButton({
    Title="ZENITH HUB",
    Description="need to get key",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/ZenithHub/refs/heads/main/Loader"))()
    end    
})
Tabs.Main1:AddButton({
    Title="TSUO script",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/TsuohubKaitun"))()
    end    
})

 Tabs.Main2:AddButton({
    Title="arya kaitun",
    Description="",
    Callback=function()
       Config = {
Team = "Pirates",
Configuration = {
HopWhenIdle = true,
AutoHop = true,
AutoHopDelay = 60 * 60,
FpsBoost = false,
BlackScreen = true
},
Items = {
-- Melees
AutoFullyMelees = true,
-- Swords
Saber = true,
CursedDualKatana = false,
-- Guns
SoulGuitar = false,
-- Upgrades
RaceV2 = true
},
Settings = {
StayInSea2UntilHaveDarkFragments = false
}
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/hhl29042008-ops/script/refs/heads/main/cac"))()
    end
})

    Tabs.Main2:AddButton({
    Title="royx katun hub",
    Description="",
    Callback=function()
_G.KaitunConfig = {
    ["Start Farm"] = true,
    ["Auto Fruit"] = true,
    ["RedeemCode Level"] = 2,
    ["white screen"] = false,
    ["Ui Screen"] = false,
    ["LimitFragment"] = 100000,
    ["Buy Base Sword"] = true,
    ["Boss List"] = {
        "The Saw [Lv. 100] [Boss]",
        "Greybeard [Lv. 750] [Raid Boss]",
        "Darkbeard [Lv. 1000] [Raid Boss]",
        "Cursed Captain [Lv. 1325] [Raid Boss]",
        "Captain Elephant [Lv. 1875] [Boss]",
        "Soul Reaper [Lv. 2100] [Raid Boss]",
        "Dough King [Lv. 2300] [Raid Boss]",
        "Cake Prince [Lv. 2300] [Raid Boss]",
        "rip_indra True Form [Lv. 5000] [Raid Boss]",
        "Beautiful Pirate [Lv. 1950] [Boss]",
        "Cake Queen [Lv. 2175] [Boss]"
    },
    ["PlayerHunter"] = true,
    ["Player Hunter Hop"] = true,
    ["Auto Factory"] = true,
    ["Rengoku"] = true,
    ["Sea 3 Hop"] = true,
    ["Race v3"] = true,
    ["Skip Race v3"] = true,
    ["Instance Soul Guitar"] = false,
    ["CDK"] = true,
    ["Tushita"] = true,
    ["Yama"] = true,
    ["Soul Guitar"] = true,
    ["Pull Lever"] = true,
    ["Farm When Lvl Max"] = "Katakuri",
    ["Ghoul Race"] = false,
    ["Race Lock"] = {"Human","Mink","Fishman"},
    ["FPS Cap"] = 60,
    ["Buy Haki Color"] = true,
    ["Auto Legendary Sword"] = false,
    ["Auto TTK"] = false,
    ["Mastery Sword"] = true,
    ["Select Rarity"] = {"Mythical","Legendary"},
    ["Select Main Devil Fruit Sniper"] = {"Kitsune-Kitsune"},
    ["Select Sub Devil Fruit Sniper"] = {"Dragon-Dragon"},
    ["Allow Eat Fruit In Inventory"] = true,
    ["Start Sniper"] = true,
    ["Safe Fruit"] = {"Dragon-Dragon","Spirit-Spirit","Venom-Venom","Dough-Dough","Kitsune-Kitsune"},
    ["Link Webhook"] = "",
    ["Start Webhook"] = false,
    ["Webhook Mode"] = "Send Every .. min",
    ["Webhook Minute"] = 10,
    ["tag user"] = false,
    ["Send Test Webhook"] = false,
}
loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()
end
    })



    Tabs.main2:AddButton({
    Title=" Quartz Kaitun Hub ",
    Description="",
    Callback=function()
getgenv().Mode = "OneClick"
getgenv().Setting = {
    ["Team"] = "Pirates", -- Options "Pirates", "Marines"
    ["FucusOnLevel"] = true,
    ["Fruits"] = {  -- setting for fruits u want
        ["Primary"] = { -- if current fruit is not in this list, eat/buy
            "Dough-Dough",
            "Dragon-Dragon",
            "Buddha-Buddha",
            -- u can configs add mores/remove and must end with , (comma symbol)
        },
        ["Normal"] = { -- it just a normal fruit list
            "Flame-Flame",
            "Light-Light",
            "Magma-Magma",
            -- u can configs add mores/remove and must end with , (comma symbol)
        }
        -- run this for get all fruit name `local t={};for _,v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("GetFruits"))do table.insert(t,v.Name)end;setclipboard(table.concat(t, "\n"))`
    },
    ["Lock Fruits"] = { -- don't use or eat fruits in this list
        "Yeti-Yeti",
        "T-Rex-T-Rex"
    },
    ["IdleCheck"] = 300, -- every (x) seconds if not moving rejoin
};
loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/Loader.lua"))()
end    
})

    Tabs.main2:AddButton({
    Title="Kaitun simple",
    Description="",
    Callback=function()
        getgenv().simple_settings = {
    ["MASTERY"] = {
        ["ACTIVE"] = true,
        ["METHOD"] = "Half", -- Method for gaining mastery, "Half"[300] or "Full"[600]
    },
    ["OBJECTIVE"] = {
        ["GODHUMAN"] = true,
        ["RACE-V3"] = true, --race to V3 if possible Human, Mink, (Fishman, Ghoul, Cyborg) soon
        ["FRAGMENT"] = 100000,
        -- SWORD
        ["CANVANDER"] = true,
        ["BUDDY-SWORD"] = true,
        ["CURSED-DUAL-KATANA"] = true,
        ["SHARK-ANCHOR"] = true, -- soon.
        --GUN
        ["ACIDUM-RIFLE"] = true,
        ["VENOM-BOW"] = true,
        ["SOUL-GUITAR"] = true,
    },
    ["FRUITPURCHASE"] = true,
    ["PRIORITYFRUIT"] = {
        [1] = "Dragon-Dragon",
        [2] = "Flame-Flame",
        [3] = "Rumble-Rumble",
        [4] = "Human-Human: Buddha",
        [5] = "Dark-Dark",
    },
    ["FPSCAP"] = 30,
    ["LOWTEXTURE"] = true
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/simple-hubs/contents/refs/heads/main/bloxfruit-kaitan-main.lua"))()
    end
})

Tabs.main2:AddButton({
    Title="xero kaitun",
    Description="",
    Callback=function()
        UserSettings():GetService("UserGameSettings").MasterVolume = 0
settings().Rendering.GraphicsMode = 9
script_key = ""
getgenv().Shutdown = true
getgenv().Configs = {
    ["Team"] = "Marines",
    ["Gun Farm"] = false,
    ["FPS Boost"] = {
        ["Enable"] = true,
        ["FPS Cap"] = 60,
    },
    ["Farm Boss Drops"] = {
        ["Enable"] = true,
        ["When x2 Exp Expired"] = false
    },
    ["Hop"] = {
        ["Enable"] = true,
        ["Hop Find Tushita"] = true,
        ["Hop Find Valkyrie Helm"] = true,
        ["Hop Find Mirror Fractal"] = true
    },
    ["Farm Mastery"] = {
        ["Enable"] = true,
        ["Farm Mastery Weapons"] = {"Sword"},
        ["Swords To Farm"] = {"Cursed Dual Katana"}
    },
    ["Auto Collect Berry"] = true,
    ["Auto Evo Race"] = true,
    ["Awaken Fruit"] = true,
    ["Rainbow Haki"] = true,
    ["Hop Player Near"] = true,
    ["Skull Guitar"] = true,
    ["Find Fruit"] = true,
    ["Cursed Dual Katana"] = true,
    ["Switch Melee"] = true,
    ["Eat Fruit"] = "",
    ["Snipe Fruit"] = "Kitsune Fruit",
    ["Lock Fragment"] = 0,
    ["Buy Stuffs"] = true
}
repeat task.wait(1) pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/kaitun.lua"))() end) until getgenv().Check_Execute
    end
})

Tabs.main2:AddButton({
    Title="Kaitun LION HUB",
    Description="",
    Callback=function()
       
script_key = "your key";
getgenv().Config = {
    ["Team"] = "Pirates", -- Marines
    ["FPS Boost"] = true,
    ["Black Screen"] = false,
    ["Lock Fragment"] = 10000000,
    ["Awakening Fruit"] = true,
    ["Hop if Other Players are Nearby"] = false,
    ["Optional"] = {
        ["Skip Level"] = true,
    },
    ["Auto Evo Race"] = true,
    ["Item"] = {
        ["Get Pole"] = false,
        ["Get Saber"] = true,
        ["Skull Guitar"] = {
            ["Enable"] = true,
        },
        ["Cursed Dual Katana"] = true,
        ["Get Mirror Fractal when have God's Chalice"] = true,
        ["Collect Berries"] = false,
    },
    ["Mastery"] = {
        ["Melee"] = false, -- 600 mastery
        ["Sword"] = {
            ["Enable"] = false,
            ["Method"] = "Half" -- Half/Full
        }
    },
    ["Fruit"] = {
        ["Select Fruit"] = "", --Example: Dough-Dough, Leopard-Leopard,...
        ["Snipe Fruit Selected"] = false
    },
    ["Hop"] = {
        ["Hop Find Mirror"] = true,
        ["Hop Find Valkyrie Helm"] = true,
        ["Hop Find Fruit 1m For Auto Third Sea"] = true,
        ["Hop For Get Tushita"] = true,
        ["Hop Find Full Moon For Get Skull Guitar"] = true,
        ["Hop Find Cake Queen [CDK]"] = true
    },
}
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/0f5108f9ace1bd83a21baaf5814b081e.lua"))()
end
})

Tabs.main3:AddButton({
    Title="HOP BOT AND SEVER",
    Description="-------------",
    Callback=function()
        
    end
})

    Tabs.main3:AddButton({
    Title="TEDDY HOP",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
    end
})    
    
Tabs.main4:AddButton({
    Title="FRAM CHEST",
    Description="-------------",
    Callback=function()
        
    end
})
    Tabs.main4:AddButton({
    Title="THUNDER Z CHEST",
    Description="",
    Callback=function()
        _G.Team = "Marine" -- "Marine" or "Pirate"
        _G.MetodeTeleport = "Instant" --"Instant" or "Tween"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/BloxFruit/Chest/AllDevices.lua"))()
    end
 })

    Tabs.main4:AddButton({
    Title="VGB Hub Chest",
    Description=" Farm ONLY ONE LAND",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VGB-VGB-VGB/-VGB-Chest-Farm--/refs/heads/main/ChestFarmByVGBTeam"))()
    end
})

Tabs.main4:AddButton({
    Title="skull hub",
    Description="",
    Callback=function()
        local Settings = {
            JoinTeam = "Pirates"; -- Pirates/Marines
            Translator = true; -- true/false
          }
          
          loadstring(game:HttpGet("https://raw.githubusercontent.com/newredz/BloxFruits/refs/heads/main/Source.luau"))()(Settings)
    end
})

Tabs.main4:AddButton({
    Title="HUTAO HUB",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HutaoHubs/Hutaohubs2.0/main/Chestfarm.lua"))()
    end
})

    Tabs.main4:AddButton({
    Title="Faifao Hub Chest FRAM ",
    Description="",
    Callback=function()
        _G.Team = "Pirate" -- "Marine" or "Pirate"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Slimexiuem/MenuSlime/main/Farmchestv2"))()
    end
}) 


Tabs.main5:AddButton({
    Title="PVP",
    Description="-------------",
})
    Tabs.main5:AddButton({
    Title="aim + bodyhitbox",
    Description="AE ẤN VÔ KO LAG VS VĂNG ĐÂU",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Totocoems/Ace/main/Ace"))()
        loadstring(Game:HttpGet("https://raw.githubusercontent.com/VanThanhIOS/OniiChanVanThanhIOS/refs/heads/main/oniichanpakavanthanhios"))()
    end
})      


    Tabs.main5:AddButton({
    Title="Cokka Hub AIMBOT",
    Description="",
    Callback=function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/UserDevEthical/Loadstring/main/CokkaHub.lua")()
    end
})

    Tabs.main5:AddButton({
    Title="Quartz Aimbot Hub",
    Description="",
    Callback=function()
        getgenv().Mode = "PVP"
        getgenv().Team = "Pirates" -- Options "Marines", "Pirates"
        loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()
    end
})

    Tabs.main5:AddButton({
    Title="LION AUTO BOUNTY",
    Description="nếu dùng portal thì dùng cái khác",
    Callback=function()
        repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
        getgenv().Team = "Marines"  
        getgenv().Config = {
            ["Safe Health"] = {50},
            ["Custom Y Run"] = {
                Enabled = true,
                ["Y Run"] = 5000
            },
            ["Hunt Method"] = {
                ["Use Move Predict"] = false,
                ["Hit and Run"] = false,
                ["Aimbot"] = true,
                ["ESP Player"] = true,
                ["Max Attack Time"] = 60
            },
            ["Shop"] = {
                ["Random Fruit"] = false,
                ["Store Fruit"] = true,
                ["Zoro Sword"] = false
            },
            ["Ui Theme"] = {
                ["Background"] = "139756291389843",
                ["Skip Button"] = "113079599736013",
                ["Reset Bounty Button"] = "118191900561814"
            },
            ["Setting"] = {
                ["World"] = nil,
                ["White Screen"] = false,
                ["Invisible"] = true,
                ["Fast Delay"] = 0.5,
                ["Tween Speed"] = 350,
                ["Set Player Server Hop"] = 1,
                ["Url"] = "Your_Webhook_Url",
                ["Chat"] = {
                    Enabled = true,
                    Wait = 50,
                    Massage = {"VÀO KÊNH LT GAMING ĐĂNG KÍ NHÉ ", "CẢM ƠN BẠN ĐÃ DÙNG SCRIPT CỦA MÌNH", "CHÚC BẠN MỘT NGÀY TỐT LÀNH"}
                }
            },
            ["Skip"] = {
                ["Avoid V4"] = true -- If you want to skip V4, set this to true
            },
            ["Spam All Skill On V4"] = {
                Enabled = true,
                ["Weapons"] = {"Melee", "Sword", "Gun", "Blox Fruit"}
            },
            Items = {
                Use = {"Melee", "Sword"},
                Melee = {
                    Enable = true,
                    Delay = 0.4,
                    Skills = {
                        Z = {Enable = true, HoldTime = 0.3},
                        X = {Enable = true, HoldTime = 0.2},
                        C = {Enable = true, HoldTime = 0.5}
                    }
                },
                Sword = {
                    Enable = true,
                    Delay = 0.5,
                    Skills = {
                        Z = {Enable = true, HoldTime = 1},
                        X = {Enable = true, HoldTime = 0}
                    }
                },
                Gun = {
                    Enable = true,
                    Delay = 0.2,
                    Skills = {
                        Z = {Enable = true, HoldTime = 0.1},
                        X = {Enable = true, HoldTime = 0.1}
                    }
                },
                ["Blox Fruit"] = {
                    Enable = true,
                    Delay = 0.4,
                    Skills = {
                        Z = {Enable = true, HoldTime = 0.1},
                        X = {Enable = true, HoldTime = 0.1},
                        C = {Enable = true, HoldTime = 0.15},
                        V = {Enable = false, HoldTime = 0.2},
                        F = {Enable = true, HoldTime = 0.1}
                    }
                }
            }
        }
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/10f7f97cebba24a87808c36ebd345a97.lua"))()
    end
})

   Tabs.main5:AddButton({
    Title="Matsune hub",
    Description="",
    Callback=function()
        getgenv().Config = {
    ["Team"] = "Pirates",
    ["Safe Health"] = {40, 50},
    ["Skip"] = {
        ["Fruit"] = {["Enabled"] = true,
            ["Avoid Fruit"] = {
                "Portal-Portal",
                "Kitsune-Kitsune"
            }
        },
        ["Avoid V4"] = true
    },
    ["Hunt Method"] = {
        ["Use Move Predict"] = true,
        ["Hit and Run"] = true
    },
    ["Spam All Skill On V4"] = {
        ["Enabled"] = true,
        ["Weapons"] = {"Melee", "Gun", "Sword", "Blox Fruit"}
    },
    ["Chat"] = {
        ["Enabled"] = false,
        ["Message"] = {""}
    },
    ["Custom Y Run"] = {
        ["Enabled"] = false,
        ["Y Run"] = 100
    },
    ["Misc"] = {
        ["Auto Store Fruit"] = true,
        ["Auto Random Fruit"] = true,
        ["White Screen"] = false,
        ["Click Delay"] = 0.1,
    },
     ["Items"] = {["Use"] = {"Melee", "Gun", "Sword", "Blox Fruit"},
        ["Melee"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = 1.5},
                ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1},
                ["C"] = {["Enable"] = true, ["HoldTime"] = 0.1}
            }
        },
        ["Blox Fruit"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = 1.2},
                ["X"] = {["Enable"] = true, ["HoldTime"] = 0},
                ["C"] = {["Enable"] = true, ["HoldTime"] = 0},
                ["V"] = {["Enable"] = false, ["HoldTime"] = 0},
                ["F"] = {["Enable"] = false, ["HoldTime"] = 0}
            }
        },
        ["Sword"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
                ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1}
            }
        },
        ["Gun"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
                ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1}
            }
        }
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/RealMatsune/Rolls-Rocye/refs/heads/main/b164o774u241n032t141y.lua"))()
    end
})


    Tabs.main5:AddButton({
    Title="HOHO Hub Bounty Hunter",
    Description="need to get key",
    Callback=function()
        script_key = "PASTE_KEY_HERE";
        _G["HoHo Hub Auto Bounty V4"] = {
            ["Avatar"] = "rbxassetid://8598068647",
            ["Farm Method"] = "Normal",
            ["Select Team"] = "Pirate",
            ["Discord Webhook"] = "",
            ["Bypass Teleport"] = false,
            ["Max Level Distance"] = 612,
            ["Don't attack friends"] = true,
            ["Don't attack player have cup"] = false,
            ["Distance Attack Y"] = 2, -- Shark Race = 0; Another >= 6
            ["Chat After Kill"] = {
                ["Active"] = false,
                ["List Chat"] = {""},
            },
            ["Yourself"] = {
                ["Invisible From Ken"] = true,
                ["No Stun"] = true,
            },
            ["SafeZone"] = {Enabled = true, ["Health Left (%)"] = 25, ["Wait Until Heal (%)"] = 80},
            ["Time Control"] = {
                ["Max Time Target Player"] = 120,
            },
            ["Abilities"] = {
                ["Auto Click"] = true,
                ["Melee"] = {
                    Z = {Enabled = true, Hold = 0.05, WaitNextSkill = 0.6},
                    X = {Enabled = true, Hold = 0.05, WaitNextSkill = 0.6},
                    C = {Enabled = true, Hold = 0.05, WaitNextSkill = 0.6},
                },
                ["Sword"] = {
                    Z = {Enabled = true, Hold = 0.05, WaitNextSkill = 0.6},
                    X = {Enabled = true, Hold = 0.05, WaitNextSkill = 0.6},
                },
                ["Gun"] = {
                    Z = {Enabled = true, Hold = 0.05, WaitNextSkill = 0.6},
                    X = {Enabled = true, Hold = 0.05, WaitNextSkill = 0.6},
                },
                ["Fruit"] = {
                    Z = {Enabled = false, Hold = 0.05, WaitNextSkill = 0.6},
                    X = {Enabled = false, Hold = 0.05, WaitNextSkill = 0.6},
                    C = {Enabled = false, Hold = 0.05, WaitNextSkill = 0.6},
                    V = {Enabled = false, Hold = 0.05, WaitNextSkill = 0.6}, -- don't forget to disable V if u r using zoan fruits
                    F = {Enabled = false, Hold = 0.05, WaitNextSkill = 0.6},
                },
            },
        }
        _G.SupperFixLag = true
        _G["Auto Gacha & Store Fruit"] = true
        _G.loadCustomId = "fac6dbd013c78163f8061ce11b2c1330"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end
})
    
    Tabs.main5:AddButton({
    Title="RUAHUBV2",
    Description="",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ErutTheTeru/ruahub/refs/heads/main/bounty-hunter.lua"))()
    end
})


    Tabs.main5:AddButton({
    Title="AUTO BOUNTY",
    Description="nếu dùng potal thì dùng cái khác ",
    Callback=function()
        repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Team = "Pirates"
getgenv().Mode = "Auto Bounty"
getgenv().Config = {
    ["Safe Health"] = {30, 50}, -- {health run, health kill}
    ["Custom Y Run"] = {
        Enabled = true,
        ["Y Run"] = 5000
    },
    ["Hunt Method"] = {
        ["Use Move Predict"] = false,
        ["Hit and Run"] = false,
        ["Aimbot"] = true,
        ["ESP Player"] = true,
        ["Skip Player"] = {"nhinemtheothangkhac2"},
        ["Max Attack Time"] = 60,
        ["Lock Bounty"] = {
            ["Enabled"] = false,
            ["Bounty"] = {0, 30000000}
        }
    },
    ["Stats"] = {
        ["Enable"] = false,
        ["Reset Stats"] = false,
        ["Point"] = {
            ["Points per lift"] = nil,
            ["Melee"] = nil,
            ["Defence"] = nil,
            ["Sword"] = nil,
            ["Gun"] = nil,
            ["Devil Fruit"] = nil
        }
    },
    ["Shop"] = {
        ["Random Fruit"] = false,
        ["Store Fruit"] = true,
        ["Zoro Sword"] = false
    },
    ["Theme"] = {
	Name = "Basic",
	UIUrl = "https://shared.fastly.steamstatic.com/store_item_assets/steam/",
	Custom = {
		["Enable"] = false,
		["title_color"] = Color3.fromRGB(255, 221, 252),
		["titleback_color"] = Color3.fromRGB(169, 20, 255),
		["list_color"] = Color3.fromRGB(255, 221, 252),
		["liststroke_color"] = Color3.fromRGB(151, 123, 207),
		["button_color"] = Color3.fromRGB(255, 221, 252),
		["title_font"] = Enum.Font.FredokaOne,
		["text_font"] = Enum.Font.Gotham,
		["title_size"] = 40,
		["text_size"] = 24
	},
},

    ["Setting"] = {
        ["World"] = 3,
        ["Remove Saved File"] = false,
        ["White Screen"] = false,
        ["Fast Delay"] = 0.5,
        ["Tween Speed"] = 350,
        ["Bypass TP"] = true,
        ["FPS BOOSTER"] = false,
        ["Url"] = "https://discord.com/api/webhooks/1417880640166166678/gMpvsZ6t37oLEj2bCHL7HPw7CAsTv0LuNlOj_nr585ubty1IggYKRF6ejHbcc8kBGbFL", 
        ["Select Region"] = {
            ["Enabled"] = true,
            ["Region"] = {"Singapore"} -- United States, Netherlands, Germany, India, Australia
        }
    },
    ["Skip"] = {
        ["Avoid V4"] = false,
        ["Fruit"] = {
            ["Enabled"] = true,
            ["Avoid Fruit"] = {
                "Portal-Portal",
                "Kitsune-Kitsune"
            }
        }
    },
    ["Spam All Skill On V4"] = {
        Enabled = true,
        ["Weapons"] = {"Melee", "Sword", "Gun", "Blox Fruit"}
    },
    ["Items"] = {
        ["Melee"] = {
            Enable = true,
            Delay = 0.4,
            Skills = {
                Z = {Enable = true, HoldTime = 0.3},
                X = {Enable = true, HoldTime = 0.2},
                C = {Enable = true, HoldTime = 0.5}
            }
        },
        ["Sword"] = {
            Enable = true,
            Delay = 0.5,
            Skills = {
                Z = {Enable = true, HoldTime = 1},
                X = {Enable = true, HoldTime = 0}
            }
        },
        ["Gun"] = {
            Enable = false,
            Delay = 0.3,
            Skills = {
                Z = {Enable = true, HoldTime = 0.1},
                X = {Enable = true, HoldTime = 0.1}
            }
        },
        ["Blox Fruit"] = {
            Enable = false,
            Delay = 0.4,
            Skills = {
                Z = {Enable = true, HoldTime = 0.1},
                X = {Enable = true, HoldTime = 0.1},
                C = {Enable = true, HoldTime = 0.15},
                V = {Enable = true, HoldTime = 0.2},
                F = {Enable = true, HoldTime = 0.1}
            }
        }
    }
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/ca16cb42816b395e079fa7a114352ba9.lua"))()
    end
})

