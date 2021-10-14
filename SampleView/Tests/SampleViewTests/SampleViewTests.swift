import XCTest
@testable import SampleView
@available(iOS 15.0, *)
final class SampleViewTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SampleView().text, "Hello, World!")
    }
}
