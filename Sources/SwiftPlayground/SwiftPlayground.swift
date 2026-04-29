// The Swift Programming Language
// https://docs.swift.org/swift-book

// Kumara stall.
// Created on 26/04/23.
// Created by Maxwell Huckson.

/// A function that is used to get a double input from the user .
/// - Parameters:
///   - errorMessage: A message to display if the users input is invalid.
///   - minimumNumber: The minimum number the user can enter.
///   - maximumNumber: The maximum number the user can enter.
/// - Returns: The users input.
func getDoubleResponse(errorMesage: String, minimumNumber: Double, maximumNumber: Double) -> Double {
    var gettingResponse = true
    while gettingResponse == true {
        if let response = readLine(), let doubleResponse = Double(response) {
            if doubleResponse >= minimumNumber && doubleResponse <= maximumNumber {
                gettingResponse = false
                return doubleResponse
            } else {
                print(errorMesage)
            }
        } else {
            print(errorMesage)
        }
    }
}

/// A function that is used to get an int input from the user .
/// - Parameters:
///   - errorMessage: A message to display if the users input is invalid.
///   - minimumNumber: The minimum number the user can enter.
///   - maximumNumber: The maximum number the user can enter.
/// - Returns: The users input.
func getIntResponse(errorMesage: String, minimumNumber: Int, maximumNumber: Int) -> Int {
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

/// This function displays the stores menu to the .
/// - Returns: what part of the store the user wants to view.
func storeMenu() -> Int {

    // Error message to display in the user enters an invalid input.
    let errorMessage = "Invail input, please enter a number that corresponds to one of the options listed above."

    // The lowest number that corresponds to a valid response.
    let minimumNumber = 1

    // The highest number that corresponds to a valid response.
    let maximumNumber = 6

    // A variable to store what menu the user wants to access.  

print("""
==== Kumara Stall ====
    1. Add stock
    2. Record transaction
    3. Show current stock
    4. Show transaction history
    5. Summarize sales information
    6. Exit
    Please choose an option:
""")

    // Calls the getIntResponse function to find what menu the user wants to open 
    let userResponse = getIntResponse(errorMesage: errorMessage, minimumNumber: minimumNumber, maximumNumber: maximumNumber)

    return userResponse
}

///
func addKumara(kumaraStock: Double) -> Double {

    // Creates a constant for the minimum about of kumara the user can add.
    let minimumKumara = 0.1

    // Creates a constant for the avalible storage for the kumara.
    let maximumKumara = 50.0 - kumaraStock

    // Creates an error message to display if the user says they want to add an invalid amount of kumara
    let errorMesage = "Invalid amount, please enter the amount of kumara you want to add (in kilograms, minimum 0.1) and that you have enough storage for."

    print("""
    How many kilograms kumara do you want to add
    You have enough space for up to \(maximumKumara)kg of kumara
    """)

    let kumaraAdded = getDoubleResponse(errorMesage: errorMesage, minimumNumber: minimumKumara, maximumNumber: maximumKumara)

    return kumaraAdded
}

func recordSale(kumaraStock: Double, bagsAmount: Int) -> [Double] {

    // Creates a constant for the minimum about of bags the customer can buy.
    let minimumBags = 1

    // Creates a constant for the avalible amount of kumara in stock (the maximum the user can buy).
    let maximumBags = bagsAmount

    // Creates an error message to display if the buyer tries to buy an invalid amount of kumara
    let BagsErrorMesage = "Invalid amount, please enter the amount of bags the customer wants to buy (minimum 1) that we have enough of."


    // Creates a constant for the minimum about of kumara the customer can buy.
    let minimumKumara = 0.1

    // Creates a constant for the avalible amount of kumara in stock (the maximum the user can buy).
    let maximumKumara = 50.0 - kumaraStock

    // Creates an error message to display if the buyer tries to buy an invalid amount of kumara
    let KumaraErrorMesage = "Invalid amount, please enter the amount of kumara the customer wants to buy (in kilograms, minimum 0.1) that we have in stock and we have enoug bags for."

    print("""
    How many bags did the customer buy?
    You have \(bagsAmount) bags left.
    Each bag can hold 5kg of kumara.
    """)

    let bagsBought = getIntResponse(errorMesage: BagsErrorMesage, minimumNumber: minimumBags, maximumNumber: maximumBags)

    let bagStorage = bagsBought*5

    print("""
    How much kumara did the customer buy?
    With the amount of bags bought the customer has enough storage for \(bagStorage)kg of kumara.
    There is \(kumaraStock)kg of kumara in stock
    """)
    let kumaraBought = getDoubleResponse(errorMesage: KumaraErrorMesage, minimumNumber: minimumKumara, maximumNumber: maximumKumara)
    return 10
}

import Foundation

@main
struct SwiftPlayground {
    static func main() {
        // This variable is used to keep the shop running until the user wants to close it/
        var shopRunning = true

        // This variable is used to keep track of the amount of kumara that is currently in stock
        var kumaraStock = 0.0

        // This while loop will take the user back to the home menu, once they have made their change to the stall, until they wish to exit the stall.
        while shopRunning {
            let userResponse = storeMenu()

            // If the user presses 1 to add stock, it calls in the function that allows them to do that.
            if userResponse == 1 {
                kumaraStock = kumaraStock + addKumara(kumaraStock: kumaraStock)
                print("Successfully added kumara.")
            } else if userResponse == 2 {

            } else {
                shopRunning = false
            }
        }
    }
}