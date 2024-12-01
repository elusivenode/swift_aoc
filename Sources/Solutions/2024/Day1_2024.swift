struct Day1_2024: AdventSolution {
    static func solvePart1(input: String) -> Any {
        let lines = input.components(separatedBy: .newlines)    

        // Split the line into two lists and collect the into separate lists
        var list1: [Int] = []
        var list2: [Int] = []

        for line in lines {
            let parts = line.components(separatedBy: "   ")
            if parts.count == 2 {
                list1.append(Int(parts[0].trimmingCharacters(in: .whitespaces))!)
                list2.append(Int(parts[1].trimmingCharacters(in: .whitespaces))!)
            }
        }

        return totalListDistance(l1: list1, l2: list2)
    } 

    static func solvePart2(input: String) -> Any {
        let lines = input.components(separatedBy: .newlines)    

        // Split the line into two lists and collect the into separate lists
        var list1: [Int] = []
        var list2: [Int] = []

        for line in lines {
            let parts = line.components(separatedBy: "   ")
            if parts.count == 2 {
                list1.append(Int(parts[0].trimmingCharacters(in: .whitespaces))!)
                list2.append(Int(parts[1].trimmingCharacters(in: .whitespaces))!)
            }
        }

        return similarityScore(l1: list1, l2: list2)
    }
}

func similarityScore(l1: [Int], l2: [Int]) -> Int {
    var score = 0
    for i in 0..<l1.count {
        score += (l2.filter { $0 == l1[i] }.count) * l1[i]
    }
    return score
}

func totalListDistance(l1: [Int], l2: [Int]) -> Int {
    // Sort the lists, pair them up and calculate the absolute difference
    let distances = zip(l1.sorted(), l2.sorted()).map { abs($0 - $1) }
    return distances.reduce(0, +)
}
