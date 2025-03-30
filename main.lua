-- // VARIABLES
local JET_TURBINE_SPEED_CFG = 200 -- Normal Sonic Jet Speed (you can modify it too
local SONIC_JET_TURBINE_SPCFG = 300
local NORMAL_WHEEL_BACK_SP_CFG = 100 -- If this value got like "value >= 200" the back wheels can be glitch and you can fly with it lol!
local NORMAL_WHEEL_FRONT_SPCFG = 100 -- its the same

-- // PLAYER
local player = game.Players.LocalPlayer
local blocks = workspace.Blocks[player.Name]

-- // MAIN SCRIPT

for _, content in pairs(blocks:GetChildren()) do
if content.Name == "BackWheel" then
content.MaxSpeed.Value = NORMAL_WHEEL_BACK_SP_CFG
end
end

for _, content in pairs(blocks:GetChildren()) do
if content.Name == "Frontal" then
content.MaxSpeed.Value = NORMAL_WHEEL_FRONT_SPCFG
end
end

for _, content in pairs(blocks:GetChildren()) do
if content.Name == "JetTurbine" then
while task.wait() do
if not content then break end
If content then
content.PPart.BodyVelocity.Velocity =
content.PPart.CFrame.LookVector * JET_TURBINE_SPEED_CFG
end
end
end

for _, content in pairs(blocks:GetChildren()) do
if content.Name == "UltraJetTurbine" then
while task.wait() do
if not content then break end
If content then
content.PPart.BodyVelocity.Velocity =
content.PPart.CFrame.LookVector * SONIC_JET_TURBINE_SPCFG
end
end
end

-- made with love by deat ❤️
