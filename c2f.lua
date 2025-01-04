--[[
A simple Fahrenheit - Celsius converter.
It asks the user value and type to convert
in format of "32c" if converting from celsius,
or "32f" if converting from fahrenheit,
then outputs the result.
]]

-- The conversion functions.

--- Converts input fahrenheit to celsius
function ToCelsius(fahrenheit)
	local temp = ((5 / 9) * (fahrenheit - 32))
	print(string.format("\nThat is %.1f degrees celcius", temp))
end

--- Converts input celsius to fahrenheit
function ToFahrenheit(celsius)
	local temp = ((celsius * 9 / 5) + 32)
	print(string.format("\nThat is %.1f degrees fahrenheit", temp))
end

-- Get the user's input and see what type conversion they want.
print("Enter like 32c to convert celsius to Fahrenheit, 32f to convert Fahrenheit to celsius:")
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
	ToCelsius(Temperature)
else
	print("You didn't enter a conversion, try again.")
end
