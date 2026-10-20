-- Whitelisted Key System for 119 SCRIPTS

local Player = game:GetService("Players").LocalPlayer
local TweenService = game:GetService("TweenService")

-- Create the whitelisted key system panel
local function createWhitelistedKeySystemPanel()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "119ScriptsWhitelistedKeySystem"
    screenGui.Parent = Player:WaitForChild("PlayerGui")

    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "MainFrame"
    mainFrame.Size = UDim2.new(0, 300, 0, 400)
    mainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
    mainFrame.BackgroundColor3 = Color3.fromRGB(12, 10, 17)
    mainFrame.BorderSizePixel = 0
    mainFrame.Parent = screenGui

    -- Add key entry screen
    local keyEntryLabel = Instance.new("TextLabel")
    keyEntryLabel.Name = "KeyEntryLabel"
    keyEntryLabel.Size = UDim2.new(1, 0, 0, 30)
    keyEntryLabel.Position = UDim2.new(0, 0, 0, 10)
    keyEntryLabel.Text = "119 SCRIPTS"
    keyEntryLabel.TextColor3 = Color3.fromRGB(248, 242, 255)
    keyEntryLabel.BackgroundTransparency = 1
    keyEntryLabel.TextScaled = true
    keyEntryLabel.Parent = mainFrame

    local subLabel = Instance.new("TextLabel")
    subLabel.Name = "SubLabel"
    subLabel.Size = UDim2.new(1, 0, 0, 20)
    subLabel.Position = UDim2.new(0, 0, 0, 50)
    subLabel.Text = "BRONX 3 • ACCESS PORTAL"
    subLabel.TextColor3 = Color3.fromRGB(248, 242, 255)
    subLabel.BackgroundTransparency = 1
    subLabel.TextScaled = true
    subLabel.Parent = mainFrame

    local keyEntryPrompt = Instance.new("TextLabel")
    keyEntryPrompt.Name = "KeyEntryPrompt"
    keyEntryPrompt.Size = UDim2.new(1, 0, 0, 30)
    keyEntryPrompt.Position = UDim2.new(0, 0, 0, 90)
    keyEntryPrompt.Text = "Enter your access key"
    keyEntryPrompt.TextColor3 = Color3.fromRGB(248, 242, 255)
    keyEntryPrompt.BackgroundTransparency = 1
    keyEntryPrompt.TextScaled = true
    keyEntryPrompt.Parent = mainFrame

    local keyEntryBox = Instance.new("TextBox")
    keyEntryBox.Name = "KeyEntryBox"
    keyEntryBox.Size = UDim2.new(1, -20, 0, 30)
    keyEntryBox.Position = UDim2.new(0, 10, 0, 130)
    keyEntryBox.PlaceholderText = "XXXX-XXXX-XXXX-XXXX"
    keyEntryBox.TextColor3 = Color3.fromRGB(248, 242, 255)
    keyEntryBox.BackgroundColor3 = Color3.fromRGB(48, 37, 65)
    keyEntryBox.BorderSizePixel = 0
    keyEntryBox.Parent = mainFrame

    local verifyButton = Instance.new("TextButton")
    verifyButton.Name = "VerifyButton"
    verifyButton.Size = UDim2.new(0, 100, 0, 30)
    verifyButton.Position = UDim2.new(0.5, -50, 0, 180)
    verifyButton.Text = "VERIFY KEY"
    verifyButton.TextColor3 = Color3.fromRGB(248, 242, 255)
    verifyButton.BackgroundColor3 = Color3.fromRGB(48, 37, 65)
    verifyButton.BorderSizePixel = 0
    verifyButton.Parent = mainFrame

    -- Add access status
    local accessStatusLabel = Instance.new("TextLabel")
    accessStatusLabel.Name = "AccessStatusLabel"
    accessStatusLabel.Size = UDim2.new(1, 0, 0, 30)
    accessStatusLabel.Position = UDim2.new(0, 0, 0, 230)
    accessStatusLabel.Text = "Access Status: Not Verified"
    accessStatusLabel.TextColor3 = Color3.fromRGB(248, 242, 255)
    accessStatusLabel.BackgroundTransparency = 1
    accessStatusLabel.TextScaled = true
    accessStatusLabel.Parent = mainFrame

    -- Add owner-only key management panel
    local ownerPanelLabel = Instance.new("TextLabel")
    ownerPanelLabel.Name = "OwnerPanelLabel"
    ownerPanelLabel.Size = UDim2.new(1, 0, 0, 30)
    ownerPanelLabel.Position = UDim2.new(0, 0, 0, 270)
    ownerPanelLabel.Text = "Owner Panel"
    ownerPanelLabel.TextColor3 = Color3.fromRGB(248, 242, 255)
    ownerPanelLabel.BackgroundTransparency = 1
    ownerPanelLabel.TextScaled = true
    ownerPanelLabel.Parent = mainFrame

    local generateKeyButton = Instance.new("TextButton")
    generateKeyButton.Name = "GenerateKeyButton"
    generateKeyButton.Size = UDim2.new(0, 100, 0, 30)
    generateKeyButton.Position = UDim2.new(0, 50, 0, 310)
    generateKeyButton.Text = "Generate Key"
    generateKeyButton.TextColor3 = Color3.fromRGB(248, 242, 255)
    generateKeyButton.BackgroundColor3 = Color3.fromRGB(48, 37, 65)
    generateKeyButton.BorderSizePixel = 0
    generateKeyButton.Parent = mainFrame

    local whitelistManagementButton = Instance.new("TextButton")
    whitelistManagementButton.Name = "WhitelistManagementButton"
    whitelistManagementButton.Size = UDim2.new(0, 100, 0, 30)
    whitelistManagementButton.Position = UDim2.new(0, 160, 0, 310)
    whitelistManagementButton.Text = "Whitelist Management"
    whitelistManagementButton.TextColor3 = Color3.fromRGB(248, 242, 255)
    whitelistManagementButton.BackgroundColor3 = Color3.fromRGB(48, 37, 65)
    whitelistManagementButton.BorderSizePixel = 0
    whitelistManagementButton.Parent = mainFrame

    -- Add animations
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(mainFrame, tweenInfo, {BackgroundTransparency = 0})
    tween:Play()
end

-- Call the function to create the whitelisted key system panel
createWhitelistedKeySystemPanel()
