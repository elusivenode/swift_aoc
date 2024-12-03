import XCTest
@testable import aoc

final class ExecuteMulInstructionsTests: XCTestCase {
    func testExecuteMulInstructions() {
        // Test case 1
        var input = "mul(2,4)"
        XCTAssertEqual(executeMulInstructions(input: input), 8)
        // Test case 2
        input = "mul(3,7)"
        XCTAssertEqual(executeMulInstructions(input: input), 21)
        // Test case 3
        input = "mul(5,5)"
        XCTAssertEqual(executeMulInstructions(input: input), 25)
    }
}

final class ParseMulInstructionsTests: XCTestCase {
    func testParseMulInstructions() {
        let input = "xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))"
        XCTAssertEqual(parseMulInstructions(input: input), ["mul(2,4)", "mul(3,7)", "mul(5,5)", "mul(32,64)", "mul(11,8)", "mul(8,5), blah"])
    }
}

final class Day3_2024Tests: XCTestCase {
    func testSolvePart1() {
        let input = "xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))"
        let result = Day3_2024.solvePart1(input: input)
        XCTAssertEqual(result as? Int, 161) 
    }
}
    