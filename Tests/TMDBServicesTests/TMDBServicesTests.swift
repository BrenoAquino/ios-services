import XCTest
@testable import TMDBServices

final class TMDBServicesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(TMDBServices().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
