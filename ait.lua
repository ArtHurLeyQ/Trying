local UIS = game:GetService("UserInputService")
local camera = game.Workspace.CurrentCamera
local Plr = game.Players.LocalPlayer


-- Making Closest Character
function getClosest()
    local closestPlayer = nil --
    local closesDist = math.huge --
    
    for i,v in pairs(game.Players:GetPlayers()) do 
        if v ~= game.Players.LocalPlayer and v.TeamColor ~= Plr.TeamColor then
            local Dist = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
            if Dist < closesDist then 
                closesDist = Dist 
                closestPlayer = v
            end 
        end
    end
    return closestPlayer
end

getgenv().aim = false
UIS.InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Z then
        getgenv().aim = true
        while wait() do 
            camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Character.Head.Position)
            if getgenv().aim == false then return end
        end
    end
end)

UIS.InputEnded:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Z then
        getgenv().aim = false
    end

end)local UIS = game:GetService("UserInputService")
local camera = game.Workspace.CurrentCamera
local Plr = game.Players.LocalPlayer


-- Making Closest Character
function getClosest()
    local closestPlayer = nil --
    local closesDist = math.huge --
    
    for i,v in pairs(game.Players:GetPlayers()) do 
        if v ~= game.Players.LocalPlayer and v.TeamColor ~= Plr.TeamColor then
            local Dist = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
            if Dist < closesDist then 
                closesDist = Dist 
                closestPlayer = v
            end 
        end
    end
    return closestPlayer
end

getgenv().aim = false
UIS.InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Z then
        getgenv().aim = true
        while wait() do 
            camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Character.Head.Position)
            if getgenv().aim == false then return end
        end
    end
end)

UIS.InputEnded:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Z then
        getgenv().aim = false
    end

end)
