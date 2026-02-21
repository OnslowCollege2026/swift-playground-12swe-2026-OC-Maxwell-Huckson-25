// The Swift Programming Language
// https://docs.swift.org/swift-book

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
        }
    }
}

/// Displays the options the user has for oporating the egg store
/// - Returns: what part of the store the user wants to view
func menuChoice() -> Int {
    var menuChoiceRunning = true
    while menuChoiceRunning == true {
        print("==== Egg Shop ====")
        print("    1. Add eggs")
        print("    2. Sell eggs")
        print("    3. Show store infomation")
        print("    4. Exit")
        print("    Choose an option:")
        let displayedMenu = getUserResponse(minimumNumber: 1, maximumNumber: 4)
        menuChoiceRunning = false
        return displayedMenu
    }

}

func addEggs(currentEggs: Int) -> Int {
    var eggsAdded = 0
    print("How many eggs would you like to add")
    if let response = readLine(), let eggsAdding = Int(response) {
        if eggsAdding >= 1 && eggsAdded + currentEggs <= 1000 {
            eggsAdded = eggsAdding
        } else {
            print("Please enter a valid amount of eggs you want to add")
            addEggs(currentEggs: currentEggs)
        }
    }
    return eggsAdded 
}

func sellEggs(currentEggs: Int) -> Int {
    var eggsAdded = 0
    print("You currently have \(currentEggs) eggs.")
    print("how many do you want to sell?")
    if let response = readLine(), let eggsSold = Int(response) {
        if currentEggs - eggsSold >= 0 {
            eggsAdded = eggsSold
        }
    }
    return eggsAdded
}

func showStoreInfomation(currentEggs: Int, totalEggsSold: Int) {
    print("You currently have \(currentEggs) in stock.")
    print("You have sold a total of \(totalEggsSold) eggs.")
}

@main
struct SwiftPlayground {
    static func main() {
        var currentEggs = 0
        var totalEggsSold = 0
        var runningEggShop = true
        while runningEggShop == true {
            let displayedMenu = menuChoice()
            if displayedMenu == 1 {
                currentEggs = addEggs(currentEggs: currentEggs)
            } else if displayedMenu == 2 {
                let eggsSold = sellEggs(currentEggs: currentEggs)
                currentEggs = currentEggs - eggsSold
                totalEggsSold = totalEggsSold + eggsSold
            } else if displayedMenu == 3 {
                showStoreInfomation(currentEggs: currentEggs, totalEggsSold: totalEggsSold)
            } else if displayedMenu == 4 {
                runningEggShop = false
            }
        }
    }
}