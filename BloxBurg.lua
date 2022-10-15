local library = loadstring(game:HttpGet('https://zypher.wtf/Libraries/DH-UI-Lib.lua'))()
main = library:CreateMain()
local m = main:CreateWindow('AutoFarm',false, -25)

Client = {
    Hair = false,
    Burger = false
}
StationFunctions = {}
BurgerFunctions = {}
m:Toggle('Hair shit',function(state)
    for i,v in pairs(getgc(true)) do
        if type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobManager.StylezHairdresser then
            local con = getconstants(v)
            if table.find(con,"CanUseWorkstation") and table.find(con,"Done") and table.find(con,'Style') then
                table.insert(StationFunctions,v)
            end
        end
    end
    Client.Hair = state
end)
m:Toggle('Burger shit',function(state)
    for i,v in pairs(getgc(true)) do
        if type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobManager.BloxyBurgersCashier then
            local con = getconstants(v)
            if table.find(con,"CanUseWorkstation") and table.find(con,"Done") then
                table.insert(BurgerFunctions,v)
            end
        end
    end
    Client.Burger = state
end)



for i,v in pairs(getgc(true)) do
    if type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobManager.StylezHairdresser then
        local con = getconstants(v)
        if table.find(con,"CanUseWorkstation") and table.find(con,"Done") and table.find(con,'Style') then
            table.insert(StationFunctions,v)
        end
    end
end
wait()
for i,v in pairs(getgc(true)) do
    if type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobManager.BloxyBurgersCashier then
        local con = getconstants(v)
        if table.find(con,"CanUseWorkstation") and table.find(con,"Done") then
            table.insert(BurgerFunctions,v)
        end
    end
end
wait()
--Hair shit
local l__HairAssets__3 = game.ReplicatedStorage:WaitForChild("GameObjects"):WaitForChild("HairAssets");
Styles = {}
for i,v in pairs(l__HairAssets__3.Styles:GetChildren()) do
