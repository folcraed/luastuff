-- Figures out the average from a series of numbers
local total = 0
local how_many = 0
local delim = ","

print("Enter the numbers separated by commas: ")
local theNumbers = io.read()
local counter = string.len(theNumbers)

while counter > 0 do
    if string.find(theNumbers, delim) ~= nil then
      Loc = string.find(theNumbers, delim)
    end
      Number = string.sub(theNumbers, 1, (Loc -1))
      CutMe = string.sub(theNumbers, 1, Loc)
      theNumbers = string.gsub(theNumbers, CutMe, "")
      total = total + tonumber(Number)
      counter = counter - string.len(CutMe)
      how_many = how_many + 1
end

print("The average is: " .. math.floor(total / how_many))
