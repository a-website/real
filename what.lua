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
