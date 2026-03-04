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

let line = "---------"

func total(of matrix: [[Int]]) -> Int {
    var sum = 0
    for row in matrix {
        for value in row {
            sum += value
        }
    }
    return sum
}

func rowTotal(in matrix: [[Int]], row: Int) -> Int {
    guard row > 0 && row < matrix.count else { return 0 }
    return matrix[row].reduce(0, +)
}

@main
struct SwiftPlayground {
    static func main() {

        let scores = [
            [78, 82, 91],
            [65, 70, 68],
            [88, 94, 90],
        ]

        let firstRow = scores[0]
        let value = scores[2][1]
        print(firstRow)
        print(value)

        print(line)

        let grid = [
            [10, 20, 30],
            [40, 50, 60],
        ]

        print(grid[0][0])
        print(grid[1][2])

        print(line)

        let gridLoop = [
            [1, 2, 3],
            [4, 5, 6],
        ]

        for row in gridLoop {
            for valueLoop in row {
                print(valueLoop)
            }
        }

        print(line)

        let marks = [
            [5, 4, 3],
            [2, 4, 5],
        ]

        print(total(of: marks))

        print(line)

        let tableB = [
            [2, 4, 6],
            [8, 10, 12],
            [14, 16, 18],
        ]

        for row in tableB {
            for valueB in row {
                print(valueB)
            }
        }

    }
}
