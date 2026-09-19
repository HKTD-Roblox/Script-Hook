local url = "https://api.jnkie.com/api/v1/luascripts/public/d26a67d7082efb8755f99f77e4f9eb6a2e0d368787babc47182033deaa192eb5/download"
local success, result = pcall(function()
    return game:HttpGet(url)
end)

if success and result and #result > 0 then
    if writefile then
        writefile("JJS-Kill-All.lua", result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "JJS Kill All",
            Text = "Saved successfully to JJS-Kill-All.lua!",
            Duration = 5
        })
    else
        setclipboard(result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "JJS Kill All",
            Text = "Successfully copied to Clipboard!",
            Duration = 5
        })
    end
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "JJS Kill All",
        Text = "Failed to download!",
        Duration = 5
    })
end
