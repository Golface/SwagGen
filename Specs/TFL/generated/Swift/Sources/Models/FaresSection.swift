//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class FaresSection: APIModel {

    public var header: String?

    public var index: Int?

    public var messages: [Message]?

    public var rows: [FareDetails]?

    public init(
        header: String? = nil, 
        index: Int? = nil, 
        messages: [Message]? = nil, 
        rows: [FareDetails]? = nil
    ) {
        self.header = header
        self.index = index
        self.messages = messages
        self.rows = rows
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        header = try container.decodeIfPresent("header")
        index = try container.decodeIfPresent("index")
        messages = try container.decodeArrayIfPresent("messages")
        rows = try container.decodeArrayIfPresent("rows")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(header, forKey: "header")
        try container.encodeIfPresent(index, forKey: "index")
        try container.encodeIfPresent(messages, forKey: "messages")
        try container.encodeIfPresent(rows, forKey: "rows")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? FaresSection else { return false }
      guard self.header == object.header else { return false }
      guard self.index == object.index else { return false }
      guard self.messages == object.messages else { return false }
      guard self.rows == object.rows else { return false }
      return true
    }

    public static func == (lhs: FaresSection, rhs: FaresSection) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
