--Jeremiah Rollins Guessing Game



math.randomseed(os.time())
--Setting up the game
while true do
    maxAttempts = 3
    randomNum = math.random(1, 100)
    print("Guess my number")
    --Set up 3 attempts 
    while maxAttempts > 0 do
        io.write("Guess the number: ")
        guess = tonumber(io.read())
        --makes sure the guess is actually a number
        if guess == nil then
            print("Please enter a valid number.")
        elseif guess == randomNum then
            print("Good Job")
            break
        else
            --lose an attemt if the guess is wrong
            maxAttempts = maxAttempts - 1
            
            if maxAttempts > 0 then
                --print the remaining attempts if the guess is wrong
                print("Wrong guess. You have " .. maxAttempts .. " attempts left")
            else
                print("Nah, the number is " .. randomNum)
            end
        end
    end
    --Player input if they want to play again
    print("Try again? Y/N")
    response = io.read()
    
    if response ~= "Y" and response ~= "y" then
        
        print("Thanks for playing!")
        break
    end
end
