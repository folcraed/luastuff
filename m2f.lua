#!/usr/bin/lua

--- Takes the input and converts from meters to feet
function ToFeet(distance)
	local feet = distance * 3.2808
	print("\nIs " .. tonumber(string.format("%.2f", feet)) .. " feet.")
end

--- Takes the input and converts feet to meters
function ToMeters(distance)
	local meters = distance * 0.3048
	print("\nIs " .. tonumber(string.format("%.2f", meters)) .. " meters.")
end

-- Gets the input from the user
print("Enter distance as '32m' or '12f' to convert 32 meters or 12 feet: ")
local conversion = io.read()
local conv_value = { "m", "f" }

-- Separates the input numbers from the type (feet or meters)
for i, _ in ipairs(conv_value) do
	if string.find(conversion, conv_value[i]) ~= nil then
		local conv_from = string.find(conversion, conv_value[i])
		OriginalDistance = string.sub(conversion, 1, (conv_from - 1))
		OriginalMeasure = string.sub(conversion, -1)
	end
end

-- Finds what was asked for and runs the proper function then prints the result
if OriginalMeasure == "m" then
	ToFeet(OriginalDistance)
elseif OriginalMeasure == "f" then
	ToMeters(OriginalDistance)
else
	print("You didn't enter a proper conversion, try again.")
end
