//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ArrayOfNumberOnly: APIModel {

    public var arrayNumber: [Double]?

    public init(
        arrayNumber: [Double]? = nil
    ) {
        self.arrayNumber = arrayNumber
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        arrayNumber = try container.decodeArrayIfPresent("ArrayNumber")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(arrayNumber, forKey: "ArrayNumber")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ArrayOfNumberOnly else { return false }
      guard self.arrayNumber == object.arrayNumber else { return false }
      return true
    }

    public static func == (lhs: ArrayOfNumberOnly, rhs: ArrayOfNumberOnly) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
