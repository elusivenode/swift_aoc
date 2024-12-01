struct SolutionRegistry {
    private static let solutions: [Int: [Int: AdventSolution.Type]] = [
        2015: [
            1: Day1_2015.self,
            // Add more days here
        ], 
        2024: [
            1: Day1_2024.self,
            // Add more days here
        ]
        // Add more years here
    ]
    
    static func getSolution(year: Int, day: Int) -> AdventSolution.Type? {
        return solutions[year]?[day]
    }
}