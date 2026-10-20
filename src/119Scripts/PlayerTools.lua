-- Player Tools for 119 SCRIPTS

local Player = game:GetService("Players").LocalPlayer
local TweenService = game:GetService("TweenService")

-- Create the player tools panel
local function createPlayerToolsPanel()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "119ScriptsPlayerTools"
    screenGui.Parent = Player:WaitForChild("PlayerGui")

    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "MainFrame"
    mainFrame.Size = UDim2.new(0, 300, 0, 400)
    mainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
    mainFrame.BackgroundColor3 = Color3.fromRGB(12, 10, 17)
    mainFrame.BorderSizePixel = 0
    mainFrame.Parent = screenGui

    -- Add player list and search
    local playerListLabel = Instance.new("TextLabel")
    playerListLabel.Name = "PlayerListLabel"
    playerListLabel.Size = UDim2.new(1, 0, 0, 30)
    playerListLabel.Position = UDim2.new(0, 0, 0, 10)
    playerListLabel.Text = "Player List"
    playerListLabel.TextColor3 = Color3.fromRGB(248, 242, 255)
    playerListLabel.BackgroundTransparency = 1
    playerListLabel.TextScaled = true
    playerListLabel.Parent = mainFrame

    local playerSearchBar = Instance.new("TextBox")
    playerSearchBar.Name = "PlayerSearchBar"
    playerSearchBar.Size = UDim2.new(1, -20, 0, 30)
    playerSearchBar.Position = UDim2.new(0, 10, 0, 50)
    playerSearchBar.PlaceholderText = "Search players..."
    playerSearchBar.TextColor3 = Color3.fromRGB(248, 242, 255)
    playerSearchBar.BackgroundColor3 = Color3.fromRGB(48, 37, 65)
    playerSearchBar.BorderSizePixel = 0
    playerSearchBar.Parent = mainFrame

    local playerList = Instance.new("ScrollingFrame")
    playerList.Name = "PlayerList"
    playerList.Size = UDim2.new(1, -20, 0, 200)
    playerList.Position = UDim2.new(0, 10, 0, 90)
    playerList.BackgroundColor3 = Color3.fromRGB(48, 37, 65)
    playerList.BorderSizePixel = 0
    playerList.ScrollBarThickness = 5
    playerList.Parent = mainFrame

    -- Add your own character information
    local characterInfoLabel = Instance.new("TextLabel")
    characterInfoLabel.Name = "CharacterInfoLabel"
    characterInfoLabel.Size = UDim2.new(1, 0, 0, 30)
    characterInfoLabel.Position = UDim2.new(0, 0, 0, 300)
    characterInfoLabel.Text = "Character Information"
    characterInfoLabel.TextColor3 = Color3.fromRGB(248, 242, 255)
    characterInfoLabel.BackgroundTransparency = 1
    characterInfoLabel.TextScaled = true
    characterInfoLabel.Parent = mainFrame

    local characterInfo = Instance.new("TextLabel")
    characterInfo.Name = "CharacterInfo"
    characterInfo.Size = UDim2.new(1, -20, 0, 50)
    characterInfo.Position = UDim2.new(0, 10, 0, 340)
    characterInfo.Text = "Health: 100\nSpeed: 16\nJump Power: 50"
    characterInfo.TextColor3 = Color3.fromRGB(248, 242, 255)
    characterInfo.BackgroundColor3 = Color3.fromRGB(48, 37, 65)
    characterInfo.BorderSizePixel = 0
    characterInfo.TextWrapped = true
    characterInfo.Parent = mainFrame

    -- Add camera and sensitivity settings
    local cameraSettingsLabel = Instance.new("TextLabel")
    cameraSettingsLabel.Name = "CameraSettingsLabel"
    cameraSettingsLabel.Size = UDim2.new(1, 0, 0, 30)
    cameraSettingsLabel.Position = UDim2.new(0, 0, 0, 400)
    cameraSettingsLabel.Text = "Camera Settings"
    cameraSettingsLabel.TextColor3 = Color3.fromRGB(248, 242, 255)
    cameraSettingsLabel.BackgroundTransparency = 1
    cameraSettingsLabel.TextScaled = true
    cameraSettingsLabel.Parent = mainFrame

    local cameraSensitivitySlider = Instance.new("TextButton")
    cameraSensitivitySlider.Name = "CameraSensitivitySlider"
    cameraSensitivitySlider.Size = UDim2.new(0, 200, 0, 20)
    cameraSensitivitySlider.Position = UDim2.new(0, 50, 0, 440)
    cameraSensitivitySlider.Text = ""
    cameraSensitivitySlider.BackgroundColor3 = Color3.fromRGB(48, 37, 65)
    cameraSensitivitySlider.BorderSizePixel = 0
    cameraSensitivitySlider.Parent = mainFrame

    local sensitivityIndicator = Instance.new("Frame")
    sensitivityIndicator.Name = "SensitivityIndicator"
    sensitivityIndicator.Size = UDim2.new(0, 10, 0, 20)
    sensitivityIndicator.Position = UDim2.new(0, 0, 0, 0)
    sensitivityIndicator.BackgroundColor3 = Color3.fromRGB(165, 75, 255)
    sensitivityIndicator.BorderSizePixel = 0
    sensitivityIndicator.Parent = cameraSensitivitySlider

    -- Add animations
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(mainFrame, tweenInfo, {BackgroundTransparency = 0})
    tween:Play()
end

-- Call the function to create the player tools panel
createPlayerToolsPanel()
