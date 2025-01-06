#!/usr/bin/lua

--- Takes input in kilos and converts that to pounds
function ToPounds(weight)
	local pounds = weight * 2.20462262185
	print("\nIs " .. tonumber(string.format("%.2f", pounds)) .. " pounds.")
end

--- Takes input in pounds and converts that to kilos
function ToKilos(weight)
	local kilos = weight * 0.45359237
	print("\nIs " .. tonumber(string.format("%.2f", kilos)) .. " kilos.")
end

print("Enter weight as '32k' or '12l' to convert 32 kilos or 12 pounds: ")
local conversion = io.read()
local conv_value = { "k", "l" }

-- Reads what was entered and separates the numbers from the type (kilos or pounds)
for i, _ in ipairs(conv_value) do
	if string.find(conversion, conv_value[i]) ~= nil then
		local conv_from = string.find(conversion, conv_value[i])
		OriginalWeight = string.sub(conversion, 1, (conv_from - 1))
		OriginalMeasure = string.sub(conversion, -1)
	end
end

-- Finds what was asked for, and runs the proper function, printing the result
if OriginalMeasure == "k" then
	ToPounds(OriginalWeight)
elseif OriginalMeasure == "l" then
	ToKilos(OriginalWeight)
else
	print("You didn't enter a proper conversion, try again.")
end
