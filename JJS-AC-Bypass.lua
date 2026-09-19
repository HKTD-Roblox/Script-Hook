local url = "https://api.jnkie.com/api/v1/luascripts/public/91ce7c0a30adab8d596ce23a9660662de099aa107d38225f2ab927d93d8ca6a0/download"
local success, result = pcall(function()
    return game:HttpGet(url)
end)

if success and result and #result > 0 then
    if writefile then
        writefile("JJS-AC-Bypass.lua", result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "JJS AC Bypass",
            Text = "Saved successfully to JJS-AC-Bypass.lua!",
            Duration = 5
        })
    else
        setclipboard(result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "JJS AC Bypass",
            Text = "Successfully copied to Clipboard!",
            Duration = 5
        })
    end
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "JJS AC Bypass",
        Text = "Failed to download!",
        Duration = 5
    })
end
