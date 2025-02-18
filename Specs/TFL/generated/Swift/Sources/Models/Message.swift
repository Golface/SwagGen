//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Message: APIModel {

    public var bulletOrder: Int?

    public var header: Bool?

    public var linkText: String?

    public var messageText: String?

    public var url: String?

    public init(
        bulletOrder: Int? = nil, 
        header: Bool? = nil, 
        linkText: String? = nil, 
        messageText: String? = nil, 
        url: String? = nil
    ) {
        self.bulletOrder = bulletOrder
        self.header = header
        self.linkText = linkText
        self.messageText = messageText
        self.url = url
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        bulletOrder = try container.decodeIfPresent("bulletOrder")
        header = try container.decodeIfPresent("header")
        linkText = try container.decodeIfPresent("linkText")
        messageText = try container.decodeIfPresent("messageText")
        url = try container.decodeIfPresent("url")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(bulletOrder, forKey: "bulletOrder")
        try container.encodeIfPresent(header, forKey: "header")
        try container.encodeIfPresent(linkText, forKey: "linkText")
        try container.encodeIfPresent(messageText, forKey: "messageText")
        try container.encodeIfPresent(url, forKey: "url")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Message else { return false }
      guard self.bulletOrder == object.bulletOrder else { return false }
      guard self.header == object.header else { return false }
      guard self.linkText == object.linkText else { return false }
      guard self.messageText == object.messageText else { return false }
      guard self.url == object.url else { return false }
      return true
    }

    public static func == (lhs: Message, rhs: Message) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
