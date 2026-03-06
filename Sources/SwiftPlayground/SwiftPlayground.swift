// The Swift Programming Language
// https://docs.swift.org/swift-book



// let temperatures = [
//     [2, 4, 6, 6],
//     [8, 10, 12, 36],
//     [14, 16, 18, 63]
// ]

// print(temperatures[0])
// print(temperatures[2][1])
// print(temperatures[0][2])
// let rowTwoAverage = (temperatures[1][0] + temperatures[1][1] + temperatures[2][2] + temperatures[2][3])/4
// print(rowTwoAverage)


// let table = [
//     [2, 4, 6],
//     [8, 10, 12],
//     [14, 16, 18]
// ]
//         var totalNumbers = 0
//         for row in table {
//     for value in row {
//         print(value)
//         totalNumbers = totalNumbers + 1
//     }
// }
// print("\(totalNumbers) numbers were printed")

func columnTotal(in table: [[Int]], column: Int) -> Int {
    guard column >= 0 && column < table.count else { return 0 }
    return table[column].reduce(0, +)
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

    }
}