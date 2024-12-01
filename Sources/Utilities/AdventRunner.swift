public struct AdventRunner {
    public init() {}

    public func run() {
        while true {
            displayMenu()
            guard let choice = readUserChoice() else { continue }
            
            switch choice {
            case .exit:
                print("Goodbye!")
                return
            case .run(let year, let day):
                runSolution(year: year, day: day)
            }
        }
    }
    
    private func displayMenu() {
        print("\n=== Advent of Code Runner ===")
        print("Enter year and day (e.g., '2015 1')")
        print("Or type 'q' to quit")
        print("> ", terminator: "")
    }
    
    private func readUserChoice() -> UserChoice? {
        guard let input = readLine()?.trimmingCharacters(in: .whitespaces) else { return nil }
        
        if input.lowercased() == "q" {
            return .exit
        }
        
        let components = input.split(separator: " ")
        guard components.count == 2,
              let year = Int(components[0]),
              let day = Int(components[1]) else {
            print("Invalid input. Please enter year and day (e.g., '2015 1')")
            return nil
        }
        
        return .run(year: year, day: day)
    }
    
    private func runSolution(year: Int, day: Int) {
        guard let solution = SolutionRegistry.getSolution(year: year, day: day) else {
            print("Solution for year \(year) day \(day) not implemented yet!")
            return
        }
        
        do {
            let input = try FileReader.readContents(fromFile: "Input/\(year)/day\(day).txt")
            let result1 = solution.solvePart1(input: input)
            let result2 = solution.solvePart2(input: input)
            print("Part 1 Solution: \(result1)")
            print("Part 2 Solution: \(result2)")
        } catch {
            print("Error running solution: \(error)")
        }
    }
}

private enum UserChoice {
    case exit
    case run(year: Int, day: Int)
}