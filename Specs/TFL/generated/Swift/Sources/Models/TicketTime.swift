//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class TicketTime: APIModel {

    public var description: String?

    public var type: String?

    public init(
        description: String? = nil, 
        type: String? = nil
    ) {
        self.description = description
        self.type = type
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        description = try container.decodeIfPresent("description")
        type = try container.decodeIfPresent("type")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(type, forKey: "type")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? TicketTime else { return false }
      guard self.description == object.description else { return false }
      guard self.type == object.type else { return false }
      return true
    }

    public static func == (lhs: TicketTime, rhs: TicketTime) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
