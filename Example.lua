local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local gameId = game.PlaceId
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local plrName = plr.Name
local plrDisplayName = plr.DisplayName
local plrId = plr.UserId
local plrChar = plr.Character or plr.CharacterAdded:Wait()
local plrAge = plr.AccountAge
local plrCount = #game.Players:GetPlayers()

--// Functions

function notif(title,text,duration)
	title = title or "Title"
	text = text or "Text"
	duration = duration or 5
	game.StarterGui:SetCore("SendNotification", {
		Title = title;
		Text = text;
		Duration = duration;
	})
end

function notif2(title,description,time)
	title = title or "Title"
	description = description or "Description"
	time = time or 5
	Notification:Notify(
		{Title = title, Description = description},
		{OutlineColor = Color3.fromRGB(128, 187, 219),Time = time, Type = "default"}
	)
end

-------------------------------------------

local Library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Vcsk/UI-Library/main/Source(2)/Coasting.lua")))()

-------------------------------------------

local ToggleGui = Instance.new("ScreenGui")
local Toggle = Instance.new("TextButton")

ToggleGui.Name = "VoidXToggle_Example"
ToggleGui.Parent = game.CoreGui

Toggle.Name = "Toggle"
Toggle.Parent = ToggleGui
Toggle.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Toggle.BackgroundTransparency = 0.660
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0.0650164187, 0, 0.0888099447, 0)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "Toggle"
Toggle.TextScaled = true
Toggle.TextColor3 = Color3.fromRGB(127, 0, 255)
Toggle.TextSize = 24.000
Toggle.TextXAlignment = Enum.TextXAlignment.Left
Toggle.Active = true
Toggle.Draggable = true
Toggle.MouseButton1Click:connect(function()
	Library:ToggleUI()
end)

-------------------------------------------

local announT = Library:CreateTab("VoidX")
local announS1 = announT:CreateSection("Info")
local announS2 = announT:CreateSection("Credits")

-------------------------------------------

local a = Library:CreateTab("a")

-------------------------------------------

announS1:CreateButton("VoidX")
announS1:CreateLabel("1", "Version: 1")

announS2:CreateButton("Copy discord link", function()
    setclipboard("https://discord.gg/zYqACu65Vw")
end)
announS2:CreateLabel("2", "Made by !vcsk0#1516")
