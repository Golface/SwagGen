//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Period: APIModel {

    public enum `Type`: String, Codable, Equatable, CaseIterable {
        case normal = "Normal"
        case frequencyHours = "FrequencyHours"
        case frequencyMinutes = "FrequencyMinutes"
        case unknown = "Unknown"
    }

    public var frequency: ServiceFrequency?

    public var fromTime: TwentyFourHourClockTime?

    public var toTime: TwentyFourHourClockTime?

    public var type: `Type`?

    public init(
        frequency: ServiceFrequency? = nil, 
        fromTime: TwentyFourHourClockTime? = nil, 
        toTime: TwentyFourHourClockTime? = nil, 
        type: `Type`? = nil
    ) {
        self.frequency = frequency
        self.fromTime = fromTime
        self.toTime = toTime
        self.type = type
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        frequency = try container.decodeIfPresent("frequency")
        fromTime = try container.decodeIfPresent("fromTime")
        toTime = try container.decodeIfPresent("toTime")
        type = try container.decodeIfPresent("type")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(frequency, forKey: "frequency")
        try container.encodeIfPresent(fromTime, forKey: "fromTime")
        try container.encodeIfPresent(toTime, forKey: "toTime")
        try container.encodeIfPresent(type, forKey: "type")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Period else { return false }
      guard self.frequency == object.frequency else { return false }
      guard self.fromTime == object.fromTime else { return false }
      guard self.toTime == object.toTime else { return false }
      guard self.type == object.type else { return false }
      return true
    }

    public static func == (lhs: Period, rhs: Period) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
