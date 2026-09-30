local KEY = "DH-a4f7883f2dd9895453c0c690b998b4e50cdd717852fe215007c90390cb00d418"
local ENDPOINT = "https://dream-hub-key-console.wallacegodfirst.chatgpt.site/api/activate"
local OUT_FILE = "AC-Scanner.lua"
local HttpService = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")
local send = (syn and syn.request) or (http and http.request) or http_request or request

if type(send) ~= "function" or type(writefile) ~= "function" then
	pcall(function()
		StarterGui:SetCore("SendNotification", {Title = "Failed", Text = "Missing HTTP or writefile support", Duration = 6})
	end)
	return
end

local ok, res = pcall(function()
	return send({
		Url = ENDPOINT,
		Method = "POST",
		Headers = {["Content-Type"] = "application/json"},
		Body = HttpService:JSONEncode({key = KEY})
	})
end)

if not ok or type(res) ~= "table" or tonumber(res.StatusCode) ~= 200 or type(res.Body) ~= "string" or #res.Body < 10 then
	pcall(function()
		StarterGui:SetCore("SendNotification", {Title = "Failed", Text = "Could not fetch source (invalid key or server error)", Duration = 6})
	end)
	return
end

if not pcall(writefile, OUT_FILE, res.Body) then
	pcall(function()
		StarterGui:SetCore("SendNotification", {Title = "Failed", Text = "Could not fetch source (invalid key or server error)", Duration = 6})
	end)
	return
end

pcall(function()
	StarterGui:SetCore("SendNotification", {Title = "Success", Text = "Full source saved to AC-Scanner.lua", Duration = 6})
end)
