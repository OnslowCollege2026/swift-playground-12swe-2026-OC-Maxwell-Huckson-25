// The Swift Programming Language
// https://docs.swift.org/swift-book

// Defines a function to calcute the area of a room when given its length and width
func roomArea(length: Double, width: Double) -> String {
    // Calculates the area of the room with the given values
    let area = length * width
    // Returns a message telling the user what the area of the room is
    return "The area of the room is \(area)m²."
}

// Defines a function to calcute the volume of a room when given its length and width
func roomVolume(length: Double, width: Double, height: Double) -> String {
    // Calculates the volume of the room with the given values
    let volume = length * width * height
    // Returns a message telling the user what the area of the room i
    return "The volume of the room is \(volume)m³."
}


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

