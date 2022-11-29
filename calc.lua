-- Making a simple CLI calculator

-- Loop the program so the user doesn't have to restart each time
while (true) do
-- Get the user input, and tell how to exit.
  print("Enter a calculation, \'q\' to exit:")
  local myString = io.read()

-- Set what to look for, the operation or the exit key.
  local ops = { "+", "-", "*", "/", "q" }

-- Find which they entered, an operation or exit.
  for i, _ in ipairs(ops) do
    if string.find(myString, ops[i]) ~= nil then
      Loc = string.find(myString, ops[i])
      Op = ops[i]
-- Check for the exit key, and if there, quit.
      if Op == "q" then
        os.exit()
      end
    end
  end

  -- Extract the numbers and assign them to variables.
  -- (Wrapping it in a function is required for error checking.)
  local function getNums()
    A = string.sub(myString, 1, (Loc - 1))
    B = string.sub(myString, (Loc + 1), -1)
  end

  -- Check that the user entered a valid operator.
  if pcall(getNums) then
    print()
  else
    print("Invalid operator! Try again")
  end

  -- Perform the math and return the result.
  if Op == "-" then print("Result: " .. A - B .. "\n")
  elseif Op == "+" then print("Result: " .. A + B .. "\n")
  elseif Op == "*" then print("Result: " .. A * B .. "\n")
  elseif Op == "/" then print("Result: " .. A / B .. "\n")
  end
end
