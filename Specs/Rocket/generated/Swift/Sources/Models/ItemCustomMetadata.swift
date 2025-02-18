//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Custom metadata associated with an item. */
public class ItemCustomMetadata: APIModel {

    /** The name of the custom metadata. */
    public var name: String

    /** The value of the custom metadata. */
    public var value: String

    public init(
        name: String, 
        value: String
    ) {
        self.name = name
        self.value = value
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        name = try container.decode("name")
        value = try container.decode("value")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(name, forKey: "name")
        try container.encode(value, forKey: "value")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ItemCustomMetadata else { return false }
      guard self.name == object.name else { return false }
      guard self.value == object.value else { return false }
      return true
    }

    public static func == (lhs: ItemCustomMetadata, rhs: ItemCustomMetadata) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
