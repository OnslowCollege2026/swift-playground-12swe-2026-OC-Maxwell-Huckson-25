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

/// This function displays the stores menu to the .
/// - Returns: what part of the store the user wants to view.
func storeMenu() -> Int {
    print("==== Kumara stall ====")
    print("    1. Add stock")
    print("    2. Record transaction")
    print("    3. Show stock")
    print("    4. Show transaction history")
    print("    5. Exit")
    print("    Please choose an option:")

    // Error message to display in the user enters an invalid input.
    let errorMessage = "Invail input, please enter an number that corresponds to one the the options listed above."

    // The lowest number that corresponds to a valid response.
    let minimumNumber = 1

    // The highest number that corresponds to a valid response.
    let maximumNumber = 5

    // Calls the getUserResponse function to find what menu the user wants to open 
    let usersChoice = getUserResponse(errorMesage: errorMessage, minimumNumber: minimumNumber, maximumNumber: maximumNumber)
    return usersChoice
}

import Foundation

@main
struct SwiftPlayground {
    static func main() {

    }
}