local v = {}
function v:sound(GUI)
  local TweenService = game:GetService("TweenService")
	local Parent = GUI.Frame

	local Click = Instance.new("Sound", GUI)
	local Hover = Instance.new("Sound", GUI)
	Click.SoundId = 'rbxassetid://15675032796'
	Hover.SoundId = 'rbxassetid://18856494234'

	local function scaleSizeAndPosition(size, position, scale)
		local scaledSize = UDim2.new(size.X.Scale * scale, size.X.Offset * scale, size.Y.Scale * scale, size.Y.Offset * scale)
		local deltaScaleX = (scaledSize.X.Scale - size.X.Scale) / 2
		local deltaOffsetX = (scaledSize.X.Offset - size.X.Offset) / 2
		local deltaScaleY = (scaledSize.Y.Scale - size.Y.Scale) / 2
		local deltaOffsetY = (scaledSize.Y.Offset - size.Y.Offset) / 2
		return scaledSize, UDim2.new(position.X.Scale - deltaScaleX, position.X.Offset - deltaOffsetX, position.Y.Scale - deltaScaleY, position.Y.Offset - deltaOffsetY)
	end

	local function tweenProperty(instance, properties, duration, style, direction)
		local tween = TweenService:Create(instance, TweenInfo.new(duration or 0.1, style or Enum.EasingStyle.Quad, direction or Enum.EasingDirection.Out), properties)
		tween:Play()
		return tween
	end

	for _, button in ipairs(Parent:GetDescendants()) do
		if button:IsA("TextButton") or button:IsA("ImageButton") or button:IsA("Button") then
			local currentButton = button
			local isExcludedButton = false

			if not isExcludedButton then
				local originalSize = button.Size
				local originalPosition = button.Position
				local originalColor = button:IsA("ImageButton") and button.ImageColor3 or nil

				local hoverSize, hoverPosition = scaleSizeAndPosition(originalSize, originalPosition, 1.05)
				local clickSize, clickPosition = scaleSizeAndPosition(originalSize, originalPosition, 1.1)
				local isAnimating = false

				local function onButtonHover()
					Hover:Play()
					tweenProperty(button, {
						Size = hoverSize,
						Position = hoverPosition
					})

					if button:IsA("ImageButton") then
						tweenProperty(button, {
							ImageColor3 = Color3.fromRGB(166, 166, 166)
						})
					end
				end

				local function onButtonLeave()
					tweenProperty(button, {
						Size = originalSize,
						Position = originalPosition
					})

					if button:IsA("ImageButton") and originalColor then
						tweenProperty(button, {
							ImageColor3 = originalColor
						})
					end
				end

				local function onButtonClick()
					if isAnimating then return end
					isAnimating = true

					if Click and Click:IsA("Sound") then
						Click:Play()
					end

					local clickTween = tweenProperty(button, {
						Size = clickSize,
						Position = clickPosition
					}, 0.05)

					clickTween.Completed:Connect(function()
						local hoverTween = tweenProperty(button, {
							Size = hoverSize,
							Position = hoverPosition
						}, 0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.In)

						hoverTween.Completed:Connect(function()
							local resetTween = tweenProperty(button, {
								Size = originalSize,
								Position = originalPosition
							}, 0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.In)

							resetTween.Completed:Connect(function()
								isAnimating = false
							end)
						end)
					end)
				end

				button.MouseEnter:Connect(onButtonHover)
				button.MouseLeave:Connect(onButtonLeave)
				button.Activated:Connect(onButtonClick)
			end
		end
	end 
end
return v
