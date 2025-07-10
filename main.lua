local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "CyberModMenu"

-- CREDIT
local credit = Instance.new("TextLabel")
credit.Size = UDim2.new(0, 300, 0, 30)
credit.Position = UDim2.new(0.5, -150, 0, 10)
credit.BackgroundTransparency = 1
credit.Text = "Made by LanzChatGpt"
credit.TextColor3 = Color3.fromRGB(255, 255, 255)
credit.Font = Enum.Font.GothamBold
credit.TextScaled = true
credit.Parent = gui

-- ☠️ TOMBOL PEMBUKA GUI
local skullButton = Instance.new("TextButton")
skullButton.Size = UDim2.new(0, 80, 0, 80)
skullButton.Position = UDim2.new(0, 20, 0.5, -40)
skullButton.Text = "☠️"
skullButton.TextColor3 = Color3.fromRGB(255, 255, 255)
skullButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
skullButton.TextScaled = true
skullButton.Font = Enum.Font.GothamBlack
skullButton.Parent = gui

-- FRAME GUI
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 0, 0, 0)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.Visible = false
frame.ClipsDescendants = true
frame.Parent = gui

-- BULATIN SUDUT FRAME
local uicorner = Instance.new("UICorner", frame)
uicorner.CornerRadius = UDim.new(0, 12)

-- ❌ CLOSE BUTTON
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(0, 5, 0, 5)
closeBtn.Text = "❌"
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeBtn.Parent = frame

closeBtn.MouseButton1Click:Connect(function()
	frame.Visible = false
end)

-- 🧠 TITLE MOD MENU
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "☠️ MOD MENU"
title.TextColor3 = Color3.fromRGB(255, 85, 85)
title.Font = Enum.Font.GothamBlack
title.TextScaled = true
title.Parent = frame

-- 🌀 FLING ME BUTTON
local flingBtn = Instance.new("TextButton")
flingBtn.Size = UDim2.new(0, 200, 0, 40)
flingBtn.Position = UDim2.new(0.5, -100, 0, 50)
flingBtn.Text = "🌀 Fling Me"
flingBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
flingBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
flingBtn.Font = Enum.Font.GothamBold
flingBtn.TextSize = 18
flingBtn.Parent = frame

flingBtn.MouseButton1Click:Connect(function()
	local plr = game.Players.LocalPlayer
	local char = plr.Character or plr.CharacterAdded:Wait()
	local hrp = char:FindFirstChild("HumanoidRootPart")
	if hrp then
		hrp.Velocity = Vector3.new(
			math.random(-300, 300),
			math.random(200, 500),
			math.random(-300, 300)
		)
	end
end)

-- ✍️ TEXTBOX UNTUK FLING ORANG LAIN
local flingBox = Instance.new("TextBox")
flingBox.Size = UDim2.new(0, 200, 0, 40)
flingBox.Position = UDim2.new(0.5, -100, 0, 100)
flingBox.PlaceholderText = "PlayerName to Fling"
flingBox.Text = ""
flingBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
flingBox.TextColor3 = Color3.fromRGB(255, 255, 255)
flingBox.Font = Enum.Font.Gotham
flingBox.TextSize = 16
flingBox.Parent = frame

-- 🔘 TOMBOL FLING ORANG LAIN
local flingOther = Instance.new("TextButton")
flingOther.Size = UDim2.new(0, 200, 0, 40)
flingOther.Position = UDim2.new(0.5, -100, 0, 150)
flingOther.Text = "☠️ Fling Player"
flingOther.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
flingOther.TextColor3 = Color3.fromRGB(255, 255, 255)
flingOther.Font = Enum.Font.GothamBold
flingOther.TextSize = 16
flingOther.Parent = frame

flingOther.MouseButton1Click:Connect(function()
	local name = flingBox.Text
	local target = game.Players:FindFirstChild(name)
	if target and target.Character then
		local root = target.Character:FindFirstChild("HumanoidRootPart")
		if root then
			root.Velocity = Vector3.new(
				math.random(-300, 300),
				math.random(300, 500),
				math.random(-300, 300)
			)
		end
	end
end)

-- 🎯 TOMBOL ☠️ UNTUK BUKA GUI
skullButton.MouseButton1Click:Connect(function()
	frame.Visible = true
	frame:TweenSize(UDim2.new(0, 300, 0, 220), Enum.EasingDirection.Out, Enum.EasingStyle.Bounce, 0.4, true)
end)