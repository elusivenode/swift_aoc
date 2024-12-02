import XCTest
@testable import aoc

final class levelsSafeTests: XCTestCase {
    func testLevelsSafe() {
        // Test case 1
        var levels = [1,2,3,4,5]
        XCTAssertEqual(levelsSafe(l: levels), true)
        // Test case 2
        levels = [1,2,3,4,5,5]
        XCTAssertEqual(levelsSafe(l: levels), false)
        // Test case 3
        levels = [6,2,1]
        XCTAssertEqual(levelsSafe(l: levels), true)
        // Test case 4
        levels = [6,2,1,2]
        XCTAssertEqual(levelsSafe(l: levels), false)
        // Test case 5
        levels = [1,1]
        XCTAssertEqual(levelsSafe(l: levels), false)
        // Test case 6
        levels = [1,2,3,4,5,6,7,8,9,10]
        XCTAssertEqual(levelsSafe(l: levels), true)
        // Test case 7
        levels = [1,2,3,4,5,6,7,8,9,12]
        XCTAssertEqual(levelsSafe(l: levels), true)
        // Test case 8
        levels = [1,2,3,4,5,6,7,8,9,13]
        XCTAssertEqual(levelsSafe(l: levels), false)
    }
}