--[[
    This is an exercise I remember from Python some while back.
    It asks the user how tall they want their tree to be, in
    terminal lines of course. Then it creates a tree using spaces
    and hash marks, including the stump on the bottom.
--]]
print("How high is the tree? ")
local tree_height = io.read()

local spaces = tree_height - 1
local hashes = 1
local stump = tree_height - 1

while tree_height ~= 0 do
  print(string.rep(" ", spaces) .. string.rep("#", hashes))
  spaces = spaces - 1
  hashes = hashes + 2
  tree_height = tree_height - 1
end

print(string.rep(" ", stump) .. "#")
