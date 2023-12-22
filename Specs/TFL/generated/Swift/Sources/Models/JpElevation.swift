//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class JpElevation: APIModel {

    public var distance: Int?

    public var endLat: Double?

    public var endLon: Double?

    public var gradient: Double?

    public var heightFromPreviousPoint: Int?

    public var startLat: Double?

    public var startLon: Double?

    public init(
        distance: Int? = nil, 
        endLat: Double? = nil, 
        endLon: Double? = nil, 
        gradient: Double? = nil, 
        heightFromPreviousPoint: Int? = nil, 
        startLat: Double? = nil, 
        startLon: Double? = nil
    ) {
        self.distance = distance
        self.endLat = endLat
        self.endLon = endLon
        self.gradient = gradient
        self.heightFromPreviousPoint = heightFromPreviousPoint
        self.startLat = startLat
        self.startLon = startLon
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        distance = try container.decodeIfPresent("distance")
        endLat = try container.decodeIfPresent("endLat")
        endLon = try container.decodeIfPresent("endLon")
        gradient = try container.decodeIfPresent("gradient")
        heightFromPreviousPoint = try container.decodeIfPresent("heightFromPreviousPoint")
        startLat = try container.decodeIfPresent("startLat")
        startLon = try container.decodeIfPresent("startLon")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(distance, forKey: "distance")
        try container.encodeIfPresent(endLat, forKey: "endLat")
        try container.encodeIfPresent(endLon, forKey: "endLon")
        try container.encodeIfPresent(gradient, forKey: "gradient")
        try container.encodeIfPresent(heightFromPreviousPoint, forKey: "heightFromPreviousPoint")
        try container.encodeIfPresent(startLat, forKey: "startLat")
        try container.encodeIfPresent(startLon, forKey: "startLon")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? JpElevation else { return false }
      guard self.distance == object.distance else { return false }
      guard self.endLat == object.endLat else { return false }
      guard self.endLon == object.endLon else { return false }
      guard self.gradient == object.gradient else { return false }
      guard self.heightFromPreviousPoint == object.heightFromPreviousPoint else { return false }
      guard self.startLat == object.startLat else { return false }
      guard self.startLon == object.startLon else { return false }
      return true
    }

    public static func == (lhs: JpElevation, rhs: JpElevation) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
