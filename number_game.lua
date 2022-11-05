--[[
  A simple game that's common as a beginning programming exercise.
  This one however I created myself from things I already learned,
  to see if I could do it on my own.

  The program asks the user to guess a number between 1 and 100,
  counting each guess to find how many it took to get it.
  There's a check to make sure the user enters a number and not
  a letter, if they do enter a letter, they're told to only enter
  numbers and the game continues.
--]]

Num = math.random (1, 100)
Count = 0
Guesses = 9

repeat
  print("Enter your guess: ")
  Guess = tonumber(io.read())
  Count = Count + 1
  CheckNum = tonumber(Guess) ~=nil
  if Guesses == 0 then
    print("Sorry, you ran out of guesses. Game Over!")
    break
  elseif CheckNum == false then
    print("You didn't enter a number! You must enter a number. You have " .. Guesses .. " left.")
  elseif Guess < Num then
    print("You're too low! You have " .. Guesses .. " left. Guess again:")
  elseif Guess > Num then
    print("You're too high! You have " .. Guesses .. " left. Guess again:")
  elseif Guess == Num then
    print("You guessed correctly! It took " .. Count .. " tries.\n")
  end
  Guesses = Guesses - 1
until tonumber(Guess) == Num
