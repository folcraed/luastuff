--[[
   Asks the user for what value they want to convert, using "c" or "i" as a suffix for the original
   value. It then searches for which type the original is, centimeters or inches, stores that then
   parses the measurement value from the string to do the math on.

   Because Lua doesn't have a rounding method of it's own, we had to make one. As I'm terrible with
   math, that function was found on StackOverflow.
]]

-- From Stackoverflow, this rounds down to 1 decimal place.
function Round(number, decimals)
	local power = 10 ^ decimals
	return math.floor(number * power) / power
end

-- The conversion functions
function ToCentimeters(inches)
	print("\n" .. inches .. " inches = " .. Round(inches / 0.39370, 2) .. " centimeters.")
end

function ToInches(centimeters)
	print("\n" .. centimeters .. " centimeters = " .. Round(centimeters * 0.39370, 2) .. " inches.")
end

-- Get the user's input and store it for later parsing
print("Enter a value like '32c' to convert from centimeters, use '32i' to convert inches:")
local choice = io.read()
local user_input = { "c", "i" }

--[[ Finds what we're converting, and the value to convert.
	 Lua throws a warning about "Convert" having a nil
	 value in "Loc", but when run that variable gets
	 populated with the location of where the user's
	 original temperature type was, so can be ignored.
]]
for i, _ in ipairs(user_input) do
	if string.find(choice, user_input[i]) ~= nil then
		Loc = string.find(choice, user_input[i])
		Original = string.sub(choice, 1, (Loc - 1))
		Convert = string.sub(choice, -1)
	end
end

-- Process the results
if Convert == "c" then
	ToInches(Original)
elseif Convert == "i" then
	ToCentimeters(Original)
else
	print("Not a valid option, sorry.")
end
