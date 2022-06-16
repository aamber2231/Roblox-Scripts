local library = {}

--[[

We will handle Menu Opening And Closing Inside of the class that requires the use of the library.
Allows us to change keybinds and stuff
(totally not because im lazy to make a keybind manager)

--]]

library.gui = Instance.new('ScreenGui')
library.gui.Name = game:GetService("HttpService"):GenerateGUID(false):lower():sub(1, 10);
library.gui.ResetOnSpawn = false
library.gui.Parent = game:GetService("CoreGui")
library.gui.Enabled = true

function library:Window(name)
	assert(type(name) == "string", "Name must be a string")

	local Window = Instance.new("Frame")
	local TopBar = Instance.new("Frame")
	local Watermark = Instance.new("TextLabel")
	local Line = Instance.new("Frame")
	local TabsFrame = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local ButtonClickLine = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local UICorner = Instance.new("UICorner")

	Window.Name = "MainFrame"
	Window.Parent = library.gui
	Window.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	Window.BorderColor3 = Color3.fromRGB(138, 138, 138)
	Window.Position = UDim2.new(0.253039509, 0, 0.218633533, 0)
	Window.Size = UDim2.new(0, 650, 0, 453)
	Window.ZIndex = 0

	TopBar.Name = "TopBar"
	TopBar.Parent = Window
	TopBar.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	TopBar.BorderColor3 = Color3.fromRGB(138, 138, 138)
	TopBar.Size = UDim2.new(0, 650, 0, 28)

	Watermark.Name = "Watermark"
	Watermark.Parent = TopBar
	Watermark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Watermark.BackgroundTransparency = 1.000
	Watermark.BorderSizePixel = 0
	Watermark.Position = UDim2.new(0.0123076923, 0, 0, 0)
	Watermark.Size = UDim2.new(0, 63, 0, 28)
	Watermark.Font = Enum.Font.SourceSans
	Watermark.Text = "octail.win"
	Watermark.TextColor3 = Color3.fromRGB(255, 255, 255)
	Watermark.TextSize = 16.000
	Watermark.TextWrapped = true

	Line.Name = "Line"
	Line.Parent = TopBar
	Line.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0.12153846, 0, 0, 0)
	Line.Size = UDim2.new(0, 1, 0, 28)

	TabsFrame.Name = "TabsFrame"
	TabsFrame.Parent = TopBar
	TabsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabsFrame.BackgroundTransparency = 1.000
	TabsFrame.BorderSizePixel = 0
	TabsFrame.Position = UDim2.new(0.132307693, 0, 0, 0)
	TabsFrame.Size = UDim2.new(0, 558, 0, 28)

	UIListLayout.Parent = TabsFrame
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 12)

	ButtonClickLine.Name = "ButtonClickLine"
	ButtonClickLine.Parent = TopBar
	ButtonClickLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ButtonClickLine.BackgroundTransparency = 0.500
	ButtonClickLine.BorderSizePixel = 0
	ButtonClickLine.Position = UDim2.new(0, 0, 0, 0)
	ButtonClickLine.Size = UDim2.new(0, 103, 0, 4)
	ButtonClickLine.ZIndex = 0
	ButtonClickLine.Visible = false

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(27, 27, 27)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(223, 37, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(27, 27, 27))}
	UIGradient.Parent = ButtonClickLine

	UICorner.CornerRadius = UDim.new(0, 400)
	UICorner.Parent = ButtonClickLine

	local window = {}
	window.MainFrame = Window

	function window:Tab(text)
		assert(type(name) == "string", "Name must be a string")
		assert(type(text) == "string", "Text must be a string")

		local TabButton = Instance.new("TextButton")
		local Tab1 = Instance.new("Frame")
		local GroupBoxes_2 = Instance.new("ScrollingFrame")
		local UIListLayout_4 = Instance.new("UIListLayout")
		local UIPadding_2 = Instance.new("UIPadding")

		TabButton.Name = "TabButton"
		TabButton.Parent = TabsFrame
		TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.BackgroundTransparency = 1.000
		TabButton.BorderSizePixel = 0
		TabButton.Position = UDim2.new(-0.0107526882, 0, 0.357142866, 0)
		TabButton.Size = UDim2.new(0, 103, 0, 21)
		TabButton.Font = Enum.Font.SourceSans
		TabButton.Text = text
		TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.TextSize = 21.000

		Tab1.Name = "Tab1"
		Tab1.Parent = window.MainFrame
		Tab1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tab1.BackgroundTransparency = 1.000
		Tab1.BorderSizePixel = 0
		Tab1.Position = UDim2.new(0, 0, 0.081677705, 0)
		Tab1.Size = UDim2.new(0, 650, 0, 416)
		Tab1.Visible = false

		GroupBoxes_2.Name = "GroupBoxes"
		GroupBoxes_2.Parent = Tab1
		GroupBoxes_2.Active = true
		GroupBoxes_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		GroupBoxes_2.BackgroundTransparency = 1.000
		GroupBoxes_2.BorderSizePixel = 0
		GroupBoxes_2.Position = UDim2.new(0.0123076923, 0, 0.00436194986, 0)
		GroupBoxes_2.Size = UDim2.new(0, 633, 0, 406)

		UIListLayout_4.Parent = GroupBoxes_2
		UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_4.Padding = UDim.new(0, 15)

		UIPadding_2.Parent = GroupBoxes_2
		UIPadding_2.PaddingRight = UDim.new(0, 6)
		UIPadding_2.PaddingTop = UDim.new(0, 15)

		local tab = {}

		tab.TabButton = TabButton
		tab.Tab = Tab1
		library.Tabs[text] = tab

		function tab:GroupBox(title)
			assert(type(title) == "string", "Title must be a string")

			local NewGroupBoxWithName = Instance.new("Frame")
			local TextLabel = Instance.new("TextLabel")
			local Objects = Instance.new("Frame")
			local UIListLayout_3 = Instance.new("UIListLayout")

			NewGroupBoxWithName.Name = "NewGroupBoxWithName"
			NewGroupBoxWithName.Parent = tab.Tab
			NewGroupBoxWithName.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			NewGroupBoxWithName.BorderColor3 = Color3.fromRGB(47, 47, 47)
			NewGroupBoxWithName.Position = UDim2.new(0.00956937764, 0, 0, 0)
			NewGroupBoxWithName.Size = UDim2.new(0, 609, 0, 159)

			TextLabel.Parent = NewGroupBoxWithName
			TextLabel.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.0262725782, 0, -0.0817610025, 0)
			TextLabel.Size = UDim2.new(0, 171, 0, 21)
			TextLabel.ZIndex = 125
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.Text = "Exploits"
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			Objects.Name = "Objects"
			Objects.Parent = NewGroupBoxWithName
			Objects.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Objects.BackgroundTransparency = 1.000
			Objects.BorderSizePixel = 0
			Objects.Position = UDim2.new(0.0197044332, 0, 0.0880503133, 0)
			Objects.Size = UDim2.new(0, 584, 0, 133)

			UIListLayout_3.Parent = Objects
			UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_3.Padding = UDim.new(0, 5)

			local objects = {}

			function objects:ToggleBox(name, text, default)
				assert(type(name) == "string", "Name must be a string")
				assert(type(text) == "string", "Text must be a string")
				assert(type(default) == "boolean", "Default value must be a boolean")

				local ToggleBox = Instance.new("Frame")
				local NameLabel = Instance.new("TextLabel")
				local ToggleIndicator = Instance.new("Frame")
				local UIGradient_2 = Instance.new("UIGradient")


				ToggleBox.Name = name
				ToggleBox.Parent = Objects
				ToggleBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleBox.BackgroundTransparency = 1.000
				ToggleBox.BorderSizePixel = 0
				ToggleBox.Size = UDim2.new(0, 155, 0, 22)

				NameLabel.Name = "NameLabel"
				NameLabel.Parent = ToggleBox
				NameLabel.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
				NameLabel.BackgroundTransparency = 1.000
				NameLabel.BorderSizePixel = 0
				NameLabel.Position = UDim2.new(0.349891156, 0, 0.00914834067, 0)
				NameLabel.Size = UDim2.new(0, 100, 0, 21)
				NameLabel.ZIndex = 125
				NameLabel.Font = Enum.Font.SourceSans
				NameLabel.Text = text
				NameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				NameLabel.TextSize = 17.000
				NameLabel.TextXAlignment = Enum.TextXAlignment.Right

				ToggleIndicator.Name = "ToggleIndicator"
				ToggleIndicator.Parent = ToggleBox
				ToggleIndicator.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
				ToggleIndicator.Position = UDim2.new(-0.00486080348, 0, 0.13636364, 0)
				ToggleIndicator.Size = UDim2.new(0, 14, 0, 14)

				UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(127, 127, 127))}
				UIGradient_2.Rotation = 90
				UIGradient_2.Parent = ToggleIndicator

            table.insert(library, name)
				library.Values[name] = default

				ToggleIndicator.InputBegan:Connect(function (input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if library.Values[name] then library.Values[name] = false else library.Values[name] = true end
					end
				end)
			end
			
			
			return objects
		end
		
		TabButton.MouseButton1Down:Connect(function ()
			ButtonClickLine.Visible = true
			ButtonClickLine.Position = UDim2.new(0,TabButton.Position.X,0,0.357142866)
			for _, v in ipairs(library.Tabs) do
				print(v)
			end
		end)

		return tab
	end

	return window
end

function library:GetValue(name)
	return library.Values[name]
end

return library