-- 119 SCRIPTS UI Module

local module = {}

-- Color Palette
local COLORS = {
    PRIMARY_BACKGROUND = Color3.fromHex("#0C0A11"),
    SECONDARY_BACKGROUND = Color3.fromHex("#14111D"),
    PANEL_BACKGROUND = Color3.fromHex("#1E192A"),
    INTERACTIVE_ELEMENTS = Color3.fromHex("#302541"),
    PRIMARY_PURPLE = Color3.fromHex("#A54BFF"),
    DARK_PURPLE = Color3.fromHex("#6929A8"),
    MAIN_TEXT = Color3.fromHex("#F8F2FF")
}

-- Create a button
function module.createButton(parent, name, position, size, text, onClick)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Size = size
    button.Position = position
    button.BackgroundColor3 = COLORS.INTERACTIVE_ELEMENTS
    button.BorderSizePixel = 0
    button.Text = text
    button.TextColor3 = COLORS.MAIN_TEXT
    button.TextSize = 16
    button.Font = Enum.Font.Gotham
    button.Parent = parent

    button.MouseButton1Click:Connect(onClick)

    return button
end

-- Create a label
function module.createLabel(parent, name, position, size, text)
    local label = Instance.new("TextLabel")
    label.Name = name
    label.Size = size
    label.Position = position
    label.BackgroundColor3 = COLORS.PANEL_BACKGROUND
    label.BorderSizePixel = 0
    label.Text = text
    label.TextColor3 = COLORS.MAIN_TEXT
    label.TextSize = 16
    label.Font = Enum.Font.Gotham
    label.Parent = parent

    return label
end

-- Create a scroll frame
function module.createScrollFrame(parent, name, position, size)
    local scrollFrame = Instance.new("ScrollingFrame")
    scrollFrame.Name = name
    scrollFrame.Size = size
    scrollFrame.Position = position
    scrollFrame.BackgroundColor3 = COLORS.PANEL_BACKGROUND
    scrollFrame.BorderSizePixel = 0
    scrollFrame.ScrollBarThickness = 5
    scrollFrame.Parent = parent

    return scrollFrame
end

return module