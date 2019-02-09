import Foundation

public struct Percentage: Codable, ExpressibleByFloatLiteral, Hashable {
  public let rawValue: Double

  public init(floatLiteral value: Double) {
    if value > 100 {
      rawValue = 100
    }
    else if value < 0 {
      rawValue = 0
    }
    else {
      rawValue = value
    }
  }

  public init(from decoder: Decoder) throws {
    rawValue = try decoder.singleValueContainer().decode(Double.self)
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(rawValue)
  }
}
