import Foundation

var actualNumber = -1
var hasQuit = false
var randomNumber = Int(arc4random_uniform(99)) + 1
var attempts = 0
var finalScore = 0
print("I am debug, the number is \(randomNumber)")
print("Please guess a number 1-100! \nYou only get six attempts!")
repeat
{
    let userInput = readLine()
    if (userInput == "Quit" || userInput == "quit")
    {
        hasQuit = true
    }else {
        if let guessedNumber = Int(userInput!)
        {
            if guessedNumber > 100 || guessedNumber < 1
            {
                print("Please use a number 1 - 100")
                continue
            }
            if (guessedNumber == randomNumber)
            {
                finalScore += 1
                print("You won! it took you \(attempts) attempts to guess the number!")
                print("Would you like to try again? Yes or No")
                let response = readLine()
                if response == "Yes" || response == "yes"
                {
                    randomNumber = Int(arc4random_uniform(99)) + 1
                    attempts = 0
                    print("Guess the number! The number has been reset to a random value!")
                    print("I am debug, the number is \(randomNumber)")
                }else {
                    print("Then that's it! Thanks for playing.")
                    hasQuit = true
                }
            }else if (guessedNumber > randomNumber)
            {
                print("Too high!")
                attempts += 1
                continue
            }else if guessedNumber < randomNumber
            {
                print("Too low!")
                attempts += 1
                continue
            }
        }else {
            print("Numbers only!")
            continue
        }
    }
}
    
    while actualNumber != randomNumber && !hasQuit && attempts != 6
if hasQuit
{
    print("I am debug, User has quit.")
}
if attempts == 6
{
    print("You have ran out of attempts!\nThe number was \(randomNumber)")
}
print("Thanks for playing!\nYour final score was \(finalScore)")
