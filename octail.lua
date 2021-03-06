local library = {}
local Tabs = {}
local Values = {}
local LineValues = {}

local Camera = game:GetService('Workspace'):WaitForChild('Camera')
local DragMousePosition
local FramePosition

local Draggable = false

if game:GetService("CoreGui"):FindFirstChild('Octail') then game:GetService("CoreGui"):FindFirstChild('Octail'):Destroy() end

--[[

We will handle Menu Opening And Closing Inside of the class that requires the use of the library.
Allows us to change keybinds and stuff
(totally not because im lazy to make a keybind manager)

--]] 

library.gui = Instance.new('ScreenGui')
library.gui.Name = 'Octail'
--library.gui.Name = game:GetService("HttpService"):GenerateGUID(false):lower():sub(1, 10);
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

	Window.Name = "MainFrame"
	Window.Parent = library.gui
	Window.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	Window.BorderColor3 = Color3.fromRGB(138, 138, 138)
	Window.Position = UDim2.new(0.253039509, 0, 0.218633533, 0)
	Window.Size = UDim2.new(0, 650, 0, 453)
	Window.ZIndex = 1

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
		local ButtonClickLine = Instance.new("Frame")
		local UIGradient = Instance.new("UIGradient")
		local UICorner = Instance.new("UICorner")


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
		Tab1.Position = UDim2.new(0, 0, 0.082, 0)
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

		ButtonClickLine.Name = "ButtonClickLine"
		ButtonClickLine.Parent = TabButton
		ButtonClickLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ButtonClickLine.BackgroundTransparency = 0.500
		ButtonClickLine.BorderSizePixel = 0
		ButtonClickLine.Position = UDim2.new(-0.00415246189, 0, 0.948202193, 0)
		ButtonClickLine.Size = UDim2.new(0, 103, 0, 4)
		ButtonClickLine.ZIndex = 1
		ButtonClickLine.Visible = false

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(27, 27, 27)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(223, 37, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(27, 27, 27))}
		UIGradient.Parent = ButtonClickLine

		UICorner.CornerRadius = UDim.new(0, 400)
		UICorner.Parent = ButtonClickLine	

		UIPadding_2.Parent = GroupBoxes_2
		UIPadding_2.PaddingRight = UDim.new(0, 6)
		UIPadding_2.PaddingTop = UDim.new(0, 15)

		local tab = {}

		tab.TabButton = TabButton
		tab.Tab = Tab1

      table.insert(Tabs, text)
      Tabs[text] = tab
		table.insert(LineValues, text)
		LineValues[text] = ButtonClickLine

		function tab:GroupBox(title)
			assert(type(title) == "string", "Title must be a string")

			local NewGroupBoxWithName = Instance.new("Frame")
			local TextLabel = Instance.new("TextLabel")
			local Objects = Instance.new("Frame")
			local UIListLayout_3 = Instance.new("UIListLayout")

			NewGroupBoxWithName.Name = "NewGroupBoxWithName"
			NewGroupBoxWithName.Parent = GroupBoxes_2
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
			TextLabel.Text = title
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
				NameLabel.Position = UDim2.new(0.158530921, 0, -0.0363062024, 0)
				NameLabel.Size = UDim2.new(0, 96, 0, 21)
				NameLabel.ZIndex = 125
				NameLabel.Font = Enum.Font.SourceSans
				NameLabel.Text = text
				NameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				NameLabel.TextSize = 17.000
				NameLabel.TextXAlignment = Enum.TextXAlignment.Left
				NameLabel.TextScaled = true

				ToggleIndicator.Name = "ToggleIndicator"
				ToggleIndicator.Parent = ToggleBox
				ToggleIndicator.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
				ToggleIndicator.Position = UDim2.new(-0.00486080348, 0, 0.13636364, 0)
				ToggleIndicator.Size = UDim2.new(0, 14, 0, 14)

				UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(127, 127, 127))}
				UIGradient_2.Rotation = 90
				UIGradient_2.Parent = ToggleIndicator

            table.insert(Values, name)
				Values[name] = default

				if default then
					ToggleIndicator.BackgroundColor3 = Color3.fromRGB(160, 255, 7)
				end

				ToggleIndicator.InputBegan:Connect(function (input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						print('toggle pressed last input ' .. tostring(Values[name]))
						if Values[name] then Values[name] = false ToggleIndicator.BackgroundColor3 = Color3.fromRGB(88, 88, 88) else Values[name] = true ToggleIndicator.BackgroundColor3 = Color3.fromRGB(160, 255, 7) end
					end
				end)
			end
			
			function objects:Button(text, callback) 
				local Button = Instance.new("TextButton")
				local UIGradient = Instance.new("UIGradient")
				
				Button.Name = "Button"
				Button.Parent = Objects
				Button.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
				Button.BorderColor3 = Color3.fromRGB(47, 47, 47)
				Button.Position = UDim2.new(0.00684931502, 0, 0.203007519, 0)
				Button.Size = UDim2.new(0, 155, 0, 23)
				Button.Font = Enum.Font.SourceSans
				Button.Text = text
				Button.TextColor3 = Color3.fromRGB(255, 255, 255)
				Button.TextSize = 16.000
				
				UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(127, 127, 127))}
				UIGradient.Rotation = 90
				UIGradient.Parent = Button

				Button.MouseButton1Down:Connect(callback)
			end
			
			return objects
		end
		
		TabButton.MouseButton1Down:Connect(function ()
			ButtonClickLine.Visible = true
			Tab1.Visible = true
			for _, i in ipairs(LineValues) do
				if i ~= text then
					LineValues[i].Visible = false
				end
			end
			for _, v in ipairs(Tabs) do
				print(tostring(_),v)
				if v ~= text then
					Tabs[v].Tab.Visible = false
				end
			end
		end)

		return tab
	end

	TopBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			Draggable = true
			DragMousePosition = Vector2.new(input.Position.X, input.Position.Y)
			FramePosition = Vector2.new(Window.Position.X.Scale, Window.Position.Y.Scale)
		end
	end)
	
	TopBar.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			Draggable = false
		end
	end)
	
	game:GetService('UserInputService').InputChanged:Connect(function(input)
		if Draggable then
			local NewPosition = FramePosition + ((Vector2.new(input.Position.X, input.Position.Y) - DragMousePosition) / Camera.ViewportSize)
			Window.Position = UDim2.new(NewPosition.X, 0, NewPosition.Y, 0)
		end
	end)

	return window
end

function library:GetValue(name)
	return library.Values[name]
end

return library