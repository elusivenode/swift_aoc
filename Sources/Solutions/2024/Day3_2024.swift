import Foundation

struct Day3_2024: AdventSolution {
    static func solvePart1(input: String) -> Any {
        let instructions = parseMulInstructions(input: input)
        var total = 0
        for instruction in instructions {
            total += executeMulInstructions(input: instruction)
        }
        return total
    } 
            

    static func solvePart2(input: String) -> Any {
        return 0
    }
}

func executeMulInstructions(input: String) -> Int {
    let pattern = #"\((\d+),(\d+)\)"#
    let regex = try! NSRegularExpression(pattern: pattern)
    var firstInteger = 0
    var secondInteger = 0
    if let match = regex.firstMatch(in: input, range: NSRange(input.startIndex..., in: input)) {
        // Extract the two integer values
        if let firstRange = Range(match.range(at: 1), in: input),
           let secondRange = Range(match.range(at: 2), in: input) {
            firstInteger = Int(input[firstRange])!
            secondInteger = Int(input[secondRange])!
           }
    }
    return firstInteger * secondInteger
}

func parseMulInstructions(input: String) -> [String] {
    let pattern = #"mul\(\d+,\d+\)"#
    let regex = try! NSRegularExpression(pattern: pattern)
    let matches = regex.matches(in: input, range: NSRange(input.startIndex..<input.endIndex, in: input))
    return matches.compactMap { match in 
        Range(match.range, in: input).map { String(input[$0]) }
    }
}
