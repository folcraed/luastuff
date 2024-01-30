--[[
	Counts the number of words in a string
]]

function WordCount(words)
	Count = 0
	for w in string.gmatch(words, "%a+") do
		Count = Count + 1
	end
	return Count
end

Result = WordCount("zombie apocalypse")
print(Result)

Result = WordCount("ice cream sandwich")
print(Result)

Result = WordCount("can you find the bug ")
print(Result)
