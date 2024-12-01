struct Day1: AdventSolution {
    static func solvePart1(input: String) -> Any {
        let ups = input.filter { $0 == "(" }.count
        let downs = input.filter { $0 == ")" }.count
        return ups - downs
    }
    
    static func solvePart2(input: String) -> Any {
        // Implement part 2 here
        return 0
    }
}