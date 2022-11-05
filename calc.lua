-- Making a simple CLI calculator

print("Enter a calculation:")
local myString = io.read()
local ops = {"+", "-", "*", "/"}

for i, _ in ipairs(ops) do
  if string.find(myString, ops[i]) ~= nil then
    Loc = string.find(myString, ops[i])
    Op = ops[i]
  end
end

local a = string.sub(myString, 1, (Loc - 1))
local b = string.sub(myString, (Loc + 1), -1)

if Op == "-" then print("Result: " .. a - b) end
if Op == "+" then print("Result: " .. a + b) end
if Op == "*" then print("Result: " .. a * b) end
if Op == "/" then print("Result: " .. a / b) end

--[[
    There's probably a better way to do this, but I'm happy with my first attempt
    with my limited knowledge so far. I will revisit this as I learn, see if I come
    up with a better way.
--]]
