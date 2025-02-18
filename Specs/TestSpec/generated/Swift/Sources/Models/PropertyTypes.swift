//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class PropertyTypes: APIModel {

    public var decimal: Decimal?

    public var double: Double?

    public var float: Float?

    public init(
        decimal: Decimal? = nil, 
        double: Double? = nil, 
        float: Float? = nil
    ) {
        self.decimal = decimal
        self.double = double
        self.float = float
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        decimal = try container.decodeIfPresent("decimal")
        double = try container.decodeIfPresent("double")
        float = try container.decodeIfPresent("float")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(decimal, forKey: "decimal")
        try container.encodeIfPresent(double, forKey: "double")
        try container.encodeIfPresent(float, forKey: "float")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? PropertyTypes else { return false }
      guard self.decimal == object.decimal else { return false }
      guard self.double == object.double else { return false }
      guard self.float == object.float else { return false }
      return true
    }

    public static func == (lhs: PropertyTypes, rhs: PropertyTypes) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
