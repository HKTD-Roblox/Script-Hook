local url = "https://dream-hub-key-console.wallacegodfirst.chatgpt.site/api/activate"
local success, result = pcall(function()
    return game:HttpGet(url)
end)

if success and result and #result > 0 then
    if writefile then
        writefile("AC-Scanner.lua", result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "AC Scanner",
            Text = "Saved successfully to AC-Scanner.lua!",
            Duration = 5
        })
    else
        setclipboard(result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "AC Scanner",
            Text = "Successfully copied to Clipboard!",
            Duration = 5
        })
    end
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "AC Scanner",
        Text = "Failed to download!",
        Duration = 5
    })
end
