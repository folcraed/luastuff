-- Making a simple CLI calculator

-- Get the user input.
print("Enter a calculation:")
local myString = io.read()

-- Seperate the operation from the numbers.
local ops = { "+", "-", "*", "/" }
for i, _ in ipairs(ops) do
  if string.find(myString, ops[i]) ~= nil then
    Loc = string.find(myString, ops[i])
    Op = ops[i]
  end
end

-- Extract the numbers and assign them to variables.
-- (Wrapping it in a function is required for error checking.)
local function getNums()
  A = string.sub(myString, 1, (Loc - 1))
  B = string.sub(myString, (Loc + 1), -1)
end

-- Check that the user entered a valid operator.
if pcall(getNums) then
  print()
else
  print("Invalid operator! Try again")
end

-- Perform the math and return the result.
if Op == "-" then
   print("Result: " .. A - B)
elseif Op == "+" then
   print("Result: " .. A + B)
elseif Op == "*" then
   print("Result: " .. A * B)
elseif Op == "/" then
   print("Result: " .. A / B)
end
