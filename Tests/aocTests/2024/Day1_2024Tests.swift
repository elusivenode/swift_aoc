import XCTest
@testable import aoc

final class ListDistanceTests: XCTestCase {
    func testTotalListDistance() {
        // Test case 1
        let list1 = [3, 4, 2, 1, 3, 3]
        let list2 = [4, 3, 5, 3, 9, 3]
        let result1 = totalListDistance(l1: list1, l2: list2)
        XCTAssertEqual(result1, 11)
    }
}

final class Day1_2024Tests: XCTestCase {
    func testSolvePart1() {
        let input = """
3   4
4   3
2   5
1   3
3   9
3   3
"""
        let result = Day1_2024.solvePart1(input: input)
        XCTAssertEqual(result as? Int, 11, "Expected total list distance to be 11") 
    }
}