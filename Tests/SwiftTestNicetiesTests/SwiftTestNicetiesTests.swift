import XCTest
import Combine
@testable import SwiftTestNiceties

final class SwiftTestNicetiesTests: XCTestCase {
    func testWaitForExpectationWithPredicate() throws {
        // Given:
        var result = false
        let expectedResult = true
        
        // When:
        DispatchQueue.global().asyncAfter(deadline: .now() + 3) {
            result = true
        }
        
        // Then:
        waitForExpectationWithPredicate(timeout: 5) {
            result == expectedResult
        }
    }
}
