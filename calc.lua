-- Making a simple CLI calculator

print("Enter a calculation:")
local myString = io.read()
local ops = { "+", "-", "*", "/" }

for i, _ in ipairs(ops) do
  if string.find(myString, ops[i]) ~= nil then
    Loc = string.find(myString, ops[i])
    Op = ops[i]
  end
end

if Op == nil then
   error("Invalid operation! Try again.")
end

A = string.sub(myString, 1, (Loc - 1))
B = string.sub(myString, (Loc + 1), -1)

if Op == "-" then
   print("Result: " .. A - B)
elseif Op == "+" then
   print("Result: " .. A + B)
elseif Op == "*" then
   print("Result: " .. A * B)
elseif Op == "/" then
   print("Result: " .. A / B)
end

--[[
   TODO: Need to figure out how to suppress the error traceback, make
   a cleaner error message that wouldn't end up just confusing
   a user.
--]]
