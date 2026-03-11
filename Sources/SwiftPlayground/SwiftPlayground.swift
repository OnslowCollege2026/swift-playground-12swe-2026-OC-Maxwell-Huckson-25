// // The Swift Programming Language
// // https://docs.swift.org/swift-book


// Task d
// func  maxValue(in table: [[Double]]) -> Double! {
//     var largestNumber = 0.0
//     var arrayEmpty = true
//     for row in table {
//         for value in row {
//             if largestNumber < value {
//                 largestNumber = value
//                 arrayEmpty = false
//             }
//         }
//     }
//     if arrayEmpty == false {
//         return largestNumber
//     } else {
//         return nil
//     }
// }

// @main
// struct SwiftPlayground {
//     static func main() {
//         let readings = [
//             [1.5, 3.2, 2.8],
//             [7.1],
//             [4.4, 6.0],
//             [5.9, 8.3, 0.7, 2.2]
//         ]

//         let largestValue = maxValue(in: readings)
        
//         if largestValue == nil {
//             print("This 2D array is empty")
//         } else {
//             print("The largest number in this 2D array is \(largestValue)")
//         }
//     }
// }

func columnTotal(in table: [[Int]], column: Int) -> Int {
    var average = 0
    var numberAmounts = 0
    (0...3).forEach { row in
        if table.indices.contains(row) && table[row].indices.contains(column) {
            average = average + table[row][column]
            numberAmounts = numberAmounts + 1
        }
    
    }
    return average/numberAmounts
}

@main
struct SwiftPlayground {
    static func main() {
        let table = [
        [3, 5, 7, 9],
        [2, 4],
        [8, 6, 1],
        [10]
        ]

        var column = 0

        while column <= 3 {
            print(columnTotal(in: table, column: column))
            column = column + 1
        }
    }
}