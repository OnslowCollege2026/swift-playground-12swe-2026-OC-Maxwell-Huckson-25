// The Swift Programming Language
// https://docs.swift.org/swift-book

// Egg shop.
// Created on 26/02/19.
// Created by Maxwell Huckson.

/// Gets a valid response from the user 
/// - Parameters:
///   - errorMessage: A message to display if the users input is invalid
///   - minimumNumber: The minimum number the user can enter
///   - maximumNumber: The maximum number the user can enter
/// - Returns: The users input
func getUserResponse(errorMesage: String, minimumNumber: Int, maximumNumber: Int) -> Int {
    var gettingResponse = true
    while gettingResponse == true {
        if let response = readLine(), let intResponse = Int(response) {
            if intResponse >= minimumNumber && intResponse <= maximumNumber {
                gettingResponse = false
                return intResponse
            } else {
                print(errorMesage)
            }
        } else {
            print(errorMesage)
        }
    }
}

/// Displays the options the user has for oporating the egg store
/// - Returns: what part of the store the user wants to view
func menuChoice() -> Int {
    print("==== Egg Shop ====")
    print("    1. Add eggs")
    print("    2. Sell eggs")
    print("    3. Show store infomation")
    print("    4. Exit")
    print("    Choose an option:")
    let displayedMenu = getUserResponse(errorMesage: "Please enter an number that corresponds to the to an option listed above", minimumNumber: 1, maximumNumber: 4)
    return displayedMenu
}

/// - Lets the user acquire eggs.
/// - Returns: the amount of eggs the user wants to gather.
func addEggs(currentEggs: Int) -> Int {
    print("How many eggs would you like to add? You have available storage for up to \(1000 - currentEggs) eggs.")
    let eggsAdded = getUserResponse(errorMesage: "That is not a valid amount of eggs. You have available storage for up to \(1000 - currentEggs) eggs. How many eggs would you like to add?", minimumNumber: 1, maximumNumber: 1000 - currentEggs)
    print("Successfully added eggs.")
    return eggsAdded 
}

/// - Lets the user sell eggs.
/// - Returns: the amount of eggs the user wants to sell.
func sellEggs(currentEggs: Int) -> Int {
    print("You currently have \(currentEggs) eggs.")
    print("how many do you want to sell?")
    let eggsAdded = getUserResponse(errorMesage: "You cannot sell that amount off eggs. Please enter the amount off eggs you want to add. You currently have \(currentEggs) eggs.", minimumNumber: 1, maximumNumber: currentEggs)
    
    return eggsAdded
}

/// - Displays the amount of eggs the user has in stock as well as how much they have sold.
func showStoreInfomation(currentEggs: Int, totalEggsSold: Int) {
    print("You currently have \(currentEggs) eggs in stock.")
    print("You have sold a total of \(totalEggsSold) eggs.")
}

@main
struct SwiftPlayground {
    static func main() {
        // This variable is used to store the current amount of eggs that the egg shop has in store.
        var currentEggs = 0
        // This variable tracks to total amount of eggs that have been sold.
        var totalEggsSold = 0
        // Creates a variable that keeps the shop program running until it is changed.
        var runningEggShop = true
        // This loop continually runs and to keep the shop program running.
        while runningEggShop == true {
            // This function gets the users input on what part of the store they want to veiw and stores it as an integer.
            let displayedMenu = menuChoice()
            // Checks if the user wants to add eggs.
            if displayedMenu == 1 {
                // If the user wants to add eggs it runs a function that lets the user add an amount of their choosing.
                let eggsAdded = addEggs(currentEggs: currentEggs)
                // Checks if the user wants to sell eggs
                currentEggs = eggsAdded
            } else if displayedMenu == 2 {
                
                if currentEggs > 0 {
                    // If the user wants to sell eggs it runs a function that lets the user sell an amount of their choosing.
                    let eggsSold = sellEggs(currentEggs: currentEggs)
                    currentEggs = currentEggs - eggsSold
                    totalEggsSold = totalEggsSold + eggsSold
                } else {
                    print("You don't have any eggs to sell")
                }

                // Checks if the user wants to have their shop infomation diplayed
            } else if displayedMenu == 3 {
                // Runs a function that takes the infomation from the variables created earlier 
                showStoreInfomation(currentEggs: currentEggs, totalEggsSold: totalEggsSold)
                // Checks if the user wants to close the program
            } else if displayedMenu == 4 {
                // Decalers the variable that keeps the while loop running false so the loop stops running and the program ends.
                runningEggShop = false
            }
        }
    }
}