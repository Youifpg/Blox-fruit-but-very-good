local localPlayer = game:GetService("Players").LocalPlayer
local npc = workspace:WaitForChild("Characters")
local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
local fruits = localPlayer.PlayerStats.Tools
local chest = workspace.World.Chests

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local Window = Library:NewWindow("Arbix")

local Section = Window:NewSection("OP THINGS")

Section:CreateButton("Collect chest", function()
    for _, v in ipairs(chest:GetChildren()) do
        firetouchinterest(localPlayer.Character.HumanoidRootPart, v, 0)
        firetouchinterest(localPlayer.Character.HumanoidRootPart, v, 1)
    end
end)

Section:CreateButton("Damage all players", function()
    for _, character in pairs(npc:GetChildren()) do
                if character:IsA("Model") and character:FindFirstChild("Humanoid") and character.Name ~= localPlayer.Name then
                    Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX","Main_DamgeR___",{character, {Using = "Combat", Damge = 9999, FromPlayer = localPlayer}})
                end
            end
        end)

Section:CreateButton("Fling everything", function()
    for _, character in pairs(npc:GetChildren()) do
        if character:IsA("Model") and character:FindFirstChild("Humanoid") and character.Name ~= localPlayer.Name then
            Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX", "ASeemblyLinearVEllChangerr", {character:FindFirstChild("HumanoidRootPart"), Vector3.new(0, 1000, 0)})
        end
    end
end)

local Section = Window:NewSection("FRUITS")
local fruits = {"Dragon (West) Fruit", "Dragon (East) Fruit", "OrbCandy", "OrbHalloween", "OrbQuake", "OrbShanks", "Orbblack", "Orbblue", "Orbcures", "Orbflame", "Orbgreen", "Orbkj", "Orbshadow", "Orbsky", "finger"}
Section:CreateButton("Get all fruits", function()
    local args = {
        [1] = "EMMFOSS__!ZCNSJNXCSDWQSANBX",
        [2] = "AddToolToBackpackKKK",
        [3] = {
            [1] = "Dragon (West) Fruit",
            [2] = localPlayer.Backpack,
            [3] = true,
            [4] = true
        }
    }

    Remote:FireServer(unpack(args))
end)

local Section = Window:NewSection("INF MASTERY")

Section:CreateButton("Get Mastery all fruits", function()
    for _, v in ipairs(fruits:GetChildren()) do
        Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX", "GiveMasteryEXPTO__Smthh", {localPlayer, v.Name, 99999999, true})
    end
end)
