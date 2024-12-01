struct Day1_2015: AdventSolution {
    static func solvePart1(input: String) -> Any {
        let ups = input.filter { $0 == "(" }.count
        let downs = input.filter { $0 == ")" }.count
        return ups - downs
    }
    
    static func solvePart2(input: String) -> Any {
        var floor = 0
        for (index, char) in input.enumerated() {
            if char == "(" {
                floor += 1
            } else {
                floor -= 1
            }
            if floor == -1 {
                return index + 1
            }
        }
        return floor
    }
}