// The Swift Programming Language
// https://docs.swift.org/swift-book

// Kumara stall.
// Created on 26/04/23.
// Created by Maxwell Huckson.

/// A function that is used to get input from the user .
/// - Parameters:
///   - errorMessage: A message to display if the users input is invalid.
///   - minimumNumber: The minimum number the user can enter.
///   - maximumNumber: The maximum number the user can enter.
/// - Returns: The users input.
func getUserResponse(errorMesage: String, minimumNumber: Double, maximumNumber: Double) -> Double {
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

/// This function displays the stores menu to the .
/// - Returns: what part of the store the user wants to view.
func storeMenu() -> Int {

    // Error message to display in the user enters an invalid input.
    let errorMessage = "Invail input, please enter a number that corresponds to one of the options listed above."

    // The lowest number that corresponds to a valid response.
    let minimumNumber = 1

    // The highest number that corresponds to a valid response.
    let maximumNumber = 5

    // A variable to store what menu the user wants to access.  
    var userResponse = 0

    print("==== Kumara Stall ====")
    print("    1. Add stock")
    print("    2. Record transaction")
    print("    3. Show current stock")
    print("    4. Show transaction history")
    print("    5. Exit")
    print("    Please choose an option:")


    // Calls the getUserResponse function to find what menu the user wants to open 
    var gettingResponse = true
    while gettingResponse == true {
        if let response = readLine(), let intResponse = Int(response) {
            if intResponse >= minimumNumber && intResponse <= maximumNumber {
                userResponse = intResponse
                gettingResponse = false
            } else {
                print(errorMessage)
            }
        } else {
            print(errorMessage)
        }
    }

    return userResponse
}


func addKumara(availableStorage: Double) -> Int {
    print("How many kilograms kumara do you want to add")
    print("You have enough space for up to \(availableStorage)kg of kumara")

}


import Foundation

@main
struct SwiftPlayground {
    static func main() {
        // This variable is used to keep the shop running until the user wants to close it/
        var shopRunning = true

        // This while loop will take the user back to the home menu, once they have made their change to the stall, until they wish to exit the stall.
        while shopRunning {
            let userResponse = storeMenu()
            // If the user presses 1 to add stock, it calls in the function that allows them to do that.
            if userResponse == 1 {

            }
        }
    }
}