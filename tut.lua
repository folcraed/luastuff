-- Practice bits and pieces with Lua

--[[ NOTE that "print" adds a newline after each item output,
    whereas "io.write" does not. Use "\n" for newlines with it.
--]]

-- MyString = "Just some words"
-- print("The index of \'some\' is:", (string.find(MyString, "some")), "\n")

Months = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" }

-- The "_," is a placeholder, it tells Lua we don't want the key, only the value.
-- It keeps it from throwing a warning.
for _, v in pairs(Months) do
  print(v)
end

for k, _ in pairs(Months) do
  print(k)
end
-- MyTable = {}

-- for i = 1, 10 do
--   MyTable[i] = i
-- end

-- The "#" in front of a table name returns the number of items in the table.
-- print( "The size of the table is " .. #MyTable)
-- print(string.format( "The size of MyString is " .. #MyString))

-- print("Enter a number: ")
-- Num1 = io.read()
-- print("Enter a second number: ")
-- Num2 = io.read()

-- function max(num1, num2)
--   if (num1 > num2) then
--     result = num1
--   else
--     result = num2
--   end
--   return result
-- end

-- print(max(Num1, Num2) .. " is the largest.")

--[[
    You can pass the paramters from one function into another. The example below
    has a function that takes a single paramter and surrounds it with hash marks.
    The next function takes 3 parameters, two numbers then whatever else is passed
    to it, in this case the first function.
]]

Myprint = function (param)
  print("This is my print function - ## " .. param .. " ##")
end

function Add (num1, num2, otherFunction)
  local result = num1 + num2  -- First parameters are numbers
  otherFunction(result)  -- 3rd parameter, in this case another function
end

Myprint(10)  -- Use the first function to wrap the number with hashes

-- Here we pass the 2nd function 2 numbers, the result is passed to the 1st function
Add(2, 5, Myprint)

--- If we don't know ahead of time how many parameters will be passed to a function, we can use a placeholder "..." which tells Lua to accept any number of parameters.
function Average (...)
  local result = 0
  local arg = {...}
  for _, v in ipairs(arg) do
    result = result + v
  end
  return result/#arg
end

print("The average is " .. Average(12,15,22,9,17,31))

function Remainder(a, b)
  local result = a % b
  return result
end

print("The remainder of 9/4 is " .. Remainder(9,4))
