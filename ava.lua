

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local lp = Players.LocalPlayer


local function createModernUI()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "AvatarChangerUI"
    ScreenGui.Parent = lp:WaitForChild("PlayerGui")
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 420, 0, 200)
    MainFrame.Position = UDim2.new(0.5, -210, 0.3, 0)
    MainFrame.BackgroundColor3 = Color3.fromRGB(40, 0, 70)
    MainFrame.BackgroundTransparency = 0.25
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = ScreenGui

    local FrameCorner = Instance.new("UICorner")
    FrameCorner.CornerRadius = UDim.new(0, 16)
    FrameCorner.Parent = MainFrame

    local FrameGlow = Instance.new("UIStroke")
    FrameGlow.Thickness = 2
    FrameGlow.Color = Color3.fromRGB(170, 0, 255)
    FrameGlow.Parent = MainFrame

    
    local TitleBar = Instance.new("Frame")
    TitleBar.Size = UDim2.new(1, 0, 0, 40)
    TitleBar.BackgroundColor3 = Color3.fromRGB(60, 0, 100)
    TitleBar.BackgroundTransparency = 0.3
    TitleBar.BorderSizePixel = 0
    TitleBar.Parent = MainFrame

    local TitleText = Instance.new("TextLabel")
    TitleText.Size = UDim2.new(1, -60, 1, 0)
    TitleText.Position = UDim2.new(0, 10, 0, 0)
    TitleText.BackgroundTransparency = 1
    TitleText.Text = "COPY AVATAR"
    TitleText.TextColor3 = Color3.fromRGB(255, 220, 255)
    TitleText.TextScaled = true
    TitleText.Font = Enum.Font.GothamBold
    TitleText.TextXAlignment = Enum.TextXAlignment.Left
    TitleText.Parent = TitleBar

    
    local CloseButton = Instance.new("TextButton")
    CloseButton.Size = UDim2.new(0, 40, 0, 40)
    CloseButton.Position = UDim2.new(1, -45, 0, 0)
    CloseButton.BackgroundColor3 = Color3.fromRGB(255, 50, 100)
    CloseButton.Text = "✖"
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.Font = Enum.Font.GothamBold
    CloseButton.TextScaled = true
    CloseButton.BorderSizePixel = 0
    CloseButton.Parent = TitleBar

    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(0, 12)
    CloseCorner.Parent = CloseButton

    CloseButton.MouseEnter:Connect(function()
        TweenService:Create(CloseButton, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(255, 0, 80)
        }):Play()
    end)
    CloseButton.MouseLeave:Connect(function()
        TweenService:Create(CloseButton, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(255, 50, 100)
        }):Play()
    end)
    CloseButton.MouseButton1Click:Connect(function()
        TweenService:Create(MainFrame, TweenInfo.new(0.3), {
            BackgroundTransparency = 1,
            Position = UDim2.new(0.5, -210, 1.5, 0)
        }):Play()
        wait(0.4)
        ScreenGui:Destroy()
    end)

    
    local UsernameBox = Instance.new("TextBox")
    UsernameBox.Size = UDim2.new(1, -40, 0, 40)
    UsernameBox.Position = UDim2.new(0, 20, 0, 60)
    UsernameBox.BackgroundColor3 = Color3.fromRGB(80, 0, 130)
    UsernameBox.BackgroundTransparency = 0.2
    UsernameBox.PlaceholderText = "Enter username..."
    UsernameBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    UsernameBox.TextScaled = true
    UsernameBox.Font = Enum.Font.Gotham
    UsernameBox.Parent = MainFrame

    local BoxCorner = Instance.new("UICorner")
    BoxCorner.CornerRadius = UDim.new(0, 10)
    BoxCorner.Parent = UsernameBox

    local BoxStroke = Instance.new("UIStroke")
    BoxStroke.Thickness = 2
    BoxStroke.Color = Color3.fromRGB(200, 0, 255)
    BoxStroke.Parent = UsernameBox

    UsernameBox.MouseEnter:Connect(function()
        TweenService:Create(BoxStroke, TweenInfo.new(0.2), {Color = Color3.fromRGB(255, 80, 255)}):Play()
    end)
    UsernameBox.MouseLeave:Connect(function()
        TweenService:Create(BoxStroke, TweenInfo.new(0.2), {Color = Color3.fromRGB(200, 0, 255)}):Play()
    end)


    local SubmitButton = Instance.new("TextButton")
    SubmitButton.Size = UDim2.new(1, -40, 0, 40)
    SubmitButton.Position = UDim2.new(0, 20, 0, 110)
    SubmitButton.BackgroundColor3 = Color3.fromRGB(130, 0, 200)
    SubmitButton.Text = "APPLY AVATAR"
    SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    SubmitButton.Font = Enum.Font.GothamBold
    SubmitButton.TextScaled = true
    SubmitButton.Parent = MainFrame

    local SubmitCorner = Instance.new("UICorner")
    SubmitCorner.CornerRadius = UDim.new(0, 10)
    SubmitCorner.Parent = SubmitButton

    local SubmitStroke = Instance.new("UIStroke")
    SubmitStroke.Thickness = 2
    SubmitStroke.Color = Color3.fromRGB(180, 0, 255)
    SubmitStroke.Parent = SubmitButton

    SubmitButton.MouseEnter:Connect(function()
        TweenService:Create(SubmitButton, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(180, 0, 255)
        }):Play()
    end)
    SubmitButton.MouseLeave:Connect(function()
        TweenService:Create(SubmitButton, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(130, 0, 200)
        }):Play()
    end)

    
    local StatusText = Instance.new("TextLabel")
    StatusText.Size = UDim2.new(1, -40, 0, 25)
    StatusText.Position = UDim2.new(0, 20, 1, -30)
    StatusText.BackgroundTransparency = 1
    StatusText.Text = "Copy Avatar"
    StatusText.TextColor3 = Color3.fromRGB(220, 180, 255)
    StatusText.TextScaled = true
    StatusText.Font = Enum.Font.Gotham
    StatusText.Parent = MainFrame

    return ScreenGui, UsernameBox, SubmitButton, StatusText
end


local function loadAvatar(username)
    if not username or username == "" then
        return false, "Username tidak boleh kosong!"
    end

    local success, userId = pcall(function()
        return Players:GetUserIdFromNameAsync(username)
    end)
    if not success then
        return false, "Username tidak ditemukan: " .. username
    end

    if not lp.Character then
        return false, "Character tidak ada!"
    end

  
    local success2, humanoidDesc = pcall(function()
        return Players:GetHumanoidDescriptionFromUserId(userId)
    end)
    if not success2 then
        return false, "Gagal mendapatkan avatar"
    end

    
    for _, item in pairs(lp.Character:GetChildren()) do
        if item:IsA("Accessory") or item:IsA("Shirt") or item:IsA("Pants") or item:IsA("ShirtGraphic") then
            item:Destroy()
        end
    end
    task.wait(0.1)

  
    local success3 = pcall(function()
        lp.Character.Humanoid:ApplyDescriptionClientServer(humanoidDesc)
        task.wait(0.5)
    end)
    if not success3 then
        return false, "Gagal mengubah avatar"
    end

    return true, "Avatar berhasil diubah ke: " .. username
end

local ScreenGui, UsernameBox, SubmitButton, StatusText = createModernUI()

SubmitButton.MouseButton1Click:Connect(function()
    local username = UsernameBox.Text
    if username and username ~= "" then
        StatusText.Text = "copy avatar..."
        StatusText.TextColor3 = Color3.fromRGB(255, 255, 0)
        local success, message = loadAvatar(username)
        if success then
            StatusText.Text = "✅ " .. message
            StatusText.TextColor3 = Color3.fromRGB(0, 255, 0)
        else
            StatusText.Text = "❌ " .. message
            StatusText.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
    end
end)

UsernameBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        SubmitButton:Activate()
    end
end)
