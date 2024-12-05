#!/bin/lua

-- A small program to read the CPU and GPU temperatures and output them.

-- First let's see if we can read a file and print it to the screen.
-- We open a system file directly, because everything in Linux is a file.
local open = io.open
local CPUFile = "/sys/class/thermal/thermal_zone2/temp"

-- We use a function to extract the temperature to avoid file permission problems
function ReadCPU()
	local f = open(CPUFile)
	if f then
		CPU = tostring(f:read("a"))
		f:close()
	else
		print("Can't read temperature file.")
	end
	return CPU
end

print(string.format("%i", tonumber(ReadCPU() / 1000)) .. "ºC CPU")

-- Then we get the GPU temperature using lm-sensors and some CLI tools
local GPUFile = io.popen("sensors | grep edge | cut -c16-17", "r")
if GPUFile == nil then
	TheGPU = 0
else
	TheGPU = GPUFile:read("n")
end

print(TheGPU .. "ºC GPU")
