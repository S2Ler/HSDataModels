import Foundation

public struct Weather: Codable, Equatable {
  public let date: Date
  public let temperature: Measurement<UnitTemperature>?
  public let humidity: Percentage?
}
