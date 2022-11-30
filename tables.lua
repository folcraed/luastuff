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
local mytable = {'dog', 'wolf'}
print('pairs in mytable:')
for k,v in pairs(mytable) do
  print(k,v)
end

-- Add a key to the table
mytable.horse = 'stallion' -- add a key value
print('ipairs of mytable')
for i,v in ipairs(mytable) do -- ipairs will ignore the key
  print(i,v)
end

-- ipairs will only return a value with an index
-- pairs returns the index if there is no key
-- but will also return the key if one exists
print('pairs in mytable:')
for i,v in pairs(mytable) do -- pairs will print the key too
  print(i,v)
end

--[[
It seems to me that ipairs is useful if you are using a table without keys,
and are only concerned with returning the values. pairs is what you'd want
if the table contains keys and the keys are important to the process.
]]--