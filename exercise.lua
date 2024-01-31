math.randomseed(os.time())
Number = math.random(1, 100)

Player = {}
Player.guess = 0

while Player.guess ~= Number do
    print("Guess a number between 1 and 100")
    Player.answer = io.read()
    Player.guess = tonumber(Player.answer)
    if Player.guess > Number then
        print("Too high")
    elseif Player.guess < Number then
        print("Too low")
    else
        print("You guessed it!")
        -- os.exit()
    end
end

--[[
    This was an exercise from the Lua learning book
    by Seth Kenlon. I was wondering why he used a
    table to store the player's guesses. So I did
    a print of what was in the table at the end of
    the game. It only has the last guess and the
    actual number. So I'm not sure why he used a
    table, it doesn't seem to add anything useful.
]]
for k, v in pairs(Player) do
    print(k, v)
end
