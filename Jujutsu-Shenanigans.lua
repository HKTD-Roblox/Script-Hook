local url = "https://api.luarmor.net/files/v3/loaders/fda9babd071d6b536a745774b6bc681c.lua"
local success, result = pcall(function()
    return game:HttpGet(url)
end)

if success and result and #result > 0 then
    if writefile then
        writefile("Jujutsu-Shenanigans.lua", result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Jujutsu-Shenanigans",
            Text = "Saved successfully to Jujutsu-Shenanigans.lua!",
            Duration = 5
        })
    else
        setclipboard(result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Jujutsu-Shenanigans",
            Text = "Successfully copied to Clipboard!",
            Duration = 5
        })
    end
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Jujutsu-Shenanigans",
        Text = "Failed to download!",
        Duration = 5
    })
end
