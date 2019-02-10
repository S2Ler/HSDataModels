import Foundation

public struct Weather: Codable, Equatable {
  public let date: Date
  public let temperature: Measurement<UnitTemperature>?
  public let humidity: Percentage?

  public init(date: Date,
              temperature: Measurement<UnitTemperature>? = nil,
              humidity: Percentage? = nil) {
    self.date = date
    self.temperature = temperature
    self.humidity = humidity
  }
}
