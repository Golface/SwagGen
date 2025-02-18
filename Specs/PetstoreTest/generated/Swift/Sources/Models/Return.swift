//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Model for testing reserved words */
public class Return: APIModel {

    public var `return`: Int?

    public init(
        `return`: Int? = nil
    ) {
        self.`return` = `return`
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        `return` = try container.decodeIfPresent("return")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(`return`, forKey: "return")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Return else { return false }
      guard self.`return` == object.`return` else { return false }
      return true
    }

    public static func == (lhs: Return, rhs: Return) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
