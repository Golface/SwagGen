//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Animal: APIModel {

    public var className: String

    public var color: String?

    public init(
        className: String, 
        color: String? = nil
    ) {
        self.className = className
        self.color = color
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        className = try container.decode("className")
        color = try container.decodeIfPresent("color")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(className, forKey: "className")
        try container.encodeIfPresent(color, forKey: "color")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Animal else { return false }
      guard self.className == object.className else { return false }
      guard self.color == object.color else { return false }
      return true
    }

    public static func == (lhs: Animal, rhs: Animal) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
