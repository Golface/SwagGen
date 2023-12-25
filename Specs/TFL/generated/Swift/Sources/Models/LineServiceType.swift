//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class LineServiceType: APIModel {

    public var lineName: String?

    public var lineSpecificServiceTypes: [LineSpecificServiceType]?

    public init(
        lineName: String? = nil, 
        lineSpecificServiceTypes: [LineSpecificServiceType]? = nil
    ) {
        self.lineName = lineName
        self.lineSpecificServiceTypes = lineSpecificServiceTypes
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        lineName = try container.decodeIfPresent("lineName")
        lineSpecificServiceTypes = try container.decodeArrayIfPresent("lineSpecificServiceTypes")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(lineName, forKey: "lineName")
        try container.encodeIfPresent(lineSpecificServiceTypes, forKey: "lineSpecificServiceTypes")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LineServiceType else { return false }
      guard self.lineName == object.lineName else { return false }
      guard self.lineSpecificServiceTypes == object.lineSpecificServiceTypes else { return false }
      return true
    }

    public static func == (lhs: LineServiceType, rhs: LineServiceType) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
