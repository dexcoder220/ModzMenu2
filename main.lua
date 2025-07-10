local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "ModMenuCyber"
gui.ResetOnSpawn = false

local logoButton = Instance.new("ImageButton")
logoButton.Size = UDim2.new(0, 100, 0, 100)
logoButton.Position = UDim2.new(0, 20, 0.5, -50)
logoButton.BackgroundTransparency = 1
logoButton.Image = "rbxassetid://11478378884"
logoButton.Parent = gui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 0, 0, 0) -- Mulai dari 0
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.Visible = false
frame.Parent = gui

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0.5, -100, 0.5, -25)
button.Text = "Boom 💣"
button.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.GothamBold
button.TextSize = 18
button.Parent = frame

button.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer:Kick("Boom 💥 You Clicked The Button 😎")
end)

logoButton.MouseButton1Click:Connect(function()
    frame.Visible = true
    frame:TweenSize(
        UDim2.new(0, 300, 0, 200),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Bounce,
        0.4,
        true
    )
end)