local url = "https://api.getpolsec.com/scripts/hosted/b553cee9ca32435a42ede4d7c3b52d7af24ea7532cc0cba974971d5aac737ac7.lua"
local success, result = pcall(function()
    return game:HttpGet(url)
end)

if success and result and #result > 0 then
    if writefile then
        writefile("TSB-Combat-Gui.lua", result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "TSB Combat Gui",
            Text = "Saved successfully to TSB-Combat-Gui.lua!",
            Duration = 5
        })
    else
        setclipboard(result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "TSB Combat Gui",
            Text = "Successfully copied to Clipboard!",
            Duration = 5
        })
    end
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "TSB Combat Gui",
        Text = "Failed to download!",
        Duration = 5
    })
end
