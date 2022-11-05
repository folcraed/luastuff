-- Experiments with tables

-- Get 5 words from user and store them in a table
local a = {}
for i = 1, 5 do
  print("Enter a word:")
  a[i] = io.read()
  if #a[i] <= 1 then -- Words are longer than one character, so warn the user.
    print("You must enter an actual word:")
  end
end

-- And print them back
for _, line in ipairs(a) do
  print(line)
end
