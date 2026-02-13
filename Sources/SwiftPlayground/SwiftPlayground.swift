// The Swift Programming Language
// https://docs.swift.org/swift-book

// Defines a function to calcute the area of a room when given its length and width

@main
struct SwiftPlayground {
    static func main() {
        
        // Declares the length and width of a small room and uses the function to calculate its area
        let smallRoomArea = roomArea(length: 5, width: 10)

        // Declares the length and width of a small room and uses the function to calculate its volume
        let largeRoomVolume = roomVolume(length: 20, width: 40, height: 5)

        // Displays the message given by the function
        print(smallRoomArea)

        // Displays the message given by the function
        print(largeRoomVolume)
    }
}

