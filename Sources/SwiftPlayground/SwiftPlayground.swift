// The Swift Programming Language
// https://docs.swift.org/swift-book

/// Parameter:
/// - board: The 2D grid to display.
func printBoard(_ board: [[String]]) {
    for row in board {
        print(row)
    }
}

// Parameters:
/// - row: The row index for the guess.
/// - col: The column index for the guess.
/// - ocean: The hidden ships grid.
/// - guesses: The player's current guesses grid.
///
/// Returns: The updated guesses grid after the guess is applied.
func processGuess(row: Int, col: Int, ocean: [[String]], guesses: [[String]]) -> [[String]] {
    
}

func getTarget (guesses: [[String]],) -> (Int, Int){
     
    print("Where would you like to guess on the y axis?")
    if let response = readLine(), let xGuess = Int(response) {
    }
}

@main
struct SwiftPlayground {
    static func main() {
        let size = 6
        var ocean = Array(repeating: Array(repeating: "~", count: size), count: size)
        var guesses = Array(repeating: Array(repeating: "~", count: size), count: size)
        var gameRunning = true
        ocean[1][3] = "S"
        ocean[2][3] = "S"
        ocean[4][0] = "S"
        ocean[5][4] = "S"
        printBoard(guesses)
        while gameRunning == true {
            print("Where would you like to guess on the y axis?")
            printBoard(guesses)
            print("Where would you like to guess on the y axis?")

            
            }
        }
    }
