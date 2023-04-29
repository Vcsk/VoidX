local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

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
