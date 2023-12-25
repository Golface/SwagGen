//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Path: APIModel {

    public var elevation: [JpElevation]?

    public var lineString: String?

    public var stopPoints: [Identifier]?

    public init(
        elevation: [JpElevation]? = nil, 
        lineString: String? = nil, 
        stopPoints: [Identifier]? = nil
    ) {
        self.elevation = elevation
        self.lineString = lineString
        self.stopPoints = stopPoints
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        elevation = try container.decodeArrayIfPresent("elevation")
        lineString = try container.decodeIfPresent("lineString")
        stopPoints = try container.decodeArrayIfPresent("stopPoints")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(elevation, forKey: "elevation")
        try container.encodeIfPresent(lineString, forKey: "lineString")
        try container.encodeIfPresent(stopPoints, forKey: "stopPoints")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Path else { return false }
      guard self.elevation == object.elevation else { return false }
      guard self.lineString == object.lineString else { return false }
      guard self.stopPoints == object.stopPoints else { return false }
      return true
    }

    public static func == (lhs: Path, rhs: Path) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
