import XCTest
@testable import HSDataModels

final class HSDataModelsTests: XCTestCase {
  func testWeather() throws {
    let weather = Weather(temperature: Measurement<UnitTemperature>(value: 21.5, unit: .celsius),
                          humidity: 10.1)
    let encoder = JSONEncoder()

    let jsonData = try encoder.encode(weather)
    let json = String(data: jsonData, encoding: .utf8)
    XCTAssertNotNil(json)

    let decoder = JSONDecoder()
    let decodedWeather = try decoder.decode(Weather.self, from: jsonData)
    XCTAssertEqual(weather, decodedWeather)
  }

  func testOutOfBoundPercentage() {
    let upperOutOfLimit: Percentage = 100.1
    XCTAssertEqual(upperOutOfLimit, 100.0)

    let lowerOutOfLimit: Percentage = -0.01
    XCTAssertEqual(lowerOutOfLimit, 0.0)
  }
}
