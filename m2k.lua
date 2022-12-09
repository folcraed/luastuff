#!/usr/bin/lua

function ToKilometers(distance)
    local kilometers = distance * 1.60634
    print("\nIs " .. tonumber(string.format("%.2f", kilometers)) .. " kilometers.")
end

function ToMiles(distance)
    local miles = distance * 0.62137
    print("\nIs " .. tonumber(string.format("%.2f", miles)) .. " miles.")
end

print("Enter distance as \'32m\' or \'12k\' to convert 32 miles or 12 kilometers: ")
local conversion = io.read()
local conv_value = {"m", "k"}

for i, _ in ipairs(conv_value) do
	if string.find(conversion, conv_value[i]) ~= nil then
        local conv_from = string.find(conversion, conv_value[i])
        OriginalDistance = string.sub(conversion, 1, (conv_from - 1))
        OriginalMeasure = string.sub(conversion, conv_from)
    end
end

if OriginalMeasure == "m" then
	ToKilometers(OriginalDistance)
elseif OriginalMeasure == "k" then
    ToMiles(OriginalDistance)
else print("You didn\'t enter a proper conversion, try again.")
end
