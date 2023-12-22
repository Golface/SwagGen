//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class MapTest: APIModel {

    public enum MapOfEnumString: String, Codable, Equatable, CaseIterable {
        case upper = "UPPER"
        case lower = "lower"
    }

    public var mapMapOfString: [String: [String: String]]?

    public var mapOfEnumString: [String: MapOfEnumString]?

    public init(
        mapMapOfString: [String: [String: String]]? = nil, 
        mapOfEnumString: [String: MapOfEnumString]? = nil
    ) {
        self.mapMapOfString = mapMapOfString
        self.mapOfEnumString = mapOfEnumString
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        mapMapOfString = try container.decodeIfPresent("map_map_of_string")
        mapOfEnumString = try container.decodeIfPresent("map_of_enum_string")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(mapMapOfString, forKey: "map_map_of_string")
        try container.encodeIfPresent(mapOfEnumString, forKey: "map_of_enum_string")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? MapTest else { return false }
      guard self.mapMapOfString == object.mapMapOfString else { return false }
      guard self.mapOfEnumString == object.mapOfEnumString else { return false }
      return true
    }

    public static func == (lhs: MapTest, rhs: MapTest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
