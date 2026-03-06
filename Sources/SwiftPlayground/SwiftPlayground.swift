// The Swift Programming Language
// https://docs.swift.org/swift-book

func  maxValue(in table: [[Double]]) -> Double! {
    var largestNumber = 0.0
    var arrayEmpty = true
    for row in table {
        for value in row {
            if largestNumber < value {
                largestNumber = value
                arrayEmpty = false
            }
        }
    }
    if arrayEmpty == false {
        return largestNumber
    } else {
        return nil
    }
}

@main
struct SwiftPlayground {
    static func main() {
        let readings = [
            [1.5, 3.2, 2.8],
            [7.1],
            [4.4, 6.0],
            [5.9, 8.3, 0.7, 2.2]
        ]

        let largestValue = maxValue(in: readings)
        
        if largestValue == nil {
            print("This 2D array is empty")
        } else {
            print("The largest number in this 2D array is \(largestValue)")
        }
    }
}