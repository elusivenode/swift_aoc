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
        //Test case 3
        levels = [6,2,1]
        XCTAssertEqual(levelsSafe(l: levels), false)
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

    func testGenerateListsWithOneRemoval() {
        let list = [7,6,4,2,1]
        let variants = generateListsWithOneRemoval(l: list)
        
        print("\nAll variants from removing one element from \(list):")
        for (index, variant) in variants.enumerated() {
            print("Variant \(index + 1): \(variant)")
        }
        
        // You can still add assertions if needed
        XCTAssertEqual(variants.count, 5) // Should have 5 variants
    }

    func testSafeWithOneRemoval() {
        // Test case 1
        var list = [1,3,2,4,5]
        XCTAssertEqual(safeWithOneRemoval(l: list), true)
        // Test case 2
        list = [8,6,4,4,1]
        XCTAssertEqual(safeWithOneRemoval(l: list), true)
        // Test case 3
        list = [1,2,7,8,9]
        XCTAssertEqual(safeWithOneRemoval(l: list), false)
        // Test case 4
        list = [9,7,6,2,1]
        XCTAssertEqual(safeWithOneRemoval(l: list), false)
    }
}