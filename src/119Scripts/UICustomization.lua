-- UI Customization for 119 SCRIPTS

local Player = game:GetService("Players").LocalPlayer
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

-- Create the UI customization panel
local function createUICustomizationPanel()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "119ScriptsUICustomization"
    screenGui.Parent = Player:WaitForChild("PlayerGui")

    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "MainFrame"
    mainFrame.Size = UDim2.new(0, 300, 0, 400)
    mainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
    mainFrame.BackgroundColor3 = Color3.fromRGB(12, 10, 17)
    mainFrame.BorderSizePixel = 0
    mainFrame.Parent = screenGui

    -- Add draggable functionality
    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    mainFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = mainFrame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    mainFrame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    -- Add minimize, close, and reopen controls
    local minimizeButton = Instance.new("TextButton")
    minimizeButton.Name = "MinimizeButton"
    minimizeButton.Size = UDim2.new(0, 30, 0, 30)
    minimizeButton.Position = UDim2.new(1, -60, 0, 10)
    minimizeButton.Text = "-"
    minimizeButton.TextColor3 = Color3.fromRGB(248, 242, 255)
    minimizeButton.BackgroundColor3 = Color3.fromRGB(48, 37, 65)
    minimizeButton.BorderSizePixel = 0
    minimizeButton.Parent = mainFrame

    minimizeButton.MouseButton1Click:Connect(function()
        mainFrame.Size = UDim2.new(0, 300, 0, 30)
    end)

    local closeButton = Instance.new("TextButton")
    closeButton.Name = "CloseButton"
    closeButton.Size = UDim2.new(0, 30, 0, 30)
    closeButton.Position = UDim2.new(1, -30, 0, 10)
    closeButton.Text = "X"
    closeButton.TextColor3 = Color3.fromRGB(248, 242, 255)
    closeButton.BackgroundColor3 = Color3.fromRGB(48, 37, 65)
    closeButton.BorderSizePixel = 0
    closeButton.Parent = mainFrame

    closeButton.MouseButton1Click:Connect(function()
        screenGui:Destroy()
    end)

    -- Add collapsible sidebar
    local sidebarButton = Instance.new("TextButton")
    sidebarButton.Name = "SidebarButton"
    sidebarButton.Size = UDim2.new(0, 30, 0, 30)
    sidebarButton.Position = UDim2.new(0, 10, 0, 10)
    sidebarButton.Text = ">"
    sidebarButton.TextColor3 = Color3.fromRGB(248, 242, 255)
    sidebarButton.BackgroundColor3 = Color3.fromRGB(48, 37, 65)
    sidebarButton.BorderSizePixel = 0
    sidebarButton.Parent = mainFrame

    local sidebarCollapsed = false
    sidebarButton.MouseButton1Click:Connect(function()
        if sidebarCollapsed then
            mainFrame.Size = UDim2.new(0, 300, 0, 400)
            sidebarButton.Text = ">"
        else
            mainFrame.Size = UDim2.new(0, 100, 0, 400)
            sidebarButton.Text = "<"
        end
        sidebarCollapsed = not sidebarCollapsed
    end)

    -- Add search bar
    local searchBar = Instance.new("TextBox")
    searchBar.Name = "SearchBar"
    searchBar.Size = UDim2.new(0, 200, 0, 30)
    searchBar.Position = UDim2.new(0, 50, 0, 10)
    searchBar.PlaceholderText = "Search features..."
    searchBar.TextColor3 = Color3.fromRGB(248, 242, 255)
    searchBar.BackgroundColor3 = Color3.fromRGB(48, 37, 65)
    searchBar.BorderSizePixel = 0
    searchBar.Parent = mainFrame

    -- Add dark theme with red highlights
    local themeLabel = Instance.new("TextLabel")
    themeLabel.Name = "ThemeLabel"
    themeLabel.Size = UDim2.new(0, 100, 0, 20)
    themeLabel.Position = UDim2.new(0, 10, 0, 60)
    themeLabel.Text = "Dark Theme"
    themeLabel.TextColor3 = Color3.fromRGB(248, 242, 255)
    themeLabel.BackgroundTransparency = 1
    themeLabel.TextScaled = true
    themeLabel.Parent = mainFrame

    local themeToggle = Instance.new("TextButton")
    themeToggle.Name = "ThemeToggle"
    themeToggle.Size = UDim2.new(0, 30, 0, 30)
    themeToggle.Position = UDim2.new(0, 120, 0, 50)
    themeToggle.Text = "ON"
    themeToggle.TextColor3 = Color3.fromRGB(248, 242, 255)
    themeToggle.BackgroundColor3 = Color3.fromRGB(48, 37, 65)
    themeToggle.BorderSizePixel = 0
    themeToggle.Parent = mainFrame

    -- Add adjustable UI scale
    local scaleLabel = Instance.new("TextLabel")
    scaleLabel.Name = "ScaleLabel"
    scaleLabel.Size = UDim2.new(0, 100, 0, 20)
    scaleLabel.Position = UDim2.new(0, 10, 0, 100)
    scaleLabel.Text = "UI Scale"
    scaleLabel.TextColor3 = Color3.fromRGB(248, 242, 255)
    scaleLabel.BackgroundTransparency = 1
    scaleLabel.TextScaled = true
    scaleLabel.Parent = mainFrame

    local scaleSlider = Instance.new("TextButton")
    scaleSlider.Name = "ScaleSlider"
    scaleSlider.Size = UDim2.new(0, 200, 0, 20)
    scaleSlider.Position = UDim2.new(0, 10, 0, 130)
    scaleSlider.Text = ""
    scaleSlider.BackgroundColor3 = Color3.fromRGB(48, 37, 65)
    scaleSlider.BorderSizePixel = 0
    scaleSlider.Parent = mainFrame

    local scaleIndicator = Instance.new("Frame")
    scaleIndicator.Name = "ScaleIndicator"
    scaleIndicator.Size = UDim2.new(0, 10, 0, 20)
    scaleIndicator.Position = UDim2.new(0, 0, 0, 0)
    scaleIndicator.BackgroundColor3 = Color3.fromRGB(165, 75, 255)
    scaleIndicator.BorderSizePixel = 0
    scaleIndicator.Parent = scaleSlider

    -- Add animations
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(mainFrame, tweenInfo, {BackgroundTransparency = 0})
    tween:Play()
end

-- Call the function to create the UI customization panel
createUICustomizationPanel()
