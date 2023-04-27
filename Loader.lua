local list = {
    ["3956818381"] = "https://raw.githubusercontent.com/Vcsk/VoidX/main/Games/NinjaLegends/main.lua",
    [""] = "",
    [""] = "",
    [""] = "",
    [""] = "",
    [""] = "",
    [""] = "",
    [""] = "",
    [""] = "",
    [""] = "",
    [""] = "",
    [""] = "",
    [""] = "",
    [""] = "",
}

for id, url in next, list do
    if string.find(id, game.PlaceId) then
        loadstring(game:HttpGet(url))(); break
    end
end
