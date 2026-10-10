local url = "https://www.zafirhub.it/z/main.lua"
local success, result = pcall(function()
    return game:HttpGet(url)
end)

if success and result and #result > 0 then
    if writefile then
        writefile("Zafir-Hub.lua", result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Zafir Hub.lua",
            Text = "Saved successfully to Zafir-Hub.lua!",
            Duration = 5
        })
    else
        setclipboard(result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Zafir Hub",
            Text = "Successfully copied to Clipboard!",
            Duration = 5
        })
    end
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Zafir Hub",
        Text = "Failed to download!",
        Duration = 5
    })
end
