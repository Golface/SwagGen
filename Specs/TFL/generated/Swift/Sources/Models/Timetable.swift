//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Timetable: APIModel {

    public var departureStopId: String?

    public var routes: [TimetableRoute]?

    public init(
        departureStopId: String? = nil, 
        routes: [TimetableRoute]? = nil
    ) {
        self.departureStopId = departureStopId
        self.routes = routes
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        departureStopId = try container.decodeIfPresent("departureStopId")
        routes = try container.decodeArrayIfPresent("routes")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(departureStopId, forKey: "departureStopId")
        try container.encodeIfPresent(routes, forKey: "routes")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Timetable else { return false }
      guard self.departureStopId == object.departureStopId else { return false }
      guard self.routes == object.routes else { return false }
      return true
    }

    public static func == (lhs: Timetable, rhs: Timetable) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
