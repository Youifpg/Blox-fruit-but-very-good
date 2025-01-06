-- dont steal if you steal you are gay and if you want it realy give credit : Touka arbix hub
local localPlayer = game:GetService("Players").LocalPlayer
local npc = workspace:WaitForChild("Characters")
local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
local fruits = game:GetService("Players").LocalPlayer.PlayerStats.Tools
local chest = workspace.World.Chests

local flingpower = 1000
local dmg = 100
local aurascale = 1

local animationNames = {}
for _, anim in ipairs(game:GetService("ReplicatedStorage").AllAnims.PreLoad.Dafult:GetChildren()) do
    if anim:IsA("Animation") then table.insert(animationNames, anim.Name) end
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local Window = Library:NewWindow("Arbix")

local Section = Window:NewSection("OP THINGS")

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

Section:CreatButton("Collect chest", function()
 for _,v in ipairs(chest:GetChildren()) do
                firetouchinterest(localPlayer.Character.HumanoidRootPart, v, 0)
                firetouchinterest(localPlayer.Character.HumanoidRootPart, v, 1)
            end
        end
end)
Section:CreatButton("Kill all players/npc", function()
        for _, character in pairs(npc:GetChildren()) do
                if character:IsA("Model") and character:FindFirstChild("Humanoid") and character.Name ~= localPlayer.Name then
                    Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX","Main_DamgeR___",{character, {Using = "Combat", Damge = 999999, FromPlayer = localPlayer}})
                end
            end
        end
end)

Section:CreateButton("damge all players", function()
    for _, character in pairs(npc:GetChildren()) do
                if character:IsA("Model") and character:FindFirstChild("Humanoid") and character.Name ~= localPlayer.Name then
                    Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX","Main_DamgeR___",{character, {Using = "Combat", Damge = 9999, FromPlayer = localPlayer}})
                end
            end
        end
end)

Section:CreatButton("fling everything", function()
for _, character in pairs(npc:GetChildren()) do
                if character:IsA("Model") and character:FindFirstChild("Humanoid") and character.Name ~= localPlayer.Name then
                    Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX","ASeemblyLinearVEllChangerr",{character:FindFirstChild("HumanoidRootPart"),Vector3.new(0, 100, 0)})
                end
            end
        end
end)

local Section = Window:NewSection("FRUTIS")
-- Button to get Dragon West fruit
Section:CreateButton("Get Dragon West Fruit", function()
    local args = {
        [1] = "EMMFOSS__!ZCNSJNXCSDWQSANBX",
        [2] = "AddToolToBackpackKKK",
        [3] = {
            [1] = "Dragon (West) Fruit",
            [2] = game:GetService("Players").LocalPlayer.Backpack,
            [3] = true,
            [4] = true
        }
    }

    game:GetService("ReplicatedStorage").ALLREMBINDS.MainRemoteEvent:FireServer(unpack(args))
end)

-- Button to get Dragon East fruit
Section:CreateButton("Get Dragon East Fruit", function()
    local args = {
        [1] = "EMMFOSS__!ZCNSJNXCSDWQSANBX",
        [2] = "AddToolToBackpackKKK",
        [3] = {
            [1] = "Dragon (East) Fruit",
            [2] = game:GetService("Players").LocalPlayer.Backpack,
            [3] = true,
            [4] = true
        }
    }

    game:GetService("ReplicatedStorage").ALLREMBINDS.MainRemoteEvent:FireServer(unpack(args))
end)

local Section = Window:NewSection("INF MASTERY")

Section:CreateButton("Get Mastery aall fruits", function()
for _,v in ipairs(fruits:GetChildren()) do
                Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX","GiveMasteryEXPTO__Smthh",{game:GetService("Players").LocalPlayer,v.Name,99999999,true})
            end
        end
    end)
