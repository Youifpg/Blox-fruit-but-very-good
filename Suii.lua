-- dont steal if you steal you are gay and if you want it realy give credit : Touka arbix hub
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local Window = Library:NewWindow("Arbix")

local Section = Window:NewSection("Teleportation")

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local teleporting = false -- Variable to track if teleportation is active

-- Function to teleport to all chests
local function teleportToChests()
    local chestsFolder = workspace:FindFirstChild("World") and workspace.World:FindFirstChild("Chests")
    
    if chestsFolder then
        local chests = {}
        
        -- Collect all chests
        for _, chest in ipairs(chestsFolder:GetChildren()) do
            if chest:IsA("Part") then
                table.insert(chests, chest)
            end
        end
        
        -- Freeze the character
        humanoid.PlatformStand = true
        
        -- Teleport to each chest
        for _, chest in ipairs(chests) do
            if teleporting then -- Check if teleporting is still active
                character:SetPrimaryPartCFrame(chest.CFrame)
                wait(0.1) -- Wait for 0.1 seconds before teleporting to the next chest
            else
                break -- Exit the loop if teleporting is no longer active
            end
        end
        
        -- Unfreeze the character after teleportation
        humanoid.PlatformStand = false
    else
        warn("No chests found in workspace.World.Chests")
    end
end

-- Function to toggle teleportation
local function toggleTeleportation()
    teleporting = not teleporting -- Toggle the state
    if teleporting then
        teleportToChests() -- Start teleporting if toggled on
    end
end

-- Create a toggle button for teleportation in the UI
Section:CreateToggle("Toggle Teleport to Chests", function(value)
    teleporting = value -- Set the teleporting variable based on the toggle state
    if teleporting then
        teleportToChests() -- Start teleporting if toggled on
    end
end)

-- Button to manually teleport to chests
Section:CreateButton("Teleport to All Chests Now", function()
    teleporting = true -- Set teleporting to true to allow teleportation
    teleportToChests() -- Call the teleport function directly
    teleporting = false -- Reset teleporting after the teleportation is done
end)

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
