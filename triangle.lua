#!/usr/bin/lua

-- Calculate the length of 3rd side of a right-angle triangle

io.write("Enter the length of the first side: ")
local side1 = io.read()
io.write("Enter the length of the second side: ")
local side2 = io.read()

local side3 = ((side1 * side1) + (side2 * side2))
local final = math.sqrt(side3)

-- Lua doesn't have a rounding function, so we make our own
local rounded = tonumber(string.format("%.3f", final))
print("The length of the third side is: " .. rounded)
