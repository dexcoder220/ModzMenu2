local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "CyberModMenu"

-- Tombol logo
local logo = Instance.new("ImageButton")
logo.Size = UDim2.new(0, 100, 0, 100)
logo.Position = UDim2.new(0, 20, 0.5, -50)
logo.BackgroundTransparency = 1
logo.Image = "https://files.catbox.moe/qa87sx.png"
logo.Parent = gui

-- Frame utama
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 0, 0, 0)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.Visible = false
frame.Parent = gui

-- Tombol FlingMe
local flingBtn = Instance.new("TextButton")
flingBtn.Size = UDim2.new(0, 200, 0, 50)
flingBtn.Position = UDim2.new(0.5, -100, 0.5, -25)
flingBtn.Text = "🌀 Fling Me"
flingBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
flingBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
flingBtn.Font = Enum.Font.GothamBold
flingBtn.TextSize = 18
flingBtn.Parent = frame

-- Fungsi Fling
flingBtn.MouseButton1Click:Connect(function()
	local plr = game.Players.LocalPlayer
	local char = plr.Character or plr.CharacterAdded:Wait()
	local hrp = char:FindFirstChild("HumanoidRootPart")

	if hrp then
		hrp.Velocity = Vector3.new(
			math.random(-300, 300), -- kiri/kanan
			math.random(200, 500), -- atas
			math.random(-300, 300) -- depan/belakang
		)
	end
end)

-- Animasi GUI muncul
logo.MouseButton1Click:Connect(function()
	frame.Visible = true
	frame:TweenSize(UDim2.new(0, 300, 0, 200), Enum.EasingDirection.Out, Enum.EasingStyle.Bounce, 0.4, true)
end)