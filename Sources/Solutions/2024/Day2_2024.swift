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
        let lines = input.components(separatedBy: .newlines)    

        var safeLevels = 0
        var levels: [Int] = []

        for line in lines {
            levels = line.split(separator: " ").map { Int($0)! }
            if levelsSafe(l: levels) {
                safeLevels += 1
            } else if safeWithOneRemoval(l: levels) {
                safeLevels += 1
            }
        }
        return safeLevels
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

func safeWithOneRemoval(l: [Int]) -> Bool {
    let variants = generateListsWithOneRemoval(l: l)
    for variant in variants {
        if levelsSafe(l: variant) {
            return true
        }
    }
    return false
}

func generateListsWithOneRemoval(l: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    
    // For each index, create a new list without that element
    for i in 0..<l.count {
        var newList = l  // Create a copy of the original list
        newList.remove(at: i)  // Remove element at index i
        result.append(newList)
    }   
    return result
}