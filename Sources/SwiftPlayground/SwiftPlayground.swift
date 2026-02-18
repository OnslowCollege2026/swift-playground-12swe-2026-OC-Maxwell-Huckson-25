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

@main
struct SwiftPlayground {
    static func main() {
        print(menuChoice())
        // var runningEggShop = true
        // while runningEggShop == true {
        //     let displayedMenu = menuChoice()
        //     if displayedMenu == 1 {
                
        //     }
        // }
    }
}