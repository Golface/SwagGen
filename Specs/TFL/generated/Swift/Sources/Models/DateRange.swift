//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DateRange: APIModel {

    public var endDate: DateTime?

    public var startDate: DateTime?

    public init(
        endDate: DateTime? = nil, 
        startDate: DateTime? = nil
    ) {
        self.endDate = endDate
        self.startDate = startDate
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        endDate = try container.decodeIfPresent("endDate")
        startDate = try container.decodeIfPresent("startDate")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(endDate, forKey: "endDate")
        try container.encodeIfPresent(startDate, forKey: "startDate")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DateRange else { return false }
      guard self.endDate == object.endDate else { return false }
      guard self.startDate == object.startDate else { return false }
      return true
    }

    public static func == (lhs: DateRange, rhs: DateRange) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
