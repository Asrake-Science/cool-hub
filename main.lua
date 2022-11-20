getgenv().scammone = false
getgenv().vers = 1.5
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "😎 swagpex hub 😎",
	LoadingTitle = "making scam calls to save your best friend tycoon - the script you NEED!",
	LoadingSubtitle = "by supexian <3",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "supex_hub",
		FileName = "ambatukam"
	},
	KeySystem = true,
	KeySettings = {
		Title = "😎 swagpex hub 😎",
		Subtitle = "the big fat dumpster baby of NucleusX",
		Note = "join discord.gg/4kRf7vVfrt 4 more scriptz",
		FileName = "supexHUB_enjoyer",
		SaveKey = true,
        GrabKeyFromSite = false,
		Key = 'swagpexhubFTW'
	}
})

Rayfield:Notify({
    Title = "😎 swagpex hub 😎",
    Content = "swagpex hub".. vers .." has loaded with (0) Errors.",
    Duration = 6.5,
    Actions = {
        Ignore = {
            Name = "k",
            Callback = function()
                Rayfield:Notify({Title = "", Content = "k.", Duration = 1})
            end
        },
    },
})

local Autoclaim = Window:CreateTab("💼 | Office")
local AutoclaimSection = Autoclaim:CreateSection("Miscellaneous")

local ClaimOffice = Autoclaim:CreateButton({
	Name = "Claim an empty Scam Center",
	Callback = function()
        for _, v in pairs(game.Workspace.Tycoons:GetChildren()) do
            if v:FindFirstChild("TycoonOwner") then
                if v.TycoonOwner.Value == "" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Claim.Claim.CFrame
                    return
                end
            end
        end
end,
})

local OfficeTP = Autoclaim:CreateButton({
	Name = "Teleport to Scam Center",
	Callback = function()
        for _, v in pairs(game.Workspace.Tycoons:GetChildren()) do
            if v:FindFirstChild("TycoonOwner") then
                if v.TycoonOwner.Value == tostring(game.Players.LocalPlayer) then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.TP.CFrame
                    return
                end
            end
        end
end,
})
local AutoTab = Window:CreateTab("🤖 | Automation")
local AutoSection = AutoTab:CreateSection("Scam Seniors")

 local infcash = AutoTab:CreateToggle({
        Name = "Scam Loop",
        CurrentValue = false,
        Flag = "scammone",
        Callback = function(Value)
            scammone = Value
            game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Notifications").Enabled = false
            game:GetService("Players").LocalPlayer.Data.ScamSpeed.Value = 0.1
            game:GetService("Players").LocalPlayer.Data.TransferSpeed.Value = 0.1
            while scammone  and task.wait(5.5) do
                if not game:GetService("Players").LocalPlayer:FindFirstChild("GeneratedNumber") then
                    local a = game:GetService("ReplicatedStorage").Events.GenerateNumber:FireServer()
                    task.wait()
                else
                    local b = {[1] = game:GetService("Players").LocalPlayer.GeneratedNumber.Value}
                    game:GetService("ReplicatedStorage").Events.CheckNumber:FireServer(unpack(b))
                end
            end
        end
    })

local AutoUpgrades = AutoTab:CreateSection("Upgrades")

local UgradeAdvertisement = AutoTab:CreateButton({
	Name = "Upgrade Scamming Speed",
	Callback = function()
    
        local args = {
            [1] = "ScamSpeed",
            [2] = game:GetService("Players").LocalPlayer.Data.ScamSpeedLevel.Value
        }

        game:GetService("ReplicatedStorage").Events.UpgradeItem:FireServer(unpack(args))
	end,
})

local UgradeSpeed = AutoTab:CreateButton({
	Name = "Upgrade Transfer Speed",
	Callback = function()

        local args = {
            [1] = "TransferSpeed",
            [2] = game:GetService("Players").LocalPlayer.Data.TransferSpeedLevel.Value
        }

        game:GetService("ReplicatedStorage").Events.UpgradeItem:FireServer(unpack(args))
	end,
})

local UgradeDrive = AutoTab:CreateButton({
	Name = "Upgrade Income per Scam",
	Callback = function()

        local args = {
            [1] = "ScamValue",
            [2] = game:GetService("Players").LocalPlayer.Data.ScamValueLevel.Value
        }

        game:GetService("ReplicatedStorage").Events.UpgradeItem:FireServer(unpack(args))
	end,
})

local MethHeadTab = Window:CreateTab("💊 | Drugs") -- Title, Image
local MethHeadSection = MethHeadTab:CreateSection("Silly Scripts!!")
local ANTIAFK = MethHeadTab:CreateButton({
	Name = "Anti-AFK",
	Callback = function()
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
           vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
           wait(1)
           vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
        Rayfield:Notify({Title = "ANTI-AFK", Content = "Anti AFK has been enabled, enjoy the afk time i guess...", Duration = 7})
	end,
})
local INFYIELD = MethHeadTab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        Rayfield:Notify({Title = "Infinite Yield", Content = "I WOV CHEESSEEE BADUM!!!! Enjoy that IY bro <3", Duration = 7})
    end,
})
local PlrSection = MethHeadTab:CreateSection("Local Player")

local WsSlider = MethHeadTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {0, 500},
    Increment = 1,
    Suffix = "ZOOMER",
    CurrentValue = 16,
    Flag = "WsSlider", 
    Callback = function(Value)
        
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

    end,
})

local JsSlider = MethHeadTab:CreateSlider({
    Name = "JumpPower",
    Range = {0, 500},
    Increment = 1,
    Suffix = "YEET",
    CurrentValue = 7.2,
    Flag = "JpSlider",
    Callback = function(Value)
        
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(Value)

    end,
})

local fovSlider = MethHeadTab:CreateSlider({
    Name = "Field of View (FOV)",
    Range = {30, 120},
    Increment = 1,
    Suffix = "ZOOOOOOOOOOOOOOOOOOOOOOM",
    CurrentValue = 70,
    Flag = "FovSlider",
    Callback = function(Value)
        
        game.Workspace.Camera.FieldOfView = Value

    end,
})



local CreditsTab = Window:CreateTab("© | Credits")
local CreditsSection = CreditsTab:CreateSection("Developers and Contributors")

local CreditsLabel1 = CreditsTab:CreateLabel("Scripting : supexian")
local CreditsLabel2 = CreditsTab:CreateLabel("Advisory  : CRICKR0N")
local CreditsLabel3 = CreditsTab:CreateLabel("🥵🥵 GOD I LOVE RAYFIELD UI LIBRARY ZAMN 🥵🥵")
local CreditsLabel4 = CreditsTab:CreateLabel("✌️ Heavily Inspired by VaporArtworks Hub 🇩🇪")
