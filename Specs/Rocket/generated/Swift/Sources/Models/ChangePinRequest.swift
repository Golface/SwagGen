//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ChangePinRequest: APIModel {

    /** The new pin to set. */
    public var pin: String

    public init(
        pin: String
    ) {
        self.pin = pin
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        pin = try container.decode("pin")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(pin, forKey: "pin")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ChangePinRequest else { return false }
      guard self.pin == object.pin else { return false }
      return true
    }

    public static func == (lhs: ChangePinRequest, rhs: ChangePinRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
