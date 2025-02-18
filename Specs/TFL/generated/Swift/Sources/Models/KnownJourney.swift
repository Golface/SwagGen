//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class KnownJourney: APIModel {

    public var hour: String?

    public var intervalId: Int?

    public var minute: String?

    public init(
        hour: String? = nil, 
        intervalId: Int? = nil, 
        minute: String? = nil
    ) {
        self.hour = hour
        self.intervalId = intervalId
        self.minute = minute
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        hour = try container.decodeIfPresent("hour")
        intervalId = try container.decodeIfPresent("intervalId")
        minute = try container.decodeIfPresent("minute")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(hour, forKey: "hour")
        try container.encodeIfPresent(intervalId, forKey: "intervalId")
        try container.encodeIfPresent(minute, forKey: "minute")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? KnownJourney else { return false }
      guard self.hour == object.hour else { return false }
      guard self.intervalId == object.intervalId else { return false }
      guard self.minute == object.minute else { return false }
      return true
    }

    public static func == (lhs: KnownJourney, rhs: KnownJourney) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
