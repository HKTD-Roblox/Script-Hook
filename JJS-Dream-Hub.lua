local url = "https://api.jnkie.com/api/v1/luascripts/public/333967c3c665ff1d1548fa7766d57902756ac60eed4f1cc6e5eedce5d3133696/download"
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
