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
    // This loop runs on repeat until the function is exited.
    while true {
        // This if statement gets the users response to the question and turns it into an int as that is the response that is needed.
        if let response = readLine(), let doubleResponse = Double(response) {
            guard doubleResponse < minimumNumber || doubleResponse > maximumNumber else {
	        // exits the function with the users response which will also mean exiting the while true loop
            return doubleResponse
            }
            print(errorMesage)
        } else {
            print(errorMesage)
        }
    }
}

/// Calculates the cost of bags.
/// - Parameter bagsAmount: the amount of bags brought.
/// - Returns: the cost of the bags
func calculateBagCost(bagsAmount: Double) -> String{

    // The price of one bag
    let bagPrice = 0.2

    // Calculates the cost of the total amount of bags brought 
    let bagCost = bagsAmount*bagPrice

    // Formats the cost so the issue where it will display the cost as something like 4.000000000000000000000001 does not happen
    let formattedBagCost = String(format: "%.2f", bagCost)

    // Returns the fomrmatted cost
    return formattedBagCost

}

/// Calculates the cost of kumara.
/// - Parameter kumaraAmount: the amount of kumara brought.
/// - Returns: the cost of the kumara.
func calculateKumaraCost(kumaraAmount: Double) -> String{

    // The price of one kg of kumara.
    let kumaraPrice = 3.0

    // Calculates the cost of the total amount of kumara brought.
    let kumaraCost = kumaraAmount*kumaraPrice

    // Formats the cost so the issue where it will display the cost as something like 4.000000000000000000000001 does not happen.
    let formattedKumaraCost = String(format: "%.2f", kumaraCost)

    // Returns the fomrmatted cost.
    return formattedKumaraCost

}

/// This function displays the stores menu to the user.
/// - Returns: what part of the store the user wants to view.
func storeMenu() -> Int {

    // Error message to display in the user enters an invalid input.
    let errorMessage = "Invail input, please enter a number that corresponds to one of the options listed above."

    // The lowest number that corresponds to a valid response.
    let minimumNumber = 1

    // The highest number that corresponds to a valid response.
    let maximumNumber = 6

    // Displays the available options for the user to choose from.
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

    while true {
        // This if statement gets the users response to the question and turns it into an int as that is the response that is needed.
        if let response = readLine(), let intResponse = Int(response) {
            guard intResponse < minimumNumber || intResponse > maximumNumber else {
	        // exits the function with the users response which will also mean exiting the while true loop
            return intResponse
            }
            print(errorMessage)
        } else {
            print(errorMessage)
        }
    }
}

/// This function lets the user add kumara to their stall.
/// - Parameter kumaraStock: the amount of kumara the stall currently has in stock.
/// - Returns: The amount of kumara the user wants to add.
func addKumara(kumaraStock: Double) -> Double {

    // Creates a constant for the minimum about of kumara the user can add.
    let minimumKumara = 0.1

    // Creates a constant for the avalible storage for the kumara.
    let kumaraLimit = 50.0 - kumaraStock

    // Creates an error message to display if the user says they want to add an invalid amount of kumara.
    let errorMesage = "Invalid amount, please enter the amount of kumara you want to add (in kilograms, minimum 0.1) and that you have enough storage for."

    // Asks the user how much kumara they want to add.
    print("""
    How many kilograms kumara do you want to add
    You have enough space for up to \(kumaraLimit)kg of kumara
    """)

    // Calls a function to get the users response on how much kumara they want to add to the stall.
    let kumaraAdded = getDoubleResponse(errorMesage: errorMesage, minimumNumber: minimumKumara, maximumNumber: kumaraLimit)

    return kumaraAdded
}

/// This function lets the user add kumara to their stall.
/// - Parameters:
///	- kumaraStock: the amount of kumara the stall currently has in stock.
///	- bagsAmount: the amount of bags the stall has available.
/// - Returns: The amount of bags and kumara the customer bought.
// An array to store the amount of bags and kumara bought by the customer.
func recordSale(kumaraStock: Double, bagsAmount: Double) -> [Double] {

    // Creates a constant for the minimum about of bags the customer can buy.
    let minimumBags = 1.0

    // Creates a constant for the avalible amount of kumara in stock (the maximum the user can buy).
    let maximumBags = bagsAmount

    // Creates an error message to display if the buyer tries to buy an invalid amount of kumara
    let BagsErrorMesage = "Invalid amount, please enter the amount of bags the customer wants to buy (minimum 1) that we have enough of."

    // Creates a constant for the minimum about of kumara the customer can buy.
    let minimumKumara = 0.1

    // The maximum amount of kumara that the customer can buy.
    var maximumKumara = 0.0

    // Creates an error message to display if the buyer tries to buy an invalid amount of kumara
    let KumaraErrorMesage = "Invalid amount, please enter the amount of kumara the customer wants to buy (in kilograms, minimum 0.1) that we have in stock and we have enough bags for."

    // The amount of space in each bag
    let bagSpace = 5.0
    // This array is used to store the amount of bags and kumara the customer brought.
    var saleDetails: [Double] = []

    // Displays how much a bag can store and how much they cost before asking them how many bags the customer brought.
    print("""
    There are \(bagsAmount) bags left.
    Each bag costs 20 cents.
    How many bags did the customer buy?
    Each bag can hold 5kg of kumara.
    """)

    // Calls a function to get the user's input on how many bags the customer wants to buy.
    let bagsBought = getDoubleResponse(errorMesage: BagsErrorMesage, minimumNumber: minimumBags, maximumNumber: maximumBags)

    // Stores the amount of bags the user wants to buy in an array to return later.
    saleDetails.append(Double(bagsBought))
    
    // Lets the user know that the transaction was recorded successfully.
    print("Successfully recorded purchasing of \(bagsBought) bags for $\(calculateBagCost(bagsAmount: bagsBought))")

    // The amount of available storage the user has for kumara with the amount of bags they have.
    let bagStorage = bagsBought*bagSpace

    // Checks what is smaller out of the amount of bag storage and the amount of kumara in order to determine the maximum amount of kumara the customer can buy.
    if kumaraStock < Double(bagStorage) {
        maximumKumara = Double(bagStorage)
    } else {
        maximumKumara = kumaraStock
    }

    // Asks how much kumara the customer bought and also tells them how much storage their bags have as well as how much kumara is in stock.
    print("""
    With the amount of bags bought the customer has enough storage for \(bagStorage)kg of kumara.
    There is \(kumaraStock)kg of kumara in stock.
    How much kumara did the customer buy?
    """)

    // Calls a function to get the user's input on how much kumara the customer wants to buy.
    let kumaraBought = getDoubleResponse(errorMesage: KumaraErrorMesage, minimumNumber: minimumKumara, maximumNumber: maximumKumara)

    // Lets the user know that the transaction was recorded successfully.
    print("Succsessfully recorded purchasing of \(kumaraBought)kg of kumara for $\(calculateKumaraCost(kumaraAmount: kumaraBought))")

// Stores the amount of kumara the user wants to buy in an array to return later.
    saleDetails.append(kumaraBought)

    return saleDetails
}

/// Shows the stalls sale history
/// - Parameters:
///   - salesHistory: the amount of bags and kumara sold in each sale.
///   - totalSales: the total amount of sales that occurred.
func viewTransactionHistory(salesHistory: [[Double]], totalSales: Int) {

    // The index of first sale that occurred.
    let firstSale = 0

    // Goes through each sale and informs the user abount what happened.
    (firstSale...totalSales).forEach { row in 

    // What order the sale happend in.
    let saleNumber = row + 1

    // Displays the sale infomation to the user.
    print("\(saleNumber). You sold \(salesHistory[0])bags of \(salesHistory[1]) kumara.")
    }
}

/// Calculates the average amount kumara sold in each bag
/// - Parameters:
///	 - salesData: The 2d array storing all the sales history
///	 - column: The column that the array is finding the average of
///	 - elementCount: the amount of elements in the array column
/// Returns: The sales data average  
func calculateSalesAverages(salesHistory: [[Double]], column: Int, salesAmount: Int) -> Double {

    // this variable stores the sum of all the numbers in the arrays column
    var elementSum = 0.0

    // This loop calculates the sum of all the numbers in the arrays column
    (0...salesAmount).forEach { row in

        // Gets the total amount of kumara sold.
        elementSum = elementSum + salesHistory[row][column]    
    }

    // calculates the average then returns it.
    return elementSum/Double(salesAmount)
}

import Foundation

@main
struct SwiftPlayground {
    static func main() {

        // This 2D array is used to record all the sales that get made (first column bags, second column kumara).
        var salesHistory: [[Double]] = [

        ]

        // This array is used to store the sales history averages right before they get displayed to the user.
        var salesAverages: [Double] = []

        // This variable is used to keep the shop running until the user wants to close it.
        var shopRunning = true

        // The total amount of sales that have been made.
        var totalSales = 0

        // This variable is used to keep track of the amount of kumara that is currently in stock.
        var kumaraStock = 0.0

        // This variable is used to keep track of the amount of bags the store has available.
        var bagsAmount = 5000.0

        // The minimum kumara required in order to record a sale.
        let minimumKumaraForTransaction = 0.0

        // The minimum bags required in order to record a sale.
        let minimumBagsForTransaction = 0.0

        // This constant is the the column on the 2D array that stores the amount of bags sold.
        let bagsColumn = 0

        // This constant is the the column on the 2D array that stores the kg  of kumara sold.
        let kumaraColumn = 1

        // This while loop will take the user back to the home menu, once they have made their change to the stall, until they wish to exit the stall.
        while shopRunning {
            // Finds out what part of the menu the user wants to access.
            let userResponse = storeMenu()

            // If the user presses 1 to add stock, it calls in the function that allows them to do that.
            if userResponse == 1 {

                // Adds the kumara the user added to the current stock
                kumaraStock = kumaraStock + addKumara(kumaraStock: kumaraStock)

                // Lets the user know that the transaction was successful.
                print("Successfully added kumara.")

            // this section of the loop allows the users to record sales.
            } else if userResponse == 2 {

                // Only lets the user make a sale if they have bags of kumara to sell.
                guard kumaraStock == minimumKumaraForTransaction || bagsAmount == minimumBagsForTransaction else {

                    // Calls a function to get the sales details and records the amount of bags and kumara that gets sold in the 2D array.
                    let sale = recordSale(kumaraStock: kumaraStock, bagsAmount: bagsAmount)
                    salesHistory.append(sale)

                    // Updates the amount of bags left.
                    bagsAmount = bagsAmount - sale[0]

                    // Updates the amount of kumara left.
                    kumaraStock = kumaraStock - sale[1]

                    // Updates the amount of sales that have occurred. 
                    totalSales = totalSales + 1

                    continue
                }
                // This error message plays if the user does not have any bags or kumara.
                print("You either don't have any kumara to sell or don't have any bags")
            } else if userResponse == 3 {

                // This displays the current amount of bags and kumara the shop has in stock as well as the amount of profit that has been made. 
                print ("""
                You have \(bagsAmount) bags left.
                You have \(kumaraStock)kg of kumara left.
                """)

            // This part of the if statment lets the user view their transaction history.
            } else if userResponse == 4 {
                


            // This section of the if statement is used to calculate the sales averages and return them to the user.
            } else if userResponse == 5 {
                // Calculates the average of each of the columns and adds them to the array.
                (bagsColumn...kumaraColumn).forEach { column in
                    salesAverages[column] = (calculateSalesAverages(salesHistory: [salesAverages], column: column, salesAmount: totalSales))
                }

                // The average amount of kumara that gets sold per bag.
                let averageKumara = salesAverages[1]/salesAverages[0]

                // The price of the average kumara and bag.
                let averagePrice = calculateKumaraCost(kumaraAmount: averageKumara)

                // Tells the user how much kumara gets sold per bag.
                print("On average you sell \(averageKumara)kg of kumara per bag a total of $\(averagePrice) plus an additional 20 cents for the bag.")
            } else {
                shopRunning = false
            }
        }
    }
}