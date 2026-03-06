// The Swift Programming Language
// https://docs.swift.org/swift-book

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