local part = workspace.Launcher 
local FORCE_POWER = 100  

part.Touched:Connect(function(hit)
    local character = hit.Parent
    local humanoid = character:FindFirstChild("Humanoid")
    local hrp = character:FindFirstChild("HumanoidRootPart")

    if humanoid and hrp then
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, FORCE_POWER, 0) 
        bodyVelocity.MaxForce = Vector3.new(1e5, 1e5, 1e5)
        bodyVelocity.P = 1250
        bodyVelocity.Parent = hrp

        game.Debris:AddItem(bodyVelocity, 0.3) 
    end
end)
