#!/usr/bin/lua

--[[
A simple square foot to acres converter.
It asks the user value and type to convert
in format of "32a" if converting from acres,
or "32000f" if converting from square feet,
then outputs the result.
]]

-- The conversion functions.

--- Converts input square feet to acres
function ToAcres(square_feet)
	local result = square_feet / 43560
	print(string.format("\nThat is %.2f acres", result))
end

--- Converts input acres to square feet
function ToSquareFeet(acres)
	local result = acres * 43560
	print(string.format("\nThat is %.0f square feet", result))
end

-- Get the user's input and see what type conversion they want.
print("Enter expression like 32a to convert acres to square feet,\nor 32000f to convert square feet to acres:\n")
local conversion = io.read()
local conv_val = { "a", "f" }

for i, _ in ipairs(conv_val) do
	if string.find(conversion, conv_val[i]) ~= nil then
		Location = string.find(conversion, conv_val[i])
		Area = string.sub(conversion, 1, (Location - 1))
		From_val = string.sub(conversion, -1)
	end
end

-- Do the conversion based on what they entered.
if From_val == "a" then
	ToSquareFeet(Area)
elseif From_val == "f" then
	ToAcres(Area)
else
	print("You didn't enter a valid conversion, try again.")
end
