repeat wait() until game:IsLoaded()
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, false)
local coregui = game.CoreGui:GetDescendants()
while true do
    task.wait()
    for _, object in ipairs(coregui) do
        if object:IsA("ImageLabel") or object:IsA("ImageButton") then
            object.ImageTransparency = 1
        end
        if object:IsA("TextLabel") then
            object.TextTransparency = 1
        end
        if object:IsA("Frame") then
            object.BackgroundTransparency = 1
        end
    end
end
