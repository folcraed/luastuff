#!/usr/bin/lua

function ToPounds(weight)
    local pounds = weight * 2.20462262185
    print("\nIs " .. tonumber(string.format("%.2f", pounds)) .. " pounds.")
end

function ToKilos(weight)
    local kilos = weight * 0.45359237
    print("\nIs " .. tonumber(string.format("%.2f", kilos)) .. " kilos.")
end

print("Enter weight as \'32k\' or \'12l\' to convert 32 kilos or 12 pounds: ")
local conversion = io.read()
local conv_value = {"k", "l"}

for i, _ in ipairs(conv_value) do
    if string.find(conversion, conv_value[i]) ~= nil then
        local conv_from = string.find(conversion, conv_value[i])
        OriginalWeight = string.sub(conversion, 1, (conv_from - 1))
        OriginalMeasure = string.sub(conversion, conv_from)
    end
end

if OriginalMeasure == "k" then
    ToPounds(OriginalWeight)
elseif OriginalMeasure == "l" then
    ToKilos(OriginalWeight)
else print("You didn\'t enter a proper conversion, try again.")
end
