//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ObjectHoldingNullableReference: APIModel {

    public var thisPropertyShouldBeOptional: SomeNullableObject?

    public init(
        thisPropertyShouldBeOptional: SomeNullableObject?
    ) {
        self.thisPropertyShouldBeOptional = thisPropertyShouldBeOptional
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        thisPropertyShouldBeOptional = try container.decodeIfPresent("this_property_should_be_optional")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(thisPropertyShouldBeOptional, forKey: "this_property_should_be_optional")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ObjectHoldingNullableReference else { return false }
      guard self.thisPropertyShouldBeOptional == object.thisPropertyShouldBeOptional else { return false }
      return true
    }

    public static func == (lhs: ObjectHoldingNullableReference, rhs: ObjectHoldingNullableReference) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
