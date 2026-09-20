local url = "https://api.jnkie.com/api/v1/luascripts/public/b7315589ba3b7854c382eeb676a81db2be0007dc1b449c60236e38c6cc1ee3b7/download"
local success, result = pcall(function()
    return game:HttpGet(url)
end)

if success and result and #result > 0 then
    if writefile then
        writefile("JJS-Nigga-Hub.lua", result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "JJS Nigga Hub",
            Text = "Saved successfully to JJS-Nigga-Hub.lua!",
            Duration = 5
        })
    else
        setclipboard(result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "JJS Nigga Hub",
            Text = "Successfully copied to Clipboard!",
            Duration = 5
        })
    end
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "JJS Nigga Hub",
        Text = "Failed to download!",
        Duration = 5
    })
end
