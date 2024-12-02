struct Day2_2024: AdventSolution {
    static func solvePart1(input: String) -> Any {
        let lines = input.components(separatedBy: .newlines)    

        var safeLevels = 0
        var levels: [Int] = []

        for line in lines {
            levels = line.split(separator: " ").map { Int($0)! }
            if levelsSafe(l: levels) {
                safeLevels += 1
            }
        }
        return safeLevels
    } 

    static func solvePart2(input: String) -> Any {
        return 0
    }
}

func levelsSafe(l: [Int]) -> Bool {
    var i1 = l[0]
    var i2 = l[1]
    var absDiff = abs(i1 - i2)
    if i1 == i2 || absDiff > 3 {
        return false
    }
    let dir = i1 > i2 ? "decreasing" : "increasing"

    for i in 2..<l.count {
        i1 = i2
        i2 = l[i]
        absDiff = abs(i1 - i2)
        if (dir == "decreasing" && i1 <= i2) || (absDiff > 3) {
            return false
        }
        else if dir == "increasing" && i1 >= i2 {
            return false
        }
    }
    return true
}
