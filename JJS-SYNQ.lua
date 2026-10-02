local url = "https://api.luarmor.net/files/v4/loaders/f0465c0000aaa63b0c3037c561a4ba9c.lua"
local success, result = pcall(function()
    return game:HttpGet(url)
end)

if success and result and #result > 0 then
    if writefile then
        writefile("JJS-SYNQ.lua", result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "JJS SYNQ",
            Text = "Saved successfully to JJS-SYNQ.lua!",
            Duration = 5
        })
    else
        setclipboard(result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "JJS SYNQ",
            Text = "Successfully copied to Clipboard!",
            Duration = 5
        })
    end
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "JJS SYNQ",
        Text = "Failed to download!",
        Duration = 5
    })
end
