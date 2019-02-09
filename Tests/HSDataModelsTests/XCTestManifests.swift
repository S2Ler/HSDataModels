import XCTest

extension HSDataModelsTests {
    static let __allTests = [
        ("testOutOfBoundPercentage", testOutOfBoundPercentage),
        ("testWeather", testWeather),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(HSDataModelsTests.__allTests),
    ]
}
#endif
