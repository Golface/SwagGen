//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DisambiguationOption: APIModel {

    public var description: String?

    public var uri: String?

    public init(
        description: String? = nil, 
        uri: String? = nil
    ) {
        self.description = description
        self.uri = uri
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        description = try container.decodeIfPresent("description")
        uri = try container.decodeIfPresent("uri")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(uri, forKey: "uri")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DisambiguationOption else { return false }
      guard self.description == object.description else { return false }
      guard self.uri == object.uri else { return false }
      return true
    }

    public static func == (lhs: DisambiguationOption, rhs: DisambiguationOption) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
