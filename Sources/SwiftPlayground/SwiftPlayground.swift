// The Swift Programming Language
// https://docs.swift.org/swift-book


func menuChoice() -> Int {
    var displayedMenu = 0
    var menuChoiceRunning = true
    while menuChoiceRunning {
        print("==== Egg Shop ====")
        print("    1. Add eggs")
        print("    2. Sell eggs")
        print("    3. Show current stock")
        print("    4. Show total eggs sold")
        print("    5. Exit")
        print("    Choose an option:")
        if let response = readLine(),let currentMenu = Int(response) {
            if currentMenu <= 5 && currentMenu >= 1 {
                displayedMenu = currentMenu
                menuChoiceRunning = false
            } else {
                print("Please read the above text and enter a valid number to prosses your request")
            }
        } else {
        print("Please read the above text and enter a valid number to prosses your request")
        }
    }
    
return displayedMenu
}

func addEggs(currentEggs: Int) -> Int {
    var gettingResponse = true
    var eggsAdded = 0
    print("How many eggs would you like to add")
    while gettingResponse == true {
        if let response = readLine(), let eggsAdding = Int(response) {
            if eggsAdded >= 1 && eggsAdded <= 1000 {
                eggsAdded = eggsAdding
                gettingResponse = false
            } else {
                print("Please enter a valid amount of eggs you want to add")
            }
        }
    return eggsAdded 
    }
}

// func sellEggs() -> Int {
//     print("how many eggs do you want to add?")
//     if let response = readLine(), let eggsSold = Int(response) {

//     }
// }

@main
struct SwiftPlayground {
    static func main() {
        var currentEggs = 0
        var runningEggShop = true
        while runningEggShop == true {
            let displayedMenu = menuChoice()
            if displayedMenu == 1 {
                currentEggs = addEggs(currentEggs: currentEggs)
            }
        }
    }
}