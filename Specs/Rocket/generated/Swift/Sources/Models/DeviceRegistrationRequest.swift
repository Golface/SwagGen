//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DeviceRegistrationRequest: APIModel {

    /** The unique identifier for this device e.g. serial number. */
    public var id: String

    /** A human recognisable name for this device. */
    public var name: String

    /** The device type e.g. web_browser. */
    public var type: String

    public init(
        id: String, 
        name: String, 
        type: String
    ) {
        self.id = id
        self.name = name
        self.type = type
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decode("id")
        name = try container.decode("name")
        type = try container.decode("type")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(id, forKey: "id")
        try container.encode(name, forKey: "name")
        try container.encode(type, forKey: "type")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DeviceRegistrationRequest else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      guard self.type == object.type else { return false }
      return true
    }

    public static func == (lhs: DeviceRegistrationRequest, rhs: DeviceRegistrationRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
