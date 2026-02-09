// The Swift Programming Language
// https://docs.swift.org/swift-book


@main
struct SwiftPlayground {
    static func main() {
        let dimensions: [String] = ["length", "width", "Height"]
        var dimensionValues: [Double] = []
        var currentDimetion = 0
        var addingFurniture = true
        while currentDimetion < 3 {
            print("Enter room \(dimensions[currentDimetion]) in metres.")
            if let input = readLine(), let dimension = Double(input) {
                if dimension >= 1{
                    dimensionValues.append(dimension)
                currentDimetion = currentDimetion + 1
                } else {
                    print("Invaid response, please enter a positive number")
                }

            } else {
            print("Invaid response, please enter a positive number")

            }
        }

        let roomArea = dimensionValues[0] * dimensionValues[1]

        let roomVolume = roomArea * dimensionValues[2] 

        print("The area of your room is \(roomArea)m².")

        print("The volume of your room is \(roomVolume)m³.")

        while addingFurniture == true {
            print("Would you like to add a piece of furniture to your room? (y/n)")
            if let imput = readLine(), let response = String(imput) {
                if response == "y" {

                } elif response == "n" {
                    addingFurniture = false
                }
            } else {
                print("Invalid imput. If you want to add a piece of furniture type y, if not type n")
            }
        }
    }
}