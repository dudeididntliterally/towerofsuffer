local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Tower Of Suffer", HidePremium = true, SaveConfig = false, ConfigFolder = "TOS"})
local Main = Window:MakeTab({
	Name = "Tower Of Suffer",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local mainSection = Main:AddSection({
	Name = "Main"
})

Main:AddButton({
Name = "Force Reset Round",
Callback = function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").vipOwner:FireServer(unpack(args))
end})

Main:AddButton({
Name = "Force Lock Shop",
Callback = function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").lockShop:FireServer(unpack(args))
end})

Main:AddTextbox({
Name = "Force Set Time",
Default = "Numbers",
TextDisappear = false,
Callback = function(numb)
local args = {
    [1] = numb
}

game:GetService("ReplicatedStorage").setTimer:FireServer(unpack(args))
end})
