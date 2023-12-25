//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Cat: Animal {

    public var declawed: Bool?

    public init(
        className: String, 
        color: String? = nil, 
        declawed: Bool? = nil
    ) {
        self.declawed = declawed
        super.init(className: className, color: color)
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        declawed = try container.decodeIfPresent("declawed")
        try super.init(from: decoder)
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(declawed, forKey: "declawed")
        try super.encode(to: encoder)
    }

    override public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Cat else { return false }
      guard self.declawed == object.declawed else { return false }
      return super.isEqual(to: object)
    }
}
