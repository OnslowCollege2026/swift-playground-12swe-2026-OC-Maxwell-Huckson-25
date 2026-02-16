// The Swift Programming Language
// https://docs.swift.org/swift-book



@main
struct SwiftPlayground {
    static func main() {

        // This bool is to decide the outcome of the next if statement 
        let isLarge = true

        
        if isLarge == true {
            let volume = 100
            print(volume)
        } else {
            // Since the bool is true this code will not run
            let volume = 20
            print(volume)
        }

        // Since the variable was declared in a if statement the program is unable to find the costant
        print(volume)
    }
}