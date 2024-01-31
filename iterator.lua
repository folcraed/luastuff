--[[
  This is an example of a "stateless" iterator, which right now I
  want to figure out how exactly it's working. The first iterator
  is a function that use a table to feed it. In the part that prints
  the output, note it's called like a function, rather than a table.
]]

-- Prime number iterator
local incr = { 4, 1, 2, 0, 2 }
local function primes(s, p, d)
    s, p, d = s or math.huge, p and p + incr[p % 6] or 2, 1
    while p <= s do
        repeat
            d = d + incr[d % 6]
            if d * d > p then return p end
        until p % d == 0
        p, d = p + incr[p % 6], 1
    end
end

-- Print all prime numbers <= 50
for p in primes, 50 do
    print(p)
end

--[[
Another version of an iterator that uses a table to dissect a string and
returns a table of each of the string's characters. This one uses a table
to populate the output, then prints from that table.
]]

local function chars_iter(t, i)
    i = i + 1
    if i <= t.len then
        return i, t.s:sub(i, i)
    end
end

local function chars(s)
    local t = {
        s = s,
        len = #s
    }
    return chars_iter, t, 0
end

for i, c in chars 'abcdef' do
    print(i, c)
end
