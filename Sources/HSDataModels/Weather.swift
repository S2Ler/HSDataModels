import Foundation

public struct Weather: Codable, Equatable {
  public let temperature: Measurement<UnitTemperature>?
  public let humidity: Percentage?
}
