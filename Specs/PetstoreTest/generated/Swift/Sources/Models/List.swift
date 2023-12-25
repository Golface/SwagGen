//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class List: APIModel {

    public var _123List: String?

    public init(
        _123List: String? = nil
    ) {
        self._123List = _123List
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        _123List = try container.decodeIfPresent("123-list")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(_123List, forKey: "123-list")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? List else { return false }
      guard self._123List == object._123List else { return false }
      return true
    }

    public static func == (lhs: List, rhs: List) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
