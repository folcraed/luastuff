--[[
Lua version of a temperature converter I created in Javascript.
It asks the user what and type to convert in format like "32c",
then outputs the result.
]]

-- The conversion functions.
function ToCelcius(fahrenheit)
	local temp = ((5 / 9) * (fahrenheit - 32))
	print("\nThat is " .. math.floor(temp) .. " celcius.")
end

function ToFahrenheit(celcius)
	local temp = ((celcius * 9 / 5) + 32)
	print("\nThat is " .. math.floor(temp) .. " fahrenheit.")
end

-- Get the user's input and see what type conversion they want.
print("Enter like 32c to convert Celcius to Fahrenheit, 32f to convert Fahrenheit to Celcius:")
local conversion = io.read()
local temp_val = { "c", "f" }

for i, _ in ipairs(temp_val) do
	if string.find(conversion, temp_val[i]) ~= nil then
		Location = string.find(conversion, temp_val[i])
		Temperature = string.sub(conversion, 1, (Location - 1))
		From_val = string.sub(conversion, -1)
	end
end

-- Do the conversion based on what they entered.
if From_val == "c" then
	ToFahrenheit(Temperature)
elseif From_val == "f" then
	ToCelcius(Temperature)
else
	print("You didn't enter a conversion, try again.")
end
