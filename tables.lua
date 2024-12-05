-- Experiments with tables

-- Get 5 words from user and store them in a table
-- local a = {}
-- for i = 1, 5 do
--   print("Enter a word:")
--   a[i] = io.read()
--   if #a[i] <= 1 then -- Words have to be longer than one character, so warn the user.
--     print("You must enter an actual word:")
--   end
-- end

-- -- And print them back
-- for _, line in pairs(a) do
--   print(line)
-- end

-- for k, v in pairs(a) do
--   print(k, v)
-- end

-- Difference between pairs and ipairs
local mytable = { "dog", "wolf" }
print("pairs in mytable:")
for k, v in pairs(mytable) do
	print(k, v)
end
-- Pairs prints the index key and the value

-- Add a no-numeric key to the table
mytable.horse = "stallion" -- add a key value
print("ipairs of mytable")
for i, v in ipairs(mytable) do
	print(i, v)
end
-- ipairs will ignore the non-numeric key

-- ipairs will only return a value with a numerical index
-- pairs returns the index regardless if it's a numerical key or not
print("pairs in mytable:")
for i, v in pairs(mytable) do -- pairs will print the key too
	print(i, v)
end

--[[
ipairs is useful if you create a table without creating index keys, and
just want to return values in the order they were entered.

pairs is what you'd want if the table contains keys you created and the
keys are important to the process, or you're searching for a particular
value associated with a known key.
]]
--

