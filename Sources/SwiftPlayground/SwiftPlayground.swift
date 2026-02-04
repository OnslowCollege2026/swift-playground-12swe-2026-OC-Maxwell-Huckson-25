// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        var number = 0
        let Dimetions: [String] = ["length", "width", "Height"]
        var gotInput = false
        while gotInput == false
        print("Enter room \(String(Dimetions)! + number:)")
        if let input = readLine(), let length = Double(input) {
            // store length, do further calculations
        } else {
            print("Invaid double")

        gotInput = true
}
    }
}